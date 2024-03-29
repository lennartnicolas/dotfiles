#!/usr/bin/env bash

# Install git
brew install git

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Brew Packages
brew install python3
brew install tree
brew install stow
brew install node
brew install wget
brew install gcc
brew install cmake
brew install glm
brew install boost
brew install eigen
brew install xtensor
brew install opencv
brew install dlib

#Install MacOS Applications
brew install --cask opera
brew install --cask google-chrome
brew install --cask adobe-acrobat-reader
brew install --cask sourcetree
brew install --cask spotify
brew install --cask discord
brew install --cask virtualbox
brew install --cask visual-studio-code
brew install --cask postgres
brew install --cask figma
brew install --cask qt-creator
brew install --cask spectacle
brew install --cask docker
brew install --cask openoffice
brew install --cask postman
brew install --cask forticlient
brew install --cask geogebra
brew install --cask blender
brew install --cask slack
brew install --cask cycling74-max
brew install --cask zoom


echo ""
echo "Brew Packages installed succesfully--"
