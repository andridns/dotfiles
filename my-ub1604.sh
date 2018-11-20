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

# installing sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# installing vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
l
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code



