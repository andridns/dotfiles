#!/bin/bash
sudo echo "hdmi_ignore_edid=0xa5000080" >> /boot/config.txt
sudo echo "hdmi_group=2" >> /boot/config.txt
sudo echo "hdmi_mode=16" >> /boot/config.txt
