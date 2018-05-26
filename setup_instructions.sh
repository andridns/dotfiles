### start of GCP instance ###
# Canonical publishes packages for its Guest Environment to the Universe repository. Enable the Universe repository first:
sudo apt-add-repository universe
# Update package lists:
sudo apt-get update
# Install the Guest Environment packages:
declare -a PKG_LIST=(python-google-compute-engine \
python3-google-compute-engine \
google-compute-engine-oslogin \
gce-compute-image-packages)
for pkg in ${PKG_LIST[@]}; do
   sudo apt install -y $pkg || echo "Not available: $pkg"
done
### end of GCP instance config ###

### PIP, GIT, PYTHON3.6
sudo apt-get update 
sudo apt update
sudo apt install -y git automake build-essential pkg-config libevent-dev libncurses5-dev

# install python 3.6
sudo add-apt-repository ppa:jonathonf/python-3.6
# end add-apt

# next
sudo apt-get update
sudo apt-get -y install python3.6
# end python

# install virtualenv
# Install pip first
sudo apt-get -y install python-pip 

sudo apt-get -y install python3-pip 

#Then install virtualenv using pip3
sudo pip3 install virtualenv 
pip install --upgrade pip
# create new virtualenv
virtualenv -p /usr/bin/python3.6 py36
echo "source ~/py36/bin/activate" >> .bashrc
source .bashrc
# end virtualenv
sudo apt-get -y install vim 
sudo apt -y install xclip xsel
# end vim, xclip

# tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
# end tmux
# install htop
sudo apt-get -y install htop
# end htop

# installing libraries
pip install pandas matplotlib scikit-learn seaborn
pip3 install jupyter notebook opencv-python
pip3 install tqdm bokeh
pip install tensorflow keras
pip install pillow h5py flask
pip install BeautifulSoup4
# end pip

# Install the TexLive base
sudo apt-get -y install texlive-latex-base 

sudo apt-get -y install texlive-fonts-recommended
# sudo apt-get -y install texlive-fonts-extra
# end texlive latex pdf

# cs50 start
sudo apt-get install software-properties-common whiptail

sudo apt-add-repository ppa:cs50/ppa

sudo apt-get update
sudo apt-get install libcs50

pip install cs50
# cs50 end

#vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#copy into .vimrc first from vimsettings_v1.txt
touch .vimrc
# get monokai color
git clone https://github.com/sickill/vim-monokai
mkdir .vim/colors/
cp vim-monokai/colors/monokai.vim .vim/colors/
# end monokai

# when ready, (after copying .vimrc contents) run this
vim +PluginInstall +qall
# run again
vim +PluginInstall +qall
vim +PluginInstall +qall
#vimend

# bash prompt update to include git branch and virtualenv info
# first copy bash_prompt.txt to ~/.bash_prompt.sh
echo "export CDPATH=~/symlinks" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/Envs" >> ~/.bashrc
echo "export PROJECT_HOME=$HOME/Proj" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo "alias mkproject='mkproject --python=/usr/bin/python3'" >> ~/.bashrc
echo ". $HOME/.bash_prompt.sh" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

source $HOME/.bashrc
# end bash prompt update


#install pip remotely using whl files
#pip install tensorflow-gpu-1-4.1-cp36.whl --upgrade --no-index --find-links=./
#if pip broke
#If you're not on Debian/Ubuntu and pip broke for you, try running:
#python -m pip install --force-reinstall pip
#if not force reinstall try
#/usr/bin/env python3 -m pip install --user [module]

#tplink5g
#21679834
# 192.168.0.105
# Interface: 169.254.61.78 --- 0x1
# 169.254.147.116

# set up jupyter on the cloud (GCP)
# after installing jupyter notebook and jupyterlab
jupyter notebook --generate-config
jupyter notebook password
ipython profile create
