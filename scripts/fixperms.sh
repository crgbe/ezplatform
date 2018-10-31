#!/bin/bash

cd /var/www/ezplatform

chown -R smile:root .
find . -type d -exec chmod 775 {} \;
find . -type f -exec chmod 664 {} \;

chmod -R a+x scripts
chmod -R a+x app/console

chown -R smile:www-data app/cache
chown -R smile:www-data app/logs
chown -R smile:www-data web
