#!/bin/bash

##Backup Script V1.0 - Ubuntu 16.04##

# Back this up,
bk_files="/home /etc /root /boot"

# To this folder,
bk_folder="/home/will/Documents/"

# And name it:
day=$(date +%A)
host=$(hostname -s)
archive="$host-$day.tgz"

#Status & Script
while true; do
        read -p "Backing up $bk_files, Do you want to see verbose? Y/N " yn
        case $yn in
                [Yy]* ) tar -cvpzf $bk_folder/$archive $bk_files;; 
                [Nn]* ) tar -cpzf $bk_folder/$archive $bk_files;;
                * ) echo "Please answer yes or no.";;
        esac
done

#Status
echo
echo
echo
echo "I've finished, see below for details"
date

ls -lah $bk_folder

