#!/bin/bash
DIR="docker-install"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  git pull https://github.com/hanumanth9/docker-install.git
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Error: ${DIR} not found. Can not continue."
  git clone https://github.com/hanumanth9/docker-install.git
fi
cd docker-install
sudo docker-compose up -d
