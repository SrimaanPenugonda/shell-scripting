#!/bin/bash

echo "Script Name:"$0
echo -e "First Name:\e[34m$1\e[0m"
echo -e "Last Name:\e[35m$2\e[0m"


case $1 in
    frontend)
      echo "Installing Frontend"
      ;;
    mongo)
      echo "Installing Mongo"
      ;;
esac

echo -e "\e[31mNumber of Arguments:\e[0m$#"
#Function

sample(){
  echo a=$1
  echo b=$2
}

sample 25 35