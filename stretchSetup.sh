#!/bin/bash

sudo apt-get update -y
sudo apt-get install minidlna hostapd dnsmasq -y
#sudo dpkg -i apt/*.deb

sudo mkdir -p /media/pi 
sudo chmod 755 /media/pi

sudo cp etc/minidlna.conf /etc/minidlna.conf
sudo chmod 644 /etc/minidlna.conf

sudo cp etc/interfaces /etc/network/interfaces 
sudo chmod 644 /etc/network/interfaces 

sudo cp etc/dhcpcd.conf /etc/dhcpcd.conf 
sudo chmod 644 /etc/dhcpcd.conf 

sudo cp etc/hostapd.conf /etc/hostapd/hostapd.conf 
sudo chmod 644 /etc/hostapd/hostapd.conf 

sudo cp etc/hostapd /etc/default/hostapd 
sudo chmod 644 /etc/default/hostapd

sudo cp etc/dnsmasq.conf /etc/dnsmasq.conf 
sudo chmod 644 /etc/dnsmasq.conf

sudo systemctl disable dhcpcd.service

sudo cp etc/rc.local /etc/rc.local 
sudo chmod 755 /etc/rc.local 

sudo cp etc/keyboard /etc/default/keyboard
sudo chmod 644 /etc/default/keyboard

sudo echo "fs.inotify.max_user_watches=524288" > /etc/sysctl.conf

