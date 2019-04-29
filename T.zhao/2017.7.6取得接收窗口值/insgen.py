#! /usr/bin/python3

dstIP = "10.9.7.12"
baseTcpdumpCmd = "sudo tcpdump -n -i eth0 host " + dstIP + " -c 3000 -w packets_3000_#.dmp"

fp = open("ins2_4.sh", 'w')
fp.write("#!/bin/bash" + "\n")

list1 = list(range(1,11,1))
for i in list1:
    cmd1 = baseTcpdumpCmd.replace('#', str(i))
    fp.write(cmd1 + "\n")
    fp.write("sleep 3\n")
    fp.write("\n")

fp.close()
print("end")