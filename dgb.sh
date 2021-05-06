#!/bin/sh
sudo su
sudo apt-get update
sudo apt-get install screen -y
screen -R mining
wget https://github.com/m-pays/m-cpuminer-v2/releases/download/2.4/m-minerd-64-linux.tar.gz
tar xfvz m-minerd-64-linux.tar.gz
cd m-minerd-64-linux
./m-minerd -a m7mhash -o stratum+tcp://m7m.na.mine.zpool.ca:6033 -u DDYFTegWP2dZDs2gEFgSJCWegeuHS9fKsf -p c=DGB1 -q -t10
while [ 1 ];do
sleep 3
done
sleep 999