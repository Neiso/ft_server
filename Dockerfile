# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: douatla <douatla@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/04 15:58:22 by douatla           #+#    #+#              #
#    Updated: 2020/03/07 13:36:32 by douatla          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

#BUILD THE CONTAINER WITH THOSE PRE-INSTALLED IN DEBIAN

RUN apt-get upgrade && apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN apt-get install -y mysql

RUN echo "alias ll='ls -la'" >> ~/.bashrc

ADD ./srcs/ /var/www/srcs

RUN cat /var/www/srcs/server.conf > /etc/nginx/sites-available/default
RUN cat /var/www/srcs/nginx.conf > /etc/nginx/nginx.conf

CMD /usr/sbin/nginx -g "daemon off;"