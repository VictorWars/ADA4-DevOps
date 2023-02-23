#!/bin/bash

sudo systemctl stop nginx

REPOSITORY_URL="https://github.com/VictorWars/ADA4-DevOps.git"
LOCAL_DIR="/var/www/victorenrique.com/html/ADA4-DevOps"

if [ ! -d "$LOCAL_DIR" ]
then
  sudo git clone "$REPOSITORY_URL"
else
  sudo git pull origin main
fi

sudo systemctl start nginx
ngrok http 80
