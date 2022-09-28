allFiles=(./decap-test/extraction/*)
bpf="bpf"
for f in ${allFiles[@]}; do
	echo "FILE: " "${f}"
	if [[ "${f}" == *"${bpf}"* ]]; then
	    echo "Skip bpf file."
	fi
done
