# install docker on ubuntu 16.04
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo systemctl status docker

# give sudo permission to docker
# example of building docker
sudo usermod -aG docker ${USER}
su - ${USER}
id -nG

# install fig
sudo pip install -U fig


