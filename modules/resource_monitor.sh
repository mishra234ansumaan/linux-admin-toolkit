#!/bin/bash
while true
do
    clear
    echo "========================================="
    echo "         Resource Monitoring             "
    echo "========================================="
    echo "                                         "
    echo "                                         "
    echo "1. CPU Usage"
    echo "2. Memory Usage"
    echo "3. Disk Usage"
    echo "4. Running Processes"
    echo "5. Back"
    echo  " "
    echo
    read -p "Enter your choice: " choice

    case $choice in
	    1)
		 clear
		 top
                 ;;

            2) 
		 clear
		 free -h
		 echo
		 read -p "press Enter to return..."
                 ;;

            3) 
		 clear
		 df -h
		 echo
                 read -p "Press Enter to return..."
		 ;;

	    4)
		clear
		ps -ef
		echo
		read -p "Press Enter to return..."
		;;

	    5)
		 echo
		 break
		 ;;
		  

	    *)
                echo
                echo "Invalid Choice!"
                read -p "Press Enter to continue..."
                ;;
  esac

	       

done


