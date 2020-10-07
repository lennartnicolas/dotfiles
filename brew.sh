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

#Install MacOS Applications
brew cask install opera
brew cask install google-chrome
brew cask install adobe-acrobat-reader
brew cask install sourcetree
brew cask install spotify
brew cask install discord
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install postgres
brew cask install figma
brew cask install qt-creator
brew cask install spectacle
brew cask install docker
brew cask install openoffice

echo ""
echo "Brew Packages installed succesfully--"