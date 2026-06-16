#!/bin/bash

sudo ip link set wlan0 up
sudo ip addr add 192.168.10.1/24 dev wlan0
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQU>
sudo iptables --append FORWARD --in-interface wlan0 -j ACCEPT
sudo iptables -A FORWARD -i eth0 -o wlan0 -m state --state RELATED,ESTABLISH>
sudo systemctl restart dnsmasq
# sudo hostapd /etc/hostapd/hostapdwpa2personal.conf
