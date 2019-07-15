#!/bin/bash

apt-get update -y
apt-get upgrade -y

# install dependencies
apt-get install mercurial git gcc libc6-dev -y

# install golang
cd /home/ec2-user
hg clone -u release https://github.com/golang/go
cd go/src
./all.bash
