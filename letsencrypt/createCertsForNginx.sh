#!/bin/bash
domain=$1;
sudo cp /etc/letsencrypt/live/$domain/fullchain.pem /etc/nginx/ssl/$domain.crt
sudo cp /etc/letsencrypt/live/$domain/privkey.pem /etc/nginx/ssl/$domain.key

