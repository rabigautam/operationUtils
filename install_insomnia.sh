#! /bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install apt-transport-https -y
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
sudo apt update
sudo apt install insomnia -y
insomnia