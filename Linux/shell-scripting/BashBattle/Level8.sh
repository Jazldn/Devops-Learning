#!/bin/bash

#Search for a specific word/phrase across all .log files in a directory 
#AND output the names of the files that contain the word of phrase

DIRECTORY="/var/log"
PATTERN=""

#Could I make this interactive in the terminal by making changes to...
#DIRECTORY="${1:-/var/log}" & PATTERN="${2:-}"
#Would have to double check and apply changes to code block


if [[ -z $DIRECTORY ]]; then 
     echo "Directory not entered"
     exit 1
fi

#First check #however this check doesnt account for if no pattern entered...

if [[ ! -d $DIRECTORY ]]; then
     echo "Directory not found"
     exit 1
fi

#Second check 

TYPE=$(ls "$DIRECTORY"/*.log 2>/dev/null)
if [[ -z $TYPE ]]; then  
     echo ".log files not found"
     exit 1
fi 

#Checks if the specified and found directory contains any .log files within it

SEARCH=$(grep -lH "$PATTERN" "$DIRECTORY"/*.log 2>/dev/null)
if [[ -z $SEARCH ]]; then 
     echo "No files containing '$PATTERN' found"
     exit 1 
fi 

echo ".log Files within directory containing '$PATTERN': "
echo "$SEARCH"