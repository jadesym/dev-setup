#!/bin/bash

# Setting up some fancy colors for reuse
GREEN='\033[0;32m'
NO_COLOR='\033[0m'

sudo apt install make -y

echo -e "\n${GREEN}Finished installing all necessary dependencies and packages for git!${NO_COLOR}"

# Output versions
make --version
