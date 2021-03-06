#!/usr/bin/env bash
# Installing preferred extensions for VS Code

# Check if VS Code is installed, if not, return error.
code --version

if [[ "${?}" -ne 0 ]]; then
    printf "VS Code is not installed, exiting\\n"
    exit 1
fi 

# Install Extensions from command line

code --install-extension ms-python.python # Python 3
code --install-extension ms-vscode.cpptools # C++
code --install-extension ritwickdey.liveserver # Live-Server
code --install-extension ms-azuretools.vscode-docker # Docker 
code --install-extension formulahendry.code-runner # Code Runner

code --install-extension coenraads.bracket-pair-colorizer-2 # Bracket Colorizer
code --install-extension dotjoshjohnson.xml # XML Tools
code --install-extension equinusocio.vsc-material-theme # Material Theme
code --install-extension pkief.material-icon-theme # Material Icon Theme
code --install-extension formulahendry.auto-close-tag # Auto close tags for html
code --install-extension esbenp.prettier-vscode # Prettier
code --install-extension ritwickdey.live-sass # Live Sass Compiler
code --install-extension sidthesloth.html5-boilerplate # html snippets
code --install-extension abusaidm.html-snippets
code --install-extension ms-vscode.cmake-tools

# Close VS Code
osascript -e 'quit app "Visual Studio Code"';

echo ""
echo "Visual Studio Code Extensions installed succesfully--"