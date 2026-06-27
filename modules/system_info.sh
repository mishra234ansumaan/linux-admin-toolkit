#!/bin/bash

clear

echo "======================================"
echo "      System Information"
echo "======================================"

echo

echo "Hostname      : $(hostname)"
echo "Current User  : $(whoami)"
echo "Operating Sys : $(uname -o)"
echo "Kernel Version: $(uname -r)"
echo "Architecture  : $(uname -m)"
echo "Current Date  : $(date)"
echo "Uptime        : $(uptime -p)"

echo
read -p "Press Enter to return..."
