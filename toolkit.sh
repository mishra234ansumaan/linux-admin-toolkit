#!/bin/bash

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
