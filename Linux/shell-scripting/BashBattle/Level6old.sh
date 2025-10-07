#!/bin/bash

FILE="$1"

#FILE="BashBattle/Level3.sh" ---- specify file with location instead of FILE="$1"

if [[ -e $FILE ]]; then 
LINES=$(wc -l "$FILE")
     echo "Number of Lines: $LINES"
else 
     echo "No file provided"
fi 