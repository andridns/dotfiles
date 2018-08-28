sudo apt install git
. dotfiles/vim-1804.sh 
sudo apt install tmux
sudo apt install htop
. dotfiles/my-tmux.sh
. dotfiles/add_bash_prompt.sh
cp ~/dotfiles/bash_aliases ~/.bash_aliases
sudo apt install virtualenv
virtualenv -p /home/andri/base/bin/python3 base
echo "source ~/base/bin/activate" >> ~/.bashrc
source ~/.bashrc
. dotfiles/my-jupyter.sh
