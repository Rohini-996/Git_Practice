#!/bin/bash

#user defined variables
hero="rancho"
villan="virus"

echo "3 idots ka hero hai $hero"

echo "3 idiots ka villian hai $villan"

#predefined variable

echo "Current logged in $USER"

read -p "Rancho ka pura naam kya tha?" fullname

echo "Rancho ka pura naam tha $fullname"

#Arguments


#./3_idiots.sh raju farhan rancho

echo "movie name: $0"

echo "first idiot : $1"

echo "second idiot : $2"

echo "third idiot : $3"

echo "Hence three idiots are $@"
