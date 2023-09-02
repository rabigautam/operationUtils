sudo docker ps
sudo chown $USER /var/run/docker.sock
echo $USER
sudo usermod -a -G docker $USER
sudo systemctl restart docker
docker ps
