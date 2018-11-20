cd
# Updating
sudo apt-get update && sudo apt-get -y upgrade
sudo apt update && sudo apt -y upgrade
# installing htop, tmux, pip, virtualenv
sudo apt install -y htop tmux python-pip
sudo apt install -y virtualenv
# customizing vim and tmux
. dotfiles/recent/vim-1604.sh
. dotfiles/recent/my-tmux.sh
# bash aliases
cp dotfiles/bash_aliases ~/.bash_aliases
source .bashrc
# installing tldr, youtube-dl
pip install tldr youtube-dl
# git config
git config --global user.email "andridsasmita@gmail.com"
git config --global user.name "Andri Danusasmita"

