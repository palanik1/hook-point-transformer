#Authors
# Palanivel Kodeswaran <palani.kodeswaran@in.ibm.com>
# Sayandeep Sen <sayandes@in.ibm.com>


function run_pipeline {
    bpf="bpf"
    for f in ${allFiles[@]}; do
	echo "FILE: " ${f}
	if [[ "${f}" == *"${bpf}"* ]]; then
	    echo "Skip bpf file."
	    continue
	fi
	if [[ "${f}" == *".orig" ]]; then
	    echo "Skip processed file."
	    continue
	fi
	
	cp ${f} ${f}.orig
	run_txl ${f}
	run_coccinelle ${f}
	filename=$(basename -- "${f}")
	extension="${filename##*.}"
	filename="${filename%.*}"
	
	op_file=${filename}"-Transformed"
	fix_makefile ${makefile} ${filename} ${op_file}
    done

    }

function fix_makefile() {
    makefile=${1}
    ifile=${2}
    ofile=${3}
    op_makefile=${makefile}".transformed"
    cp ${makefile} ${op_makefile}
    sed -i "s|${ifile}|${ofile}|g" ${op_makefile}
    
}

function run_coccinelle {
    file=$1
    echo "[RUN_COCCINELLE] FILE: " ${file}
    filename=$(basename -- "${file}")
    extension="${filename##*.}"
    filename="${filename%.*}"
    transformed=${filename}"-Transformed"
    
    #replace filename with filename-Transformed
    op_file=${file//$filename/$transformed}
    #op_file=${filename}"-Transformed."${extension}
    echo "opfile: "${op_file}
    #spatch --sp-file ${COCCI_FILE} ${file} --in-place --debug
    spatch --sp-file ${COCCI_FILE} ${file} -o ${op_file}
}

function run_txl {
    file=$1
    echo "[RUN_TXL] FILE: " ${file}
    txl -o op.c ${file} ${TXL_FILE}
    mv op.c ${file}
}

COCCI_FILE="./dep/coccinelle/xdp-to-tc.cocci"
TXL_FILE="./dep/txl/c.txl.1"

echo "USAGE: transformer.sh <Makefile> <list of files to transform>"

makefile=$1
echo "Makefile: "${makefile}
shift
allFiles=$*
echo "files: "${allFiles}

run_pipeline

