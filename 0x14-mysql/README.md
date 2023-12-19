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
