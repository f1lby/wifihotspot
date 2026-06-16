**Create a Wi-Fi hotspot in Kali Linux.**

**I have created a simple set of configuration files and a bash script to spin up a Wi-Fi hotspot using Kali Linux and any old spare PC or Raspberry Pi you have knocking around. Should be fine with Ubuntu, Debian or similar...**<br><br>
Assuming your Linux is working fine on a physical PC (not a VM) and connected to a working Ethernet port, using the contents of this repository should enable you to have a simple WPA-2 personal Wi-Fi network up & running in minutes!

Prerequisites:<br>

1) PC, laptop or Pi
2) Kali Linux running directly on the machine (not in a VM). I've tried creating access points inside virtual machines which did work but sometimes had random reliability issues which I never managed to resolve.
3) An Ethernet port connected to the network that you want to route through from the Wi-Fi access point
4) Routed, not bridged. My simple configuration works fine but is routed, not bridged, so broadcasts and servers connected via the Wi-Fi won't work with respect to computers that are connected on the ethernet port.
5) Wi-Fi network subnet 192.168.10.0/24 - If this clashes with your existing infrastructure, you'll have to change something!

6) To install the prerequisites, do the following:

7) *sudo apt update && sudo apt install hostapd dnsmasq -y*
8) *sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.bak*

9) From this repository download the file *dnsmasq.conf* to */etc/dnsmasq.conf*
10) From this repository download the file *hostapdwpa2personal.conf* to */etc/hostapd/hostapdwpa2personal.conf*<br>
PLEASE NOTE, the password for the Wi-Fi in *hostapdwpa2personal.conf* is rather weak and it is advised to change it for something far more secure!<br>
11) From this repository download the file *startwifi.sh* to whatever location you wish on your file system

12) Then run *sudo chmod +x startwifi.sh*
13) And finally *sudo ./startwifi.sh*

**And now you should have a working Wi-Fi access point!**

