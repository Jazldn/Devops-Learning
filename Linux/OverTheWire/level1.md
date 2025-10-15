*Bandit Level 1-2* 

**Goal**
Login to level 1 with the password found in readme file
Find next password in file called '-'
     Issue is that - = previous directory aswell as what the specific file is called

**Commands used**
ssh bandit1@bandit.labs.overthewire.org -p 2220
ls
cat ./-  
     This specified the file path 
     . = current directory  
     / followed by - = Specifies that - is a file located within this directoy 


**Password**
263JGJPfgU6LtdEvgfWU1XP5yac29mFx