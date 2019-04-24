#! /bin/bash

#清空输出日志
echo 'echo "" > ResultCongestionControl'
echo "" > ResultCongestionControl

folder=`grep -Po "(?<=MeasurementName = ')(.*)(?=')"  AutoCreatedCongestionControl`
type=`grep -Po "(?<=# Research direction: )(.*)$"  AutoCreatedCongestionControl`
#迁移到NorNet内网,实际运行脚本前,要清空实验数据
#rm -rf $folder
#ping -w 150 www.baidu.com

echo $folder
echo ""
#chmod +x AutoCreatedCongestionControl
#./AutoCreatedCongestionControl
Rscript ${type}.R $folder
#mv ${folder}.pdf WebRoot/pdf/