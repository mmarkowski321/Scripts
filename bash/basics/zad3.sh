#!/bin/bash
# File Backup
# Write a script that:
# - Creates a backup of a specified directory and stores it in a given location.
# - Uses current date in the filename of the backup, e.g., backup_2024-12-03.tar.gz.

read -p "Write your directory: " a
echo "Your directory: $a, let's do this"


a="${a/#\~/$HOME}"

today=$(date +'%Y-%m-%d')
new_folder=backup_${today}


if [ -d "$new_folder" ]; then
    rm -r $new_folder
fi

mkdir $new_folder


if [ -d "$a" ]; then
    cp -r $a/* $new_folder/
else
    echo "Folder $a does not exist!"
fi

tar czvf ${new_folder}.tar.gz $new_folder

