#! /bin/bash

pwd
export LANG=C
ls -l
echo ""
sleep 5
ifconfig
ping -w 10 www.baidu.com
chmod 777 test.py
./test.py