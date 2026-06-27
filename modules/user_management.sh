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
       echo "========== Change Password =========="
       echo
       read -p "Enter username: " username
       if id "$username" &>/dev/null
       then
        if passwd "$username"
        then
         echo
         echo "✅ Password changed successfully."
        else
         echo
         echo "❌ Failed to change password."
        fi
      else 
	echo " User '$username' does not exist." 
      fi
       echo
       read -p "Press Enter to continue..."
       ;;

      4)
       clear

       echo "========== Lock User =========="
       echo

       read -p "Enter username: " username

       if id "$username" &>/dev/null
       then
         if passwd -l "$username"
         then
            echo
            echo "✅ User '$username' locked successfully."
         else
            echo
            echo "❌ Failed to lock user."
         fi
      else
        echo
        echo " User '$username' does not exist."
      fi

       echo
       read -p "Press Enter to continue..."
       ;;

       5)
        clear

        echo "========== Unlock User =========="
        echo

        read -p "Enter username: " username

        if id "$username" &>/dev/null
        then
          if passwd -u "$username"
          then
            echo
            echo "✅ User '$username' unlocked successfully."
          else
            echo
            echo "❌ Failed to unlock user."
          fi
        else
          echo
          echo " User '$username' does not exist."
        fi

         echo
         read -p "Press Enter to continue..."
       ;;

       6)
        clear

        echo "========== List of Users =========="
        echo

        awk -F: '$3 >= 1000 && $3 != 65534 {print $1}' /etc/passwd

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
