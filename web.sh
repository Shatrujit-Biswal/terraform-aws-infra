#!/bin/bash
apt update
apt install wget unzip apache2 -y
systemctl start apache2
systemctl enable apache2
wget https://www.tooplate.com/zip-templates/2142_cloud_sync.zip
unzip -o 2142_cloud_sync.zip
cp -r 2142_cloud_sync/* /var/www/html/
systemctl restart apache2