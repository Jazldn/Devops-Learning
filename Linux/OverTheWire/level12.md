*Bandit Level 12-13* 

**Goal**
Login to level 12 with the previous password found
Find next password in the file data.txt which is a hexdump file that has been repeatedly compressed
- use mktemp -d
- copy the datafile using cp
- rename is using mv
- decompress file for password

**Commands used**
ssh bandit12@bandit.labs.overthewire.org -p 2220
 
ls 

mktemp -d /tmp/dehex.XXXXXXXX
     make a directory within the /tmp directory
     man mktemp will tell you the template of XXXXX to use
     
xxd -r data.txt > /tmp/learn.XXXXXXXXXX/dehex.txt
     xxd is the command to make a hexdump
     xxd -r reverses the hexdump
     > is to redirect
     /tmp/ specifies redirect into this directory/location
     /dehex.txt creates a new file for the reverse hexdump data to be put into

file /tmp/learn.XXXXXXXXXX/dehex.txt
     file determines file type - so tells us that the file type is gzip compressed data 

mv /tmp/learn.XXXXXXXXXX/dehex.txt /tmp/learn.XXXXXXXXXX/dehex.gz
or cd into learn.XXXXXXXXXX then mv dehex.txt dehex.gz
     before we can use gzip to decompress the file, the file has to be renamed (using mv) to end in .gz
     first option specifies which file we are renaming (and its location)
     second option specifies what and where we are renaming it to
 
gzip -d dehex.gz
     gzip uses gzip decompression to decompress the .gz file 

file dehex.gz 
     tells us the data is now in bzip2 compressed data format
     we need to repeat decompression 

mv dehex.gz dehex.bzip2
bzip2 -d dehex.bzip2
file dehex.bzip2.out
     tells us file was compressed using gzip data

mv dehez.bzip2.out dehex.gz
gzip -d dehex.gz
file dehex
     tells us POSIX TAR ARCHIVE 

man tar
tar -x dehex
     tar is an archiving utility, -x is to extract data from archive
     told needs -f option
tar -xf dehex

ls 
     checks if the data has been extracted into any new files

file data5.bin
tar -xf data5.bin
ls
file data6.bin
mv data6.bin new.bzip2
bzip2 -d new.bzip2
file new.bzip2.out
tar -xf new.bzip2.out
ls
file data8.bin
mv data8.bin morenew.gz
gzip -d morenew.gz
file morenew
     finally = ASCII text
cat morenew

**Password**
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn