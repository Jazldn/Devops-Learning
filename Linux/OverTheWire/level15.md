*Bandit Level 15-16* 

**Goal**
Whilst in level 14 submit the password of level 14 previously found to
- port 30001 on localhost
- using SSL/TLS encryption

**Commands used**

ssh -i /locationOfsshkey.private bandit14@bandit.labs.overthewire.org -p 2220

Previous - nc localhost 30000 - submit MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS - recieve 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo

X nc localhost 30001  
     would not work here as nc expects plain text, and this time we are looking for encrypted data password. 

X openssl s_client localhost 30001
     openssl is an encrypted TCP socket using TLS/SSL over TCP
     the tool to do this is s_client (flag is specified in man pages)
     s_client doesnt take positional arguments so the flag -connect has to be specified 

man openssl-s_client
     shows syntax specifying flag for -connect [host:port]
 
openssl s_client -connect localhost:30001
submit previous password

**Password** 
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx