*Bandit Level 14-15* 

**Goal**
Submit the previously obtained password MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS into port 30000 on localhost 

**Commands used**
ssh -i /locationOfsshkey.private bandit14@bandit.labs.overthewire.org -p 2220

X Exit & ssh bandit15@localhost -p 30000
     *Submit the password* suggests sending data rather than use ssh to establish a connection. The above command is therefore not the logical followpoint as port 30000 isnt set up for SSH, it is a raw TCP listener.

     SSH by default runs on port 22, so unless specified as SSH its unlikely that another nonstandard port is running on SSH.

netstat -tuln 
OR 
ss -tuln
      netstat = print nextwork connections 
      ss = another utility to investigate sockets  
      -t, -u, -l, -n, list tcp, ucp, listening ports in their exact display (non-human readable)
      tells us port 30000 is listening on tcp

nc 30000 OR
telnet 30000
     nc = artitrary TCP and UCP connections and listens
     telnet = user interface to the telnet protocol

     input is expected, rather than sending an SSH banner 

nc localhost 30000
submit previous password
to recieve below password

**Password**
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo