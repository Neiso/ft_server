# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: douatla <douatla@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/04 15:58:22 by douatla           #+#    #+#              #
#    Updated: 2020/03/05 20:37:57 by douatla          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

#BUILD THE CONTAINER WITH THOSE PRE-INSTALLED IN DEBIAN

RUN apt-get upgrade && apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y vim
run apt-get install -y curl

RUN echo "alias ll='ls -la'" >> ~/.bashrc

ADD ./srcs/ /var/www/srcs

RUN cat /var/www/srcs/server.conf > /etc/nginx/sites-available/default

RUN mv /etc/nginx/sites-available/defaut /etc/nginx/sites-available/myconfig 