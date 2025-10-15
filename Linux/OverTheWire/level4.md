*Bandit Level 4-5* 

**Goal**
Login to level 4 with the previous password found
Find next password in the ONLY human readable file in the 'inhere' directory
     
**Commands used**
ssh bandit4@bandit.labs.overthewire.org -p 2220
ls 
cd inhere
file ./*
     'file' command determines file types
      './' specifies the files within the current directory
      '*'  specifies all files within the location
cat ./-file07

**Password**
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
