#!/bin/bash

#Write a script that sorts all .txt files in a directory by their size, 
#from smallest to largest and displays the sorted list

DIRECTORY="BashBattle"

if [[ -z $DIRECTORY ]]; then 
echo "Directory not entered"
exit 1
fi

#First check 

if [[ ! -d $DIRECTORY ]]; then
echo "Directory not found"
exit 1
fi

#Second check 

TYPE=$(ls -a "$DIRECTORY"/*.sh 2>/dev/null)
if [[ -z $TYPE ]]; then  
echo ".sh files not found"
exit 1
fi 

#Checks if the specified and found directory contains any .txt files within it

echo "Text files in Directory from Smallest to Largest: "
ls -srh "$DIRECTORY"/*.sh

#Sorts files within directory. We already know files are present
#Therefore $TYPE variable and loops not necessary. 
