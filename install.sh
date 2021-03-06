#! /bin/bash

#安装chrome
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install google-chrome-stable

sudo apt-get -y install git
sudo apt-get -y install bwm-ng
sudo apt-get -y install vim
sudo apt-get -y install unar
#客户端可视化需要安装java
#sudo apt-get install default-jdk

#添加Thomas的PPA,添加公钥,需要按enter
sudo add-apt-repository ppa:dreibh/ppa
sudo apt-get update
sudo apt-get -y install netperfmeter
sudo apt-get -y install ffmpeg

#下载mptcp
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install build-essential
sudo apt-get -y install libssl-dev

cd ~
git clone --depth=1 git://github.com/multipath-tcp/mptcp.git
: '
cd mptcp
sudo make menuconfig
sudo make -j8
sudo make modules_install
sudo make install
'
#wireshark需要按enter选择,取消自动安装
#sudo apt-get -y install wireshark

#下载srs
git clone https://github.com/dreibh/srs.git
: '
cd srs
git checkout retrieve_local_ips
cd trunk
./configure
make -j8
'