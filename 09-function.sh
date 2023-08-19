#!/bin/bash

# Our goal is install mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE
 
 R=\e[31m
 G=\e[32m
 N=\e[0m

VALIDATE(){
    #$1-it will receive the fitst argument
    
    if [ $1 -ne 0 ]
then
echo -e "$2 ... $R FAILURE $N"
exit 1
else
echo -e  "$2 ... $G SUCCESS $N" 
fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR:: run this script in root access"
exit 5
fi
yum install mysql -y &>>$LOGFILE

# Our responsibility to check the installation success or not

VALIDATE $? "Installing MYSQL" 

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing postfix" 



