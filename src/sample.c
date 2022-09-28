

__attribute__ ((__always_inline__)) static inline bool encap_v6 (struct __sk_buff *xdp, struct ctl_value *cval, bool is_ipv6, struct packet_description *pckt, struct real_definition *dst, __u32 pkt_bytes) {
    void *data;
    void *data_end;
    struct ipv6hdr *ip6h;
    struct ethhdr *new_eth;
    struct ethhdr *old_eth;
    __u16 payload_len;
    __u32 ip_suffix;
    __u32 saddr [4];
    __u8 proto;
    if (bpf_xdp_adjust_head (xdp, 0 - (int) sizeof (struct ipv6hdr))) {
        return false;
    }
    data = (void *) (long) xdp->data;
    data_end = (void *) (long) xdp->data_end;
    new_eth = data;
    ip6h = data + sizeof (struct ethhdr);
    old_eth = data + sizeof (struct ipv6hdr);
    if (new_eth + 1 > data_end || old_eth + 1 > data_end || ip6h + 1 > data_end) {
        return false;
    }
    memcpy (new_eth -> h_dest, cval -> mac, 6);
    memcpy (new_eth -> h_source, old_eth -> h_dest, 6);
    new_eth->h_proto = BE_ETH_P_IPV6;
    if (is_ipv6) {
        proto = IPPROTO_IPV6;
        ip_suffix = pckt->flow.srcv6[3] ^ pckt->flow.port16[0];
        payload_len = pkt_bytes + sizeof (struct ipv6hdr);
    }
    else {
        proto = IPPROTO_IPIP;
        ip_suffix = pckt->flow.src ^ pckt->flow.port16[0];
        payload_len = pkt_bytes;
    }
    saddr[0] = IPIP_V6_PREFIX1;
    saddr[1] = IPIP_V6_PREFIX2;
    saddr[2] = IPIP_V6_PREFIX3;
    saddr[3] = ip_suffix;
    create_v6_hdr (ip6h, pckt -> tos, saddr, dst -> dstv6, payload_len, proto);
    return true;
}
