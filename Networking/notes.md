*Open Systems Interconnection - OSI MODEL NOTES*

= A Theoretical framework (not a protocol stack) to standardise communicaton between systems. 

However the TCP/IP model is what is actually in practical use in todays internet and is alot simpler. However the OSI is a useful mental model. 

Pneumonic - All People Seem To Need Data Processing

7. Application Layer 
End user Layer. Network services are given directly to decided application. e.g. DNS, SSH, IRC, FTP and their port number is chosen.
6. Presentation Layer 
Data is translated to readble format. Secuity provided if needed through encryption/encoding. (SSL/TLS)
5. Session Layer 
Session setup/teardown. Using protocols like RPC, NetBIOS. 
4. Transport Layer 
Transport Protocol and Ports actually assigned/added. TCP (Transmission control protocol - connection based for reliability and accuracy), UDP (User Datagram Protocol - connectionLESS for fast delivery)
Ports are used to keep data seperate despite the same IP address being used by opening different connections. 
3. Network Layer 
Data packet forwarding e.g. Routing, addressing. IPsec (Internet protocol security), ICMP (internet control message protocol - for error reporting and network diagnostics e.g ping), IGMP (Internet Group Management Protocol)
2. Data Link Layer
Ensuring correct Node to Node Transfer. Data Packets are Framed with MAC addresses, Ethernet, Switches, and Bridges. 
1. Physical Layer 
Raw bitstreams are transmitted ver physical medium e.g copper, fibre, lightwaves, wifi (radio frequency). All Data is transmit by ALL devices - hence data link layer necessary. 


***DNS EXAMPLE***

*DOWN* 
Device searches webname.
DNS Query data packet is sent down the OSI layers to the DNS recursive resolver. 
4. UDP header added and Port (53) - (TCP is sometimes used for larger queries)
3. Source IP, and destination (recursive resolver IP added). LAN/WAN (Based on where the recursive server is)
2. MAC header added. 

*UP* 
DNS recursive resolver recieves the data packet, and has to unpackage the layers to understand the query - travels UP the OSI. 
7.  DNS Recursive Resolver will first check its' cache AT the application layer.

     **IP FOUND IN CACHE AT RECURSIVE RESOLVER SEARCH** 
     *DOWN* 
      If IP is found then a DNS RESPONSE Packet will be sent DOWN the OSI layers with the IP address back to the user. 

      Caching mechanism prevents overwhelming the Authoritative servers - ensuring a faster efficient intenet experience.  
    
 **IF IP IS NOT FOUND IN CACHES** 
*DOWN* 
Then the Recursive resolver will then query its OTHER NAME SERVERS (Load DNS settings and configurations, and respond to queries from clients/servers about domain names); Root, TLD (Top level Domain), Authoritative - Zone Files (Master Database for domains). 
7. A DNS query will be packaged down the OSI stack from the Recursive resolver, to the Root DNS server. 
3. next hop??
2. Mac header for DNS root server?

*UP* 
The Root DNS server recieves the request at layer 1, and unpackages it back up to layer 7 

*DOWN* 
The Root DNS server does not have the IP address for the domain queries...However it does know where (which TLD Server) to find further information (e.g. where to find '.com.org.net.co.uk' etc.), so it prepares a data packet with a referral of which TLD to query. 
3. 
2. 
1. This query is sent down back to the Recursive Resolver!

*UP* 
The Recursive Resolver Recieves the data packet and unpackages it to understand the referral. 

*Down* 
The Recursive Resolver now knows which TLD to query. So it packages a query to that TLD Server. 

*UP* 
The TLD Server recieves the data packet, and unpackages it to understand the query. 
The TLD server does not have the IP answer either, but it knows which Authoritative Server might have it. 

*DOWN* 
The TLD server packages an Authoritative server referral and sends this back to the Recursive Resolver. 

*UP* 
The Recursive Resolver recieves the data packet from the TLD server, and has to unpackage it up the OSI stack, to obtain the data for the Authoritative referral. 

*DOWN* 
The Recursive Resolver, now knows which Authoritative Server to query. It sends this DNS query down the OSI stack to the Authoritative Server

*UP* 
The Authoritative Server recieves the data packet and unpackages it to understand the DNS query.
The Authoritative Server knows which zone, and which Zone files to search - contains multiple resouce records with information about hosts, name server records, time to lives, class, type of recvords, and data (IP Address).
The Type of records could be:
A (IPv4)
AAAA (IPv6)
CNAME (Canonical Name Record - Alias of one name to another - allowing you to point multiple domain names to the same IP address)
MX (main server for recieving email for the domain)
TXT (Allows domain administrators to insert any text into DNS e.g. for verification purposes, or holding SPF data - sender policy framework)
PTR (Pointer Record - reverse DNS lookup finds the domain when an IP address is given)

*DOWN*
The Authoritative Resolver packages the DNS response with the IP address and sends it back to the Recursive Resolver

*UP*
The Recursive Resolver recieves the data packet from the Authoritative Resolver, and unpackages it UP the OSI stack to recieve the IP Address

THE RECURISVE SOLVER CACHES THE DNS RESPONSE AND STORES IT lOCALLY FOR NEXT TIME

It then has to send the IP address back to the client/user/your device

*DOWN*
The Recursive resolver then packages the DNS response (containing the IP address), and sends it down the OSI stack to your device/you as the user/client

*UP* User Recieves the DNS RESPONSE (whether from the Resursive resolver cache find or the Authoritative find), and unpackages the layers to recieve the IP Address answer. 

*DOWN* User now has the IP Address at the Application Layer a New Data Flow begins using e.g HTTP or HTTPS
7. User device now has the IP address.
4. TCP used for IP accuracy. Port Added e.g HTTP (port 80) or HTTPS (port 443). 
3. Destination IP is now known. 
2. MAC header added for XXXXXXXXXXX
this is recieved by the IP addresses Web Server. 
The most used web servers are Apache (higher memory) & Nginx (faster) for http and https request processing and responding. 

*UP* The IP addresses' web server e.g Nginx unpackages the data request interpreting it at the application layer then packages the data for the site in a https response and sends it back to your user/device

*DOWN* 
7. HTML, CSS, JPEG, files Etc. 
6. Encoding/encyrption of data carried out at presentation layer if necessary
4. TCP header, for reliable and secure data transfer
3. Source(Webserver)/Destination(user), LAN/WAN **
2. MAC HEADER of your device added. 

*UP* Your device recieves the data at its layer 1, and then has to unpackage it UP the OSI Stack. 
6. Presentation layer is where decoding/decryption/decrompression happens. 
Visual site is loaded. 





*TCP/IP Model - Practical use consenses the OSI Model*

Internet is not actually built on the OSI model, so the above stacks are not truly followed. The Transmission Control Protocol/Internet Protocol consenses this. Pneumonic - All The Internet Needs -  

4. Application Layer
Contains OSI Layers 7,6,5, application, presentation, session merged together. 

     Commands acting as DNS clients: 
     
     'nslookup <google.com>' original command for DNS queries - more human readable 
     
         Server: Which DNS server your system used (Queries recursive/resolver destination); usually your routers' or Googles' public resolver 8.8.8.8
     
         Address: Server+ Port 

         Non-Authoritative answer - Tells you reply came from cache

         Address: IPv4 A record returned for the domain 

     'dig <google.com>' dig also formats a DNS query packet - which goes through the stack layers however shows everything therefore can be used for troubleshooting

          1. Metadata about the dig client and what was queried
          2. Specifies your dig commands options (has no relation to the actual query)
          3. Type of operation (e.g. QUERY), STATUS, Transaction identifier number (assigned by your computor for accurate sending/recieving DNS queries). Flags show which dig options were set. 

          4. Question Section: E.g give me an A record for <domain.com>. IN = Internet namespace. 
             If you want to specify IPv6 use 'dig <domain.com> AAAA'

          5. Answer Section: Domain Name : Number of seconds the record is valid for before re-querying (Time to Live - TTL) : Internet Class e.g IN : Record Type : IP answer. 

          Multiple IPs are loaded for google for Load balancing - it points to multiple servers.

          6. Authority and additional sections - may be omitted unless other resolvers were involved
          
          6. Name servers responsible for your DNS answer (your recursive resolver)

     dig +short ns <domain.com>
      
         Specifies the authoritative name servers for <domain>  - the servers that actually hold the zone files
     
     dig +short <ns1.google.com>
         
         Queries the specific name server (from previous command) to obtain the IP address
        
     dig @ns1.google.com www.google.com 
         
         Combines the above commands - producing what the recursive resolver does, but manually

3. Transport Layer
Same as the OSI - TCP, UDP, 


2. Internet Layer
Comprises the OSI Network Layer (3) - Logical addressing routes across different networks and source/destination IP are assigned. 
1. Network Access Layer 
Containes OSI Layers 2, and 1 (Data link & Physical) 
Ethernet, wireless.. 

**EXAMPLE** 








TO DO
- understand hops in data pathway/mac addresses
- understand lan and WAN
- add the notes from notion
- where do commands like dig ns<>, dig +short ns<> come in to play if this was done manually
- push to github 
- add bandit to vscode and push overthewire to github 
- play some github game 
- go back to classroom 
