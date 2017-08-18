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

#Status
echo "I've begun backing up $bk_files, standby"
date
echo

tar czf $bk_folder/$archive $bk_files

#Status
echo
echo
echo
echo "I've finished, see below for details"
date

ls -lah $bk_folder

