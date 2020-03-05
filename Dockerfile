# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: douatla <douatla@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/04 15:58:22 by douatla           #+#    #+#              #
#    Updated: 2020/03/05 14:55:28 by douatla          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

#BUILD THE CONTAINER WITH NGINX INCLUDED 

RUN apt-get upgrade && apt-get update && apt-get install -y nginx

