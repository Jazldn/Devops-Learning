*Bandit Level 10-11* 

**Goal**
Login to level 10 with the previous password found
Find next password in the file data.txt which contains base64 encoded data
- find and decompress file data 

**Commands used**
ssh bandit10@bandit.labs.overthewire.org -p 2220

ls

base64 -d data.txt
     base64 command encodes data
     -d flag DEcodes data

**Password**
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr