*Bandit Level 8-9* 

**Goal**
Login to level 8 with the previous password found
Find next password in the file data.txt where it is the ONLY line of text that occurs only once

**Commands used**
ssh bandit8@bandit.labs.overthewire.org -p 2220

ls

X cat data.txt 

sort data.txt
     sorts the lines of text files
uniq -u data.txt
     uniq reports of omits repeated lines
     -u flags ONLY UNIQUE LINES

sort data.txt | uniq -u

**Password**
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
