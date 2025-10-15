*Bandit Level 13-14* 

**Goal**
Login to level 13 with the previous password found
read the next 'password' in the /etc/bandit_pass/bandit14
- which can ONLY be read by user14
- instead of password to get into level 14 you will recieve a private SSH key to log into the next level instead of a password 
#note that localhost is the hostname of the machine you are working on.

**Commands used**
ssh bandit13@bandit.labs.overthewire.org -p 2220

     SSH is a protocol allowing computors to communicate securely over a network - log in and use its' terminal 

     SSH uses password based login (which the remote server will check) OR key based login (private and public key pairs which SSH has to prove that you have the private key without sending it over the network to be able to log you in)

     "Use the SSH protocol to connect my computor AS bandit13 to the server bandit.labs.overthewire.org (domain) over port 2220"
ls

ssh -i sshkey.private bandit14@localhost -p 2220

     -i specifies using local file instead of a password
     localhost specifies the hostname as directed by the level
     However this is now blocked/disabled so you can no longer SSH from level 13 into level 14 using that command. 
- you have to SSH from your own computor, using the private key found in level 13

scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private /specifyWhereOnYourMachine
     'scp' works like 'cp' but 'secure' for/over SSH - copies files BETWEEN hosts on a network
      copy over this port from this place, this file
     
chmod 600 /filePath

ssh -i /FilePath/sshkey.private bandit14@bandit.labs.overthewire.org -p 2220
     pulls down the sshkey copied when scp was used, and uses it to gain entry into level 14 as applied to the first command tried

cat /etc/bandit_pass/bandit14

**Password**
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS