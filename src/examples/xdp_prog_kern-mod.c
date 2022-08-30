#include <linux/bpf.h>

#include <linux/in.h>

#include <bpf/bpf_helpers.h>

#include <bpf/bpf_endian.h>

#include "../common/parsing_helpers.h"

#include "../common/xdp_stats_kern_user.h"

#include "../common/xdp_stats_kern.h"

static __always_inline int vlan_tag_pop (struct __sk_buff *ctx, struct ethhdr *eth)
{
    int vlid = -1;
    return vlid;
}

static __always_inline int vlan_tag_push (struct __sk_buff *ctx, struct ethhdr *eth, int vlid)
{
    return 0;
}

SEC ("xdp_port_rewrite")

int xdp_port_rewrite_func (struct __sk_buff *ctx)
{
    return TC_ACT_OK;
}

SEC ("xdp_vlan_swap")

int xdp_vlan_swap_func (struct __sk_buff *ctx)
{
    void *data_end = (void *) (long) ctx->data_end;
    void *data = (void *) (long) ctx->data;
    struct hdr_cursor nh;
    int nh_type;
    nh.pos = data;
    struct ethhdr *eth;
    nh_type = parse_ethhdr (& nh, data_end, & eth);
    if (nh_type < 0)
        return TC_ACT_OK;
    if (proto_is_vlan (ctx->protocol))
        vlan_tag_pop (ctx, eth);
    else
        vlan_tag_push (ctx, eth, 1);
    return TC_ACT_OK;
}

SEC ("xdp_packet_parser")

int xdp_parser_func (struct __sk_buff *ctx)
{
    void *data_end = (void *) (long) ctx->data_end;
    void *data = (void *) (long) ctx->data;
    __u32 action = TC_ACT_OK;
    struct hdr_cursor nh;
    int nh_type;
    nh.pos = data;
    struct ethhdr *eth;
    nh_type = parse_ethhdr (& nh, data_end, & eth);
    if (nh_type == bpf_htons (ETH_P_IPV6)) {
        struct ipv6hdr *ip6h;
        struct icmp6hdr *icmp6h;
        nh_type = parse_ip6hdr (& nh, data_end, & ip6h);
        if (nh_type != IPPROTO_ICMPV6)
            goto out;
        nh_type = parse_icmp6hdr (& nh, data_end, & icmp6h);
        if (nh_type != ICMPV6_ECHO_REQUEST)
            goto out;
        if (bpf_ntohs (icmp6h->icmp6_sequence) % 2 == 0)
            action = TC_ACT_SHOT;
    }
    else if (nh_type == bpf_htons (ETH_P_IP)) {
        struct iphdr *iph;
        struct icmphdr *icmph;
        nh_type = parse_iphdr (& nh, data_end, & iph);
        if (nh_type != IPPROTO_ICMP)
            goto out;
        nh_type = parse_icmphdr (& nh, data_end, & icmph);
        if (nh_type != ICMP_ECHO)
            goto out;
        if (bpf_ntohs (icmph->un.echo.sequence) % 2 == 0)
            action = TC_ACT_SHOT;
    }
out :
    return xdp_stats_record_action (ctx, action);
}

char _license [] SEC ("license") = "GPL";
