#!/bin/bash
apt-get update
apt-get install -y apache2

# Custom message from variable
echo "<html><body><h1>${message}</h1></body></html>" > /var/www/html/index.html

systemctl enable apache2
systemctl start apache2