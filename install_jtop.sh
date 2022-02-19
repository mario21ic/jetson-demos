#!/bin/bash

sudo apt install -y python3-pip python3-virtualenv

# https://github.com/rbonghi/jetson_stats
sudo -H pip install -U jetson-stats

python3 -m virtualenv venv
source venv/bin/activate
pip install -U jetson-stats
jtop

