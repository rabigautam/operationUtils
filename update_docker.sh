#! /bin/bash


docker --version
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
