#!/bin/bash

COMPONENT=frontend
source components/common.sh

INFO "Setup Frontend Service"
INFO "Installing NGINX"
yum install nginx -y &>>$Log_File
