#!/bin/bash

#Create a script that accepts a filename as an argument and prints the number of lines in that file

FILE="$1"

if  [[ -z "$FILE" ]]; then
echo "No File Provided"
exit 1 
fi 

#Searches for string length 0 = no argument given in variable
#If string length nonzero, carries on down script 

if [[ ! -e "$FILE" ]]; then 
echo "File not found"
exit 1
fi 

# ! means NOT true (inverts) so if file is not existing = echoes
# Otherwise if file is found, then carries on down script.

LINES=$(wc -l < "$FILE")
echo "Number of Lines: $LINES "

#if/fi not needed in last because other conditions already resolved in previous blocks
#There is only one scenario requiring output left