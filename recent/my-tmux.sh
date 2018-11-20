#!/bin/bash
cd
# tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
# copy tmux local configuration file
cp ~/dotfiles/tmux.conf.local ~/.tmux.conf.local

