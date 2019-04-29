#! /usr/bin/python3

import os
import subprocess

path = "./"
baseCmd = "sed -n '/#/p' file"
listKeywords = ["total packets:  ", "throughput", "RTT full_sz avg"]

def getOneTXT(tmpCmd):
    def getValue(tmpCmd, index):
        cmd1 = tmpCmd.replace('#', listKeywords[index])
        byte_output = subprocess.check_output(cmd1, shell = True)
        list1 = byte_output.decode('utf-8').strip().split()
        if 0 == index:
            if int(list1[2]) > int(list1[-1]):
                pkgs = list1[2]
            else:
                pkgs = list1[-1]
            return pkgs
        if 1 == index:
            if 0 == float(list1[1]):
                tp = list1[-2]
            else:
                tp = list1[1]
            return tp
        if 2 == index:
            if 0 == float(list1[3]):
                rtt = list1[-2]
            else:
                rtt = list1[3]
            return rtt
    
    pkgs = getValue(tmpCmd, 0)
    tp   = getValue(tmpCmd, 1)
    rtt  = getValue(tmpCmd, 2)
    
    return [pkgs, tp, rtt]

#主函数        
dirs = os.listdir(path)
for dir in dirs:
    if os.path.isdir(dir) and dir.startswith("path"):
        os.chdir(path + dir)    
        #---------------------------
        statisFile = dir + ".log"
        fp = open(statisFile, 'w')
        fp.write(" ,total packets,throughput,RTT\n")

        files = os.listdir(path)
        files.sort()
        for file in files:
            if os.path.isfile(file) and file.endswith("txt"):
                tmpCmd = baseCmd.replace('file', file)
                list1 = getOneTXT(tmpCmd)
                fp.write(','.join([os.path.splitext(file)[0][8:]] + list1) + "\n")
        
        fp.close()
        subprocess.call("mv " + statisFile + " ../", shell = True)
        #---------------------------
        os.chdir("../")
print("end")