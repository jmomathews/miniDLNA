#!/bin/bash

apt-get update -y
apt-get install git hostapd dnsmasq -y

cp etc/interfaces /etc/network/interfaces 
chmod 644 /etc/network/interfaces 

cp etc/dhcpcd.conf /etc/dhcpcd.conf 
chmod 644 /etc/dhcpcd.conf 

cp etc/hostapd.conf /etc/hostapd/hostapd.conf 
chmod 644 /etc/hostapd/hostapd.conf 

cp etc/hostapd /etc/default/hostapd 
chmod 644 /etc/default/hostapd

cp etc/dnsmasq.conf /etc/dnsmasq.conf 
chmod 644 /etc/dnsmasq.conf 

cp etc/rc.local /etc/rc.local 
chmod 755 /etc/rc.local 

cp etc/keyboard /etc/default/keyboard
chmod 644 /etc/default/keyboard

cp etc/vncserver-x11 /root/.vnc/config.d/vncserver-x11
chmod 700 /root/.vnc/config.d/vncserver-x11

dpkg -i apt/*.deb

cp etc/minidlna.conf /etc/minidlna.conf
chmod 644 /etc/minidlna.conf

mkdir -p /media/pi
chmod 755 /media/pi 

echo "fs.inotify.max_user_watches=524288" > /etc/sysctl.conf

