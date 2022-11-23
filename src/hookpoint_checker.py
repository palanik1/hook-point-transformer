#Author: Sayandeep Sen (sayandes@in.ibm.com)
#Author: Palani Kodeswaran (palani.kodeswaran@in.ibm.com)

import json
from summarizer import *


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
    return is_lines_compatible(lines,hookpoint,helper_hookpoint_dict)
    '''
    lines = ifile.readlines();

    encoding = get_helper_encoding(lines,helper_hookpoint_dict)
    print("Encoding: ",encoding)
    helpers = encoding.split(",")
    del helpers[-1] #empty element
    hook_set = get_compatible_hookpoints(helpers,helper_hookpoint_dict)
    print("Compatible Hookpoints: ",hook_set)
    for helper in helpers:
        ret = can_attach(hookpoint,helper,helper_hookpoint_dict)
        if ret == False:
            return False
    return True
'''
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
    fname = '../asset/bpf_helper_mappings/helper_hookpoint_map.json'
    helper_hookpoint_dict = load_bpf_helper_map(fname)
    '''
    prog_file="../examples/l3af_xdp_ratelimiting/ratelimiting_kern.c"
    start=100
    end=276
    hookpoint="sched_act"
    '''
    
    prog_file="../examples/suricata-test/xdp_filter.c"
    start=487
    end=554
    #hookpoint="sched_act"
    hookpoint="flow_dissector"
    ret = is_func_compatible(prog_file,start,end,hookpoint,helper_hookpoint_dict)
    print(ret)
