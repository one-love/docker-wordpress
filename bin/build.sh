#!/bin/bash

#!/bin/bash

set -e

PACKAGES="\
     php5-gd \
     php5-fpm \
     wget \
"

TEMP_PACKAGES=""
WORDPRESS_URL="https://wordpress.org/latest.tar.gz"

mv /app/sources.list /etc/apt/
apt-get update -y
apt-get upgrade -y
apt-get install -y $PACKAGES

mv /app/www.conf /etc/php5/fpm/pool.d
mkdir -p /var/www
wget -O /app/wordpress.tar.gz $WORDPRESS_URL

apt-get purge -y $TEMP_PACKAGES
apt-get autoremove -y --purge
apt-get clean -y
