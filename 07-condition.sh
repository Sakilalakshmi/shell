#!/bin/bash

#check the number greater than 10
NUMBER=$1

if [$NUMBER -gt 10]
then
echo "$NUMBER is greater than 10"
else
echo "$NUMBER is not greater than 10"
fi