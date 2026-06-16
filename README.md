## Create a Wi-Fi hotspot in Kali Linux.

**I have created a simple set of configuration files and a bash script to spin up a Wi-Fi hotspot using Kali Linux and any old spare PC or Raspberry Pi you have knocking around. Should be fine with Ubuntu, Debian or similar... It uses dnsmasq, hostapd and iptables to get things done.**<br><br>
Assuming your Linux is working fine on a physical PC (not a VM) and connected to a working Ethernet port, using the contents of this repository should enable you to have a simple WPA-2 personal Wi-Fi access point up & running in minutes!<br><br>
PLEASE NOTE, the Wi-Fi passphrases in the hostapd conf files might be unsuitable and should be changed for something far more secure!<br><br>
Prerequisites:<br>

* PC, laptop or Pi
* Kali Linux running directly on the machine (not in a VM). I've tried creating access points inside virtual machines which did work but sometimes had random reliability issues which I never managed to resolve.
* An Ethernet port connected to the network that you want to route through from the Wi-Fi access point
* A Wi-Fi adapter (on board or external USB) that supports AP mode
* Routed, not bridged. My simple configuration works fine but is routed, not bridged, so broadcasts and servers connected via the Wi-Fi won't work with respect to computers that are connected on the ethernet port.
* Wi-Fi network subnet 192.168.10.0/24 - If this clashes with your existing infrastructure, you'll have to change something!
---
* To install the prerequisites, do the following:

* ### *sudo apt update && sudo apt install hostapd dnsmasq -y*
* ### *sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.bak*

* Download *dnsmasq.conf* to */etc/dnsmasq.conf*
* Download all *hostapd* .conf files in this repository to */etc/hostapd/*<br>


* Download *startwifiwpa2personal.sh*
* ### *sudo chmod +x startwifiwpa2personal.sh*
* ### *sudo ./startwifiwpa2personal.sh*

* ### *sudo systemctl restart dnsmasq*

* ### *sudo hostapd /etc/hostapd/hostapdwpa2personal.conf*
* ## Change the name of the hostapd.conf file to the one you wish to use (depending on what you need).*
<br><br>

**And now you should have a working Wi-Fi access point!**

