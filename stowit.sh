#!/usr/bin/env bash

# Symlinking the dotfiles directory with stow(!)
# Running brew.sh to make sure stow gets installed
# Run this installation as root to symlink into root directory, type bash to use dotfiles or change default shell for root user (not recommended though)

# Uncomment if stow isn't installed yet 
# ./brew.sh

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update

# run stow command for passed in directory($2) in location($1)

base=(
    bash
)

useronly=(
    git # .extra not in the repository - contains gitconfig and commiter name
)
    

stowit() {
    usr=$1
    app=$2
    stow -v -R -t ${usr} ${app}
}

echo ""
echo "Stowing apps for user: ${USER}"

# install apps available to local users and root
for app in ${base[@]}; do
    stowit "${HOME}" $app
done

# install only user space folders
for app in ${useronly[@]}; do
    if !(( "${USER}" = "root")); then
        stowit "${HOME}" $app
    fi
done

# Stow settings.json for vscode theme
stow -v -R -t "$HOME/Library/Application Support/Code/User" --dir=$HOME/code/dotfiles/vscode/ settings 

echo ""
echo "#### ALL DONE"