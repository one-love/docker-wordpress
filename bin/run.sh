#!/bin/bash

cd /var/www
echo -n "Unpacking wordpress tarball... "
tar xf /app/wordpress.tar.gz
echo "done"

echo "Running PHP FPM"
php5-fpm -F
