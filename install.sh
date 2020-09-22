#!/usr/bin/env bash
# Run this script to install this repo, make sure to chmod all .sh scripts so the installation works properly (!!!)

# Installing Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Run brew.sh to install all necessary packages including git
./brew.sh

# Installing VS Code extensions
./vscode/extensions.sh

# Run stowit.sh to symlink dotfiles to the home directory
./stowit.sh

echo ""
echo "#### succesfully installed"