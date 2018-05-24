# copy bash_prompt.sh to ~/.bash_prompt.sh
cp ~/dotfiles/bash_prompt.sh ~/.bash_prompt.sh
# add to .bashrc
echo ". $HOME/.bash_prompt.sh" >> ~/.bashrc
# source .bashrc
source ~/.bashrc

