@xdpdrop@
@@
- XDP_PASS
+ TC_ACT_OK
@@

@@
- XDP_DROP
+ TC_ACT_SHOT

@rule3@
identifier p,c,fn;
type t;
struct ethhdr *e;
@@
t fn(struct __sk_buff *ctx){
...
- e->h_proto
+ ctx->protocol
...
}

@vlanproto@
identifier p,c,fn;
type t;
struct vlan_hdr *v;
@@
t fn(struct xdp_md *ctx){
<...
- v->h_vlan_encapsulated_proto
+ ctx->vlan_proto
...>
}


@vlantci@
identifier p,c,fn;
type t;
struct vlan_hdr *v;
@@
t fn(struct xdp_md *ctx){
<...
- v->h_vlan_TCI
+ ctx->vlan_tci
...>
}



@addheader@
@@
#include <...>
+#include <linux/pkt_cls.h>


@replacexdpadjust@
expression E1,E2;
@@
- bpf_xdp_adjust_head(E1,E2)
+ bpf_skb_adjust_room(E1,E2,BPF_ADJ_ROOM_MAC,BPF_F_ADJ_ROOM_ENCAP_L3_IPV4)

@removequeue@
identifier p,c,fn,ctx;
type t;
@@
static int __always_inline fn(struct xdp_md* ctx,...)
{
...
- ctx->rx_queue_index
+ ctx->blah
...
}

