#!/usr/bin/env bash

# Symlinking the dotfiles directory with stow(!)
# Running brew.sh to make sure stow gets installed

./brew.sh

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update

#TEST COMMIT