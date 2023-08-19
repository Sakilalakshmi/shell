#!/bin/bash

# Our goal is install mysql

USERID=$(id -u)

VALIDATE(){
    #$1-it will receive the fitst argument
    if [ $1 -ne 0 ]
then
echo "Installation ... FAILURE"
exit 1
else
echo "Installation ... SUCCESS " 
fi
}

if [ $USERID -ne 0 ]
then
echo "ERROR:: run this script in root access"
exit 5
fi
yum install mysql -y

# Our responsibility to check the installation success or not

VALIDATE $?

yum install postfix -y

VALIDATE $?



