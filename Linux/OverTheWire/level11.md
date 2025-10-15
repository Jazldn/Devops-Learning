*Bandit Level 11-12* 

**Goal**
Login to level 11 with the previous password found
Find next password in the file data.txt where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions 

**Commands used**
ssh bandit11@bandit.labs.overthewire.org -p 2220

cat data.txt
= 7k16JArUVv5LxVuJfsSVdbbtaHGlw9D4

cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
     tr = translate letters/characters
     'A-Za-z' = take any letter corresponding with the this (the first option)
     and change it to the second option 'N-ZA-M' (the next 13 positions) and 'n-za-m'for the lowercase positions

**Password**
7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4