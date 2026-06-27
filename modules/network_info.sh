#!/bin/bash

clear

echo "====================================="
echo "      NETWORK INFORMATION"
echo "====================================="
echo

echo "Hostname : $(hostname)"
echo

echo "IP Address : $(hostname -I)"
echo

echo "Gateway : $(ip route | grep default | awk '{print $3}')"
echo

echo "DNS Server : $(grep nameserver /etc/resolv.conf | awk '{print $2}')"
echo

echo "Active Interfaces:"
ip -br addr
echo

if ping -c 1 8.8.8.8 &>/dev/null
then
    echo "Internet Status : Connected"
else
    echo "Internet Status : Not Connected"
fi

echo
read -p "Press Enter to continue..."
