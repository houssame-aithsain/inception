#!/bin/bash

if [ ! -f "/var/www/html/wp-config.php" ]; then
    cd /var/www/html
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    ./wp-cli.phar core download --allow-root;
    ./wp-cli.phar config create --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=$DBHOST --allow-root
    ./wp-cli.phar core install --url=$URL --title=$TITLE --admin_user=$SUPERUSER --admin_password=$SUPERPASS --admin_email=$SUPEREMAIL --allow-root
    ./wp-cli.phar user create $USER_LOGIN $USER_EMAIL --role=editor --user_pass=$USER_PASS --allow-root
    chown -R www-data:www-data /var/www/html
else
    echo "wp-config.php found, skipping setup..."
fi

echo "Starting PHP-FPM..."
exec php-fpm8.2 -F
