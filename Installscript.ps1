#!/bin/bash


#Install nodejs , you can go to website https://nodejs.org/en/download/package-manager/current to install what version you want
# to use install via CLI , first install Choco 
  # run powershell with admin privillige then write the script  below: 
                    # Set-ExecutionPolicy Bypass -Scope Process -Force
                   # [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
                   # check by typing : choco 



# Follow official instructions at https://chocolatey.org/
# Chocolatey is not officially maintained by the Node.js project and might not support the v20.17.0 version of Node.js


choco install nodejs-lts --version="20.17.0"
node -v # should print `20`
npm -v # should print `10.8.2`

npm install -g @angular/cli@17  # install angular 
ng version 