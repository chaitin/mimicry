#!/bin/bash
mkdir -p /var/www/html/prod_php/
chmod 777 /var/www/html/prod_php/
mkdir -p /var/www/html/prod_jsp/
chmod 777 /var/www/html/prod_jsp/
cp /etc/status.jsp /var/www/html/prod_jsp/
cp /etc/status.php /var/www/html/prod_php/
chmod 1777 /tmp
echo "start nginx"
nginx -g 'daemon off;'

