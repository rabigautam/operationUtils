#! /bin/bash

sudo apt update
sudo apt -y install default-jdk

# Add DBeaver repository to your Debian / Ubuntu by running the commands below:
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list

# After adding the repo, update the apt list and install DBeaver CE:
sudo apt update
sudo apt install dbeaver-ce

