This file contains the description of the 0x1A-application_server project task

This is about setting up the application server to serve the AirBnB clone v2 - Web framework project.

ssh to the server web-01
Ensure that nginx is installed, if not use the bellow commands to install it.
sudo apt-get update
sudo apt-get install nginx -y

Then Install gunicorn gloablly using apt-get instaed of pip3 which will confine the package to virtual environment.

sudo apt-get install gunicorn -y

Install other required packgages for the project.

sudo apt-get install python3 python3-pip python3-flask python3-dev pythons-setuptools build-essential libssl-dev libffi-dev 

On the home directory clone the AirBnB clone v2 repository

Create the necessary directory using the following command
sudo mkdir -p /var/www/airbnb-onepage/html
sudo cp /var/www/html/index.nginx-debian.html /var/www/airbnb-onepage/html/index.html

Configure the /etc/nginx/sites-available/default with the required directives.
