#!/bin/bash

apt update
apt upgrade -y

apt install apache2 -y

apt install unzip -y

mkdir /tmp

wget -P /tmp/  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

cd /tmp

unzip main.zip

cp -r /tmp/*main/* /var/www/html/ 
