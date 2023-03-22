@xdp_pass@
@@
- SKB_PASS
+ XDP_PASS

@xdp_drop@
@@
- SKB_REJECT
+ XDP_DROP

@skb_to_xdp_gen@
@@
- struct __sk_buff *
+ struct xdp_md *

@add_data_data_end@
identifier fn,ctx;
type t;
@@
t fn(..., struct xdp_md *ctx, ...){
+ void* data = (void*)(long)ctx->data;
+ void* data_end = (void*)(long)ctx->data_end;
...
}

//+ if ((data + sizeof(struct ethhdr) + E1) > data_end) {
//+     return XDP_DROP;
//+ }
@load_word depends on add_data_data_end@
struct xdp_md *ctx;
typedef __be32;
type t;
identifier ret1;
expression ret, E1;
@@
(
- t ret1 = load_word(ctx, BPF_NET_OFF + E1);
+ t ret1 = *(__be32 *)(data + sizeof(struct ethhdr) + E1);
|
- ret = load_word(ctx, BPF_NET_OFF + E1);
+ ret = *(__be32 *)(data + sizeof(struct ethhdr) + E1);
)

@load_byte depends on add_data_data_end@
struct xdp_md *ctx;
typedef __u8;
type t;
identifier ret1;
expression ret, E1;
@@
(
- t ret1 = load_byte(ctx, E1);
+ t ret1 = *(__u8 *)(data + sizeof(struct ethhdr) + E1);
|
- ret = load_byte(ctx, E1);
+ ret = *(__u8 *)(data + sizeof(struct ethhdr) + E1);
)

@load_half depends on add_data_data_end@
struct xdp_md *ctx;
typedef __u16;
type t;
identifier ret1;
expression ret, E1;
@@
(
- t ret1 = load_half(ctx, E1);
+ t ret1 = *(__u8 *)(data + sizeof(struct ethhdr) + E1);
|
- ret = load_half(ctx, E1);
+ ret = *(__u8 *)(data + sizeof(struct ethhdr) + E1);
)

@skb_load_bytes depends on add_data_data_end@
struct xdp_md *ctx;
typedef __u16;
type t;
identifier ret1;
expression ret;
expression off, to, len;
@@
(
- return bpf_skb_load_bytes(ctx, off, to, len);
+ int ret_code;
+ if (data + off + len < data_end) {
+   ret_code = -1;
+ } else {
+   __builtin_memcpy(to, data + off, len); 
+   ret_code = 0;
+ }
+ return ret_code;
|
- t ret1 = bpf_skb_load_bytes(ctx, off, to, len);
+ if (data + off + len < data_end) {
+   ret1 = -1;
+ } else {
+   __builtin_memcpy(to, data + off, len); 
+   ret1 = 0;
+ }
|
- ret = bpf_skb_load_bytes(ctx, off, to, len);
+ if (data + off + len < data_end) {
+   ret1 = -1;
+ } else {
+   __builtin_memcpy(to, data + off, len); 
+   ret1 = 0;
+ }
)

