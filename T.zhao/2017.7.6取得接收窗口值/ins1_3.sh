#!/bin/bash
sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_1.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_2.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_3.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_4.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_5.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_6.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_7.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_8.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_9.dmp
sleep 3

sudo tcpdump -n -i eth0 host 10.1.7.12 -c 3000 -w packets_3000_10.dmp
sleep 3

