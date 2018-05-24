#!/bin/bash
curl -O https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
sha256sum Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh
rm Anaconda3-5.1.0-Linux-x86_64.sh 
echo "export PATH=$HOME/anaconda3/bin:$PATH" >> ~/.bashrc
sudo ln -s $HOME/anaconda3/etc/profile.d/conda.sh /etc/profile.d/conda.sh
echo "conda activate" >> ~/.bashrc
echo "alias condaenv='echo $CONDA_DEFAULT_ENV'" >> ~/.bashrc
source $HOME/.bashrc

