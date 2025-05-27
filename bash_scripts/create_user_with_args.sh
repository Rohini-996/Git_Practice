#!/bin/bash


# creating user with arguments


#./create_user_with_args.sh Rohini test@123

echo "--------------------------Creation of User Started---------------------------"

echo "Your Username is: $1"

echo "Your Passwd is :$2"

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "--------------------------Creation of User Completed---------------------------"

sudo userdel $1 

echo "--------------------------Deletion of User Completed---------------------------"

cat /etc/passwd | grep $1 | wc

echo "Hence wc is o User is Successfully deleted"
