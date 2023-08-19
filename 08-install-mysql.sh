#!/bin/bash

# Our goal is install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR:: run this script in root access"
exit 5
fi
yum install mysql -y
