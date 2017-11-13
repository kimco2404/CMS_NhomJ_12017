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
define('AUTH_KEY',         'b`&71!%9&9Adyuo0Dw_t|$/U^Vzw]Z8yQ3}nI  <pY nBEB4?=j4!Jlzh)KxN<R-');
define('SECURE_AUTH_KEY',  'v9=Tw()!pNmKc5=n{6T&I_tUub0WtGY9pW..l:#P9q0a6dLM5h_&bmBC$BaGku0l');
define('LOGGED_IN_KEY',    '| e%7P@Vc~;deWo{U9(j_>[`9DJ>=w(H#lfpSXXJeR5{!!es(Ht0vF SqyX8]d&F');
define('NONCE_KEY',        '3~R]w*mZa]!u8:{g+Y>e+Dh5P0zR0nnbL!mn_7Ti~ykV/:RC+b L3n8qie|N7HaX');
define('AUTH_SALT',        'g%6w,@a,=g?+P]N:Rg&0i(SpjYS&?F/-LL]UqRGXQA,F o)9l<}DPp3D_y#h,i/[');
define('SECURE_AUTH_SALT', 'N*Dx4/HspJA$Uf1bZ5Im`u$/BreAN,RUNvc$E-YQ(dcMeR%OhZ^0Lt&;afpZ~`46');
define('LOGGED_IN_SALT',   'km^~0OKmj=ym dc]V_x_F[{OS**dg7]h2P#M,~efFA(}vpDOeADguE iage#Mjzw');
define('NONCE_SALT',       'My~*a-jJ>dOIhY,[;`7YE@l:FEBhWO6MVzP,zdkB=/jTKlXgVo?<?w3$rnD (r98');

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
