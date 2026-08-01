#!/bin/bash

apt-get update -y
apt-get install -y git docker.io

systemctl enable docker
systemctl start docker

usermod -aG docker ubuntu

echo "EC2 configured successfully" > /home/ubuntu/info.txt