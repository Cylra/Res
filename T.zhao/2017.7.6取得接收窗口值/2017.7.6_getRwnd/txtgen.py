#! /usr/bin/python3

import os
import subprocess

path = "./"
baseTcptraceCmd = "tcptrace -rln # > ?.txt"
dirs = os.listdir(path)
for dir in dirs:
    if os.path.isdir(dir) and dir.startswith("path"):
        os.chdir(path + dir)
        #---------------------------
        files = os.listdir(path)
        for file in files:
            if os.path.isfile(file) and file.startswith("packets"):
                fileName = os.path.splitext(file)[0]
                cmd1 = baseTcptraceCmd.replace('#', file)
                cmd2 = cmd1.replace('?',fileName)
                subprocess.call(cmd2, shell = True)
        #---------------------------
        os.chdir("../")
print("end")