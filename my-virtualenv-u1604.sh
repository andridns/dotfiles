#!/bin/bash
sudo pip3 install virtualenv
sudo pip3 install virtualenvwrapper

echo "export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3.6" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/Envs" >> ~/.bashrc
echo "export PROJECT_HOME=$HOME/Proj" >> ~/.bashrc
mkdir ~/Envs
mkdir ~/Proj
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source $HOME/.bashrc

virtualenv --version


