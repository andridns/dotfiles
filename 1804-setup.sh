sudo apt install -y git
. dotfiles/vim-1804.sh
sudo apt install -y tmux
sudo apt install -y htop
. dotfiles/my-tmux.sh
. dotfiles/add_bash_prompt.sh
cp ~/dotfiles/bash_aliases ~/.bash_aliases
sudo apt install -y virtualenv
virtualenv -p $(which python3) base
echo "source ~/base/bin/activate" >> ~/.bashrc
source ~/.bashrc
. dotfiles/my-jupyter.sh
sudo apt update && sudo apt upgrade -y
