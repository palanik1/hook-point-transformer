#bash src/transformer.sh ./examples/l3af_xdp_ratelimiting/Makefile examples/l3af_xdp_ratelimiting/ratelimiting_kern.c
#python3 src/transformer.py ./examples/l3af_xdp_ratelimiting/Makefile examples/l3af_xdp_ratelimiting/ratelimiting_kern.c
python3 src/hookpoint_checker.py -t flow_dissector -f ./asset/bpf_helper_mappings/helper_hookpoint_map.json -s xdp -m ./examples/l3af_xdp_ratelimiting/Makefile -l ./examples/l3af_xdp_ratelimiting/ratelimiting_kern.c -c False
