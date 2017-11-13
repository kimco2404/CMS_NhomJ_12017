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
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

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
define('AUTH_KEY',         'r7YMrj?gonD-(]4}RmPs#&LdPvUKR-/mT@# PH#.XQGT{o.4T?Fh0lGLVg-!Atv^');
define('SECURE_AUTH_KEY',  ',3]i{t>Hx%(Xl}s~t/$/}TCQ_3*u|UeY@=(96/l]L!W<AKN$b3cHtUp=NJ-o-e3d');
define('LOGGED_IN_KEY',    'Q>6A}E?us+ERYCnbo{qyD1UEDQ(R?4R%9`Ib*K1V_KP]5]t^`&9V>Cg~2#@5-L*5');
define('NONCE_KEY',        ']H_Y-pea1Wy!JOI@gt,> >E2U(>FA*/d8.5vRGoQEs@&_,P{`3gu{Z4o/v1t&/T2');
define('AUTH_SALT',        '2mF8D28:_T$E8$-Y`]%[4.[NlZ4_SXrK4Z<`T&6+JQFH}oi/f+VC]jqI6lOcM3~H');
define('SECURE_AUTH_SALT', 'O~y59nd|+aZJm!/rf56Q&{sc`Om::y lLci;]2pnQKB)+NJT}fZ5YcI[|X<y+(x4');
define('LOGGED_IN_SALT',   'n9Xuh9]+}TN+sOMdwf%;C [)TCFhO2F<}%1-YU[Q5G0c2a}iC|dn)L<M5f+lBa5M');
define('NONCE_SALT',       '#OCZ,_bPqXI*0pw;nub I&io[U*bx:H*#GO2L> ekj~XXcz2(?*]P,C57CIloN9C');

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
