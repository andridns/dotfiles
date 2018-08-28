# install tools
sudo apt update && sudo apt upgrade -y
sudo apt install -y open-vm-tools-desktop
# restart ubuntu
sudo reboot
# test clipboard & file copypasting works
# debugging
# $ hostnamectl
# $ systemctl status open-vm-tools.service
# check that it says "Active: active (running)"

