This file contains the description of the 0x11-what_happens_when_your_type_google_com_in_your_browser_and_press_enter project task.

0-blog_post file contains the detailed explanation of the various communication layers and protocols a simple http request will go through before we can have a response in the user's browser.
- Making a http get request
- Resolve domain name
- Remake the http request using the resolved IP address
- Request is routed to the load balancer
- The load balancer use the TLS/SSL to ensure security of data transmission between the browser and the bakend servers.
- Assign a web server at the backend to respond to the given http/https request.
- Use the Application server to interact with the database for data storage and manipulation.
- The server finally returns the information as requested to the client's browser. 
