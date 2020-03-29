#!/bin/bash

service php7.3-fpm start;
service nginx start;
service mysql start;
echo "alias ll='ls -la'" >> ~/.bashrc;

