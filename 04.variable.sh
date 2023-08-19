#!/bin/bash

# i run a command will do addition of 2 numbers
NUMBER1=$1
NUMBER2=$2

# I Need to run a command inside the shell
SUM=$((NUMBER1+NUMBER2))

echo "Addition of 2 number is:$SUM"
