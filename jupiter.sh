#!/bin/bash
# This bash script creates a static website 
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/aduabgy/jupiter-static-website/archive/refs/heads/main.zip
unzip main.zip
cp -r jupiter-static-website-main/* /var/www/html
rm -rf main.zip
systemctl enable httpd 
systemctl start httpd