# Hook Point Transformation
The goal is to transform eBPF code written for one hookpoint to another, for instance, XDP to TC.
# Running
Hook point transformation  goes through a two stage process viz. transformation and verification.

## Transformation Stage
1. Edit src/transformer.sh to include the xdp program to transform.
2. Run src/transformer.sh

## Verification stage
1. Compile the transformed code in the existing code base.
2. To verify, edit verifier.sh to include the transformed object file and run verifier.sh
3. verifier.sh will check if both eBPF codes (XDP and TC) are functionally equivalent by sending crafted packets and checking if the received packets match in both cases. 

