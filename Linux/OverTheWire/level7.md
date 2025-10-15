*Bandit Level 7-8* 

**Goal**
Login to level 7 with the previous password found
Find next password in the file data.txt next to the word millionth 

**Commands used**
ssh bandit7@bandit.labs.overthewire.org -p 2220

ls

X cat data.txt 

cat data.txt | grep millionth
     pipe output of data.txt through to grep
     grep finds pattern millionth and outputs the line

ALTERNATIVE 
vim data.txt
     vim enters into the file data.txt
/millionth
     allows you to search for the word millionth
:q! 
     quit the file after obtaining the password

**Password**
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
