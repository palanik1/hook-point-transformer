#!/usr/bin/env python

from scapy.all import *

def printer(packet):
    if(packet.haslayer(Raw)):
        print("Received:",packet.getlayer(Raw).load)

print("[+] Sniff started")
try:
    #while True:
    #sniffer = sniff(store=0, filter="host 127.0.0.1 and port 80", prn=printer, iface="lo")
    sniffer = sniff(store=0, filter="host 40.0.2.2 and port 80", prn=printer)
except KeyboardInterrupt as e:
     sniffer.stop
