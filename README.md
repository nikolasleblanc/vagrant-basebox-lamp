# LAMP + Node (with Composer)

## Vagrant basebox

### Installation

Clone the repo and run vagrant up.

### Apache

You'll be able to access your webserver at ```http://192.168.31.11```, which will point to ```/var/www``` on your guest machine.

### Mysql

Your mysql server will be running as a service, accessible via u: root and p: 1234.

### Composer

Composer is installed, add a composer.json file to the root of /var/www and run composer.

### Node

Node is installed, and uses ~/npm as it's base for node_modules so no ```sudo``` required.