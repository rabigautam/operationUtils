#! /bin/bash

sudo apt remove golang-go
rm -rf /usr/local/go 
sudo tar -xvf $1 -C /usr/local
echo version......................
export PATH=$PATH:/usr/local/go/bin

go version
