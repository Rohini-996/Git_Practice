#!/bin/bash

<<help
shell script
help


echo "----------------------------Creation of User Started------------------------------"

read -p "Enter the Username" username

read -p "Enter the Password" pass

sudo useradd -m "$username"

echo -e "$pass\n$pass" | sudo passwd "$username"

echo "--------------------------Creation of User Completed---------------------------"
