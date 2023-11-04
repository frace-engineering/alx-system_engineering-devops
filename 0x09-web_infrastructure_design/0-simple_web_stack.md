 ---- SERVER ----
A server is a computer or a software that provides services, resources or functionalities to other computers known as clients.

The Domain Name is a human readable name given to a system.
We have domain name servers which serves as an interface where domain names are translated to IP addresses.
example  ugwu.com  122.35.14.15 where ugwu.com is the domain name and 122.35.14.15 is the ip address.
IP addresses are series of numbers and humans cannot remember these numbers, the DNS was designed to translate these numbers to easily memorable words connected by dots.

The "www" is a subdomain and can be an A record or a CNAME record.
A record stores the IP address while the CNAME record is used as an alias to redirect to another name/domain


The web server is basically there to handle the  HTTP request made by a user on his/her computer's browser. The web server returns the static html pages/s of the requested web page of the domain name.

The Application serveer provides the functionallity that the web page needs to interact with user or any other infrastructure components like the database.

The database is for the data storage and manipulation. User information is stored in the database and the application is the gate way for users to manipulate, store or retrieve the data in the database.

The server commuicccates with the user computer using the HTTP request from the users browser.
The user uses the browser on the computer to send a HTTP request to the server, which in turn return a HTTP respose to the user's computer browser. 

The "SPOF" Single Point Of Failure is a point where if the service fails will collapse the entire structure thereby making the network unavailable. It is always important to identify the SPOF in any network infrastructure and get it fixed to ensure high availablity and reliability of the network.

The down time when maintainance needed blonges to planned category of downtime and can bring the entire network to a halt is this server is a SPOF. This can be avoided by including reduntant servers in the system which can be swithed to when the other serveer is shot down for maintainance.

If a server cannot scale if influx of incoming traffic, it means that the server is overwhelmed byt influx of too many traffic and can be considered to be SPOF in terms of scalabilty. This can be mitigated by the intoduction of load ballancers on the network or by the use of horizontal scaling approach
