#!/bin/sh

# export HTTP_REQUEST_METHOD="wget"

wp cli update

# wp package install wp-cli/restful

# rm -fr /var/www/wordpress

# wp core download --path=/var/www/wordpress

# cd /var/www/wordpress

# wp config create --dbname=maria --dbuser=usfachb --dbpass=123

# wp db create

# wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org

# find /var/www/wordpress/ -type d -exec chmod 755 {} \;

# find /var/www/wordpress/ -type f -exec chmod 644 {} \;

# chown -R nobody:nobody /var/www

exec $@