#ifndef __PCKT_ENCAP_H
#define __PCKT_ENCAP_H
#include <linux/ip.h>
#include <linux/ipv6.h>
#include <string.h>
#include <linux/pkt_cls.h>
#include "balancer_consts.h"
#include "balancer_helpers.h"
#include "balancer_structs.h"
#include "bpf.h"
#include "bpf_endian.h"
#include "bpf_helpers.h"
#include "control_data_maps.h"
#include "encap_helpers.h"
#include "flow_debug.h"
#include "pckt_parsing.h"

__attribute__ ((__always_inline__)) static inline bool decap_v6 (struct __sk_buff *xdp, void **data, void **data_end, bool inner_v4) {
    struct ethhdr *new_eth;
    struct ethhdr *old_eth;
    old_eth = *data;
    new_eth = *data + sizeof (struct ipv6hdr);
    memcpy (new_eth -> h_source, old_eth -> h_source, 6);
    memcpy (new_eth -> h_dest, old_eth -> h_dest, 6);
    if (inner_v4) {
        new_eth->h_proto = BE_ETH_P_IP;
    }
    else {
        new_eth->h_proto = BE_ETH_P_IPV6;
    }
    if (bpf_xdp_adjust_head (xdp, (int) sizeof (struct ipv6hdr))) {
        return false;
    }
    *data = (void *) (long) xdp->data;
    *data_end = (void *) (long) xdp->data_end;
    return true;
}
