#! /bin/bash
sudo apt update && sudo apt upgrade -y
# To successfully install the browser, you will need to install the following packages; run this command if you are unsure; it will not harm your system
sudo apt install software-properties-common apt-transport-https wget ca-certificates gnupg2 ubuntu-keyring -y
# Import the GPG key, and use the following command.
sudo wget -O- https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/google-chrome.gpg
# Once the GPG import is complete, you will need to import the Google Chrome repository.
echo deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt update

sudo apt install google-chrome-stable -y

google-chrome