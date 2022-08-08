#ifndef __XDP_STATS_KERN_H

#define __XDP_STATS_KERN_H

#ifndef __XDP_STATS_KERN_USER_H

#warning "You forgot to #include <../common/xdp_stats_kern_user.h>"

#include <../common/xdp_stats_kern_user.h>

#endif
struct bpf_map_def SEC ("maps") xdp_stats_map = {
    .type = BPF_MAP_TYPE_PERCPU_ARRAY,
    .key_size = sizeof (__u32),
    .value_size = sizeof (struct datarec),
    .max_entries = XDP_ACTION_MAX,}
;

static __always_inline __u32 xdp_stats_record_action (struct __sk_buff *ctx, __u32 action)
{
    if (action >= XDP_ACTION_MAX)
        return XDP_ABORTED;
    struct datarec *rec = bpf_map_lookup_elem (&xdp_stats_map, &action);
    if (!rec)
        return XDP_ABORTED;
    rec->rx_packets++;
    rec->rx_bytes += (ctx->data_end - ctx->data);
    return action;
}

#endif /* __XDP_STATS_KERN_H */

