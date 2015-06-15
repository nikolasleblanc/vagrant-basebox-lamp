#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y python-software-properties
sudo apt-get install -y curl
sudo apt-get install -y vim
sudo apt-get install -y git

sudo add-apt-repository ppa:ondrej/php5
sudo apt-get update
sudo apt-get install -y php5 php5-curl php5-mysql libapache2-mod-php5 php5-mcrypt php5-mysql php5-cgi php5-cli php5-common php5-gd php-pear

sudo a2enmod rewrite
sudo a2enmod headers
sudo service apache2 restart

sudo cp /vagrant/_config/apache.conf /etc/apache2/sites-available/000-default.conf
sudo service apache2 restart

sudo rm -rf /var/www/html

sudo apt-get update
sudo apt-get install -y python-software-properties

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1234'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1234'
sudo apt-get -y install mysql-server

sudo apt-get -y install mysql-client

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
cd /var/www/

curl -sL https://deb.nodesource.com/setup | sudo bash -
cd ~
sudo apt-get install -y nodejs -y
npm config set prefix ~/npm
echo "PATH=$PATH:$HOME/npm/bin" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc