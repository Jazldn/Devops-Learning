*Bandit Level 9-10* 

**Goal**
Login to level 9 with the previous password found
Find next password in the file data.txt where it is one of the few
- human readable strings 
- preceeded by several == characters

**Commands used**
ssh bandit9@bandit.labs.overthewire.org -p 2220

ls

X cat data.txt 

sort data.txt | strings | grep '='
     'strings' prints the sequences of printable characters in the file (human readable)
      grep prints the lines with any = characters 

**Password**
FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
