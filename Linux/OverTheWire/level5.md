*Bandit Level 5-6* 

**Goal**
Login to level 5 with the previous password found
Find next password in the file in the 'inhere' directory which is
- human readable
- 1033 bytes in size
- not executable
     
**Commands used**
ssh bandit5@bandit.labs.overthewire.org -p 2220

ls

cd inhere

ls

file */* | grep "ASCII text" | find -size 1033c
or file */{.,}* | grep "ASCII text" | find -size 1033c

     '*/*' prints every file in all directories 

     '{.,}' not necessary in this case but will include files beginning with anything else like . or , or other

     '|' pipes the output of previous command through the following command

     'grep' finds and displays patterns 

     'find' command searches all files within directory hierarchy 

      './' specifies the files within the current directory
      
      'size'  specifies find the file/s with this size 
      
cat ./maybehere07/.file2

*found file without specifying non-executable however could use*
find ! -executable 
     '!' = non/not, therefore specifying non-executable

**Password**
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG