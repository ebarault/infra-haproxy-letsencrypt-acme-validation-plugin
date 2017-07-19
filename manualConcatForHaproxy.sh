#!/bin/bash
for domain in $(ls /etc/letsencrypt/live); do 
    cat /etc/letsencrypt/live/$domain/privkey.pem /etc/letsencrypt/live/$domain/fullchain.pem > /etc/ssl/private/$domain.pem
done
