#!/bin/bash

# We can print a message on screen using two commands in linux
# 1. echo   -> Preferred one , because of less syntax
# 2. printf  -> Have more syntax

echo hello world
echo "hello world"
echo -e "\nHello\n\n Welcome to Shell-Scripting\n\nRegards\nSrimaan"

echo -e "\n\e[31mSRIMAAN\e[0m"

echo -e "\n\e[1;32mDHRUVAN\e[0m\n"

echo -e "\n\e[33mHappy \e[4;35mUgadhi\e[0m\n"

#Variable
#USER = Srimaan
 USER_NAME=Srimaan #Dont put Spaces between =

echo -e "\e[1;35mWelcome \e[37m$USER_NAME\e[0m"

CURRENT_DATE=$(date +%F)

echo -e "Today is $CURRENT_DATE"
CURRENT_DATE=$(date +%T)
echo -e "Current Time is $CURRENT_DATE"


