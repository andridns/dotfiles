sudo apt-get update
sudo apt-get upgrade
git clone https://github.com/andridns/dotfiles
sudo apt-get remove vim.tiny
sudo apt-get update
sudo apt-get install vim-gtk
vi --version | grep xterm
vi --version | grep python
. dotfiles/my-vim.sh 

