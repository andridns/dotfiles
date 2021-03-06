brew install vim
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


