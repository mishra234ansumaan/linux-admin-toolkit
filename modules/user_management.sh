#!/bin/bash
while true
do
  clear

  echo "===================================="
  echo "          User Management            "
  echo "===================================="
   
  echo " "
  echo " "
  echo "1. Create User"
  echo "2. Delete User"
  echo "3. Change Password"
  echo "4. Lock User"
  echo "5. Unlock User"
  echo "6. List Users"
  echo "7. Back"
  echo " "
  echo " "
  echo
  read -p "Enter your choice: " choice

  case $choice in
      1)
    clear

    echo "========== Create User =========="
    echo

    read -p "Enter username: " username

    if id "$username" &>/dev/null
    then
        echo
        echo " User '$username' already exists."
    else
        if useradd -m "$username"
        then
            echo
            echo "✅ User '$username' created successfully."

            echo
            echo "Set password for $username"

            passwd "$username"

        else
            echo
            echo "Failed to create user."
        fi
    fi

    echo
    read -p "Press Enter to continue..."
    ;;

      2) 
       clear
       echo "========== Delete User =========="
       echo

       read -p "Enter username: " username

      if id "$username" &>/dev/null
      then
        userdel -r "$username"
	echo" "
	echo" "
        echo "User "$username" is deleted"
      else
	echo "User not found"
      fi
	echo " "
	echo " "
	echo
        read -p "Press Enter to continue..."
       ;;

      3)
       clear
       echo "Feature under development..."
       echo
       read -p "Press Enter to continue..."
       ;;

      4)
       clear
       echo "Feature under development..."
       echo
       read -p "Press Enter to continue..."
       ;;

      5)
       clear
       echo "Feature under development..."
       echo
       read -p "Press Enter to continue..."
       ;;

      6)
       clear
       echo "Feature under development..."
       echo
       read -p "Press Enter to continue..."
       ;;

      7) 
       break
       ;;

      *) 
       echo
       echo "Invalid Choice!"
       echo
       read -p "Press Enter to continue..."
       ;;
  esac
done
