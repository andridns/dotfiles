#!/bin/bash
curl -O https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
sha256sum Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh
rm Anaconda3-5.1.0-Linux-x86_64.sh 
echo 'alias condaenv='\''echo $CONDA_DEFAULT_ENV'\''' >> ~/.bashrc
echo ". $HOME/anaconda3/etc/profile.d/conda.sh" >> ~/.bashrc
source $HOME/.bashrc

