import os
import subprocess
import argparse
import json



def load_bpf_helper_map(fname):
    with open(fname, 'r') as f:
        data = json.load(f)
    return data


def check_and_return_helper_present(my_dict,line):
    for key in my_dict.keys():
        if line.find(key)>=0:
            return key
    return None

def get_helper_encoding(lines,helperdict):
    helper_set= set()
    for line in lines:
        present=check_and_return_helper_present(helperdict,line)
        if present != None:
            helper_set.add(present)
    str =  ""
    for helper in helper_set:
        str = str + helper +","
    return str


def set_to_string(my_set):
    str =  ""
    for elem in my_set:
        str = str + elem +","
    return str


def get_read_maps(lines):
    map_read_set=set()
    for line in lines:
        mapname= check_map_access(map_read_fn,line)
        if mapname != None:
            map_read_set.add(mapname)
    return set_to_string(map_read_set)
            
def get_update_maps(lines):
    map_update_set=set()
    for line in lines:
        mapname= check_map_access(map_update_fn,line)
        if mapname != None:
            map_update_set.add(mapname)
    return set_to_string(map_update_set)


def get_prog_id(sec_name,output):
    lines = output.split("\n")
    #print(lines)
    last_line=""
    for line in lines:
        if sec_name in line:
            print(line)
            last_line = line
    #print("Get prog_id: ",last_line)
    prog_id = last_line.split(":")[0]
    print(prog_id)
    return prog_id

def check_map_access(my_arr,line):
    for func in my_arr:
        idx = line.find(func)
        if idx>=0:
            chunks = line[len(func)+idx:].replace('(','')
            first_entry_end = chunks.find(',')
            return chunks[:first_entry_end].replace("&","")
    return None



def run_cmd(cmd):
    with subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=None, shell=True) as process:
        output = process.communicate()[0].decode("utf-8")
        print(output)
        return output



    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='eBPF Code Summarizer')

    parser.add_argument('-f','--bpfHelperFile', type=str,required=False,
            help='Information regarding bpf_helper_funcitons ')

    parser.add_argument('-s','--srcFile', type=str,required=True,
            help='eBPF ELF file')

    parser.add_argument('-e','--secName', type=str,required=True,
            help='Section Name')

    parser.add_argument('-c','--isCilium', type=bool,required=True,
            help='Whether cilium functions which have wrappers for helpers')


    args = parser.parse_args()

    print("Args",args)

    isCilium = args.isCilium

    
    fname = args.srcFile
    sec_name = args.secName
    if(isCilium == False):
        map_update_fn = ["bpf_sock_map_update", "bpf_map_delete_elem", "bpf_map_update_elem","bpf_map_pop_elem", "bpf_map_push_elem"]
        map_read_fn = ["bpf_map_peek_elem", "bpf_map_lookup_elem", "bpf_map_pop_elem"]
    else:
        map_update_fn = ["sock_map_update", "map_delete_elem", "map_update_elem","map_pop_elem", "map_push_elem"]
        map_read_fn = ["map_peek_elem", "map_lookup_elem", "map_pop_elem"]

    bpf_helper_file= ""
    if(args.bpfHelperFile is not None):
        bpf_helper_file = args.bpfHelperFile
    else:
        if(isCilium == False):
            print("Warning: bpf_helper_file not specified using default asset/helper_hookpoint_map.json\n")
            bpf_helper_file = "asset/bpf_helper_mappings/helper_hookpoint_map.json"
        else:
            print("Warning: bpf_helper_file not specified using default asset/cilium.helper_hookpoint_map.json\n")
            bpf_helper_file = "asset/bpf_helper_mappings/cilium.helper_hookpoint_map.json"

    helperdict = load_bpf_helper_map(bpf_helper_file)

    helper_to_desc_dict = {}
    build_helper_desc_dict("./man_bpf_helpers.txt")
    exit(0)

    
    cmd = "bpftool prog loadall " + fname+ " /sys/fs/bpf/check type tc"
    run_cmd(cmd)
    cmd =  "bpftool prog show"
    output = run_cmd(cmd)
    prog_id = get_prog_id(sec_name,output)
    cmd = "bpftool prog dump xlated id " + prog_id +  " > out"
    output = run_cmd(cmd)
    print(output)
    cmd = "grep \";\" out > decompiled.c"
    output = run_cmd(cmd)
    print(output)
    ifile = open('decompiled.c','r')
    lines = ifile.readlines();
    encoding = get_helper_encoding(lines,helperdict)
    read_maps = get_read_maps(lines)
    update_maps = get_update_maps(lines)
    print("Encoding: ",encoding,"Read Maps: ",read_maps,"Update Maps: ",update_maps)

    
    #print(rc.decode("utf-8"))
    #runbpftool()
