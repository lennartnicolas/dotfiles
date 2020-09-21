#!/usr/bin/env bash
# Run this script to install this repo, make sure to chmod all .sh scripts so the installation works properly (!!!)

# Installing Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Run brew.sh to install all necessary packages including git
./brew.sh

# Installing VS Code extensions
./vscode/extensions.sh

# Run stowit.sh to symlink the dotfiles to the home directory (with stow)
./stowit.sh

# Copy the shell dotfiles to root directory to use dotfiles as sudo su
#for file in ~/.{bashrc,bash_prompt,bash_profile,aliases,functions,exports}; do
#    sudo cp $file /var/root; # MacOS root directory 
#done;
#unset file;

echo ""
echo "#### succesfully installed"