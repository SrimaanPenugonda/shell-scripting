#Common Script for RoboShop Project ,It can be used by all componets/services

Log_File=/tmp/roboshop.log #All Logs can check here

INFO(){
  echo -e "[\e[1;33mINFO\e[0m] [\e[1;34m${COMPONENT}\e[0m] [\e[1;35m$(date +%F:%T)\e[0m] $1"
}