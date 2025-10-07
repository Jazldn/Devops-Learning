#!/bin/bash 

mkdir -p Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt


if [ -f Battlefield/knight.txt ]
then 
mkdir -p Archive
mv Battlefield/knight.txt Archive/
echo "Knight found and moved to Archive"
else echo 'Knight Missing' 
fi

echo "Battlefield Contents"
ls Battlefield

echo "Archive contents"
ls Archive
