#! /bin/bash

#安装chrome
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install google-chrome-stable

sudo apt-get -y install git
sudo apt-get -y install wireshark

sudo apt-get -y install bwm-ng

sudo apt-get -y install libncurses5-dev
sudo apt-get -y install build-essential
sudo apt-get -y install libssl-dev

cd ~
git clone --depth=1 git://github.com/multipath-tcp/mptcp.git