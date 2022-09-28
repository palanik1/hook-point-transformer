#ifndef __BALANCER_CONSTS_H
#define __BALANCER_CONSTS_H
#define BE_ETH_P_IP 8
#define BE_ETH_P_IPV6 56710
#define GUEV1_IPV6MASK 0x30
#define FURTHER_PROCESSING -1
#define PCKT_FRAGMENTED 65343
#define IPV4_HDR_LEN_NO_OPT 20
#define IPV4_PLUS_ICMP_HDR 28
#define IPV6_PLUS_ICMP_HDR 48
#ifndef RING_SIZE
#define RING_SIZE 65537
#endif
#ifndef MAX_VIPS
#define MAX_VIPS 512
#endif
#ifndef MAX_REALS
#define MAX_REALS 4096
#endif
#ifndef MAX_LPM_SRC
#define MAX_LPM_SRC 3000000
#endif
#ifndef MAX_DECAP_DST
#define MAX_DECAP_DST 6
#endif
#ifndef MAX_QUIC_REALS
#define MAX_QUIC_REALS 0x00fffffe // 2^24-2
#endif
#define CTL_MAP_SIZE 16
#define SUBPROGRAMS_ARRAY_SIZE 1
#define RECIRCULATION_INDEX 0
#define CH_RINGS_SIZE (MAX_VIPS * RING_SIZE)
#define STATS_MAP_SIZE (MAX_VIPS * 2)
#ifndef MAX_SUPPORTED_CPUS
#define MAX_SUPPORTED_CPUS 128
#endif
#define DEFAULT_LRU_SIZE 1000
#define DEFAULT_GLOBAL_LRU_SIZE 10000
#define ONE_SEC 1000000000U // 1 sec in nanosec
#ifndef LRU_UDP_TIMEOUT
#define LRU_UDP_TIMEOUT 30000000000U // 30 sec in nanosec
#endif
#define F_IPV6 (1 << 0)
#define F_LOCAL_REAL (1 << 1)
#define F_HASH_NO_SRC_PORT (1 << 0)
#define F_LRU_BYPASS (1 << 1)
#define F_QUIC_VIP (1 << 2)
#define F_HASH_DPORT_ONLY (1 << 3)
#define F_SRC_ROUTING (1 << 4)
#define F_LOCAL_VIP (1 << 5)
#define F_GLOBAL_LRU (1 << 6)
#define F_ICMP (1 << 0)
#define F_SYN_SET (1 << 1)
#ifndef DEFAULT_TTL
#define DEFAULT_TTL 64
#endif
#define QUIC_LONG_HEADER 0x80
#define QUIC_SHORT_HEADER 0x00
#define QUIC_CLIENT_INITIAL 0x00
#define QUIC_0RTT 0x10
#define QUIC_HANDSHAKE 0x20
#define QUIC_RETRY 0x30
#define QUIC_PACKET_TYPE_MASK 0x30
#ifndef QUIC_MIN_CONNID_LEN
#define QUIC_MIN_CONNID_LEN 8
#endif
#ifndef QUIC_CONNID_VERSION_V1
#define QUIC_CONNID_VERSION_V1 0x1
#endif
#ifndef QUIC_CONNID_VERSION_V2
#define QUIC_CONNID_VERSION_V2 0x2
#endif
#define QUIC_CONNID_VERSION_V1_MAX_VAL 0xFFFF
#ifdef TCP_SERVER_ID_ROUTING
#define TCP_HDR_OPT_KIND_TPR 0xB7
#define TCP_HDR_OPT_LEN_TPR 6
#define TCP_HDR_OPT_MAX_OPT_CHECKS 15
#define TCP_OPT_EOL 0
#define TCP_OPT_NOP 1
#endif
#ifndef MAX_PCKT_SIZE
#define MAX_PCKT_SIZE 1514
#endif
#define ICMP_TOOBIG_SIZE 98
#define ICMP6_TOOBIG_SIZE 262
#define ICMP6_TOOBIG_PAYLOAD_SIZE (ICMP6_TOOBIG_SIZE - 6)
#define ICMP_TOOBIG_PAYLOAD_SIZE (ICMP_TOOBIG_SIZE - 6)
#define NO_FLAGS 0
#define LRU_CNTRS 0
#define LRU_MISS_CNTR 1
#define NEW_CONN_RATE_CNTR 2
#define FALLBACK_LRU_CNTR 3
#define ICMP_TOOBIG_CNTRS 4
#define LPM_SRC_CNTRS 5
#define REMOTE_ENCAP_CNTRS 6
#define QUIC_ROUTE_STATS 7
#define QUIC_CID_VERSION_STATS 8
#define QUIC_CID_DROP_STATS 9
#define TCP_SERVER_ID_ROUTE_STATS 10
#define GLOBAL_LRU_CNTR 11
#define GLOBAL_LRU_MISMATCH_CNTR 12
#ifndef MAX_CONN_RATE
#define MAX_CONN_RATE 125000
#endif
#ifndef IPIP_V4_PREFIX
#define IPIP_V4_PREFIX 4268
#endif
#ifndef IPIP_V6_PREFIX1
#define IPIP_V6_PREFIX1 1
#endif
#ifndef IPIP_V6_PREFIX2
#define IPIP_V6_PREFIX2 0
#endif
#ifndef IPIP_V6_PREFIX3
#define IPIP_V6_PREFIX3 0
#endif
#ifndef DEFAULT_TOS
#define DEFAULT_TOS 0
#endif
#ifndef COPY_INNER_PACKET_TOS
#define COPY_INNER_PACKET_TOS 1
#endif
#ifndef GUE_DPORT
#define GUE_DPORT 6080
#endif
#ifndef GUE_CSUM
#define GUE_CSUM 0
#endif
#ifndef INIT_JHASH_SEED
#define INIT_JHASH_SEED CH_RINGS_SIZE
#endif
#ifndef INIT_JHASH_SEED_V6
#define INIT_JHASH_SEED_V6 MAX_VIPS
#endif
#ifdef LPM_SRC_LOOKUP
#ifndef INLINE_DECAP
#ifndef INLINE_DECAP_GUE
#define INLINE_DECAP
#endif // of INLINE_DECAP_GUE
#endif // of INLINE_DECAP
#endif // of LPM_SRC_LOOKUP
#ifdef INLINE_DECAP
#ifndef INLINE_DECAP_IPIP
#define INLINE_DECAP_IPIP
#endif // of INLINE_DECAP_IPIP
#endif
#ifdef INLINE_DECAP_IPIP
#ifndef INLINE_DECAP_GENERIC
#define INLINE_DECAP_GENERIC
#endif // of INLINE_DECAP_GENERIC
#endif // of INLINE_DECAP_IPIP
#ifdef INLINE_DECAP_GUE
#ifndef INLINE_DECAP_GENERIC
#define INLINE_DECAP_GENERIC
#endif // of INLINE_DECAP_GENERIC
#endif // of INLINE_DECAP_GUE
#ifdef GUE_ENCAP
#define PCKT_ENCAP_V4 gue_encap_v4
#define PCKT_ENCAP_V6 gue_encap_v6
#define HC_ENCAP hc_encap_gue
#else
#define PCKT_ENCAP_V4 encap_v4
#define PCKT_ENCAP_V6 encap_v6
#define HC_ENCAP hc_encap_ipip
#endif
#define V4_SRC_INDEX 0
#define V6_SRC_INDEX 1
#endif // of __BALANCER_CONSTS_H