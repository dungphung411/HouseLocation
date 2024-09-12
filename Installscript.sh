#!/bin/bash

# Update package index
#sudo apt-get update

# Install Node.js and npm
#sudo apt-get install -y nodejs npm

# Verify installati
sudo -S sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

sudo -S apt install -y nodejs  
 ## npm install -g @angular/cli -y   #chau fix dc loi bat buoc phai chay root de install ( have to manual install )
sudo -y apt autoremove

echo $(node --version) 
echo $(npm --version)
echo $(ng --version)