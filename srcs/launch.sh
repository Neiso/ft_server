#!/bin/bash

# Launch all servers.
service php7.3-fpm start;
service nginx start;
service mysql start;

# Configure MySQL.

mysql --execute "CREATE USER 'douatla'@'localhost' IDENTIFIED BY 'HelloWorld!';"
mysql --execute "CREATE DATABASE wordpress;"
mysql --execute "GRANT ALL PRIVILEGES ON wordpress.* TO 'douatla'@'localhost';"


echo "alias ll='ls -la'" >> ~/.bashrc;


