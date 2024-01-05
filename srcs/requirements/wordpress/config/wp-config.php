<?php

define( 'DB_NAME', 'db' );

define( 'DB_USER', 'user' );

define( 'DB_PASSWORD', 'password' );

define( 'DB_HOST', 'mariadb:3306' );

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

// define( 'AUTH_KEY',         'put your unique phrase here' );
// define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
// define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
// define( 'NONCE_KEY',        'put your unique phrase here' );
// define( 'AUTH_SALT',        'put your unique phrase here' );
// define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
// define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
// define( 'NONCE_SALT',       'put your unique phrase here' );

/**#@-*/

// // Additional settings
// define('WP_SITEURL', 'http://10.12.174.242:8888');
// define('WP_HOME', 'http://10.12.174.242:8888');
// define('WP_CONTENT_DIR', dirname(__FILE__) . '/wp-content');
// define('WP_CONTENT_URL', 'http://10.12.174.242:8888/wp-content');

// define('WP_INSTALLING', false);
// Set the default admin user details
// define('ADMIN_USER', 'admin');
// define('ADMIN_PASSWORD', 'admin_password');
// define('ADMIN_EMAIL', 'admin@example.com');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';