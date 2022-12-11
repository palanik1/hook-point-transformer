#Author: Sayandeep Sen (sayandes@in.ibm.com)
#Author: Palani Kodeswaran (palani.kodeswaran@in.ibm.com)

import json
from summarizer import *
from transformer import *

def is_func_compatible(prog_file,start,end,hookpoint,helper_hookpoint_dict):
    lines = []
    ifile = open(prog_file,'r')
    if not os.path.exists(prog_file):
        print("File Not Found: ",prog_file)
        return False
    lineCt = 1
    #ignore lines
    while lineCt < start:
        ##print("skipping line#: ",lineCt)
        ifile.readline()
        lineCt = lineCt + 1;
    while lineCt <= end :
        line = ifile.readline()
        ##print("lineCt",lineCt, " line: ",line)
        lines.append(line)
        lineCt= lineCt + 1
    ifile.close()
    return is_lines_compatible(lines,hookpoint,helper_hookpoint_dict)

def is_lines_compatible(lines,hookpoint,helper_hookpoint_dict):
    encoding = get_helper_encoding(lines,helper_hookpoint_dict)
    print("Encoding: ",encoding)
    helpers = encoding.split(",")
    del helpers[-1] #empty element
    hook_set = get_compatible_hookpoints(helpers,helper_hookpoint_dict)
    print("Compatible Hookpoints: ",hook_set)
    if hookpoint in hook_set:
        return True
    else:
        return False

def is_lines_compatible_verbose(lines,hookpoint,helper_hookpoint_dict):
    conflicting_helpers=[]
    encoding = get_helper_encoding(lines,helper_hookpoint_dict)
    print("Encoding: ",encoding)
    helpers = encoding.split(",")
    del helpers[-1] #empty element
    for helper in helpers:
        if not can_attach(hookpoint,helper,helper_hookpoint_dict):
            conflicting_helpers.append(helper)

    if len(conflicting_helpers) > 0:
        return False, conflicting_helpers
    else:
        return True, conflicting_helpers


def can_attach(hookpoint,helper,helper_hookpoint_dict):
    hookpoint_list = helper_hookpoint_dict[helper]
    print(hookpoint_list)
    hookpoints = hookpoint_list.split(",")
    if not hookpoint in hookpoints:
        return False
    return True

def is_prog_compatible(prog_name,hookpoint,helper_hookpoint_dict):
    ifile = open(prog_name,'r')
    lines = ifile.readlines()
    status,conflicts = is_lines_compatible_verbose(lines,hookpoint,helper_hookpoint_dict)
    if not status:
        print("PROG: "+prog_name+" INCOMPATIBLE HOOKPOINT: "+hookpoint+" UNTRANSFORMABLE HELPERS: ")
        print(conflicts)
        return False
    else:
        print("PROG: "+prog_name+" COMPATIBLE HOOKPOINT: "+hookpoint)
        return True

def get_compatible_hookpoints(helpers,helper_hookpoint_dict):
    hook_set = None
    for helper in helpers:
        hookpoint_list = helper_hookpoint_dict[helper]
        #print(hookpoint_list)
        hookpoints = hookpoint_list.split(",")
        helper_set=set(hookpoints)
        if hook_set == None:
            hook_set = helper_set
        else:
            hook_set = hook_set.intersection(helper_set)

    return hook_set




if __name__=="__main__":

    parser = argparse.ArgumentParser(description='eBPF HookPoint Transformer')

    parser.add_argument('-f','--bpfHelperFile', type=str,required=False,
            help='Information regarding bpf_helper_funcitons ')

    parser.add_argument('-s','--src', type=str,required=True,
            help='source hook point')

    parser.add_argument('-t','--target', type=str,required=True,
            help='target hook point')

    parser.add_argument('-m','--makeFile', type=str,required=True,
            help='Makefile')
    
    parser.add_argument('-l','--fileList', nargs='+', type=str,required=True,
            help='List of files')

    parser.add_argument('-c','--isCilium', type=bool,required=True,
            help='Whether cilium functions which have wrappers for helpers')


    args = parser.parse_args()


    print("Args",args)

    src_hookpoint=args.src
    target_hookpoint=args.target
    make_file=args.makeFile
    file_list=args.fileList
    isCilium = args.isCilium
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


    #fname = '../asset/bpf_helper_mappings/helper_hookpoint_map.json'
    helper_hookpoint_dict = load_bpf_helper_map(bpf_helper_file)
    #ret = is_prog_compatible("../examples/l3af_xdp_ratelimiting/ratelimiting_kern.c","flow_dissector",helper_hookpoint_dict)
    #ret = is_prog_compatible("../examples/suricata-test/xdp_filter.c",target_hookpoint,helper_hookpoint_dict)
    for f in file_list:
        ret = is_prog_compatible(f,target_hookpoint,helper_hookpoint_dict)
        print(ret)
        if not ret:
            print("CANNOT TRANSFORM")
            exit(0)
            
    print("RUNNING TRANSFORMATION for HOOKPOINT: "+target_hookpoint)
    run_pipeline(make_file,file_list)

    '''
    prog_file="../examples/l3af_xdp_ratelimiting/ratelimiting_kern.c"
    start=100
    end=276
    hookpoint="sched_act"

    
    prog_file="../examples/suricata-test/xdp_filter.c"
    start=487
    end=554
    #hookpoint="sched_act"
    hookpoint="flow_dissector"
    ret = is_func_compatible(prog_file,start,end,hookpoint,helper_hookpoint_dict)
    print(ret)
    '''
