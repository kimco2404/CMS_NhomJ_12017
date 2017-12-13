<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'test');

/** MySQL database password */
define('DB_PASSWORD', '123456');

/** MySQL hostname */
define('DB_HOST', '192.168.100.13');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '`+7nTNb<AwtbLA$L-Q7amn;~|wH)ljXv2~TpbP?mLA+M`8H|n1`/Lz-GmAQL{4fB');
define('SECURE_AUTH_KEY',  '/gkAjhhJe`iwO)V-p=J<cN_ +6D{YhrM|=E#C7gD}]c2w~OJ} y}eY^,HWn&-j:a');
define('LOGGED_IN_KEY',    'PtDl2V|01oIXDpq^K,IH-8|rhT +T(ZMpuLq>UD?|W)b3gMfG~g[zr8N6}m%MZ|L');
define('NONCE_KEY',        ']Zj5i*hHlsUWKg2|>YF,X+xpd-_`I[nFmA6ZLw~;EW7g0.s5EaZCAJ=j]./5z^X~');
define('AUTH_SALT',        'e*l:hUsddFIxm1E7y-n#<a0|u- #+SsS@-#$vNz}EY4rY~-x|0_6=Q!TR=MMxUL?');
define('SECURE_AUTH_SALT', 'n]^c9nY>_}3,4)J]S sM6-MI3aB#Qk<Re^j#Lu_|x^*BhO.54aZQTtzJeCo5DWAg');
define('LOGGED_IN_SALT',   'Ba3kd1&J$~~`(|uJ0:v;w+DJ3xW}.B#R9J*r|.+V}*sTuK &8db-Mn+[boHW3{[/');
define('NONCE_SALT',       'nBv-U1qfkCZxS|13%hYdHz*s1^){.KSZWm1A^${`r!d5;EqrH:>1Xx`pwt6?**i}');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
