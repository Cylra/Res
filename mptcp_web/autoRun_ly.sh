#! /bin/bash

echo 'echo "" > ResultCongestionControl'
echo "" > ResultCongestionControl

:<<!
pwd
hhhhhhhh
export LANG=C
ls -l
echo ""
Ls
sleep 5
ifconfig
#ping -w 10 www.baidu.com
!

folder=`grep -Po "(?<=MeasurementName = ')(.*)(?=')"  AutoCreatedCongestionControl`
#rm -rf $folder
#echo "ping -w 150 www.baidu.com"
#ping -w 150 www.baidu.com
#echo "./test.sh"
#./test.sh

echo $folder
echo ""
#chmod +x AutoCreatedCongestionControl
#./AutoCreatedCongestionControl
Rscript plot-demo.R $folder
#mv ${folder}.pdf WebRoot/pdf/