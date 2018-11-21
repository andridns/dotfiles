# USAGE: $ bash install_se4_dexnet.sh
# This script installs:
# 1. ROS-Kinetic
# 2. Intel RealSense SDK (Ubuntu)
# 3. Yumi dexnet repositories: GQCNN, Autolab_core, Perception
# 4. Python virtual environment `se4-dexnet` and all dependencies needed
# Tested on: Ubuntu 16.04.5
# To download SE4 gitlab repos, user must be registered as SE4 gitlab developer member

# Installing ROS
cd
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get -y install ros-kinetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Installing Intel librealsense SDK
sudo apt-key adv --keyserver keys.gnupg.net --recv-key C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C8B3A55A6F3EFCDE
sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo xenial main" -u
sudo apt-get update
sudo apt-get -y install librealsense2-dkms
sudo apt-get -y install librealsense2-utils
sudo apt-get -y install librealsense2-dev
sudo apt-get -y install librealsense2-dbg

# Installing modified dexnet repos from gitlab
source /opt/ros/kinetic/setup.bash
cd
mkdir -p catkin_ws/src && cd catkin_ws/src
git clone https://github.com/berkeleyautomation/autolab_core
git clone https://gitlab.com/se4.space/dex-net/gqcnn
git clone https://gitlab.com/se4.space/dex-net/perception
cd autolab_core && git checkout 3ad22b5
cd ~/catkin_ws/
catkin_make
source devel/setup.bash
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

# Installing yumipy (requires sudo)
cd ~/catkin_ws/src
git clone https://github.com/berkeleyautomation/yumipy
cd yumipy
sudo python setup.py develop

# Making virtual environment
sudo apt -y install python-pip virtualenv
cd && mkdir Envs/ $$ cd Envs/
virtualenv -p `which python2` se4-dexnet
source se4-dexnet/bin/activate
echo "source ~/Envs/se4-dexnet/bin/activate" >> ~/.bashrc
pip install ruamel.yaml scipy scikit-learn scikit-image==0.13 scikit-video matplotlib==1.5.1 opencv-python pyrealsense2 tensorflow==1.0.0

