#!/bin/bash

# Check for root privileges
#
if [ "$EUID" -ne 0 ]
then
    echo " "
    echo "  Please run this toolkit as root."
    echo " "
    exit 1
fi

while true
do
    clear

    echo "======================================"
    echo "      Linux Admin Toolkit"
    echo "======================================"

    echo
    echo "1. System Information"
    echo "2. Resource Monitoring"
    echo "3. User Management"
    echo "4. File Operations"
    echo "5. Network Information"
    echo "6. Health Report"
    echo "7. Exit"

    echo
    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash modules/system_info.sh
            ;;

	2)
           
            bash modules/resource_monitor.sh
            ;;

	3)
	   
            sudo bash modules/user_management.sh
            ;;

	4)
           
            bash modules/file_operations.sh
	    ;;

	5)
           
	    bash modules/network_info.sh
	    ;;

	6)

            bash modules/health_report.sh
	    ;;
 
        7)
            echo
            echo "Thank you for using Linux Admin Toolkit!"
            exit
            ;;
        *)
            echo
            echo "Feature under development..."
            read -p "Press Enter to continue..."
            ;;
    esac

done
