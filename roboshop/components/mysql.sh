#!/bin/bash/

COMPONENT=mysql

source components/common.sh

INFO "Setup Mysql Db"
INFO "Setup Mysql Yum repos"
echo '[mysql57-community]
name=MySQL 5.7 Community Server
baseurl=http://repo.mysql.com/yum/mysql-5.7-community/el/7/$basearch/
enabled=1
gpgcheck=0' > /etc/yum.repos.d/mysql.repo &>>$Log_File
STAT $? "Mysql yum repository"

INFO " Install Mysql"

yum remove mariadb-libs -y &>>$Log_File
yum install mysql-community-server -y &>>$Log_File
STAT $? "Mysql Installation"

INFO "Start MYSQL Service"
systemctl enable mysqld &>>$Log_File
systemctl start mysqld &>>$Log_File
STAT $? "MYSQL Service Startup"





