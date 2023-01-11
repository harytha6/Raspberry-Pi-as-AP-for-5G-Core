#!/bin/bash
sudo service dhcpcd start
echo "Starting Wireless Access Point"
sudo service hostapd restart
echo "Starting DNSMASQ"
sudo dnsmasq restart
sleep 2
echo " "
echo " "
echo "Routing Table"
route -n
echo " "
echo " "
echo "Starting connection to 5G Core"
terminal -e ./waveshare.sh
sleep 2
echo " "
echo " "
echo "Adding Iptables rules"
iptables-restore < /etc/iptables.ipv4.nat
echo " "
echo " "
echo "Iptables - FILTER Table "
iptables -vnL
echo " "
echo "Iptables - NAT Table"
iptables -t nat -vnL
echo " "
echo " "
echo "Listing interfaces"
ifconfig -a
echo " "
echo " "
echo "Testing connectivity to Web Server"
ping -c 4 192.168.1.128
echo " "
echo " "
echo "Testing connectivity to SIP Server"
ping -c 4 192.168.1.236
echo"List of users connected to WAP"
sudo iw dev wlan0 station dump
echo " "
echo "End"

