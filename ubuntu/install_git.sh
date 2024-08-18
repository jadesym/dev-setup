#!/bin/bash

# Setting up some fancy colors for reuse
GREEN='\033[0;32m'
NO_COLOR='\033[0m'

# Ensure that git can be updated properly
sudo apt install ppa-purge
sudo ppa-purge ppa:git-core/ppa

sudo apt update

# Install Git
sudo apt-get install git -y

# Set default editor for git to vim
git config --global core.editor vim
# Automatically set up remote tracking so its not necessary
git config --global push.autoSetupRemote true
# Ensure that 'git push' only pushes the current branch to a remote repo with the same name
git config --global push.default current

# Install Github CLI
sudo apt install gh -y

echo -e "\n${GREEN}Finished installing all necessary dependencies and packages for git!${NO_COLOR}"

# Output versions
git --version
gh --version
