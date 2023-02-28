#!/bin/bash

sudo apt update;
sudo apt upgrade;
sudo apt install build-essential git curl wget unzip xclip ripgrep fd-find python3-venv;
chmod +x nvim-setup.sh;
./nvim-setup.sh;
