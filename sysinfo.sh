#! /bin/bash

echo "  ===== SYSTEM INFO =====    "

current_user=$(whoami)
host_name=$(hostname)
current_date=$(date)
time_up=$(uptime -p)

total_memory=$(free -m | grep "Mem:" | awk '{print $2}')
used_memory=$(free -m | grep "Mem:" | awk '{print $3}')
free_memory=$(free -m | grep "Mem:" | awk '{print $4}')

total_disk=$(df -h / | tail -1 | awk '{print $2}')
used_disk=$(df -h / | tail -1 | awk '{print $3}')
free_disk=$(df -h / | tail -1 | awk '{print $4}')


echo "User: $current_user : $host_name "
echo "Date: $current_date "

echo "   --- Uptime ---- "
echo "Uptime: $time_up "

echo "   ----- Memory (MB) ----- "
echo "Total: $total_memory | Used: $used_memory | Free: $free_memory "

echo " ----- Disk Usage----- " 
echo "Total: $total_disk | Used: $used_disk | Free: $free_disk "


echo " ----- Processes Running: ----- "





