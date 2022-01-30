#!/bin/bash

# Remove existing node versions
brew uninstall --ignore-dependencies node
brew uninstall --force node 

brew update 
brew install nvm 

# Add the following lines to ~/.zshrc
export NVM_DIR=$HOME/.nvm
mkdir $NVM_DIR
source $(brew --prefix nvm)/nvm.sh

# Pull versions from the package.json
NODE_VERSION=$(cat package.json | jq -r '.engines.node')
YARN_VERSION=$(cat package.json | jq -r '.engines.yarn')

nvm install $NODE_VERSION
nvm use $NODE_VERSION
nvm alias default $NODE_VERSION
npm install -g yarn@$YARN_VERSION

# Check versions
node --version
yarn --version
