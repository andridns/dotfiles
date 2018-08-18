#!/bin/bash
# check whether xterm-clipboard is installed
vi --version | grep xterm
# remove vim and vim.tiny
sudo apt-get -y remove vim vim.tiny
sudo apt-get update
# install full vim version
sudo apt-get -y install vim-gtk
# check xterm-clipboard
vi --version | grep xterm
