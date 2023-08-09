#!/bin/bash -xe
# This user data launches velocity HTML website
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/aduabgy/velocity/archive/refs/heads/main.zip
unzip main.zip
cp -r velocity-main/* /var/www/html/
rm -rf velocity-main main.zip
systemctl enable httpd 
systemctl start httpd
