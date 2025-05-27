#!/bin/bash


read -p "Enter the Username" username


count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count -eq 0 ];
then
	echo "User does not exist"

else
	echo "User exist"
fi
