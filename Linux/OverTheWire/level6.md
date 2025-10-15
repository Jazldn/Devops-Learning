*Bandit Level 6-7* 

**Goal**
Login to level 6 with the previous password found
Find next password SOMEWHERE ON THE SERVER in a file that is
- owned by user bandit7
- owned by group bandit6
- 33 bytes in size 
     
**Commands used**
ssh bandit6@bandit.labs.overthewire.org -p 2220

pwd 

cd .. 
     into home directory 

ls -la 
     lists files with permissions

find / -size 33c -user bandit7 -group bandit6 2> /dev/null

     find '/' within the directory a file that is 33c 
     '-size, -user, -group', are all flags of the find command
     2> /dev/null = redirect any standard output with ERRORS to this file (leaving only non-errors remaining)

cat /var/lib/dpkg/info/bandit7.password

**Password**
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj