s
# Palanivel Kodeswaran <palani.kodeswaran@in.ibm.com>
# Sayandeep Sen <sayandes@in.ibm.com>


# namespace ns1 -> veth1 40.0.1.2/24
# namespace ns2 -> veth2 40.0.2.2/24


import os
import shutil

def check_if_cmd_available():
    commands = ['tcpdump', 'ip', 'tc']
    for cmd in commands:
        if shutil.which(cmd) is None:
            print("Command: ",cmd," unavailable.. ", "Exiting")
            return False
    print("All necessary commands found...")
    return True

def check_if_file_available(files):
    #files = [r'asset/c-extract-functions.txl', r'asset/c-extract-struct.txl', r'asset/c.grm.1', r'asset/bom.grm', r'asset/helper_hookpoint_map.json']
    for fl in files:
        if os.path.isfile(fl) is False:
            print("File: ",fl," unavailable.. ", "Exiting")
            return False
    print("All necessary asset files found...")
    return True

#rm cscope.files cscope.out tags myproject.db 
def clean_intermediate_files(file_list):
    for file_path in file_list:
        try:
            if os.path.isfile(file_path) or os.path.islink(file_path):
                os.unlink(file_path)
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)
        except Exception as e:
            print('Failed to delete %s. Reason: %s' % (file_path, e))

def run_cmd(cmd):
    print("Running: ",cmd)
    status, output = subprocess.getstatusoutput(cmd)
    if(status != 0):
        print("Failed while running: ",cmd," Exiting...")
        exit(1)
    return output


def run_pipeline(makefile,file_list) :
    bpf="bpf"
    for f in file_list:
	print("FILE: " +f)
        if "bpf" in f:
	    print("Skip bpf file.")
	    continue
        if f.endswith(".orig"):
	    print("Skip processed file.")
	    continue
        shutil.copyfile(f, f+".orig")
	run_txl(f)
	run_coccinelle(f)
	filename=run_cmd("\$(basename -- "+f+")")
	extension=run_cmd("\${filename##*.}"
	filename="${filename%.*}"
	
	op_file=filename+"-Transformed"
	fix_makefile(makefile, filename, op_file)

    

def fix_makefile(makefile,ifile,ofile):
    op_makefile=makefile+".transformed"
    shutil.copyfile(makefile,op_makefile)
    run_cmd = ("sed -i \"s|"+ifile+"|"+ofile+"|g\" "+ op_makefile)
    


def run_coccinelle(filename) :
    echo "[RUN_COCCINELLE] FILE: " ${file}
    filename=$(basename -- "${file}")
    extension="${filename##*.}"
    filename="${filename%.*}"
    transformed=${filename}"-Transformed"
    
    #replace filename with filename-Transformed
    op_file=${file//$filename/$transformed}
    #op_file=${filename}"-Transformed."${extension}
    #spatch --sp-file ${COCCI_FILE} ${file} --in-place --debug
    output = run_cmd("spatch --sp-file "+COCCI_FILE+" "+filename+" -o "+op_file)


def run_txl(filename,txl_file):
    print("[RUN_TXL] FILE: "+filename)
    output = run_cmd("txl -o op.c "+filename+" "+txl_file)

    #mv op.c ${file}


COCCI_FILE="./dep/coccinelle/xdp-to-tc.cocci"
TXL_FILE="./dep/txl/c.txl.1"

echo "USAGE: transformer.sh <Makefile> <list of files to transform>"

makefile=Makefile
run_pipeline(make_file,file_list)

