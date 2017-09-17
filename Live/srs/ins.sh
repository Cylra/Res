#! /bin/bash

#Write by Cylra
#指出srs源码中需要将socket的IPv4结构体和参数变更为IPv6的文件
#具体区别见https://www.ibm.com/developerworks/cn/linux/l-cn-ipv4v6-sockapp/
#以及http://blog.csdn.net/neomc/article/details/5516346

IPv4_arr=("AF_INET" "PF_INET" "in_addr" "sockaddr_in" "inet_aton" "inet_addr" "inet_ntoa" "gethostbyname" "gethostbyaddr" "sin_family" "sin_addr.s_addr" "sin_port" "INADDR_ANY")
IPv6_arr=("AF_INET6" "PF_INET6" "in6_addr" "sockaddr_in6" "inet_pton" "inet_pton" "inet_ntop" "getipnodebyname" "getipnodebyaddr" "sin6_family" "sin6_addr" "sin6_port" "in6addr_any")
i=0
record_file="ins.txt"

echo "------------------------------------------------------" >> $record_file  #run times
for factor in ${IPv4_arr[*]}
do
    echo "${factor} >> ${IPv6_arr[$i]}" >> $record_file
    grep -rnw "${factor}" . | egrep -v "$0|${record_file}" | tee -a ${record_file}| awk -F':' '{print $1,$2}' | while read file line
    do
        #echo file=$file line=$line
        #echo "${line}s/${factor}/${IPv6_arr[$i]}/g"
        sed -i "${line}s/${factor}/${IPv6_arr[$i]}/g" $file
    done
    echo "" >> $record_file
    let i=i+1
done