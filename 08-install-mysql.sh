#!/bin/bash

# Our goal is install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR:: run this script in root access"
exit 5
fi
yum install mysql -y

# Our responsibility to check the installation success or not

if [ $? -ne 0 ]
then
echo "Installation of mysql is failure"
exit 1
else
echo "Installation of mysql is success" 
fi

yum install postfix -y

f [ $? -ne 0 ]
then
echo "Installation of postfix is failure"
exit 1
else
echo "Installation of postfix is success" 
fi