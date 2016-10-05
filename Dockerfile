############################################################
# Dockerfile file to build Hubot container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/nodejs
MAINTAINER Axel Quack <mail@axelquack.de>

# Install CoffeeScript, Hubot
RUN \
  npm install -g yo generator-hubot

#  npm install -g coffee-script hubot && \
#  apt-get update && \
#  apt-get install -y redis-server && \
#  rm -rf /var/lib/apt/lists/*

# Define default command.
# EXPOSE 6379
# RUN /etc/init.d/redis-server start

# Create Hubot
WORKDIR ~
RUN \
  mkdir myhubot && \
  cd myhubot && \
  yo hubot
#hubot --create mybot
#WORKDIR /root/mybot
#RUN npm install
