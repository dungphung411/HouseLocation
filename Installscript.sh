#!/bin/bash

# Verify installati
sudo -S sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

sudo -S apt install -y nodejs
  
sudo npm install -g @angular/cli -y   #chau fix dc loi bat buoc phai chay root de install ( have to manual install using root )

sudo -y apt autoremove

echo $(node --version) 
echo $(npm --version)
echo $(ng version)