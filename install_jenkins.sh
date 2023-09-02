#!/bin/bash
wget -q -O - https://pkg.jenkins.io/debian-stable/... | sudo apt-get key add

'sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/>/etc/apt/sources.list.d/jenkind.list

sudo apt-get update

sudo apt-get install jenkins
sudo systemctl status jenkins
