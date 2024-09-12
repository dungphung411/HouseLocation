#!/bin/bash
sudo su
# Update package index
sudo apt-get update

# Install Node.js and npm
sudo apt-get install -y nodejs npm

# Verify installation
node -v
npm -v
