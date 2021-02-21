#!/bin/bash

COMPONENT=frontend
source components/common.sh

INFO "Setup Frontend Service"
INFO "Installing Nginx"
yum install nginx -y &>>$Log_File
STAT $? 'Nginx Installation'



