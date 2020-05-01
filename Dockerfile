# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: djulian <djulian@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/04 15:58:22 by douatla           #+#    #+#              #
#    Updated: 2020/03/29 19:41:36 by djulian          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get upgrade && apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN apt-get install -y php php-fpm php-mysql php-mysql
RUN apt-get install -y mariadb-server mariadb-client

ADD ./srcs/ /var/www/srcs

RUN cat /var/www/srcs/server.conf > /etc/nginx/sites-available/default

ENTRYPOINT '/var/www/srcs/launch.sh' && /bin/bash