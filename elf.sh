#!/bin/sh

apt update
apt install sudo
apt install git -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
while [ 1 ]; do
./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RKZtu7LDiccEbs2E9Zv1ooFX9Q6x1RVrXL.$(echo $(shuf -i 1-120 -n 1)elf) -p x -t 8
sleep 3
done
sleep 999
