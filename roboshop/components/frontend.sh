#!/bin/bash

COMPONENT=frontend
source components/common.sh

INFO "Setup Frontend Service"
INFO "Installing Nginx"
yum install nginx -y &>>$Log_File
STAT $? 'Nginx Installation'

INFO "Download frontend Artifacts"
DOWNLOAD_ARTIFACTS "https://dev.azure.com/DevOps-Batches/f4b641c1-99db-46d1-8110-5c6c24ce2fb9/_apis/git/repositories/a781da9c-8fca-4605-8928-53c962282b74/items?path=%2F&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=master&resolveLfs=true&%24format=zip&api-version=5.0&download=true"

INFO "Remove Old Artifacts"
cd /usr/share/nginx/html
rm -rvf * &>>$Log_File
STAT $? "Artifacts Removal"

INFO "Unzip Artifacts"
unzip -o /tmp/${COMPONENT}.zip &>>$Log_File
mv static/* .
STAT $? "Artifacts Extract"

INFO "Update Nginx Configuration"
mv localhost.conf /etc/nginx/default.d/roboshop.conf
STAT $? "Nginx configuration update"

INFO "Nginx Restart"
systemctl enable nginx &>>$Log_File
systemctl restart nginx &>>$Log_File
STAT $? "Nginx Service Startup"


