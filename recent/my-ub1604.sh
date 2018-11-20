cd
sudo apt-get update && sudo apt-get -y upgrade
sudo apt update && sudo apt -y upgrade
echo "LOG: installing htop, tmux, pip and virtualenv"
sudo apt install -y curl htop tmux python-pip
sudo apt install -y virtualenv
echo "LOG: customizing vim and tmux"
. dotfiles/recent/vim-1604.sh
. dotfiles/recent/my-tmux.sh
echo "LOG: copying bash aliases"
# bash aliases
cp dotfiles/bash_aliases ~/.bash_aliases
source .bashrc
echo "LOG: installing tldr, youtube-dl"
pip install tldr youtube-dl
echo "LOG: git config"
git config --global user.email "andridsasmita@gmail.com"
git config --global user.name "Andri Danusasmita"
echo "LOG: installing sublime-text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get -y install sublime-text
echo "LOG: installing vscode"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get -y install apt-transport-https
sudo apt-get update
sudo apt-get -y install code
echo "LOG: installing google chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb 
