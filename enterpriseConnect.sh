#!/bin/bash

echo "Please enter your password:"
read -s password

echo "Copy the hash string to the password field of your network config file:"
echo " "
echo "Your password field should look like this:" 
echo "password=hash:<longHexStringHere>"
echo " "
echo -n $password | iconv -t utf16le | openssl md4
