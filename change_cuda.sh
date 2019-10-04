VERSION=9.0 # specify cuda version here
unset PATH # lol
unset CUDADIR
unset LD_LIBRARY_PATH
# unsetting PATH was a bad idea, so gotta put all the default paths back in
export PATH=$PATH:/usr/local/cuda-$VERSION/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
sudo rm /usr/local/cuda
sudo ln -s /usr/local/cuda-$VERSION /usr/local/cuda
. /usr/share/bash-completion/bash_completion # always a part of .bashrc
export CUDADIR=/usr/local/cuda-$VERSION
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-$VERSION/lib64

