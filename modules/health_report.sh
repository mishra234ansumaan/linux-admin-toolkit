#!/bin/bash

clear

report="reports/health_report_$(date +%Y%m%d_%H%M%S).txt"

echo "=====================================" > "$report"
echo "       LINUX HEALTH REPORT" >> "$report"
echo "=====================================" >> "$report"
echo >> "$report"

echo "Generated On : $(date)" >> "$report"
echo "Hostname     : $(hostname)" >> "$report"
echo "Current User : $(whoami)" >> "$report"
echo "System Uptime: $(uptime -p)" >> "$report"

echo >> "$report"
echo

echo "========== CPU Load ==========" >> "$report"

uptime >> "$report"

echo >> "$report"
echo

echo "========== Memory Usage ==========" >> "$report"

free -h >> "$report"

echo >> "$report"
echo

echo "========== Disk Usage ==========" >> "$report"

df -h >> "$report"

echo >> "$report"
echo

echo "========== Top 5 Memory Consuming Processes ==========" >> "$report"

ps aux --sort=-%mem | head -6 >> "$report"

echo >> "$report"
echo

echo "========== Network ==========" >> "$report"

echo "Hostname : $(hostname)" >> "$report"

echo "IP       : $(hostname -I)" >> "$report"

echo "Gateway  : $(ip route | grep default | awk '{print $3}')" >> "$report"

echo >> "$report"
echo

echo "========== Logged-in Users ==========" >> "$report"

who >> "$report"

echo >> "$report"
echo

echo "=====================================" >> "$report"

echo "End of Report" >> "$report"

echo "=====================================" >> "$report"
echo

echo
echo "✅ Health Report generated successfully."

echo
echo "Saved at: $report"

echo

read -p "Press Enter to continue..."

