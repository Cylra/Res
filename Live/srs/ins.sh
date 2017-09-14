#! /bin/bash

#Write by Cylra
#指出srs源码中需要将socket的IPv4结构体和参数变更为IPv6的文件
#具体区别见https://www.ibm.com/developerworks/cn/linux/l-cn-ipv4v6-sockapp/

IPv4_arr=("AF_INET" "PF_INET" "in_addr" "sockaddr_in" "inet_aton" "inet_addr" "inet_ntoa" "Gethostbyname" "Gethostbyaddr")
IPv6_arr=("AF_INET6" "PF_INET6" "in6_addr" "sockaddr_in6" "inet_pton" "inet_pton" "inet_ntop" "Getipnodebyname" "Getipnodebyaddr")
i=0

echo "" > ins.txt  #empty file
for factor in ${IPv4_arr[*]}
do
    echo "${factor} >> ${IPv6_arr[$i]}" >> ins.txt
    grep -rnw "${factor}" . | egrep -v "$0|ins.txt" >> ins.txt
    echo "" >> ins.txt
    let i=i+1
done