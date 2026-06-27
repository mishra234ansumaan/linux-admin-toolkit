#!/bin/bash

while true
do
    clear

    echo "====================================="
    echo "        FILE OPERATIONS"
    echo "====================================="
    echo
    echo "1. Create File"
    echo "2. Delete File"
    echo "3. Copy File"
    echo "4. Move / Rename File"
    echo "5. Create Directory"
    echo "6. Delete Directory"
    echo "7. Search File"
    echo "8. Back"
    echo

    read -p "Enter your choice: " choice

    case $choice in

   1)
    clear

    echo "========== Create File =========="
    echo

    read -p "Enter file path: " filepath

    if [ -f "$filepath" ]
    then
        echo
        echo " File already exists."

    else

        if touch "$filepath"
        then
            echo
            echo "✅ File created successfully."

        else
            echo
            echo "❌ Failed to create file."
        fi

    fi

    echo
    read -p "Press Enter to continue..."
    ;;


   2)
    clear

    echo "========== Delete File =========="
    echo

    read -p "Enter file path: " filepath

    if [ -f "$filepath" ]
    then
        if rm "$filepath"
        then
            echo
            echo "✅ File deleted successfully."
        else
            echo
            echo "❌ Failed to delete file."
        fi
    else
        echo
        echo " File does not exist."
    fi

    echo
    read -p "Press Enter to continue..."
    ;;


   3)
    clear

    echo "========== Copy File =========="
    echo

    read -p "Enter source file path: " source
    read -p "Enter destination path: " destination

    if [ -f "$source" ]
    then
        if cp "$source" "$destination"
        then
            echo
            echo "✅ File copied successfully."
        else
            echo
            echo "❌ Failed to copy file."
        fi
    else
        echo
        echo " Source file does not exist."
    fi

    echo
    read -p "Press Enter to continue..."
    ;;


   4)
    clear

    echo "========== Move / Rename File =========="
    echo

    read -p "Enter source file path: " source
    read -p "Enter destination path: " destination

    if [ -f "$source" ]
    then
        if mv "$source" "$destination"
        then
            echo
            echo "✅ Operation completed successfully."
        else
            echo
            echo "❌ Failed to move/rename file."
        fi
    else
        echo
        echo " Source file does not exist."
    fi

    echo
    read -p "Press Enter to continue..."
     ;;


   5)
    clear

    echo "========== Create Directory =========="
    echo

    read -p "Enter directory path: " directory

    if [ -d "$directory" ]
    then
        echo
        echo " Directory already exists."
    else
        if mkdir "$directory"
        then
            echo
            echo "✅ Directory created successfully."
        else
            echo
            echo "❌ Failed to create directory."
        fi
    fi

    echo
    read -p "Press Enter to continue..."
     ;;


   6)
    clear

    echo "========== Delete Directory =========="
    echo

    read -p "Enter directory path: " directory

    if [ -d "$directory" ]
    then
        if rmdir "$directory"
        then
            echo
            echo "✅ Directory deleted successfully."
        else
            echo
            echo "❌ Directory is not empty or could not be deleted."
        fi
    else
        echo
        echo " Directory does not exist."
    fi

    echo
    read -p "Press Enter to continue..."
     ;;


   7)
    clear

    echo "========== Search File =========="
    echo

    read -p "Enter file name: " filename
    read -p "Enter search location: " location

    find "$location" -name "$filename"

    echo
    read -p "Press Enter to continue..."
     ;;
     

   8)
     break
     ;;

   *)
     echo
     echo "Invalid Choice!"
     read -p "Press Enter to continue..."
     ;;

    esac

done
