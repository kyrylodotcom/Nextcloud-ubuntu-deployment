#!/bin/bash

sudo apt update
sudo apt install apache2 mysql-server php php-mysql php-gd php-curl php-mbstring php-xml php-zip unzip -y

cd /var/www
sudo wget https://download.nextcloud.com/server/releases/latest.zip
sudo unzip latest.zip

sudo mv nextcloud /var/www/html/

sudo chown -R www-data:www-data /var/www/html/nextcloud

sudo systemctl restart apache2
