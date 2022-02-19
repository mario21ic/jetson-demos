#!/bin/bash

#https://forums.developer.nvidia.com/t/docker-isnt-working-after-apt-upgrade/195213/7

#sudo apt install docker.io=20.10.7-0ubuntu5~18.04.3
wget https://launchpad.net/ubuntu/+source/docker.io/20.10.2-0ubuntu1~18.04.2/+build/21335731/+files/docker.io_20.10.2-0ubuntu1~18.04.2_arm64.deb
sudo dpkg -i docker.io_20.10.2-0ubuntu1~18.04.2_arm64.deb

sudo apt install containerd=1.5.2-0ubuntu1~18.04.3

docker run --runtime nvidia -ti nvcr.io/nvidia/l4t-cuda:10.2.460-runtime bash

