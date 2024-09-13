#!/bin/bash

# Verify installati
sudo -S sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

sudo -S apt install -y nodejs
  
sudo npm install -g @angular/cli -y    #khong on dinh, van nen tu chay command nay thu cong de cai angular ( have to manual install using root )

sudo -y apt autoremove

echo $(node --version) 
echo $(npm --version)
echo $(sudo ng version)
echo $(pwd)

#nghich xong co the xoa node voi angular di khoi may linux, desau nay chay lai pipeline cho lau nhin cho thich.
# xoa angular truoc xoa nodejs sau
# sudo npm uninstall -g @angular/cli
# npm cache clean --force
# sudo rm -rf node_modules
# sudo rm -rf ~/.npm
# sudo rm -rf ~/.node-gyp

# sudo apt remove nodejs -y