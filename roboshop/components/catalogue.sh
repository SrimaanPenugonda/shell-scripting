#!/bin/bash

COMPONENT=catalogue
source components/common.sh

INFO "Setup Catalogue Component"
INFO " Install NodeJS"
yum install nodejs make gcc-c++ -y &>>$Log_File
STAT $? "NodeJS Installation"


