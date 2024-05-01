This file contains the description of the mysql project tasks.

Install MySQL on both your web-01 and web-02 servers. 

Copy the key here to your clipboard
https://dev.mysql.com/doc/refman/5.7/en/checking-gpg-signature.html
Save it in a file on your machine i.e. signature.key and then
sudo apt-key add signature.key
sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B7B3B788A8D3785C
sudo apt-get update
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*

Create a nonroot user 'holberton_user@localhost' in both servers and give grant to access replica of the database.

For this project, we expect you to look at these concepts:

[How to : ] Fresh Reset and Install mysql 5.7
Database administration
  What is a database
  What is a database primary/replicate cluster:-
    https://www.digitalocean.com/community/tutorials/how-to-choose-a-redundancy-plan-to-ensure-high-availability#sql-replication
  MySQL primary/replicate setup:-
    https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql
  Build a robust database backup strategy:-
    https://www.databasejournal.com/ms-sql/developing-a-sql-server-backup-strategy/
Web stack debugging

[How to : ] Fresh Reset and Install mysql 5.7
 ⚠️ Before going through the guide try this command if it gonna install MySQL 5.7 correctly, when you see the white windows you can jump to step 9, and see what to choose :

 sudo wget -O mysql57 https://raw.githubusercontent.com/nuuxcode/alx-system_engineering-devops/master/scripts/mysql57 && sudo chmod +x mysql57 &&  sudo ./mysql57
If this command did not install 5.7 correctly you can continue reading the following guide.

NOTE AS YOU PROCEED: At any point in this guide, don’t go to the next step if you have errors in the current step you are in, make sure there are no errors.

You can also use this guide for more visual and sample outputs :

For a comprehensive Guide Click Here ���
STEPS :
Clean Running MySQL Processes :

Check for any running MYSQL Processes: sudo ps aux | grep mysql
If MySQL is running,try stopping it : sudo service mysql stop
Double-check if MySQL is no longer running: sudo ps aux | grep mysql
If MySQL processes are still running, terminate them, remember to replace PID with the value of your PID : sudo kill -9 <PID>
Remove Existing MySQL Versions:

Remove MySQL packages sudo apt-get remove --purge mysql-server mysql-client mysql-common -y && sudo apt-get autoremove -y
If no errors occurs, proceed to next steps
If prompted by a dialog to remove data directories, please select YES and press Enter.
Remove MySQL Apt Configurations :

Running the following :::
sudo rm -rf /etc/apt/sources.list.d/mysql.list*
sudo rm -rf /var/lib/mysql-apt-config
sudo dpkg --purge mysql-apt-config
Double Check and Remove Configuration File

Check by running : dpkg -l | grep mysql
The result from above should be none, on your terminal
Now, Remove configurations files by : sudo rm -rf /etc/mysql /var/lib/mysql
Edit sources.list to Remove MySQL Repositories :

Check the sources.list file for MySQL repository entries (example: deb http://repo.mysql.com/apt/ubuntu bionic main), there should be none like the picture below:
Update the packages :

Check the sources.list file for MySQL repository entries (example: deb http://repo.mysql.com/apt/ubuntu bionic main),
Run : cat /etc/apt/sources.list | grep mysql
there should be none like the picture below:
If there are entries, open the sources.list file: sudo vi /etc/apt/sources.list
If no errors occur, proceed to the next step.
Update the package by running :** sudo apt update**
Kill any running processses ps aux | grep apt
Clean APT Cache :

Run : sudo apt clean
Configure any Pending Packages and Install MySQL :

Run :
sudo dpkg --configure -a
Install MySQL by running : ** sudo wget -O mysql57 https://raw.githubusercontent.com/nuuxcode/alx-system_engineering-devops/master/scripts/mysql57 && sudo chmod +x mysql57 && sudo ./mysql57**
A few windows are going to show up, Follow the prompts to select Ubuntu Bionic, change to MySQL 5.7 and set a password if needed.
After installation, check MySQL status: sudo service mysql status *
If issues persist, use the following commands to debug :
journalctl -u mysql.service
cat /var/log/mysql/error.log
journalctl -xe
Check this post o learn more about MySQL
https://shazaali.substack.com/p/database-administration

   Debugging
------------------------
Non-exhaustive guide to debugging
School specific
If you are struggling to get something right that is run on the checker, like a Bash script or a piece of code, keep in mind that you can simulate the flow by starting a Docker container with the distribution that is specified in the requirements and by running your code. Check the Docker concept page for more info.

Test and verify your assumptions
The idea is to ask a set of questions until you find the issue. For example, if you installed a web server and it isn’t serving a page when browsing the IP, here are some questions you can ask yourself to start debugging:

Is the web server started? - You can check using the service manager, also double check by checking process list.
On what port should it listen? - Check your web server configuration
Is it actually listening on this port? - netstat -lpdn - run as root or sudo so that you can see the process for each listening port
It is listening on the correct server IP? - netstat is also your friend here
Is there a firewall enabled?
Have you looked at logs? - usually in /var/log and tail -f is your friend
Can I connect to the HTTP port from the location I am browsing from? - curl is your friend

There is a good chance that at this point you will already have found part of the issue.

Get a quick overview of the machine state

Youtube video First 5 Commands When I Connect on a Linux Server

When you connect to a server/machine/computer/container you want to understand what’s happened recently and what’s happening now, and you can do this with 5 commands in a minute or less:

w
-----
  shows server uptime which is the time during which the server has been continuously running
  shows which users are connected to the server
  load average will give you a good sense of the server health - (read more about load here and here)

history
--------
  shows which commands were previously run by the user you are currently connected to
  you can learn a lot about what type of work was previously performed on the machine, and what could have gone wrong with it
  where you might want to start your debugging work

top
------
  shows what is currently running on this server
  order results by CPU, memory utilization and catch the ones that are resource intensive

df
----
  shows disk utilization

netstat
--------
  what port and IP your server is listening on
  what processes are using sockets
  try netstat -lpn on a Ubuntu machine

Machine

Debugging is pretty much about verifying assumptions, in a perfect world the software or system we are working on would be working perfectly, the server is in perfect shape and everybody is happy. But actually, it NEVER goes this way, things ALWAYS fail (it’s tremendous!).

For the machine level, you want to ask yourself these questions:

Does the server have free disk space? - df
Is the server able to keep up with CPU load? - w, top, ps
Does the server have available memory? free
Are the server disk(s) able to keep up with read/write IO? - htop
If the answer is no fore to look into (there is ALWAYS more to look into actually).

Is the software started? init, init.d:
	service NAME_OF_THE_SERVICE status
	/etc/init.d/NAME_OF_THE_SERVICE status
Is the software process running? pgrep, ps:
	pgrep -lf NAME_OF_THE_PROCESS
	ps auxf
Is there anything interesting in the logs? look for log files in /var/log/ and tail -f is your friendor any of these questions, then that might be the reason why things are not going as expected. There are often 3 ways of solving the issue:

free up resources (stop process(es) or reduce their resource consumption)
increase the machine resources (adding memory, CPU, disk space.)
distributing the resource usage to other machines
Network issue
For the machine level, you want to ask yourself these questions:

Does the server have the expected network interfaces and IPs up and running? ifconfig
Does the server listen on the sockets that it is supposed to? netstat (netstat -lpd or netstat -lpn)
Can you connect from the location you want to connect from, to the socket you want to connect to? telnet to the IP + PORT (telnet 8.8.8.8 80)
Does the server have the correct firewall rules? iptables, ufw:
iptables -L
sudo ufw status
Process issue
If a piece of Software isn't behaving as expected, it can obviously be because of above reasons. but the good news is that there is m
