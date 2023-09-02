#! /bin/bash
wget https://downloads.mongodb.com/compass/mongodb-compass_1.30.1_amd64.deb
cd Downloads
sudo apt install ./mongodb-compass_*_amd64.deb
sudo dpkg -i mongodb-compass_1.30.1_amd64.deb
# MongoDB-compass