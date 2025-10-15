*Bandit Level 16-17* 

**Goal**
Whilst in level 14 submit the password of level 15 previously found 
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx to
- port between 31000-32000 on localhost
- find out which port is listening
- find out which speaks SSL/TLS and which dont
- there is only 1 server that will give the next credentials, the others will simply send back whatever you send to it

**Commands used**
ssh -i /locationOfsshkey.private bandit14@bandit.labs.overthewire.org -p 2220

ss -tuln
     ss is the modern tool for netstat      

- find the flag? to sort ports and then specify which speak ssl/tls? 

**Password** 
