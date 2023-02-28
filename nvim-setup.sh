#!/bin/bash

INITIAL_FOLDER=$(pwd);

cd /tmp/;
if test -e /tmp/nvim-linux64.deb
then
    # nothing
    echo "neovim has already downloaded";
else
    curl -L -O https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb; 
fi
sudo apt install /tmp/nvim-linux64.deb;

cd $INITIAL_FOLDER;
git clone https://github.com/nvim-lua/kickstart.nvim.git;
cd kickstart.nvim;

mkdir -p ~/.config/nvim;
cp init.lua ~/.config/nvim;

cd $INITIAL_FOLDER;
CUSTOM_LOCATION=~/.config/nvim/lua/custom
mkdir -p $CUSTOM_LOCATION;
cp plugins.lua "$CUSTOM_LOCATION"/;
AFTER_PLUGIN_LOCATION=~/.config/nvim/after/plugin
mkdir -p $AFTER_PLUGIN_LOCATION;
cp defaults.lua "$AFTER_PLUGIN_LOCATION"/;
nvim nvim-fisrt-instruction.txt;
