#!/usr/bin/env bash

# Symlinking the dotfiles directory with stow(!)
# Running brew.sh to make sure stow gets installed

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
echo "Stowing apps for user: ${whoami}"

# install apps available to local users and root
for app in ${base[@]}; do
    stowit "${HOME}" $app
done

# install only user space folders
for app in ${useronly[@]}; do
    if [[ "$(whoami)" = *"root"*]]; then
        stowit "${HOME}" $app
    fi
done

echo ""
echo "#### ALL DONE"