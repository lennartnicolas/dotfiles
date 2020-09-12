#!/usr/bin/env bash

# Symlinking the dotfiles directory with stow(!)

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update