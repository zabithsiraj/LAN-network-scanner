#! /bin/bash

#This is automate network scanner
#This script is written by Zabith siraj

figlet -f slant LAN scanner 
echo "                                 Hello $USER !! LAN scanner made by zabith siraj"

echo ""
echo ""
echo ""

echo "List of ip's in this network:-" 
echo ""

arpscn=$(sudo arp-scan -xg -l)
echo =1-"$arpscn"



echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
read -p "Type port range (eg: 0-65535 or 22,21,443)" port
echo "Please wait scaning in progress..........................."
read -p "Type of scan eg: -sS -A  or press Enter to skip: " agr
echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""

result=$(sudo arp-scan -xg -l | awk '/.*:.*:.*:.*:.*:.*/{print $1}')



sudo nmap   -sV $agr  $result -p $port

