*Bandit Level 2-3* 

**Goal**
Login to level 2 with the previous password found
Find next password in file called '--spaces in this filename--'
     Issue is that spaces in file name needs to be addressed by using "" or ''
     AND that the filename has -- on either end of it
     

**Commands used**
ssh bandit2@bandit.labs.overthewire.org -p 2220
ls 
cat -- "--spaces in this filename--"
     The first set of'--' tells the cat command to STOP seeing anything after it as an option, rather see if as a filename (even if it starts with a -)


**Password**
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx