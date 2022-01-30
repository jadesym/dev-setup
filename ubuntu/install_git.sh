#!/bin/bash

# Setting up some fancy colors for reuse
GREEN='\033[0;32m'
NO_COLOR='\033[0m'

sudo apt update

# Install Git
sudo apt-get install git -y

# Set default editor for git to vim
git config --global core.editor vim

# Install Github CLI
sudo apt install gh -y

echo -e "\n${GREEN}Finished installing all necessary dependencies and packages for git!${NO_COLOR}"

# Output versions
git --version
gh --version
