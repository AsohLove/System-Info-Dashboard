#! /bin/bash



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

total_run_proc=$(ps aux --no-heading| wc -l)
top_five_proc=$(ps aux --sort -%mem | head -6 | awk '{print $1, $2, $3, $4, $5}')


#Save the output to a log file
{
    echo "  ===== SYSTEM INFO =====    "
    echo "User: $current_user Hostname: $host_name "
    echo "Date: $current_date "

    echo "   --- Uptime ---- "
    echo "Uptime: $time_up "

    echo "   ----- Memory (MB) ----- "
    echo "Total: $total_memory | Used: $used_memory | Free: $free_memory "

    echo " ----- Disk Usage----- " 
    echo "Total: $total_disk | Used: $used_disk | Free: $free_disk "


    echo " ----- Processes Running: ----- "
    echo -e "Total current running processes: $total_run_proc Top five running processes: \n$top_five_proc "
} > OUTPUT_FILE

# Display the output on the terminal
echo "  ===== SYSTEM INFO =====    "
echo "User: $current_user Hostname: $host_name "
echo "Date: $current_date "

echo "   --- Uptime ---- "
echo "Uptime: $time_up "

echo "   ----- Memory (MB) ----- "
echo "Total: $total_memory | Used: $used_memory | Free: $free_memory "

echo " ----- Disk Usage----- " 
echo "Total: $total_disk | Used: $used_disk | Free: $free_disk "


echo " ----- Processes Running: ----- "
echo -e "Total current running processes: $total_run_proc Top five running processes: \n$top_five_proc"
