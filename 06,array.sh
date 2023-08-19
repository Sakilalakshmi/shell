#!/bin/bash

#this is array,inside array hold multiple values

PERSONS=("ramesh" "suresh" "rajesh")

echo "First Person : ${PERSONS[0]}"

echo "All person in array : ${PERSONS[@]}"