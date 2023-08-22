#!/bin/bash

#anyone in your team use the script  with argument

TO_ADDRESS=$1
SUBJECT=$2
BODY=$(sed -e 's/[]\/$*.^[]/\\&/g' <<< $3)
echo "escape content: $BODY"
TEAM_NAME=$4
ALERT_TYPE=$5

#echo "all arg : $@"

FINAL_BODY=$(sed -e "s/TEAM_NAME/$TEAM_NAME/g" -e "s/ALERT_TYPE/$ALERT_TYPE/g" -e "s/MESSAGE/$BODY/g" template.html)

echo "$FINAL_BODY" | mail -s "$SUBJECT" $TO_ADDRESS
