# Run this script to install this repo

# Installing homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# run brew.sh to install all necessary packages including git
./brew.sh

# run stowit.sh to symlink the dotfiles to the home directory (with stow)
./stowit.sh

echo ""
echo "#### succesfully installed"