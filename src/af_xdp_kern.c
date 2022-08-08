#include <linux/bpf.h>

#include <bpf/bpf_helpers.h>
#include <linux/pkt_cls.h>
#include <linux/pkt_cls.h>
struct bpf_map_def SEC ("maps") xsks_map = {
    .type = BPF_MAP_TYPE_XSKMAP,
    .key_size = sizeof (int),
    .value_size = sizeof (int),
    .max_entries = 64,}
;
struct bpf_map_def SEC ("maps") xdp_stats_map = {
    .type = BPF_MAP_TYPE_PERCPU_ARRAY,
    .key_size = sizeof (int),
    .value_size = sizeof (__u32),
    .max_entries = 64,}
;
SEC ("xdp_sock")

int xdp_sock_prog (struct __sk_buff *ctx)
{
    int index = ctx->rx_queue_index;
    __u32 *pkt_count;
    pkt_count = bpf_map_lookup_elem (& xdp_stats_map, & index);
    if (pkt_count) {
        if ((*pkt_count)++ & 1)
            return TC_ACT_OK;
    }
    if (bpf_map_lookup_elem (&xsks_map, &index))
        return bpf_redirect_map (&xsks_map, index, 0);
    return TC_ACT_OK;
}

char _license [] SEC ("license") = "GPL";
