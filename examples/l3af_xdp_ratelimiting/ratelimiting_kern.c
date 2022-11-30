#define KBUILD_MODNAME "foo"
#include <linux/bpf.h>
#include <netinet/in.h>
#include <stdint.h>
#include <bpf/bpf_helpers.h>
#include <bpf/bpf_endian.h>
#include <linux/if_ether.h>
#include <linux/ip.h>
#include <linux/in.h>
#include <linux/tcp.h>
#include <iproute2/bpf_elf.h>
#define TCP_FIN  0x01
#define TCP_SYN  0x02
#define TCP_RST  0x04
#define TCP_PSH  0x08
#define TCP_ACK  0x10
#define TCP_URG  0x20
#define TCP_ECE  0x40
#define TCP_CWR  0x80
#define TCP_FLAGS (TCP_FIN|TCP_SYN|TCP_RST|TCP_ACK|TCP_URG|TCP_ECE|TCP_CWR)
#define bpf_printk(fmt, ...)                            \
({                                                      \
        char ____fmt[] = fmt;                           \
        bpf_trace_printk(____fmt, sizeof(____fmt),      \
                         ##__VA_ARGS__);                \
})
#ifndef __section
# define __section(NAME)                  \
	__attribute__((section(NAME), used))
#endif
#define PIN_GLOBAL_NS        2
struct bpf_elf_map rl_config_map __section ("maps") = {.type = BPF_MAP_TYPE_ARRAY,.size_key = sizeof (uint32_t),.size_value = sizeof (uint64_t),.pinning = PIN_GLOBAL_NS,.max_elem = 1,};
struct bpf_elf_map SEC ("maps")
rl_window_map = {
    .type = BPF_MAP_TYPE_HASH,
    .size_key = sizeof (uint64_t),
    .size_value = sizeof (uint64_t),
    .pinning = PIN_GLOBAL_NS,
    .max_elem = 100,
};
struct bpf_elf_map SEC ("maps")
rl_recv_count_map = {
    .type = BPF_MAP_TYPE_HASH,
    .size_key = sizeof (uint64_t),
    .size_value = sizeof (uint64_t),
    .pinning = PIN_GLOBAL_NS,
    .max_elem = 1
};
struct bpf_elf_map SEC ("maps")
rl_drop_count_map = {
    .type = BPF_MAP_TYPE_HASH,
    .size_key = sizeof (uint64_t),
    .size_value = sizeof (uint64_t),
    .pinning = PIN_GLOBAL_NS,
    .max_elem = 1
};
struct bpf_elf_map SEC ("maps")
rl_ports_map = {
    .type = BPF_MAP_TYPE_HASH,
    .size_key = sizeof (uint16_t),
    .size_value = sizeof (uint8_t),
    .pinning = PIN_GLOBAL_NS,
    .max_elem = 50
};

static __always_inline int _xdp_ratelimit (struct __sk_buff *ctx) {
    void *data_end = (void *) (long) ctx->data_end;
    void *data = (void *) (long) ctx->data;
    struct ethhdr *eth = data;
    if (data + sizeof (*eth) > data_end)
        return TC_ACT_SHOT;
    uint16_t eth_type = eth->h_proto;
    if (ntohs (eth_type) != ETH_P_IP) {
        return TC_ACT_OK;
    }
    struct iphdr *iph = data + sizeof (struct ethhdr);
    if (iph + 1 > data_end)
        return TC_ACT_OK;
    if (iph->protocol != IPPROTO_TCP)
        return TC_ACT_OK;
    struct tcphdr *tcph = (struct tcphdr *) (iph + 1);
    if (tcph + 1 > data_end)
        return TC_ACT_OK;
    bpf_printk ("NEW: TCP Syn : %d\n", tcph -> syn & TCP_FLAGS);
    if (!(tcph->syn & TCP_FLAGS)) {
        return TC_ACT_OK;
    }
    if (tcph->ack & TCP_FLAGS)
        return TC_ACT_OK;
    uint16_t dstport = bpf_ntohs (tcph->dest);
    uint64_t rkey = 0;
    uint64_t *rate = bpf_map_lookup_elem (&rl_config_map, &rkey);
    if (!rate) {
        bpf_printk ("Return: rate %d\n", rkey);
        return TC_ACT_OK;
    }
    else {
    }
    bpf_printk ("pass rate: %d\n", * rate);
    uint64_t tnow = bpf_ktime_get_ns ();
    uint64_t NANO = 1000000000;
    uint64_t MULTIPLIER = 100;
    uint64_t cw_key = (tnow / NANO) * NANO;
    uint64_t pw_key = cw_key - NANO;
    uint64_t *pw_count = bpf_map_lookup_elem (&rl_window_map, &pw_key);
    uint32_t *cw_count = bpf_map_lookup_elem (&rl_window_map, &cw_key);
    uint64_t *in_count = bpf_map_lookup_elem (&rl_recv_count_map, &rkey);
    uint64_t *drop_count = bpf_map_lookup_elem (&rl_drop_count_map, &rkey);
    if (!in_count || !drop_count) {
        bpf_printk ("count null %d\n", rate);
        return TC_ACT_OK;
    }
    bpf_printk ("cw_key %u\n", cw_key);
    bpf_printk ("pw_key %u\n", pw_key);
    (*in_count)++;
    if (!cw_count) {
        uint64_t init_count = 0;
        bpf_map_update_elem (& rl_window_map, & cw_key, & init_count, BPF_NOEXIST);
        cw_count = bpf_map_lookup_elem (&rl_window_map, &cw_key);
        if (!cw_count)
            return TC_ACT_OK;
    }
    if (!pw_count) {
        if (*cw_count >= *rate) {
            (*drop_count)++;
            bpf_printk ("DROP CONNECTION: CT  %d\n", * cw_count);
            return TC_ACT_SHOT;
        }
        (*cw_count)++;
        bpf_printk ("ALLOW CONNECTION: CT  %d\n", * cw_count);
        return TC_ACT_OK;
    }
    uint64_t pw_weight = MULTIPLIER - (uint64_t) (((tnow - cw_key) * MULTIPLIER) / NANO);
    uint64_t total_count = (uint64_t) ((pw_weight * (*pw_count)) + (*cw_count) * MULTIPLIER);
    bpf_printk ("tot_ct : %d\n", total_count);
    bpf_printk ("cw1_ct : %d\n", * cw_count);
    if (total_count > (*rate)) {
        (*drop_count)++;
        bpf_printk ("DROP CONNECTION: CT  %d\n", * cw_count);
        return TC_ACT_SHOT;
    }
    (*cw_count)++;
    bpf_printk ("ALLOW CONNECTION: CT  %d\n", * cw_count);
    return TC_ACT_OK;
}

SEC ("xdp_ratelimiting")
int _xdp_ratelimiting (struct __sk_buff *ctx) {
    int rc = _xdp_ratelimit (ctx);
    if (rc == TC_ACT_SHOT) {
        return TC_ACT_SHOT;
    }
    return TC_ACT_OK;
}

char _license [] SEC ("license") = "Dual BSD/GPL";
