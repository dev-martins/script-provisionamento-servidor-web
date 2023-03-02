#!/bin/bash

cd /var/www/html && git clone https://github.com/denilsonbonatti/linux-site-dio.git
cp -R /var/www/html/linux-site-dio/* /usr/local/apache2/htdocs/
httpd-foreground