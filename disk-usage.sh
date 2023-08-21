#!/bin/bash

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"

DISK_USAGE=$(df -hT |grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1

# IFS= means internal field seperator is space.
while IFS= read line
do 
#this command will give the usage in number format
usage=$(echo $line | awk '{print $6}' | cut -d % -f1)
#this will give a partition
partition=$(echo $line | awk '{print $1}')
#now you need to check whether it more than threshold or not
if [ $usage -gt $DISK_USAGE_THRESHOLD ]
then
 message+="HIGH DISK USAGE ON $partition : $usage \n"
fi
done <<< $DISK_USAGE

echo -e "message: $message"

echo "$message" | mail -s "HIGH DISK USAGE" msakila792@gmail.com
