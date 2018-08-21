#!/bin/bash
# check whether xterm-clipboard is installed
vi --version | grep xterm
# remove vim and vim.tiny
sudo apt-get -y remove vim vim.tiny
sudo apt-get update && sudo apt-get upgrade
# install full vim version
sudo apt-get -y install vim-gtk
# check xterm-clipboard
vi --version | grep xterm

cd ~
# get Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# get monokai color
git clone https://github.com/sickill/vim-monokai
mkdir ~/.vim/colors/
cp vim-monokai/colors/monokai.vim ~/.vim/colors/
rm -rf ~/vim-monokai/
# copy vimrc to home
cp ~/dotfiles/vimrc ~/.vimrc
# instal vim plugins and run vim
vi +PluginInstall +qall


