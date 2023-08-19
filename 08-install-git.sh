#!/bin/bash

# Our goal is install git

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR:: run this script in root access"
fi
yum install git -y
