-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2017 at 05:18 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-13 03:43:53', '2017-11-13 03:43:53', 'Hi, this is a comment.\r\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\r\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=315 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/wordpress/', 'yes'),
(2, 'home', 'http://localhost:82/wordpress/', 'yes'),
(3, 'blogname', 'wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'please2996@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '2', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:65:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:5:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:1;s:8:"dropdown";i:0;s:6:"number";i:3;}i:4;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:2;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:12:"categories-2";i:1;s:14:"recent-posts-2";i:2;s:10:"archives-2";i:3;s:17:"recent-comments-2";i:4;s:8:"search-2";i:5;s:6:"meta-3";i:6;s:7:"pages-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"sortby";s:10:"post_title";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:4:{i:1512402234;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1512445668;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1512445723;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:12:"header_image";s:13:"remove-header";s:18:"nav_menu_locations";a:2:{s:3:"top";i:10;s:6:"social";i:0;}}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.8.3";s:12:"last_checked";i:1512359036;}', 'no'),
(114, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1512359036;}', 'no'),
(117, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1512359036;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(127, '_site_transient_timeout_wporg_theme_feature_list', '1510555884', 'no'),
(128, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'no'),
(188, 'category_children', 'a:2:{i:5;a:2:{i:0;i:6;i:1;i:7;}i:2;a:2:{i:0;i:8;i:1;i:9;}}', 'yes'),
(252, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(259, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1512390964', 'no'),
(260, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(306, '_site_transient_timeout_theme_roots', '1512360836', 'no'),
(307, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=210 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_lock', '1511336666:5'),
(3, 4, '_edit_last', '5'),
(4, 10, '_wp_trash_meta_status', 'publish'),
(5, 10, '_wp_trash_meta_time', '1511331924'),
(8, 11, '_wp_trash_meta_status', 'publish'),
(9, 11, '_wp_trash_meta_time', '1511331745'),
(10, 12, '_edit_lock', '1511336915:5'),
(11, 12, '_edit_last', '5'),
(14, 15, '_edit_lock', '1511332267:5'),
(15, 15, '_edit_last', '5'),
(20, 13, '_wp_trash_meta_status', 'publish'),
(21, 13, '_wp_trash_meta_time', '1511332111'),
(22, 17, '_wp_trash_meta_status', 'publish'),
(23, 17, '_wp_trash_meta_time', '1511333010'),
(24, 2, '_edit_lock', '1511938189:5'),
(25, 1, '_wp_trash_meta_status', 'publish'),
(26, 1, '_wp_trash_meta_time', '1511333092'),
(27, 1, '_wp_desired_post_slug', 'hello-world'),
(28, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(29, 19, '_edit_lock', '1511336860:5'),
(30, 20, '_edit_lock', '1511939052:5'),
(31, 19, '_edit_last', '5'),
(36, 20, '_edit_last', '1'),
(37, 23, '_wp_attached_file', '2017/11/huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu.jpg'),
(38, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:990;s:4:"file";s:61:"2017/11/huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:61:"huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:61:"huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:61:"huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1511276974";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"70";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(41, 22, '_wp_trash_meta_status', 'publish'),
(42, 22, '_wp_trash_meta_time', '1511333434'),
(44, 26, '_wp_trash_meta_status', 'publish'),
(45, 26, '_wp_trash_meta_time', '1511333780'),
(52, 28, '_edit_lock', '1511336822:5'),
(53, 28, '_edit_last', '5'),
(56, 30, '_edit_lock', '1511336838:5'),
(57, 30, '_edit_last', '5'),
(64, 30, '_wp_trash_meta_status', 'publish'),
(65, 30, '_wp_trash_meta_time', '1511937164'),
(66, 30, '_wp_desired_post_slug', 'fsafas'),
(67, 28, '_wp_trash_meta_status', 'publish'),
(68, 28, '_wp_trash_meta_time', '1511937164'),
(69, 28, '_wp_desired_post_slug', 'fdsafds'),
(70, 35, '_edit_lock', '1511937045:5'),
(71, 35, '_edit_last', '5'),
(74, 37, '_edit_lock', '1512358734:5'),
(75, 37, '_edit_last', '5'),
(78, 39, '_edit_lock', '1512361111:5'),
(79, 39, '_edit_last', '5'),
(82, 41, '_edit_lock', '1512358722:5'),
(83, 41, '_edit_last', '5'),
(86, 43, '_wp_trash_meta_status', 'publish'),
(87, 43, '_wp_trash_meta_time', '1511937274'),
(88, 47, '_edit_lock', '1511939157:5'),
(89, 47, '_edit_last', '5'),
(90, 49, '_edit_last', '5'),
(91, 49, '_edit_lock', '1512360459:5'),
(92, 52, '_edit_last', '5'),
(93, 52, '_edit_lock', '1511939329:5'),
(94, 54, '_edit_last', '5'),
(95, 54, '_edit_lock', '1511939291:5'),
(96, 57, '_edit_last', '5'),
(97, 57, '_edit_lock', '1511940747:5'),
(98, 59, '_menu_item_type', 'post_type'),
(99, 59, '_menu_item_menu_item_parent', '0'),
(100, 59, '_menu_item_object_id', '57'),
(101, 59, '_menu_item_object', 'page'),
(102, 59, '_menu_item_target', ''),
(103, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 59, '_menu_item_xfn', ''),
(105, 59, '_menu_item_url', ''),
(143, 64, '_wp_trash_meta_status', 'publish'),
(144, 64, '_wp_trash_meta_time', '1511941853'),
(145, 66, '_edit_lock', '1512348095:1'),
(146, 67, '_wp_attached_file', '2017/11/Penguins.jpg'),
(147, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:20:"2017/11/Penguins.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Penguins-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Penguins-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Penguins-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Penguins-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"Penguins-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1203311251";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(148, 68, '_edit_lock', '1512361034:5'),
(149, 68, '_edit_last', '1'),
(150, 69, '_wp_attached_file', '2017/12/luu_diec_phi_qreq.jpg'),
(151, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:429;s:4:"file";s:29:"2017/12/luu_diec_phi_qreq.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"luu_diec_phi_qreq-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"luu_diec_phi_qreq-300x257.jpg";s:5:"width";i:300;s:6:"height";i:257;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:29:"luu_diec_phi_qreq-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(152, 70, '_wp_attached_file', '2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35.jpg'),
(153, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:667;s:6:"height";i:589;s:4:"file";s:48:"2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"7e6cdf02-b168-49cf-aa5f-1611b3402f35-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg";s:5:"width";i:300;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:48:"7e6cdf02-b168-49cf-aa5f-1611b3402f35-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(156, 68, '_thumbnail_id', '69'),
(161, 73, '_edit_lock', '1512348568:1'),
(172, 80, '_edit_lock', '1512350619:1'),
(177, 82, '_edit_lock', '1512355328:1'),
(178, 83, '_edit_lock', '1512355665:1'),
(179, 83, '_edit_last', '1'),
(182, 83, '_wp_trash_meta_status', 'publish'),
(183, 83, '_wp_trash_meta_time', '1512355822'),
(184, 83, '_wp_desired_post_slug', 'post5'),
(185, 85, '_edit_lock', '1512356374:5'),
(186, 87, '_edit_lock', '1512356391:5'),
(187, 88, '_edit_lock', '1512356430:5'),
(188, 93, '_edit_lock', '1512356618:5'),
(189, 94, '_edit_lock', '1512356645:5');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  `post_overview` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`, `post_overview`) VALUES
(1, 1, '2017-11-13 03:43:53', '2017-11-13 03:43:53', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-11-22 06:44:52', '2017-11-22 06:44:52', '', 0, 'http://localhost:82/cms_J_12017/wordpress/?p=1', 0, 'post', '', 1, NULL),
(2, 1, '2017-11-13 03:43:53', '2017-11-13 03:43:53', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href="http://localhost:82/cms_J_12017/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-13 03:43:53', '2017-11-13 03:43:53', '', 0, 'http://localhost:82/cms_J_12017/wordpress/?page_id=2', 0, 'page', '', 0, NULL),
(4, 1, '2017-11-13 03:49:49', '2017-11-13 03:49:49', '<section class="sidebar_1">\r\n<p class="related_news"><a title="Bão suy yếu thành áp thấp nhiệt đới" href="https://vnexpress.net/tin-tuc/thoi-su/bao-suy-yeu-thanh-ap-thap-nhiet-doi-3669275.html?ctr=related_news_click">Bão suy yếu thành áp thấp nhiệt đới</a></p>\r\n\r\n<article class="content_detail fck_detail width_common block_ads_connect">\r\n<p class="Normal">1h ngày 13/11, áp thấp nhiệt đới ngay trên vùng biển phía tây bắc quần đảo Hoàng Sa (Việt Nam), sức gió tối đa 50 km/h (cấp 6). Vùng gió mạnh trên cấp 6 thu hẹp dần, hiện chỉ còn bán kính 70 km tính từ vùng tâm áp thấp nhiệt đới.</p>\r\n<p class="Normal">Hôm nay, áp thấp nhiệt đới theo hướng tây tây nam, do gặp không khí lạnh từ phương bắc tràn xuống nên sẽ suy yếu thành một vùng áp thấp. Đến 13h ngày 13/11, trung tâm vùng áp thấp ở trên vùng biển Quảng Trị - Quảng Ngãi, sức gió mạnh nhất dưới 40 km/h.</p>\r\n<p class="Normal">Vùng biển quần đảo Hoàng Sa sáng nay còn mưa giông, gió mạnh cấp 5-6, biển động.</p>\r\n\r\n<table class="tplCaption" border="0" cellspacing="0" cellpadding="3" align="center">\r\n<tbody>\r\n<tr>\r\n<td><img class="lazyInitial lazyLoaded" src="https://i-vnexpress.vnecdn.net/2017/11/13/apthap-8295-1510537060.jpg" alt="ap-thap-nhiet-doi-tiep-tuc-suy-yeu" data-natural-width="500" data-was-processed="true" data-width="500" data-pwidth="500" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class="Image">Dự báo đường đi và khu vực ảnh hưởng của áp thấp nhiệt đới. Ảnh: <em>NCHMF.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Hình thành ngày 8/11 ở phía đông Philippines, áp thấp nhiệt đới sau khi vào biển Đông đã mạnh lên thành bão, cơn bão thứ 13 ở biển Đông và thứ 30 ở Tây Bắc - Thái Bình Dương, tên quốc tế là Haikui. Theo hướng tây tây bắc, khi đến gần quần đảo Hoàng Sa, bão suy yếu thành áp thấp nhiệt đới vào chiều qua.</p>\r\n<p class="Normal">Dự báo, do ảnh hưởng của La Nina yếu, mùa mưa bão năm nay kết thúc muộn. Tháng 11 khả năng còn 1-2 cơn bão và áp thấp nhiệt đới ở biển Đông.</p>\r\n<p class="Normal"><strong>Kim Cơ</strong></p>\r\n\r\n</article></section><section class="sidebar_2">\r\n<div class="clearfix"></div>\r\n<div class="banner_160x600 banner_common left"></div>\r\n</section><section class="bottom_detail">\r\n<div id="box_comment_vne" class="box_comment_vne box_category width_common" data-component-runtime="js" data-component-function="showComment" data-component-input="{&quot;type&quot;:&quot;comment&quot;,&quot;article_id&quot;:&quot;3669434&quot;,&quot;article_type&quot;:&quot;1&quot;,&quot;site_id&quot;:&quot;1000000&quot;,&quot;category_id&quot;:&quot;1001005&quot;,&quot;sign&quot;:&quot;46335bd9034898baad0c95b14f23530c&quot;,&quot;limit&quot;:24}"></div>\r\n</section>', 'Áp thấp nhiệt đới tiếp tục suy yếu', '', 'publish', 'open', 'open', '', 'ap-thap-nhiet-doi-tiep-tuc-suy-yeu', '', '', '2017-11-22 07:46:47', '2017-11-22 07:46:47', '', 0, 'http://localhost:82/cms_J_12017/wordpress/?p=4', 0, 'post', '', 0, NULL),
(5, 1, '2017-11-13 03:49:49', '2017-11-13 03:49:49', '<section class="sidebar_1">\r\n<p class="related_news"><a title="Bão suy yếu thành áp thấp nhiệt đới" href="https://vnexpress.net/tin-tuc/thoi-su/bao-suy-yeu-thanh-ap-thap-nhiet-doi-3669275.html?ctr=related_news_click">Bão suy yếu thành áp thấp nhiệt đới</a></p>\r\n\r\n<article class="content_detail fck_detail width_common block_ads_connect">\r\n<p class="Normal">1h ngày 13/11, áp thấp nhiệt đới ngay trên vùng biển phía tây bắc quần đảo Hoàng Sa (Việt Nam), sức gió tối đa 50 km/h (cấp 6). Vùng gió mạnh trên cấp 6 thu hẹp dần, hiện chỉ còn bán kính 70 km tính từ vùng tâm áp thấp nhiệt đới.</p>\r\n<p class="Normal">Hôm nay, áp thấp nhiệt đới theo hướng tây tây nam, do gặp không khí lạnh từ phương bắc tràn xuống nên sẽ suy yếu thành một vùng áp thấp. Đến 13h ngày 13/11, trung tâm vùng áp thấp ở trên vùng biển Quảng Trị - Quảng Ngãi, sức gió mạnh nhất dưới 40 km/h.</p>\r\n<p class="Normal">Vùng biển quần đảo Hoàng Sa sáng nay còn mưa giông, gió mạnh cấp 5-6, biển động.</p>\r\n\r\n<table class="tplCaption" border="0" cellspacing="0" cellpadding="3" align="center">\r\n<tbody>\r\n<tr>\r\n<td><img class="lazyInitial lazyLoaded" src="https://i-vnexpress.vnecdn.net/2017/11/13/apthap-8295-1510537060.jpg" alt="ap-thap-nhiet-doi-tiep-tuc-suy-yeu" data-natural-width="500" data-was-processed="true" data-width="500" data-pwidth="500" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class="Image">Dự báo đường đi và khu vực ảnh hưởng của áp thấp nhiệt đới. Ảnh: <em>NCHMF.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Hình thành ngày 8/11 ở phía đông Philippines, áp thấp nhiệt đới sau khi vào biển Đông đã mạnh lên thành bão, cơn bão thứ 13 ở biển Đông và thứ 30 ở Tây Bắc - Thái Bình Dương, tên quốc tế là Haikui. Theo hướng tây tây bắc, khi đến gần quần đảo Hoàng Sa, bão suy yếu thành áp thấp nhiệt đới vào chiều qua.</p>\r\n<p class="Normal">Dự báo, do ảnh hưởng của La Nina yếu, mùa mưa bão năm nay kết thúc muộn. Tháng 11 khả năng còn 1-2 cơn bão và áp thấp nhiệt đới ở biển Đông.</p>\r\n<p class="Normal"><strong>Kim Cơ</strong></p>\r\n\r\n</article></section><section class="sidebar_2">\r\n<div class="clearfix"></div>\r\n<div class="banner_160x600 banner_common left"></div>\r\n</section><section class="bottom_detail">\r\n<div id="box_comment_vne" class="box_comment_vne box_category width_common" data-component-runtime="js" data-component-function="showComment" data-component-input="{&quot;type&quot;:&quot;comment&quot;,&quot;article_id&quot;:&quot;3669434&quot;,&quot;article_type&quot;:&quot;1&quot;,&quot;site_id&quot;:&quot;1000000&quot;,&quot;category_id&quot;:&quot;1001005&quot;,&quot;sign&quot;:&quot;46335bd9034898baad0c95b14f23530c&quot;,&quot;limit&quot;:24}"></div>\r\n</section>', 'Áp thấp nhiệt đới tiếp tục suy yếu', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-13 03:49:49', '2017-11-13 03:49:49', '', 4, 'http://localhost:82/cms_J_12017/wordpress/index.php/2017/11/13/4-revision-v1/', 0, 'revision', '', 0, NULL),
(10, 5, '2017-11-22 06:25:24', '2017-11-22 06:25:24', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 5\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '705ed3e4-40d3-4bec-b6ae-1b71c0fdac35', '', '', '2017-11-22 06:25:24', '2017-11-22 06:25:24', '', 0, 'http://localhost:82/wordpress/?p=10', 0, 'customize_changeset', '', 0, NULL),
(11, 1, '2017-11-22 06:22:25', '2017-11-22 06:22:25', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "search-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '013ea70f-e1c9-4b53-8277-245fecfb0ed2', '', '', '2017-11-22 06:22:25', '2017-11-22 06:22:25', '', 0, 'http://localhost:82/wordpress/?p=11', 0, 'customize_changeset', '', 0, NULL),
(12, 5, '2017-11-22 06:30:09', '2017-11-22 06:30:09', 'Ngày 22/11, ông Nguyễn Văn Hòa, Chủ tịch phường Thủy Xuân (TP Huế, Thừa Thiên - Huế) xác nhận việc Hội đồng Nguyễn Phước tộc đã gửi đơn trình báo sự việc lăng mộ bà Trần Thị Nga (mẹ vua Dục Đức) bị đào xới tấm bia.\r\n\r\nTheo ông Hòa, sau khi nhận được phản ánh, chính quyền đã chỉ đạo công an phường lên hiện trường để phối hợp với hội đồng Nguyễn Phước Tộc điều tra làm rõ sự việc.\r\n\r\n"Lăng mộ này trước đây đã bị kẻ xấu đào trộm để tìm kiếm vàng bạc. Theo tôi, kẻ xấu tiếp tục phá hoại khu vực để tấm bia chắc với mục đích tìm kiếm tài sản", ông Hòa nói.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w660/Uploaded/pgi_qvradhnat/2017_11_22/fr.jpg" alt="Ke xau dao tam bia mo me vua Duc Duc de tim kho bau? hinh anh 1" width="960" height="638" /></td>\r\n</tr>\r\n<tr>\r\n<td class="pCaption caption">Khu vực nhà đặt tấm bia mẹ vua Dục Đức bị đào phá. Ảnh:<em>Hội đồng Nguyễn Phước tộc cung cấp.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrước đó vào ngày 19/11, nhiều người trong Hội đồng trị sự Nguyễn Phước tộc đến khu lăng này để thắp hương thì bàng hoàng phát hiện tấm bia của lăng bị bứng đưa ra ngoài, đế bia và thân bia gãy đôi. Khu vực đặt tấm bia bị đào phá tan hoang, gạch đất vươn vãi nhiều nơi.\r\n\r\nViệc kẻ xấu ngang nhiên phá hoại khu vực đặt tấm bia khiến bà Nguyễn Phước Tộc hết sức bất bình và lo lắng. "Chúng tôi không rõ kẻ xấu đào phá lăng mẹ vua Dục Đức để nhằm mục đích gì bởi trong phần mộ nơi chôn cất bà đã bị người ta đào trộm châu báu từ lâu rồi", ông Tôn Thất Tam Kỳ, đại diện Hội đồng Nguyễn Phước tộc nói.\r\n\r\nHội đồng trị sự Nguyễn Phước tộc cũng đã cung cấp thông tin về vụ việc này cho lãnh đạo Trung tâm Bảo tồn di tích cố đô Huế.', 'Kẻ xấu đào tấm bia mộ mẹ vua Dục Đức để tìm kho báu?', '', 'publish', 'open', 'open', '', 'ke-xau-dao-tam-bia-mo-me-vua-duc-duc-de-tim-kho-bau', '', '', '2017-11-22 07:50:35', '2017-11-22 07:50:35', '', 0, 'http://localhost:82/wordpress/?p=12', 0, 'post', '', 0, NULL),
(13, 1, '2017-11-22 06:28:31', '2017-11-22 06:28:31', '{\n    "widget_categories[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MDt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "91b91999d71b8c7260bcda7dd392e030"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_recent-comments[2]": {\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6Mzt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "a63f3532b2ecf934c66c093139d5675c"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MztzOjk6InNob3dfZGF0ZSI7YjowO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "85c875b992843435dc0cfa8a38979887"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '484e47c9-a87c-4172-91fb-bf24d74811b6', '', '', '2017-11-22 06:28:31', '2017-11-22 06:28:31', '', 0, 'http://localhost:82/wordpress/?p=13', 0, 'customize_changeset', '', 0, NULL),
(14, 5, '2017-11-22 06:30:09', '2017-11-22 06:30:09', 'Ngày 22/11, ông Nguyễn Văn Hòa, Chủ tịch phường Thủy Xuân (TP Huế, Thừa Thiên - Huế) xác nhận việc Hội đồng Nguyễn Phước tộc đã gửi đơn trình báo sự việc lăng mộ bà Trần Thị Nga (mẹ vua Dục Đức) bị đào xới tấm bia.\r\n\r\nTheo ông Hòa, sau khi nhận được phản ánh, chính quyền đã chỉ đạo công an phường lên hiện trường để phối hợp với hội đồng Nguyễn Phước Tộc điều tra làm rõ sự việc.\r\n\r\n"Lăng mộ này trước đây đã bị kẻ xấu đào trộm để tìm kiếm vàng bạc. Theo tôi, kẻ xấu tiếp tục phá hoại khu vực để tấm bia chắc với mục đích tìm kiếm tài sản", ông Hòa nói.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w660/Uploaded/pgi_qvradhnat/2017_11_22/fr.jpg" alt="Ke xau dao tam bia mo me vua Duc Duc de tim kho bau? hinh anh 1" width="960" height="638" /></td>\r\n</tr>\r\n<tr>\r\n<td class="pCaption caption">Khu vực nhà đặt tấm bia mẹ vua Dục Đức bị đào phá. Ảnh:<em>Hội đồng Nguyễn Phước tộc cung cấp.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrước đó vào ngày 19/11, nhiều người trong Hội đồng trị sự Nguyễn Phước tộc đến khu lăng này để thắp hương thì bàng hoàng phát hiện tấm bia của lăng bị bứng đưa ra ngoài, đế bia và thân bia gãy đôi. Khu vực đặt tấm bia bị đào phá tan hoang, gạch đất vươn vãi nhiều nơi.\r\n\r\nViệc kẻ xấu ngang nhiên phá hoại khu vực đặt tấm bia khiến bà Nguyễn Phước Tộc hết sức bất bình và lo lắng. "Chúng tôi không rõ kẻ xấu đào phá lăng mẹ vua Dục Đức để nhằm mục đích gì bởi trong phần mộ nơi chôn cất bà đã bị người ta đào trộm châu báu từ lâu rồi", ông Tôn Thất Tam Kỳ, đại diện Hội đồng Nguyễn Phước tộc nói.\r\n\r\nHội đồng trị sự Nguyễn Phước tộc cũng đã cung cấp thông tin về vụ việc này cho lãnh đạo Trung tâm Bảo tồn di tích cố đô Huế.', 'Kẻ xấu đào tấm bia mộ mẹ vua Dục Đức để tìm kho báu?', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-11-22 06:30:09', '2017-11-22 06:30:09', '', 12, 'http://localhost:82/wordpress/index.php/2017/11/22/12-revision-v1/', 0, 'revision', '', 0, NULL),
(15, 5, '2017-11-22 06:32:25', '2017-11-22 06:32:25', 'Người Kể Chuyện Tình tập đầu tiên thể hiện lại những ca khúc của cố nhạc sĩ Trúc Phương - người nhạc sĩ tài hoa có số phận bi đát. Với bản tính trầm lặng, bi quan, khép kín sau những cuộc tình dang dở, những bài hát của ông thường mang âm điệu buồn, thê lương, phảng phất nỗi sầu như: <em>Mưa nửa đêm, Hai lối mộng, Hai chuyến tàu đêm, Nửa đêm ngoài phố, Ai cho tôi tình yêu, Con đường mang tên em…</em>\r\n\r\nTrong tập chào sân, Nam Cường thể hiện ca khúc <em>Ai cho tôi tình yêu, </em>tái hiện thời điểm nhạc sĩ ở trọ trong nhà một gia đình giàu có bên Gia Định và dạy nhạc cho cô con gái của chủ nhà. Không bao lâu, cô gái yêu chàng nhạc sĩ nghèo, dần dần rung động trước tài năng của Trúc Phương.\r\n\r\nBiết được chuyện này, ba mẹ cô bèn đuổi Trúc Phương đi nơi khác. Trong hậu trường, Nam Cường say sưa thể hiện ca khúc với mong muốn mang đến khán giả một màn trình diễn đầy cảm xúc.\r\n\r\n<img src="https://znews-photo-td.zadn.vn/w660/Uploaded/spuocaw/2017_11_21/Nam_Cuong_luyen_tap_Ai_cho_toi_tinh_yeu_17.jpg" alt="Nam Cuong hoa nhac si ngheo van xin tinh yeu tren san khau nhac bolero hinh anh 1" />', 'Nam Cường hóa nhạc sĩ nghèo van xin tình yêu trên sân khấu nhạc bolero', '', 'publish', 'open', 'open', '', 'nam-cuong-hoa-nhac-si-ngheo-van-xin-tinh-yeu-tren-san-khau-nhac-bolero', '', '', '2017-11-22 06:32:29', '2017-11-22 06:32:29', '', 0, 'http://localhost:82/wordpress/?p=15', 0, 'post', '', 0, NULL),
(16, 5, '2017-11-22 06:32:25', '2017-11-22 06:32:25', 'Người Kể Chuyện Tình tập đầu tiên thể hiện lại những ca khúc của cố nhạc sĩ Trúc Phương - người nhạc sĩ tài hoa có số phận bi đát. Với bản tính trầm lặng, bi quan, khép kín sau những cuộc tình dang dở, những bài hát của ông thường mang âm điệu buồn, thê lương, phảng phất nỗi sầu như: <em>Mưa nửa đêm, Hai lối mộng, Hai chuyến tàu đêm, Nửa đêm ngoài phố, Ai cho tôi tình yêu, Con đường mang tên em…</em>\r\n\r\nTrong tập chào sân, Nam Cường thể hiện ca khúc <em>Ai cho tôi tình yêu, </em>tái hiện thời điểm nhạc sĩ ở trọ trong nhà một gia đình giàu có bên Gia Định và dạy nhạc cho cô con gái của chủ nhà. Không bao lâu, cô gái yêu chàng nhạc sĩ nghèo, dần dần rung động trước tài năng của Trúc Phương.\r\n\r\nBiết được chuyện này, ba mẹ cô bèn đuổi Trúc Phương đi nơi khác. Trong hậu trường, Nam Cường say sưa thể hiện ca khúc với mong muốn mang đến khán giả một màn trình diễn đầy cảm xúc.\r\n\r\n<img src="https://znews-photo-td.zadn.vn/w660/Uploaded/spuocaw/2017_11_21/Nam_Cuong_luyen_tap_Ai_cho_toi_tinh_yeu_17.jpg" alt="Nam Cuong hoa nhac si ngheo van xin tinh yeu tren san khau nhac bolero hinh anh 1" />', 'Nam Cường hóa nhạc sĩ nghèo van xin tình yêu trên sân khấu nhạc bolero', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-11-22 06:32:25', '2017-11-22 06:32:25', '', 15, 'http://localhost:82/wordpress/index.php/2017/11/22/15-revision-v1/', 0, 'revision', '', 0, NULL),
(17, 1, '2017-11-22 06:43:30', '2017-11-22 06:43:30', '{\n    "widget_categories[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6MTI6ImhpZXJhcmNoaWNhbCI7aToxO3M6ODoiZHJvcGRvd24iO2k6MDt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "154fc35490a475ab90275266add1c166"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ab6a6467-776e-4379-b46e-d17e19d722ed', '', '', '2017-11-22 06:43:30', '2017-11-22 06:43:30', '', 0, 'http://localhost:82/wordpress/?p=17', 0, 'customize_changeset', '', 0, NULL),
(18, 1, '2017-11-22 06:44:52', '2017-11-22 06:44:52', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-11-22 06:44:52', '2017-11-22 06:44:52', '', 1, 'http://localhost:82/wordpress/index.php/2017/11/22/1-revision-v1/', 0, 'revision', '', 0, NULL),
(19, 1, '2017-11-22 06:46:56', '2017-11-22 06:46:56', '<p class="the-article-summary cms-desc"> Một lần nữa Ronaldo lại chinh phục các cột mốc kì vỹ. Tuổi 32 khiến những phẩm chất ưu việt dần mai một, song vẫn đủ để anh khiến cả thế giới tiếp tục nhắc đến tên mình.</p>\r\n\r\n<div class="the-article-body cms-body">\r\n\r\nVài ngày qua, một đoạn video được chiếu đi chiếu lại nhằm chứng minh sự suy giảm của Ronaldo. Đó là khi ngôi sao 32 tuổi không thể chiến thắng Juanfran trong một pha bứt tốc ở trận đấu với Atletico. “Thời của Ronaldo đã hết. Kết thúc một câu chuyện”, một người hâm mộ viết trên Twitter.\r\n\r\nNhưng việc Ronaldo đánh mất tốc độ bùng nổ không phải điều gì mới mẻ. Đó là lý do anh ta tự biến đổi mình, từ một cầu thủ chạy cánh thành một tiền đạo cắm trong những năm qua. Tuy nhiên cũng cần lưu ý, dù không thường xuyên, song ở một số thời điểm cần thiết, CR7 vẫn dư sức thực hiện những pha bứt phá mạnh mẽ. Và một thất bại đơn lẻ trước Juanfran không thể đại diện tất cả.\r\n\r\n<img src="https://znews-photo-td.zadn.vn/w660/Uploaded/lce_Qjruc/2017_11_22/pri_60611886.jpg" alt="Ronaldo van chua het thoi hinh anh 1" />\r\n\r\nNhư trước APOEL, phút thứ 2, Ronaldo vẫn theo kịp pha phản công đầy tốc độ bên cánh phải và chọn vị trí hoàn hảo để nhận đường chuyền của Benzema rồi tung cú sút trái phá. Hoặc phút 45, chuyển động của anh cũng đồng bộ với tình huống lên bóng cực nhanh được phát động bởi Toni Kroos.\r\n\r\nỞ đây cần bổ sung rằng Ronaldo không hề ích kỳ như các cáo buộc. Mặc dù có thể dứt điểm ngay sau khi sử dụng động tác giả, nhưng anh quyết định đẩy bóng sang để Karim Benzema đệm bóng vào lưới trống.\r\n\r\nHai pha lập công, một là cú bật nhảy đánh đầu thần thánh và một là cú tăng tốc, đoạt bóng ngay trước mũi hậu vệ APOEL rồi dứt điểm, đã cho thấy các phẩm chất tuyệt vời của Ronaldo. Nó không bị mai một quá nhanh theo tuổi tác và đủ để anh chinh phục các cột mốc mới.\r\n\r\n<img src="https://znews-photo-td.zadn.vn/w660/Uploaded/lce_Qjruc/2017_11_22/RonaldochoiloivuotxaMessiVidainhatlichsuRealtaiChampionsLeaguero11511303328845width660height655.jpg" alt="Ronaldo van chua het thoi hinh anh 2" />\r\n\r\n</div>', 'Ronaldo vẫn chưa hết thời', '', 'publish', 'open', 'open', '', 'ronaldo-van-chua-het-thoi', '', '', '2017-11-22 07:47:52', '2017-11-22 07:47:52', '', 0, 'http://localhost:82/wordpress/?p=19', 0, 'post', '', 0, NULL),
(20, 1, '2017-11-22 06:53:33', '2017-11-22 06:53:33', '"Về ngoại hình thì tôi thấy mình và Chi Pu xinh như nhau, nhưng về giọng hát và khả năng hát live, tôi vẫn nghĩ mình hát hay hơn cô ấy”, người đẹp chuyển giới chia sẻ.\r\n\r\nChiều 21/11, Hương Giang Idol đã thu hút khá nhiều sự chú ý khi giới thiệu MV Vì yêu mà cưới đánh dấu sự trở lại ca hát sau gần một năm im ắng. Ngoài việc tiết lộ về những vất vả, khó khăn trong quá trình quay MV tại Châu Âu, giọng ca chuyển giới cũng được hỏi rất nhiều về ồn ào hát live và bị dư luận phản đối của Chi Pu. Bởi trước đây, giọng hát của cô cũng từng vướng nhiều tranh cãi, bị số đông khán giả chê bai, phản đối không kém đàn em trong nghề.\r\n\r\n<img class="size-medium wp-image-23 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu-200x300.jpg" alt="" width="200" height="300" />\r\n\r\nHương Giang bị so sánh với Chi Pu bởi trước đây, nữ ca sĩ cũng từng bị chê bai về giọng hát.\r\n\r\nTrước thắc mắc này, Hương Giang Idol đã bày tỏ quan điểm: “Đúng là tôi đã từng rơi vào hoàn cảnh tương tự Chi Pu, nhưng để so sánh chính xác thì hơi khó, bởi xuất phát điểm của tôi khi mới vào nghề đã là một ca sĩ, đã tham gia nhiều cuộc thi hát và được chọn vào sâu những vòng trong. Còn Chi Pu là một hot girl, sau này cô ấy mới lấn sân ca hát và đang đi tìm cho mình một danh hiệu.\r\n\r\nVề ngoại hình thì tôi thấy mình và Chi Pu xinh như nhau, nhưng về giọng hát và khả năng hát live, tôi vẫn nghĩ mình hát hay hơn cô ấy”.\r\n\r\nVề việc từng hát không tốt và bị khán giả chê bai, Hương Giang cho rằng cô chưa bao giờ nhận mình hát hay, nhưng so với mặt bằng chung hiện nay, giọng hát của cô cũng “không đến nỗi nào”.\r\n\r\nGiọng ca chuyển giới cho rằng chất giọng của cô "không đến nỗi nào", và tự thấy hay hơn Chi Pu.\r\n\r\nSau một thời gian chịu khó học tập và rèn luyện thanh nhạc, Hương Giang cho biết cô đã tiến bộ hơn trước, cách xử lý cũng như kinh nghiệm biểu diễn trên sân khấu cũng tốt hơn và không còn vấp phải lời chê từ khán giả.\r\n\r\nChia sẻ về MV mới, Hương Giang cho biết đây là sản phẩm âm nhạc do cô tự tay đầu tư, thực hiện 100%. Dù không tiết lộ con số cụ thể, nhưng chỉ tính riêng chi phí sản xuất và đưa ekip sang Châu Âu để quay ngoại cảnh, tổng kinh phí của MV đã chạm ngưỡng con số bạc tỷ. Tuy vậy, cô vẫn chấp nhận đầu tư cho sản phẩm lần này để có được MV đúng ý mình nhất.\r\n\r\nĐến chung vui với Hương Giang chiều 21/11 còn có một số đồng nghiệp thân thiết như Hoà Minzy, Bích Phương, Cindy Thái Tài, diễn viên Duy Khánh,....', 'Hương Giang Idol: "Tôi thấy mình hát hay hơn Chi Pu"', '', 'publish', 'open', 'open', '', 'huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu', '', '', '2017-11-22 06:53:33', '2017-11-22 06:53:33', '', 0, 'http://localhost:82/wordpress/?p=20', 0, 'post', '', 0, NULL),
(21, 1, '2017-11-22 06:46:56', '2017-11-22 06:46:56', '<p class="the-article-summary cms-desc"> Một lần nữa Ronaldo lại chinh phục các cột mốc kì vỹ. Tuổi 32 khiến những phẩm chất ưu việt dần mai một, song vẫn đủ để anh khiến cả thế giới tiếp tục nhắc đến tên mình.</p>\r\n\r\n<div class="the-article-body cms-body">\r\n\r\nVài ngày qua, một đoạn video được chiếu đi chiếu lại nhằm chứng minh sự suy giảm của Ronaldo. Đó là khi ngôi sao 32 tuổi không thể chiến thắng Juanfran trong một pha bứt tốc ở trận đấu với Atletico. “Thời của Ronaldo đã hết. Kết thúc một câu chuyện”, một người hâm mộ viết trên Twitter.\r\n\r\nNhưng việc Ronaldo đánh mất tốc độ bùng nổ không phải điều gì mới mẻ. Đó là lý do anh ta tự biến đổi mình, từ một cầu thủ chạy cánh thành một tiền đạo cắm trong những năm qua. Tuy nhiên cũng cần lưu ý, dù không thường xuyên, song ở một số thời điểm cần thiết, CR7 vẫn dư sức thực hiện những pha bứt phá mạnh mẽ. Và một thất bại đơn lẻ trước Juanfran không thể đại diện tất cả.\r\n\r\n<img src="https://znews-photo-td.zadn.vn/w660/Uploaded/lce_Qjruc/2017_11_22/pri_60611886.jpg" alt="Ronaldo van chua het thoi hinh anh 1" />\r\n\r\nNhư trước APOEL, phút thứ 2, Ronaldo vẫn theo kịp pha phản công đầy tốc độ bên cánh phải và chọn vị trí hoàn hảo để nhận đường chuyền của Benzema rồi tung cú sút trái phá. Hoặc phút 45, chuyển động của anh cũng đồng bộ với tình huống lên bóng cực nhanh được phát động bởi Toni Kroos.\r\n\r\nỞ đây cần bổ sung rằng Ronaldo không hề ích kỳ như các cáo buộc. Mặc dù có thể dứt điểm ngay sau khi sử dụng động tác giả, nhưng anh quyết định đẩy bóng sang để Karim Benzema đệm bóng vào lưới trống.\r\n\r\nHai pha lập công, một là cú bật nhảy đánh đầu thần thánh và một là cú tăng tốc, đoạt bóng ngay trước mũi hậu vệ APOEL rồi dứt điểm, đã cho thấy các phẩm chất tuyệt vời của Ronaldo. Nó không bị mai một quá nhanh theo tuổi tác và đủ để anh chinh phục các cột mốc mới.\r\n\r\n<img src="https://znews-photo-td.zadn.vn/w660/Uploaded/lce_Qjruc/2017_11_22/RonaldochoiloivuotxaMessiVidainhatlichsuRealtaiChampionsLeaguero11511303328845width660height655.jpg" alt="Ronaldo van chua het thoi hinh anh 2" />\r\n\r\n</div>', 'Ronaldo vẫn chưa hết thời', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-11-22 06:46:56', '2017-11-22 06:46:56', '', 19, 'http://localhost:82/wordpress/index.php/2017/11/22/19-revision-v1/', 0, 'revision', '', 0, NULL),
(22, 1, '2017-11-22 06:50:34', '2017-11-22 06:50:34', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "search-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_categories[4]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5f856d67-a531-4e82-b83f-67e295141503', '', '', '2017-11-22 06:50:34', '2017-11-22 06:50:34', '', 0, 'http://localhost:82/wordpress/?p=22', 0, 'customize_changeset', '', 0, NULL),
(23, 1, '2017-11-22 06:53:20', '2017-11-22 06:53:20', '', 'huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu', '', 'inherit', 'open', 'closed', '', 'huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu', '', '', '2017-11-22 06:53:20', '2017-11-22 06:53:20', '', 20, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu.jpg', 0, 'attachment', 'image/jpeg', 0, NULL),
(24, 1, '2017-11-22 06:53:33', '2017-11-22 06:53:33', '"Về ngoại hình thì tôi thấy mình và Chi Pu xinh như nhau, nhưng về giọng hát và khả năng hát live, tôi vẫn nghĩ mình hát hay hơn cô ấy”, người đẹp chuyển giới chia sẻ.\r\n\r\nChiều 21/11, Hương Giang Idol đã thu hút khá nhiều sự chú ý khi giới thiệu MV Vì yêu mà cưới đánh dấu sự trở lại ca hát sau gần một năm im ắng. Ngoài việc tiết lộ về những vất vả, khó khăn trong quá trình quay MV tại Châu Âu, giọng ca chuyển giới cũng được hỏi rất nhiều về ồn ào hát live và bị dư luận phản đối của Chi Pu. Bởi trước đây, giọng hát của cô cũng từng vướng nhiều tranh cãi, bị số đông khán giả chê bai, phản đối không kém đàn em trong nghề.\r\n\r\n<img class="size-medium wp-image-23 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu-200x300.jpg" alt="" width="200" height="300" />\r\n\r\nHương Giang bị so sánh với Chi Pu bởi trước đây, nữ ca sĩ cũng từng bị chê bai về giọng hát.\r\n\r\nTrước thắc mắc này, Hương Giang Idol đã bày tỏ quan điểm: “Đúng là tôi đã từng rơi vào hoàn cảnh tương tự Chi Pu, nhưng để so sánh chính xác thì hơi khó, bởi xuất phát điểm của tôi khi mới vào nghề đã là một ca sĩ, đã tham gia nhiều cuộc thi hát và được chọn vào sâu những vòng trong. Còn Chi Pu là một hot girl, sau này cô ấy mới lấn sân ca hát và đang đi tìm cho mình một danh hiệu.\r\n\r\nVề ngoại hình thì tôi thấy mình và Chi Pu xinh như nhau, nhưng về giọng hát và khả năng hát live, tôi vẫn nghĩ mình hát hay hơn cô ấy”.\r\n\r\nVề việc từng hát không tốt và bị khán giả chê bai, Hương Giang cho rằng cô chưa bao giờ nhận mình hát hay, nhưng so với mặt bằng chung hiện nay, giọng hát của cô cũng “không đến nỗi nào”.\r\n\r\nGiọng ca chuyển giới cho rằng chất giọng của cô "không đến nỗi nào", và tự thấy hay hơn Chi Pu.\r\n\r\nSau một thời gian chịu khó học tập và rèn luyện thanh nhạc, Hương Giang cho biết cô đã tiến bộ hơn trước, cách xử lý cũng như kinh nghiệm biểu diễn trên sân khấu cũng tốt hơn và không còn vấp phải lời chê từ khán giả.\r\n\r\nChia sẻ về MV mới, Hương Giang cho biết đây là sản phẩm âm nhạc do cô tự tay đầu tư, thực hiện 100%. Dù không tiết lộ con số cụ thể, nhưng chỉ tính riêng chi phí sản xuất và đưa ekip sang Châu Âu để quay ngoại cảnh, tổng kinh phí của MV đã chạm ngưỡng con số bạc tỷ. Tuy vậy, cô vẫn chấp nhận đầu tư cho sản phẩm lần này để có được MV đúng ý mình nhất.\r\n\r\nĐến chung vui với Hương Giang chiều 21/11 còn có một số đồng nghiệp thân thiết như Hoà Minzy, Bích Phương, Cindy Thái Tài, diễn viên Duy Khánh,....', 'Hương Giang Idol: "Tôi thấy mình hát hay hơn Chi Pu"', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-11-22 06:53:33', '2017-11-22 06:53:33', '', 20, 'http://localhost:82/wordpress/index.php/2017/11/22/20-revision-v1/', 0, 'revision', '', 0, NULL),
(26, 1, '2017-11-22 06:56:20', '2017-11-22 06:56:20', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "search-2",\n            "meta-3"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_meta[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd8c001e-1a5e-4aab-993b-6019ee6b2d9d', '', '', '2017-11-22 06:56:20', '2017-11-22 06:56:20', '', 0, 'http://localhost:82/wordpress/index.php/2017/11/22/dd8c001e-1a5e-4aab-993b-6019ee6b2d9d/', 0, 'customize_changeset', '', 0, NULL),
(28, 5, '2017-11-22 07:49:10', '2017-11-22 07:49:10', '', 'fdsafds', '', 'trash', 'open', 'open', '', 'fdsafds__trashed', '', '', '2017-11-29 06:32:44', '2017-11-29 06:32:44', '', 0, 'http://localhost:82/wordpress/?p=28', 0, 'post', '', 0, NULL),
(29, 5, '2017-11-22 07:49:10', '2017-11-22 07:49:10', '', 'fdsafds', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-11-22 07:49:10', '2017-11-22 07:49:10', '', 28, 'http://localhost:82/wordpress/index.php/2017/11/22/28-revision-v1/', 0, 'revision', '', 0, NULL),
(30, 5, '2017-11-22 07:49:34', '2017-11-22 07:49:34', 'ffsa', 'fsafas', '', 'trash', 'open', 'open', '', 'fsafas__trashed', '', '', '2017-11-29 06:32:44', '2017-11-29 06:32:44', '', 0, 'http://localhost:82/wordpress/?p=30', 0, 'post', '', 0, NULL),
(31, 5, '2017-11-22 07:49:34', '2017-11-22 07:49:34', 'ffsa', 'fsafas', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-11-22 07:49:34', '2017-11-22 07:49:34', '', 30, 'http://localhost:82/wordpress/index.php/2017/11/22/30-revision-v1/', 0, 'revision', '', 0, NULL),
(34, 5, '2017-11-29 06:31:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:31:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=34', 0, 'post', '', 0, NULL),
(35, 5, '2017-11-29 06:33:06', '2017-11-29 06:33:06', 'day là post 1', 'post1', '', 'publish', 'open', 'open', '', 'post1', '', '', '2017-11-29 06:33:06', '2017-11-29 06:33:06', '', 0, 'http://localhost:82/wordpress/?p=35', 0, 'post', '', 0, NULL),
(36, 5, '2017-11-29 06:33:06', '2017-11-29 06:33:06', 'day là post 1', 'post1', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-11-29 06:33:06', '2017-11-29 06:33:06', '', 35, 'http://localhost:82/wordpress/index.php/2017/11/29/35-revision-v1/', 0, 'revision', '', 0, NULL),
(37, 5, '2017-11-29 06:33:27', '2017-11-29 06:33:27', 'đây là bài post 2', 'post2', '', 'publish', 'open', 'open', '', 'post2', '', '', '2017-12-04 03:41:16', '2017-12-04 03:41:16', '', 0, 'http://localhost:82/wordpress/?p=37', 0, 'post', '', 0, NULL),
(38, 5, '2017-11-29 06:33:27', '2017-11-29 06:33:27', 'đây là bài post 2', 'post2', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-11-29 06:33:27', '2017-11-29 06:33:27', '', 37, 'http://localhost:82/wordpress/index.php/2017/11/29/37-revision-v1/', 0, 'revision', '', 0, NULL),
(39, 5, '2017-11-29 06:33:46', '2017-11-29 06:33:46', 'đây là bài post 3', 'post3', '', 'publish', 'open', 'open', '', 'post3', '', '', '2017-12-04 04:10:18', '2017-12-04 04:10:18', '', 0, 'http://localhost:82/wordpress/?p=39', 0, 'post', '', 0, 'post 3 cc'),
(40, 5, '2017-11-29 06:33:46', '2017-11-29 06:33:46', 'đây là bài post 3', 'post3', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-11-29 06:33:46', '2017-11-29 06:33:46', '', 39, 'http://localhost:82/wordpress/index.php/2017/11/29/39-revision-v1/', 0, 'revision', '', 0, NULL),
(41, 5, '2017-11-29 06:34:03', '2017-11-29 06:34:03', 'đây là bài post 4\r\n<!--more-->\r\n\r\n"4. Thực hiện xử lý trên\r\na. Danh sách post\r\nHiện tại: danh sách bài viết 1 cột\r\nYêu cầu: danh sách bài viết 2 cột\r\nb. Danh sách page\r\nHiện tại: Chưa có danh sách page mặc định\r\nYêu cầu: Hiển thị danh sách page dạng 2 cột"\r\n[gallery ids="67"]\r\n\r\n', 'post 4', 'dasdsadsadsad', 'publish', 'open', 'open', '', 'post-4', '', '', '2017-12-04 03:41:04', '2017-12-04 03:41:04', '', 0, 'http://localhost:82/wordpress/?p=41', 0, 'post', '', 0, NULL),
(42, 5, '2017-11-29 06:34:03', '2017-11-29 06:34:03', 'đây là bài post 4', 'post 4', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-11-29 06:34:03', '2017-11-29 06:34:03', '', 41, 'http://localhost:82/wordpress/index.php/2017/11/29/41-revision-v1/', 0, 'revision', '', 0, NULL),
(43, 5, '2017-11-29 06:34:34', '2017-11-29 06:34:34', '{\n    "twentyseventeen::header_image": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 5\n    },\n    "twentyseventeen::header_image_data": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 5\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f80919b1-d7ef-46f2-962d-2699e1934117', '', '', '2017-11-29 06:34:34', '2017-11-29 06:34:34', '', 0, 'http://localhost:82/wordpress/index.php/2017/11/29/f80919b1-d7ef-46f2-962d-2699e1934117/', 0, 'customize_changeset', '', 0, NULL),
(44, 5, '2017-11-29 06:51:59', '2017-11-29 06:51:59', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href="http://localhost:82/cms_J_12017/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!<code></code', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2017-11-29 06:51:59', '2017-11-29 06:51:59', '', 2, 'http://localhost:82/wordpress/index.php/2017/11/29/2-autosave-v1/', 0, 'revision', '', 0, NULL),
(45, 5, '2017-12-04 00:57:32', '2017-12-04 00:57:32', 'đây là bài post 4\n\n"4. Thực hiện xử lý trên\na. Danh sách post\nHiện tại: danh sách bài viết 1 cột\nYêu cầu: danh sách bài viết 2 cột\nb. Danh sách page\nHiện tại: Chưa có danh sách page mặc định\nYêu cầu: Hiển thị danh sách page dạng 2 cột"\n[gallery ids="67"]\n\n', 'post 4', '', 'inherit', 'closed', 'closed', '', '41-autosave-v1', '', '', '2017-12-04 00:57:32', '2017-12-04 00:57:32', '', 41, 'http://localhost:82/wordpress/index.php/2017/11/29/41-autosave-v1/', 0, 'revision', '', 0, NULL),
(46, 5, '2017-11-29 07:05:58', '2017-11-29 07:05:58', '"Về ngoại hình thì tôi thấy mình và Chi Pu xinh như nhau, nhưng về giọng hát và khả năng hát live, tôi vẫn nghĩ mình hát hay hơn cô ấy”, người đẹp chuyển giới chia sẻ.\n\nChiều 21/11, Hương Giang Idol đã thu hút khá nhiều sự chú ý khi giới thiệu MV Vì yêu mà cưới đánh dấu sự trở lại ca hát sau gần một năm im ắng. Ngoài việc tiết lộ về những vất vả, khó khăn trong quá trình quay MV tại Châu Âu, giọng ca chuyển giới cũng được hỏi rất nhiều về ồn ào hát live và bị dư luận phản đối của Chi Pu. Bởi trước đây, giọng hát của cô cũng từng vướng nhiều tranh cãi, bị số đông khán giả chê bai, phản đối không kém đàn em trong nghề.\n\n<img class="size-medium wp-image-23 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/huong-giang-idol-toi-thay-minh-hat-hay-hon-chi-pu-200x300.jpg" alt="" width="200" height="300" />\n\nHương Giang bị so sánh với Chi Pu bởi trước đây, nữ ca sĩ cũng từng bị chê bai về giọng hát.\n\nTrước thắc mắc này, Hương Giang Idol đã bày tỏ quan điểm: “Đúng là tôi đã từng rơi vào hoàn cảnh tương tự Chi Pu, nhưng để so sánh chính xác thì hơi khó, bởi xuất phát điểm của tôi khi mới vào nghề đã là một ca sĩ, đã tham gia nhiều cuộc thi hát và được chọn vào sâu những vòng trong. Còn Chi Pu là một hot girl, sau này cô ấy mới lấn sân ca hát và đang đi tìm cho mình một danh hiệu.\n\nVề ngoại hình thì tôi thấy mình và Chi Pu xinh như nhau, nhưng về giọng hát và khả năng hát live, tôi vẫn nghĩ mình hát hay hơn cô ấy”.\n\nVề việc từng hát không tốt và bị khán giả chê bai, Hương Giang cho rằng cô chưa bao giờ nhận mình hát hay, nhưng so với mặt bằng chung hiện nay, giọng hát của cô cũng “không đến nỗi nào”.\n\nGiọng ca chuyển giới cho rằng chất giọng của cô "không đến nỗi nào", và tự thấy hay hơn Chi Pu.\n\nSau một thời gian chịu khó học tập và rèn luyện thanh nhạc, Hương Giang cho biết cô đã tiến bộ hơn trước, cách xử lý cũng như kinh nghiệm biểu diễn trên sân khấu cũng tốt hơn và không còn vấp phải lời chê từ khán giả.\n\nChia sẻ về MV mới, Hương Giang cho biết đây là sản phẩm âm nhạc do cô tự tay đầu tư, thực hiện 100%. Dù không tiết lộ con số cụ thể, nhưng chỉ tính riêng chi phí sản xuất và đưa ekip sang Châu Âu để quay ngoại cảnh, tổng kinh phí của MV đã chạm ngưỡng con số bạc tỷ. Tuy vậy, cô vẫn chấp nhận đầu tư cho sản phẩm lần này để có được MV đúng ý mình nhất.\n\nĐến chung vui với Hương Giang chiều 21/11 còn có một số đồng nghiệp thân thiết như Hoà Minzy, Bích Phương, Cindy Thái Tài, diễn viên Duy Khánh,....<!--more-->\n\n\n\n', 'Hương Giang Idol: "Tôi thấy mình hát hay hơn Chi Pu"', '', 'inherit', 'closed', 'closed', '', '20-autosave-v1', '', '', '2017-11-29 07:05:58', '2017-11-29 07:05:58', '', 20, 'http://localhost:82/wordpress/index.php/2017/11/29/20-autosave-v1/', 0, 'revision', '', 0, NULL),
(47, 5, '2017-11-29 07:07:28', '2017-11-29 07:07:28', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-29 07:08:07', '2017-11-29 07:08:07', '', 0, 'http://localhost:82/wordpress/?page_id=47', 0, 'page', '', 0, NULL),
(48, 5, '2017-11-29 07:07:28', '2017-11-29 07:07:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2017-11-29 07:07:28', '2017-11-29 07:07:28', '', 47, 'http://localhost:82/wordpress/index.php/2017/11/29/47-revision-v1/', 0, 'revision', '', 0, NULL),
(49, 5, '2017-11-29 07:10:09', '2017-11-29 07:10:09', 'dassad', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-12-04 04:10:00', '2017-12-04 04:10:00', '', 0, 'http://localhost:82/wordpress/?page_id=49', 0, 'page', '', 0, ' sadsadsad       '),
(50, 5, '2017-11-29 07:10:01', '2017-11-29 07:10:01', '', '', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-11-29 07:10:01', '2017-11-29 07:10:01', '', 49, 'http://localhost:82/wordpress/index.php/2017/11/29/49-revision-v1/', 0, 'revision', '', 0, NULL),
(51, 5, '2017-11-29 07:10:09', '2017-11-29 07:10:09', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-11-29 07:10:09', '2017-11-29 07:10:09', '', 49, 'http://localhost:82/wordpress/index.php/2017/11/29/49-revision-v1/', 0, 'revision', '', 0, NULL),
(52, 5, '2017-11-29 07:10:23', '2017-11-29 07:10:23', '', 'Galery', '', 'publish', 'closed', 'closed', '', 'garery', '', '', '2017-11-29 07:10:48', '2017-11-29 07:10:48', '', 0, 'http://localhost:82/wordpress/?page_id=52', 0, 'page', '', 0, NULL),
(53, 5, '2017-11-29 07:10:23', '2017-11-29 07:10:23', '', 'Garery', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2017-11-29 07:10:23', '2017-11-29 07:10:23', '', 52, 'http://localhost:82/wordpress/index.php/2017/11/29/52-revision-v1/', 0, 'revision', '', 0, NULL),
(54, 5, '2017-11-29 07:10:33', '2017-11-29 07:10:33', '', 'Video', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2017-11-29 07:10:33', '2017-11-29 07:10:33', '', 0, 'http://localhost:82/wordpress/?page_id=54', 0, 'page', '', 0, NULL),
(55, 5, '2017-11-29 07:10:33', '2017-11-29 07:10:33', '', 'Video', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-11-29 07:10:33', '2017-11-29 07:10:33', '', 54, 'http://localhost:82/wordpress/index.php/2017/11/29/54-revision-v1/', 0, 'revision', '', 0, NULL),
(56, 5, '2017-11-29 07:10:48', '2017-11-29 07:10:48', '', 'Galery', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2017-11-29 07:10:48', '2017-11-29 07:10:48', '', 52, 'http://localhost:82/wordpress/index.php/2017/11/29/52-revision-v1/', 0, 'revision', '', 0, NULL),
(57, 5, '2017-11-29 07:33:21', '2017-11-29 07:33:21', '', 'Page', '', 'publish', 'closed', 'closed', '', 'page', '', '', '2017-11-29 07:34:05', '2017-11-29 07:34:05', '', 0, 'http://localhost:82/wordpress/?page_id=57', 0, 'page', '', 0, NULL),
(58, 5, '2017-11-29 07:33:21', '2017-11-29 07:33:21', '', 'Page', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-11-29 07:33:21', '2017-11-29 07:33:21', '', 57, 'http://localhost:82/wordpress/http:/localhost:82/wordpress/%page%', 0, 'revision', '', 0, NULL),
(59, 5, '2017-11-29 07:49:29', '2017-11-29 07:49:29', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2017-11-29 07:49:29', '2017-11-29 07:49:29', '', 0, 'http://localhost:82/wordpress/?p=59', 1, 'nav_menu_item', '', 0, NULL);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`, `post_overview`) VALUES
(64, 5, '2017-11-29 07:50:52', '2017-11-29 07:50:52', '{\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": 10,\n        "type": "theme_mod",\n        "user_id": 5\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 5\n    },\n    "nav_menu[10]": {\n        "value": {\n            "name": "ListPage",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 5\n    },\n    "nav_menu_item[60]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 5\n    },\n    "nav_menu_item[61]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 5\n    },\n    "nav_menu_item[62]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 5\n    },\n    "nav_menu_item[63]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 5\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2be7889d-e38c-4641-a05f-41ee079360c7', '', '', '2017-11-29 07:50:52', '2017-11-29 07:50:52', '', 0, 'http://localhost:82/wordpress/?p=64', 0, 'customize_changeset', '', 0, NULL),
(65, 1, '2017-12-04 00:35:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 00:35:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=65', 0, 'post', '', 0, NULL),
(66, 1, '2017-12-04 00:39:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 00:39:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=66', 0, 'post', '', 0, NULL),
(67, 5, '2017-12-04 00:43:09', '2017-12-04 00:43:09', '', 'Penguins', '', 'inherit', 'open', 'closed', '', 'penguins', '', '', '2017-12-04 00:43:09', '2017-12-04 00:43:09', '', 41, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/Penguins.jpg', 0, 'attachment', 'image/jpeg', 0, NULL),
(68, 1, '2017-12-04 00:45:53', '2017-12-04 00:45:53', 'Rất nhiều dân cư mạng nhanh chóng chỉ ra bằng chứng chứng minh cặp đôi đã đường ai nấy đi.\r\n<!--more-->\r\nLưu Diệc Phi hay Triệu Vy, phiên bản Hoa Mộc Lan nào đẹp nhất ?\r\nVượt qua cả ngàn ứng viên, Lưu Diệc Phi trở thành Hoa Mộc Lan của Disney\r\nNỗi khổ "thấu trời" của "thuốc độc phòng vé" Lưu Diệc Phi\r\n\r\nNhững ngày qua, tuyên bố của Disney về nữ diễn viên chính cho phiên bản người thật Hoa Mộc Lan đã làm xôn xao làng giải trí Hoa ngữ. Rất nhiều người gửi lời chúc mừng đến “thần tiên tỷ tỷ” Lưu Diệc Phi. Tuy nhiên, bên cạnh niềm vui đó, một số dân cư mạng đã phát hiện ra bằng chứng chứng minh cặp đôi Lưu Diệc Phi và Song Seung Heon đã chính thức chia tay.\r\n\r\n<img class="size-medium wp-image-69 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq-300x257.jpg" alt="" width="300" height="257" />\r\n\r\nMối tình vượt biên giới Lưu-Song suốt hai năm nay đã làm hao tốn nhiều bút mực của giới báo chí. Thế nhưng, đến thời điểm này, có lẽ chủ đề chuyện tình cảm của ngôi sao xinh đẹp làng giải trí Hoa ngữ và chàng tài tử Hàn Quốc sắp phải khép lại. Từ khi được trở thành công chúa của Disney, Lưu Diệc Phi cũng đã lập ngay tài khoản Instagram và Twitter để giao lưu nhiều hơn với fan quốc tế.\r\n\r\nLưu Diệc Phi dùng Instagram sau khi biết tin được trở thành công chúa của Disney\r\n\r\nTuy nhiên, điều đặc biệt là cả tài khoản Instargram và Twitter của "thần tiên tỷ tỷ" và tài tử Song Seung Heon đều không theo dõi nhau. Rõ ràng, khi Lưu Diệc Phi mới lập tài khoản mạng xã hội mới, người theo dõi, kết bạn sớm hơn cả lẽ ra phải là vị hôn phu Song Seung Heon. Thế nhưng, ngược lại là cả hai bên đều không có bất kỳ tương tác nào. Dựa vào điều này, fan tin rằng, mối quan hệ tình cảm của hai ngôi sao có vấn đề.\r\n\r\nHồi đầu năm 2017 trên tài khoản mạng xã hội của Song Seung Heon thường xuyên đăng tải hình ảnh phim mới hoặc poster quảng cáo của Lưu Diệc Phi. Xét về lý lẽ, Lưu Diệc Phi đươc tham gia phim Hoa Mộc Lan của Disney là một chuyện vui lớn, lẽ ra Song Seung Heon phải đăng ảnh chúc mừng như thói quen trước đó. Tuy nhiên, chàng tài tử lại lặng thing trước những việc xảy ra xung quanh vị hôn thê.\r\n\r\n<img class="size-medium wp-image-70 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg" alt="" width="300" height="265" />\r\n\r\nLưu Diệc Phi và Song Seung Heon quen biết nhau từ khi tham gia bộ phim Tình yêu thứ ba. Đã hai năm kể từ khi công khai tình cảm đến nay, cặp đôi Song Seung Hun - Lưu Diệc Phi gặp vô số lời đồn đoán cả hai chia tay vì nhiều lý do khác nhau. Từng có tin đồn, nàng "Thần tiên tỷ tỷ" không quên được bạn gái đồng tính mà chia tay tài tử Trái tim mùa thu, cũng có tin đồn Song Seung Hun cảm thấy mình không thể mang lại hạnh phúc cho bạn gái mà cả hai "đường ai nấy đi".\r\n\r\nLần này, tuy không có bất kỳ câu trả lời chính thức nào từ cả hai phía, nhưng việc Lưu Diệc Phi và Song Seung Hun ngày càng ít và thậm chí là không còn xuất hiện cạnh nhau, không tương tác trên mạng xã hội đã nói lên rằng cặp đôi rất có thể đã chia tay <!--more--><!--more--><!--more-->\r\ntrong êm đẹp.', 'Đóng "Hoa Mộc Lan", Lưu Diệc Phi lộ bằng chứng đã chia tay Song Seung Heon', '', 'publish', 'open', 'open', '', 'dong-hoa-moc-lan-luu-diec-phi-lo-bang-chung-da-chia-tay-song-seung-heon', '', '', '2017-12-04 04:03:36', '2017-12-04 04:03:36', '', 0, 'http://localhost:82/wordpress/?p=68', 0, 'post', '', 0, '            anbh askjhdlkas        '),
(69, 1, '2017-12-04 00:44:52', '2017-12-04 00:44:52', '', 'luu_diec_phi_qreq', '', 'inherit', 'open', 'closed', '', 'luu_diec_phi_qreq', '', '', '2017-12-04 00:44:52', '2017-12-04 00:44:52', '', 68, 'http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq.jpg', 0, 'attachment', 'image/jpeg', 0, NULL),
(70, 1, '2017-12-04 00:45:37', '2017-12-04 00:45:37', '', '7e6cdf02-b168-49cf-aa5f-1611b3402f35', '', 'inherit', 'open', 'closed', '', '7e6cdf02-b168-49cf-aa5f-1611b3402f35', '', '', '2017-12-04 00:45:37', '2017-12-04 00:45:37', '', 68, 'http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35.jpg', 0, 'attachment', 'image/jpeg', 0, NULL),
(71, 1, '2017-12-04 00:45:53', '2017-12-04 00:45:53', 'Rất nhiều dân cư mạng nhanh chóng chỉ ra bằng chứng chứng minh cặp đôi đã đường ai nấy đi.\r\n\r\nLưu Diệc Phi hay Triệu Vy, phiên bản Hoa Mộc Lan nào đẹp nhất ?\r\nVượt qua cả ngàn ứng viên, Lưu Diệc Phi trở thành Hoa Mộc Lan của Disney\r\nNỗi khổ "thấu trời" của "thuốc độc phòng vé" Lưu Diệc Phi\r\nNhững ngày qua, tuyên bố của Disney về nữ diễn viên chính cho phiên bản người thật Hoa Mộc Lan đã làm xôn xao làng giải trí Hoa ngữ. Rất nhiều người gửi lời chúc mừng đến “thần tiên tỷ tỷ” Lưu Diệc Phi. Tuy nhiên, bên cạnh niềm vui đó, một số dân cư mạng đã phát hiện ra bằng chứng chứng minh cặp đôi Lưu Diệc Phi và Song Seung Heon đã chính thức chia tay.\r\n\r\n<img class="size-medium wp-image-69 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq-300x257.jpg" alt="" width="300" height="257" />\r\n\r\nMối tình vượt biên giới Lưu-Song suốt hai năm nay đã làm hao tốn nhiều bút mực của giới báo chí. Thế nhưng, đến thời điểm này, có lẽ chủ đề chuyện tình cảm của ngôi sao xinh đẹp làng giải trí Hoa ngữ và chàng tài tử Hàn Quốc sắp phải khép lại. Từ khi được trở thành công chúa của Disney, Lưu Diệc Phi cũng đã lập ngay tài khoản Instagram và Twitter để giao lưu nhiều hơn với fan quốc tế.\r\n\r\nLưu Diệc Phi dùng Instagram sau khi biết tin được trở thành công chúa của Disney\r\n\r\nTuy nhiên, điều đặc biệt là cả tài khoản Instargram và Twitter của "thần tiên tỷ tỷ" và tài tử Song Seung Heon đều không theo dõi nhau. Rõ ràng, khi Lưu Diệc Phi mới lập tài khoản mạng xã hội mới, người theo dõi, kết bạn sớm hơn cả lẽ ra phải là vị hôn phu Song Seung Heon. Thế nhưng, ngược lại là cả hai bên đều không có bất kỳ tương tác nào. Dựa vào điều này, fan tin rằng, mối quan hệ tình cảm của hai ngôi sao có vấn đề.\r\n\r\nHồi đầu năm 2017 trên tài khoản mạng xã hội của Song Seung Heon thường xuyên đăng tải hình ảnh phim mới hoặc poster quảng cáo của Lưu Diệc Phi. Xét về lý lẽ, Lưu Diệc Phi đươc tham gia phim Hoa Mộc Lan của Disney là một chuyện vui lớn, lẽ ra Song Seung Heon phải đăng ảnh chúc mừng như thói quen trước đó. Tuy nhiên, chàng tài tử lại lặng thing trước những việc xảy ra xung quanh vị hôn thê.\r\n\r\n<img class="size-medium wp-image-70 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg" alt="" width="300" height="265" />\r\n\r\nLưu Diệc Phi và Song Seung Heon quen biết nhau từ khi tham gia bộ phim Tình yêu thứ ba. Đã hai năm kể từ khi công khai tình cảm đến nay, cặp đôi Song Seung Hun - Lưu Diệc Phi gặp vô số lời đồn đoán cả hai chia tay vì nhiều lý do khác nhau. Từng có tin đồn, nàng "Thần tiên tỷ tỷ" không quên được bạn gái đồng tính mà chia tay tài tử Trái tim mùa thu, cũng có tin đồn Song Seung Hun cảm thấy mình không thể mang lại hạnh phúc cho bạn gái mà cả hai "đường ai nấy đi".\r\n\r\nLần này, tuy không có bất kỳ câu trả lời chính thức nào từ cả hai phía, nhưng việc Lưu Diệc Phi và Song Seung Hun ngày càng ít và thậm chí là không còn xuất hiện cạnh nhau, không tương tác trên mạng xã hội đã nói lên rằng cặp đôi rất có thể đã chia tay trong êm đẹp.', 'Đóng "Hoa Mộc Lan", Lưu Diệc Phi lộ bằng chứng đã chia tay Song Seung Heon', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-04 00:45:53', '2017-12-04 00:45:53', '', 68, 'http://localhost:82/wordpress/?p=71', 0, 'revision', '', 0, NULL),
(72, 5, '2017-12-04 00:51:09', '2017-12-04 00:51:09', 'đây là bài post 4\r\n"4. Thực hiện xử lý trên\r\na. Danh sách post\r\nHiện tại: danh sách bài viết 1 cột\r\nYêu cầu: danh sách bài viết 2 cột\r\nb. Danh sách page\r\nHiện tại: Chưa có danh sách page mặc định\r\nYêu cầu: Hiển thị danh sách page dạng 2 cột"\r\n[gallery ids="67"]\r\n\r\n', 'post 4', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-04 00:51:09', '2017-12-04 00:51:09', '', 41, 'http://localhost:82/wordpress/?p=72', 0, 'revision', '', 0, NULL),
(73, 1, '2017-12-04 00:48:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 00:48:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=73', 0, 'post', '', 0, NULL),
(74, 5, '2017-12-04 00:56:05', '2017-12-04 00:56:05', 'Rất nhiều dân cư mạng nhanh chóng chỉ ra bằng chứng chứng minh cặp đôi đã đường ai nấy đi.\n<!--more-->\nLưu Diệc Phi hay Triệu Vy, phiên bản Hoa Mộc Lan nào đẹp nhất ?\nVượt qua cả ngàn ứng viên, Lưu Diệc Phi trở thành Hoa Mộc Lan của Disney\nNỗi khổ "thấu trời" của "thuốc độc phòng vé" Lưu Diệc Phi\n\nNhững ngày qua, tuyên bố của Disney về nữ diễn viên chính cho phiên bản người thật Hoa Mộc Lan đã làm xôn xao làng giải trí Hoa ngữ. Rất nhiều người gửi lời chúc mừng đến “thần tiên tỷ tỷ” Lưu Diệc Phi. Tuy nhiên, bên cạnh niềm vui đó, một số dân cư mạng đã phát hiện ra bằng chứng chứng minh cặp đôi Lưu Diệc Phi và Song Seung Heon đã chính thức chia tay.\n\n<img class="size-medium wp-image-69 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq-300x257.jpg" alt="" width="300" height="257" />\n\nMối tình vượt biên giới Lưu-Song suốt hai năm nay đã làm hao tốn nhiều bút mực của giới báo chí. Thế nhưng, đến thời điểm này, có lẽ chủ đề chuyện tình cảm của ngôi sao xinh đẹp làng giải trí Hoa ngữ và chàng tài tử Hàn Quốc sắp phải khép lại. Từ khi được trở thành công chúa của Disney, Lưu Diệc Phi cũng đã lập ngay tài khoản Instagram và Twitter để giao lưu nhiều hơn với fan quốc tế.\n\nLưu Diệc Phi dùng Instagram sau khi biết tin được trở thành công chúa của Disney\n\nTuy nhiên, điều đặc biệt là cả tài khoản Instargram và Twitter của "thần tiên tỷ tỷ" và tài tử Song Seung Heon đều không theo dõi nhau. Rõ ràng, khi Lưu Diệc Phi mới lập tài khoản mạng xã hội mới, người theo dõi, kết bạn sớm hơn cả lẽ ra phải là vị hôn phu Song Seung Heon. Thế nhưng, ngược lại là cả hai bên đều không có bất kỳ tương tác nào. Dựa vào điều này, fan tin rằng, mối quan hệ tình cảm của hai ngôi sao có vấn đề.\n\nHồi đầu năm 2017 trên tài khoản mạng xã hội của Song Seung Heon thường xuyên đăng tải hình ảnh phim mới hoặc poster quảng cáo của Lưu Diệc Phi. Xét về lý lẽ, Lưu Diệc Phi đươc tham gia phim Hoa Mộc Lan của Disney là một chuyện vui lớn, lẽ ra Song Seung Heon phải đăng ảnh chúc mừng như thói quen trước đó. Tuy nhiên, chàng tài tử lại lặng thing trước những việc xảy ra xung quanh vị hôn thê.\n\n<img class="size-medium wp-image-70 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg" alt="" width="300" height="265" />\n\nLưu Diệc Phi và Song Seung Heon quen biết nhau từ khi tham gia bộ phim Tình yêu thứ ba. Đã hai năm kể từ khi công khai tình cảm đến nay, cặp đôi Song Seung Hun - Lưu Diệc Phi gặp vô số lời đồn đoán cả hai chia tay vì nhiều lý do khác nhau. Từng có tin đồn, nàng "Thần tiên tỷ tỷ" không quên được bạn gái đồng tính mà chia tay tài tử Trái tim mùa thu, cũng có tin đồn Song Seung Hun cảm thấy mình không thể mang lại hạnh phúc cho bạn gái mà cả hai "đường ai nấy đi".\n\nLần này, tuy không có bất kỳ câu trả lời chính thức nào từ cả hai phía, nhưng việc Lưu Diệc Phi và Song Seung Hun ngày càng ít và thậm chí là không còn xuất hiện cạnh nhau, không tương tác trên mạng xã hội đã nói lên rằng cặp đôi rất có thể đã chia tay <!--more--><!--more--><!--more-->\ntrong êm đẹp.\n\n\n', 'Đóng "Hoa Mộc Lan", Lưu Diệc Phi lộ bằng chứng đã chia tay Song Seung Heon', '', 'inherit', 'closed', 'closed', '', '68-autosave-v1', '', '', '2017-12-04 00:56:05', '2017-12-04 00:56:05', '', 68, 'http://localhost:82/wordpress/?p=74', 0, 'revision', '', 0, NULL),
(75, 5, '2017-12-04 00:55:42', '2017-12-04 00:55:42', 'Rất nhiều dân cư mạng nhanh chóng chỉ ra bằng chứng chứng minh cặp đôi đã đường ai nấy đi.\r\n\r\nLưu Diệc Phi hay Triệu Vy, phiên bản Hoa Mộc Lan nào đẹp nhất ?\r\nVượt qua cả ngàn ứng viên, Lưu Diệc Phi trở thành Hoa Mộc Lan của Disney\r\nNỗi khổ "thấu trời" của "thuốc độc phòng vé" Lưu Diệc Phi\r\n\r\nNhững ngày qua, tuyên bố của Disney về nữ diễn viên chính cho phiên bản người thật Hoa Mộc Lan đã làm xôn xao làng giải trí Hoa ngữ. Rất nhiều người gửi lời chúc mừng đến “thần tiên tỷ tỷ” Lưu Diệc Phi. Tuy nhiên, bên cạnh niềm vui đó, một số dân cư mạng đã phát hiện ra bằng chứng chứng minh cặp đôi Lưu Diệc Phi và Song Seung Heon đã chính thức chia tay.\r\n\r\n<img class="size-medium wp-image-69 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq-300x257.jpg" alt="" width="300" height="257" />\r\n\r\nMối tình vượt biên giới Lưu-Song suốt hai năm nay đã làm hao tốn nhiều bút mực của giới báo chí. Thế nhưng, đến thời điểm này, có lẽ chủ đề chuyện tình cảm của ngôi sao xinh đẹp làng giải trí Hoa ngữ và chàng tài tử Hàn Quốc sắp phải khép lại. Từ khi được trở thành công chúa của Disney, Lưu Diệc Phi cũng đã lập ngay tài khoản Instagram và Twitter để giao lưu nhiều hơn với fan quốc tế.\r\n\r\nLưu Diệc Phi dùng Instagram sau khi biết tin được trở thành công chúa của Disney\r\n\r\nTuy nhiên, điều đặc biệt là cả tài khoản Instargram và Twitter của "thần tiên tỷ tỷ" và tài tử Song Seung Heon đều không theo dõi nhau. Rõ ràng, khi Lưu Diệc Phi mới lập tài khoản mạng xã hội mới, người theo dõi, kết bạn sớm hơn cả lẽ ra phải là vị hôn phu Song Seung Heon. Thế nhưng, ngược lại là cả hai bên đều không có bất kỳ tương tác nào. Dựa vào điều này, fan tin rằng, mối quan hệ tình cảm của hai ngôi sao có vấn đề.\r\n\r\nHồi đầu năm 2017 trên tài khoản mạng xã hội của Song Seung Heon thường xuyên đăng tải hình ảnh phim mới hoặc poster quảng cáo của Lưu Diệc Phi. Xét về lý lẽ, Lưu Diệc Phi đươc tham gia phim Hoa Mộc Lan của Disney là một chuyện vui lớn, lẽ ra Song Seung Heon phải đăng ảnh chúc mừng như thói quen trước đó. Tuy nhiên, chàng tài tử lại lặng thing trước những việc xảy ra xung quanh vị hôn thê.\r\n\r\n<img class="size-medium wp-image-70 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg" alt="" width="300" height="265" />\r\n\r\nLưu Diệc Phi và Song Seung Heon quen biết nhau từ khi tham gia bộ phim Tình yêu thứ ba. Đã hai năm kể từ khi công khai tình cảm đến nay, cặp đôi Song Seung Hun - Lưu Diệc Phi gặp vô số lời đồn đoán cả hai chia tay vì nhiều lý do khác nhau. Từng có tin đồn, nàng "Thần tiên tỷ tỷ" không quên được bạn gái đồng tính mà chia tay tài tử Trái tim mùa thu, cũng có tin đồn Song Seung Hun cảm thấy mình không thể mang lại hạnh phúc cho bạn gái mà cả hai "đường ai nấy đi".\r\n\r\nLần này, tuy không có bất kỳ câu trả lời chính thức nào từ cả hai phía, nhưng việc Lưu Diệc Phi và Song Seung Hun ngày càng ít và thậm chí là không còn xuất hiện cạnh nhau, không tương tác trên mạng xã hội đã nói lên rằng cặp đôi rất có thể đã chia tay <!--more--><!--more--><!--more-->\r\ntrong êm đẹp.<!--more-->\r\n\r\n\r\n', 'Đóng "Hoa Mộc Lan", Lưu Diệc Phi lộ bằng chứng đã chia tay Song Seung Heon', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-04 00:55:42', '2017-12-04 00:55:42', '', 68, 'http://localhost:82/wordpress/?p=75', 0, 'revision', '', 0, NULL),
(76, 5, '2017-12-04 00:56:07', '2017-12-04 00:56:07', 'Rất nhiều dân cư mạng nhanh chóng chỉ ra bằng chứng chứng minh cặp đôi đã đường ai nấy đi.\r\n<!--more-->\r\nLưu Diệc Phi hay Triệu Vy, phiên bản Hoa Mộc Lan nào đẹp nhất ?\r\nVượt qua cả ngàn ứng viên, Lưu Diệc Phi trở thành Hoa Mộc Lan của Disney\r\nNỗi khổ "thấu trời" của "thuốc độc phòng vé" Lưu Diệc Phi\r\n\r\nNhững ngày qua, tuyên bố của Disney về nữ diễn viên chính cho phiên bản người thật Hoa Mộc Lan đã làm xôn xao làng giải trí Hoa ngữ. Rất nhiều người gửi lời chúc mừng đến “thần tiên tỷ tỷ” Lưu Diệc Phi. Tuy nhiên, bên cạnh niềm vui đó, một số dân cư mạng đã phát hiện ra bằng chứng chứng minh cặp đôi Lưu Diệc Phi và Song Seung Heon đã chính thức chia tay.\r\n\r\n<img class="size-medium wp-image-69 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq-300x257.jpg" alt="" width="300" height="257" />\r\n\r\nMối tình vượt biên giới Lưu-Song suốt hai năm nay đã làm hao tốn nhiều bút mực của giới báo chí. Thế nhưng, đến thời điểm này, có lẽ chủ đề chuyện tình cảm của ngôi sao xinh đẹp làng giải trí Hoa ngữ và chàng tài tử Hàn Quốc sắp phải khép lại. Từ khi được trở thành công chúa của Disney, Lưu Diệc Phi cũng đã lập ngay tài khoản Instagram và Twitter để giao lưu nhiều hơn với fan quốc tế.\r\n\r\nLưu Diệc Phi dùng Instagram sau khi biết tin được trở thành công chúa của Disney\r\n\r\nTuy nhiên, điều đặc biệt là cả tài khoản Instargram và Twitter của "thần tiên tỷ tỷ" và tài tử Song Seung Heon đều không theo dõi nhau. Rõ ràng, khi Lưu Diệc Phi mới lập tài khoản mạng xã hội mới, người theo dõi, kết bạn sớm hơn cả lẽ ra phải là vị hôn phu Song Seung Heon. Thế nhưng, ngược lại là cả hai bên đều không có bất kỳ tương tác nào. Dựa vào điều này, fan tin rằng, mối quan hệ tình cảm của hai ngôi sao có vấn đề.\r\n\r\nHồi đầu năm 2017 trên tài khoản mạng xã hội của Song Seung Heon thường xuyên đăng tải hình ảnh phim mới hoặc poster quảng cáo của Lưu Diệc Phi. Xét về lý lẽ, Lưu Diệc Phi đươc tham gia phim Hoa Mộc Lan của Disney là một chuyện vui lớn, lẽ ra Song Seung Heon phải đăng ảnh chúc mừng như thói quen trước đó. Tuy nhiên, chàng tài tử lại lặng thing trước những việc xảy ra xung quanh vị hôn thê.\r\n\r\n<img class="size-medium wp-image-70 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg" alt="" width="300" height="265" />\r\n\r\nLưu Diệc Phi và Song Seung Heon quen biết nhau từ khi tham gia bộ phim Tình yêu thứ ba. Đã hai năm kể từ khi công khai tình cảm đến nay, cặp đôi Song Seung Hun - Lưu Diệc Phi gặp vô số lời đồn đoán cả hai chia tay vì nhiều lý do khác nhau. Từng có tin đồn, nàng "Thần tiên tỷ tỷ" không quên được bạn gái đồng tính mà chia tay tài tử Trái tim mùa thu, cũng có tin đồn Song Seung Hun cảm thấy mình không thể mang lại hạnh phúc cho bạn gái mà cả hai "đường ai nấy đi".\r\n\r\nLần này, tuy không có bất kỳ câu trả lời chính thức nào từ cả hai phía, nhưng việc Lưu Diệc Phi và Song Seung Hun ngày càng ít và thậm chí là không còn xuất hiện cạnh nhau, không tương tác trên mạng xã hội đã nói lên rằng cặp đôi rất có thể đã chia tay <!--more--><!--more--><!--more-->\r\ntrong êm đẹp.\r\n\r\n\r\n', 'Đóng "Hoa Mộc Lan", Lưu Diệc Phi lộ bằng chứng đã chia tay Song Seung Heon', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-04 00:56:07', '2017-12-04 00:56:07', '', 68, 'http://localhost:82/wordpress/?p=76', 0, 'revision', '', 0, NULL),
(77, 5, '2017-12-04 00:56:51', '2017-12-04 00:56:51', 'đây là bài post 4\r\n\r\n"4. Thực hiện xử lý trên\r\na. Danh sách post\r\nHiện tại: danh sách bài viết 1 cột\r\nYêu cầu: danh sách bài viết 2 cột\r\nb. Danh sách page\r\nHiện tại: Chưa có danh sách page mặc định\r\nYêu cầu: Hiển thị danh sách page dạng 2 cột"<!--more-->\r\n\r\n[gallery ids="67"]\r\n\r\n', 'post 4', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-04 00:56:51', '2017-12-04 00:56:51', '', 41, 'http://localhost:82/wordpress/?p=77', 0, 'revision', '', 0, NULL),
(78, 5, '2017-12-04 00:57:33', '2017-12-04 00:57:33', 'đây là bài post 4\r\n\r\n"4. Thực hiện xử lý trên\r\na. Danh sách post\r\nHiện tại: danh sách bài viết 1 cột\r\nYêu cầu: danh sách bài viết 2 cột\r\nb. Danh sách page\r\nHiện tại: Chưa có danh sách page mặc định\r\nYêu cầu: Hiển thị danh sách page dạng 2 cột"\r\n[gallery ids="67"]\r\n\r\n', 'post 4', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-04 00:57:33', '2017-12-04 00:57:33', '', 41, 'http://localhost:82/wordpress/?p=78', 0, 'revision', '', 0, NULL),
(79, 5, '2017-12-04 00:57:40', '2017-12-04 00:57:40', 'đây là bài post 4\r\n<!--more-->\r\n\r\n"4. Thực hiện xử lý trên\r\na. Danh sách post\r\nHiện tại: danh sách bài viết 1 cột\r\nYêu cầu: danh sách bài viết 2 cột\r\nb. Danh sách page\r\nHiện tại: Chưa có danh sách page mặc định\r\nYêu cầu: Hiển thị danh sách page dạng 2 cột"\r\n[gallery ids="67"]\r\n\r\n', 'post 4', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-04 00:57:40', '2017-12-04 00:57:40', '', 41, 'http://localhost:82/wordpress/?p=79', 0, 'revision', '', 0, NULL),
(80, 1, '2017-12-04 01:06:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 01:06:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=80', 0, 'post', '', 0, NULL),
(81, 5, '2017-12-04 02:41:19', '2017-12-04 02:41:19', 'đây là bài post 4\r\n<!--more-->\r\n\r\n"4. Thực hiện xử lý trên\r\na. Danh sách post\r\nHiện tại: danh sách bài viết 1 cột\r\nYêu cầu: danh sách bài viết 2 cột\r\nb. Danh sách page\r\nHiện tại: Chưa có danh sách page mặc định\r\nYêu cầu: Hiển thị danh sách page dạng 2 cột"\r\n[gallery ids="67"]\r\n\r\n', 'post 4', 'dasdsadsadsad', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-04 02:41:19', '2017-12-04 02:41:19', '', 41, 'http://localhost:82/wordpress/?p=81', 0, 'revision', '', 0, NULL),
(82, 1, '2017-12-04 02:41:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 02:41:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=82', 0, 'post', '', 0, NULL),
(83, 1, '2017-12-04 02:45:08', '2017-12-04 02:45:08', '<div class="adn ads">\r\n<div class="gs">\r\n<div id=":zx" class="ii gt adP adO">\r\n<div id=":zw" class="a3s aXjCH m1601f37e9a320239">\r\n<div dir="ltr">Thân gửi các em,\r\n<div></div>\r\n<div>- Căn cứ vào danh sách lớp có trên trang <a href="http://online.tdc.edu.vn/" target="_blank" rel="noopener" data-saferedirecturl="https://www.google.com/url?hl=vi&amp;q=http://online.tdc.edu.vn&amp;source=gmail&amp;ust=1512439075220000&amp;usg=AFQjCNE-mEYTpFsw39TtTtd33yyhR-W3lQ">online.tdc.edu.vn</a></div>\r\n<div>- Căn cứ vào bảng điểm danh (có ký tên) từng buổi học</div>\r\n<div>- Căn cứ vào quy định của nhà trường về việc cấm thi đến cá em nếu vắng quá 20% số tiết</div>\r\n<div>- Môn <b>Chuyên đề CMS</b> có 60 tiết, vậy em nào vắng quá 12 tiết (hơn 02 buổi học + 02 tiết) sẽ bị cấm thi.</div>\r\n<div></div>\r\n<div>Gửi các em danh sách đi kèm, những em tô màu sẽ bị cấm thi.</div>\r\n<div></div>\r\n<div><a href="https://docs.google.com/spreadsheets/d/129IKLmB00ee9TdAfFeGuVx2-Lu_ScCn9UZfwUG63w_k/edit#gid=0" target="_blank" rel="noopener" data-saferedirecturl="https://www.google.com/url?hl=vi&amp;q=https://docs.google.com/spreadsheets/d/129IKLmB00ee9TdAfFeGuVx2-Lu_ScCn9UZfwUG63w_k/edit%23gid%3D0&amp;source=gmail&amp;ust=1512439075220000&amp;usg=AFQjCNF_XCPgEsprMeGzYyy_ykuM7F7kSg">https://docs.google.com/<wbr />spreadsheets/d/<wbr />129IKLmB00ee9TdAfFeGuVx2-Lu_<wbr />ScCn9UZfwUG63w_k/edit#gid=0</a></div>\r\n<div></div>\r\n<div>Đề nghị các em, nếu có phản hồi thì phản hồi trước 10/12/2017. Sau ngày này, mọi phản hồi xem như không hợp lệ. Tất cả các lý do sẽ không được xem xét.</div>\r\n<div></div>\r\n<div>Chú ý:</div>\r\n<div></div>\r\n<div>1. Danh sách ký tên sẽ là danh sách chính thức cấm thi.</div>\r\n<div>2. Nhóm trưởng chịu trách nhiệm gửi mail đến bạn trong nhóm bị cấm thi. Mọi thắc mắc khiếu nại sau này, nhóm trưởng chịu trách nhiệm trước Khoa.</div>\r\n</div>\r\n<div class="yj6qo"></div>\r\n</div>\r\n</div>\r\n<div id=":10l" class="hq gt a10">\r\n<div class="hp"></div>\r\n<div class="a3I">Vùng tệp đính kèm</div>\r\n<div id=":10o"></div>\r\n<div id=":10n" class="aQH"></div>\r\n</div>\r\n<div class="hi"></div>\r\n</div>\r\n<div class="ajx"></div>\r\n</div>\r\n<div class="gA gt acV">\r\n<div class="gB xu">\r\n<div class="ip iq">\r\n<div id=":zy">\r\n<table class="cf FVrZGe" role="presentation">\r\n<tbody>\r\n<tr>\r\n<td class="amq"><img id=":0_4" class="ajn bofPge" src="https://plus.google.com/u/0/_/focus/photos/public/AIbEiAIAAABECITpt8uTkefonQEiC3ZjYXJkX3Bob3RvKihmMDEwYzExOTQxYTI5ZDEzNjEwOTc2MGEzNmZlNTk3YTliZTIwNDFlMAFegD6HrEoST471tmOZF9oXqG2o2Q?sz=32" name=":0" /></td>\r\n<td class="amr">\r\n<div class="nr tMHS5d">\r\n<div class="amn">Nhấp vào đây để <span id=":zs" class="ams bkH" tabindex="0" role="link">Trả lời</span>, <span id=":zt" class="ams bkI" tabindex="0" role="link">Trả lời tất cả</span> hoặc <span id=":zu" class="ams bkG" tabindex="0" role="link">Chuyển tiếp</span></div>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'post5', 'Thân gửi các em,\r\n', 'trash', 'open', 'open', '', 'post5__trashed', '', '', '2017-12-04 02:50:22', '2017-12-04 02:50:22', '', 0, 'http://localhost:82/wordpress/?p=83', 0, 'post', '', 0, NULL),
(84, 1, '2017-12-04 02:45:08', '2017-12-04 02:45:08', '<div class="adn ads">\r\n<div class="gs">\r\n<div id=":zx" class="ii gt adP adO">\r\n<div id=":zw" class="a3s aXjCH m1601f37e9a320239">\r\n<div dir="ltr">Thân gửi các em,\r\n<div></div>\r\n<div>- Căn cứ vào danh sách lớp có trên trang <a href="http://online.tdc.edu.vn/" target="_blank" rel="noopener" data-saferedirecturl="https://www.google.com/url?hl=vi&amp;q=http://online.tdc.edu.vn&amp;source=gmail&amp;ust=1512439075220000&amp;usg=AFQjCNE-mEYTpFsw39TtTtd33yyhR-W3lQ">online.tdc.edu.vn</a></div>\r\n<div>- Căn cứ vào bảng điểm danh (có ký tên) từng buổi học</div>\r\n<div>- Căn cứ vào quy định của nhà trường về việc cấm thi đến cá em nếu vắng quá 20% số tiết</div>\r\n<div>- Môn <b>Chuyên đề CMS</b> có 60 tiết, vậy em nào vắng quá 12 tiết (hơn 02 buổi học + 02 tiết) sẽ bị cấm thi.</div>\r\n<div></div>\r\n<div>Gửi các em danh sách đi kèm, những em tô màu sẽ bị cấm thi.</div>\r\n<div></div>\r\n<div><a href="https://docs.google.com/spreadsheets/d/129IKLmB00ee9TdAfFeGuVx2-Lu_ScCn9UZfwUG63w_k/edit#gid=0" target="_blank" rel="noopener" data-saferedirecturl="https://www.google.com/url?hl=vi&amp;q=https://docs.google.com/spreadsheets/d/129IKLmB00ee9TdAfFeGuVx2-Lu_ScCn9UZfwUG63w_k/edit%23gid%3D0&amp;source=gmail&amp;ust=1512439075220000&amp;usg=AFQjCNF_XCPgEsprMeGzYyy_ykuM7F7kSg">https://docs.google.com/<wbr />spreadsheets/d/<wbr />129IKLmB00ee9TdAfFeGuVx2-Lu_<wbr />ScCn9UZfwUG63w_k/edit#gid=0</a></div>\r\n<div></div>\r\n<div>Đề nghị các em, nếu có phản hồi thì phản hồi trước 10/12/2017. Sau ngày này, mọi phản hồi xem như không hợp lệ. Tất cả các lý do sẽ không được xem xét.</div>\r\n<div></div>\r\n<div>Chú ý:</div>\r\n<div></div>\r\n<div>1. Danh sách ký tên sẽ là danh sách chính thức cấm thi.</div>\r\n<div>2. Nhóm trưởng chịu trách nhiệm gửi mail đến bạn trong nhóm bị cấm thi. Mọi thắc mắc khiếu nại sau này, nhóm trưởng chịu trách nhiệm trước Khoa.</div>\r\n</div>\r\n<div class="yj6qo"></div>\r\n</div>\r\n</div>\r\n<div id=":10l" class="hq gt a10">\r\n<div class="hp"></div>\r\n<div class="a3I">Vùng tệp đính kèm</div>\r\n<div id=":10o"></div>\r\n<div id=":10n" class="aQH"></div>\r\n</div>\r\n<div class="hi"></div>\r\n</div>\r\n<div class="ajx"></div>\r\n</div>\r\n<div class="gA gt acV">\r\n<div class="gB xu">\r\n<div class="ip iq">\r\n<div id=":zy">\r\n<table class="cf FVrZGe" role="presentation">\r\n<tbody>\r\n<tr>\r\n<td class="amq"><img id=":0_4" class="ajn bofPge" src="https://plus.google.com/u/0/_/focus/photos/public/AIbEiAIAAABECITpt8uTkefonQEiC3ZjYXJkX3Bob3RvKihmMDEwYzExOTQxYTI5ZDEzNjEwOTc2MGEzNmZlNTk3YTliZTIwNDFlMAFegD6HrEoST471tmOZF9oXqG2o2Q?sz=32" name=":0" /></td>\r\n<td class="amr">\r\n<div class="nr tMHS5d">\r\n<div class="amn">Nhấp vào đây để <span id=":zs" class="ams bkH" tabindex="0" role="link">Trả lời</span>, <span id=":zt" class="ams bkI" tabindex="0" role="link">Trả lời tất cả</span> hoặc <span id=":zu" class="ams bkG" tabindex="0" role="link">Chuyển tiếp</span></div>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'post5', 'Thân gửi các em,\r\n', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-12-04 02:45:08', '2017-12-04 02:45:08', '', 83, 'http://localhost:82/wordpress/?p=84', 0, 'revision', '', 0, NULL),
(85, 5, '2017-12-04 02:58:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 02:58:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=85', 0, 'post', '', 0, NULL),
(86, 5, '2017-12-04 02:59:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 02:59:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=86', 0, 'post', '', 0, NULL),
(87, 5, '2017-12-04 02:59:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 02:59:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=87', 0, 'post', '', 0, NULL),
(88, 5, '2017-12-04 02:59:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 02:59:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=88', 0, 'post', '', 0, NULL),
(89, 5, '2017-12-04 03:00:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:00:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=89', 0, 'post', '', 0, NULL),
(90, 5, '2017-12-04 03:01:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:01:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=90', 0, 'post', '', 0, NULL),
(91, 5, '2017-12-04 03:01:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:01:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=91', 0, 'post', '', 0, NULL),
(92, 5, '2017-12-04 03:01:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:01:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=92', 0, 'post', '', 0, NULL),
(93, 5, '2017-12-04 03:01:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:01:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=93', 0, 'post', '', 0, NULL),
(94, 5, '2017-12-04 03:03:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:03:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=94', 0, 'post', '', 0, NULL),
(95, 5, '2017-12-04 03:04:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:04:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=95', 0, 'post', '', 0, NULL),
(96, 5, '2017-12-04 03:10:48', '2017-12-04 03:10:48', 'Rất nhiều dân cư mạng nhanh chóng chỉ ra bằng chứng chứng minh cặp đôi đã đường ai nấy đi.\r\n<!--more-->\r\nLưu Diệc Phi hay Triệu Vy, phiên bản Hoa Mộc Lan nào đẹp nhất ?\r\nVượt qua cả ngàn ứng viên, Lưu Diệc Phi trở thành Hoa Mộc Lan của Disney\r\nNỗi khổ "thấu trời" của "thuốc độc phòng vé" Lưu Diệc Phi\r\n\r\nNhững ngày qua, tuyên bố của Disney về nữ diễn viên chính cho phiên bản người thật Hoa Mộc Lan đã làm xôn xao làng giải trí Hoa ngữ. Rất nhiều người gửi lời chúc mừng đến “thần tiên tỷ tỷ” Lưu Diệc Phi. Tuy nhiên, bên cạnh niềm vui đó, một số dân cư mạng đã phát hiện ra bằng chứng chứng minh cặp đôi Lưu Diệc Phi và Song Seung Heon đã chính thức chia tay.\r\n\r\n<img class="size-medium wp-image-69 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq-300x257.jpg" alt="" width="300" height="257" />\r\n\r\nMối tình vượt biên giới Lưu-Song suốt hai năm nay đã làm hao tốn nhiều bút mực của giới báo chí. Thế nhưng, đến thời điểm này, có lẽ chủ đề chuyện tình cảm của ngôi sao xinh đẹp làng giải trí Hoa ngữ và chàng tài tử Hàn Quốc sắp phải khép lại. Từ khi được trở thành công chúa của Disney, Lưu Diệc Phi cũng đã lập ngay tài khoản Instagram và Twitter để giao lưu nhiều hơn với fan quốc tế.\r\n\r\nLưu Diệc Phi dùng Instagram sau khi biết tin được trở thành công chúa của Disney\r\n\r\nTuy nhiên, điều đặc biệt là cả tài khoản Instargram và Twitter của "thần tiên tỷ tỷ" và tài tử Song Seung Heon đều không theo dõi nhau. Rõ ràng, khi Lưu Diệc Phi mới lập tài khoản mạng xã hội mới, người theo dõi, kết bạn sớm hơn cả lẽ ra phải là vị hôn phu Song Seung Heon. Thế nhưng, ngược lại là cả hai bên đều không có bất kỳ tương tác nào. Dựa vào điều này, fan tin rằng, mối quan hệ tình cảm của hai ngôi sao có vấn đề.\r\n\r\nHồi đầu năm 2017 trên tài khoản mạng xã hội của Song Seung Heon thường xuyên đăng tải hình ảnh phim mới hoặc poster quảng cáo của Lưu Diệc Phi. Xét về lý lẽ, Lưu Diệc Phi đươc tham gia phim Hoa Mộc Lan của Disney là một chuyện vui lớn, lẽ ra Song Seung Heon phải đăng ảnh chúc mừng như thói quen trước đó. Tuy nhiên, chàng tài tử lại lặng thing trước những việc xảy ra xung quanh vị hôn thê.\r\n\r\n<img class="size-medium wp-image-70 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg" alt="" width="300" height="265" />\r\n\r\nLưu Diệc Phi và Song Seung Heon quen biết nhau từ khi tham gia bộ phim Tình yêu thứ ba. Đã hai năm kể từ khi công khai tình cảm đến nay, cặp đôi Song Seung Hun - Lưu Diệc Phi gặp vô số lời đồn đoán cả hai chia tay vì nhiều lý do khác nhau. Từng có tin đồn, nàng "Thần tiên tỷ tỷ" không quên được bạn gái đồng tính mà chia tay tài tử Trái tim mùa thu, cũng có tin đồn Song Seung Hun cảm thấy mình không thể mang lại hạnh phúc cho bạn gái mà cả hai "đường ai nấy đi".\r\n\r\nLần này, tuy không có bất kỳ câu trả lời chính thức nào từ cả hai phía, nhưng việc Lưu Diệc Phi và Song Seung Hun ngày càng ít và thậm chí là không còn xuất hiện cạnh nhau, không tương tác trên mạng xã hội đã nói lên rằng cặp đôi rất có thể đã chia tay <!--more--><!--more--><!--more-->\r\ntrong êm đẹp.\r\n\r\n\r\n', 'Đóng "Hoa Mộc Lan", Lưu Diệc Phi lộ bằng chứng đã chia tay Song Seung Heon', 'dsadsadsadsadsa', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-04 03:10:48', '2017-12-04 03:10:48', '', 68, 'http://localhost:82/wordpress/?p=96', 0, 'revision', '', 0, NULL),
(97, 5, '2017-12-04 03:15:27', '2017-12-04 03:15:27', 'dassad', 'Contact', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-12-04 03:15:27', '2017-12-04 03:15:27', '', 49, 'http://localhost:82/wordpress/?p=97', 0, 'revision', '', 0, NULL),
(98, 5, '2017-12-04 03:41:51', '2017-12-04 03:41:51', 'Rất nhiều dân cư mạng nhanh chóng chỉ ra bằng chứng chứng minh cặp đôi đã đường ai nấy đi.\r\n<!--more-->\r\nLưu Diệc Phi hay Triệu Vy, phiên bản Hoa Mộc Lan nào đẹp nhất ?\r\nVượt qua cả ngàn ứng viên, Lưu Diệc Phi trở thành Hoa Mộc Lan của Disney\r\nNỗi khổ "thấu trời" của "thuốc độc phòng vé" Lưu Diệc Phi\r\n\r\nNhững ngày qua, tuyên bố của Disney về nữ diễn viên chính cho phiên bản người thật Hoa Mộc Lan đã làm xôn xao làng giải trí Hoa ngữ. Rất nhiều người gửi lời chúc mừng đến “thần tiên tỷ tỷ” Lưu Diệc Phi. Tuy nhiên, bên cạnh niềm vui đó, một số dân cư mạng đã phát hiện ra bằng chứng chứng minh cặp đôi Lưu Diệc Phi và Song Seung Heon đã chính thức chia tay.\r\n\r\n<img class="size-medium wp-image-69 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq-300x257.jpg" alt="" width="300" height="257" />\r\n\r\nMối tình vượt biên giới Lưu-Song suốt hai năm nay đã làm hao tốn nhiều bút mực của giới báo chí. Thế nhưng, đến thời điểm này, có lẽ chủ đề chuyện tình cảm của ngôi sao xinh đẹp làng giải trí Hoa ngữ và chàng tài tử Hàn Quốc sắp phải khép lại. Từ khi được trở thành công chúa của Disney, Lưu Diệc Phi cũng đã lập ngay tài khoản Instagram và Twitter để giao lưu nhiều hơn với fan quốc tế.\r\n\r\nLưu Diệc Phi dùng Instagram sau khi biết tin được trở thành công chúa của Disney\r\n\r\nTuy nhiên, điều đặc biệt là cả tài khoản Instargram và Twitter của "thần tiên tỷ tỷ" và tài tử Song Seung Heon đều không theo dõi nhau. Rõ ràng, khi Lưu Diệc Phi mới lập tài khoản mạng xã hội mới, người theo dõi, kết bạn sớm hơn cả lẽ ra phải là vị hôn phu Song Seung Heon. Thế nhưng, ngược lại là cả hai bên đều không có bất kỳ tương tác nào. Dựa vào điều này, fan tin rằng, mối quan hệ tình cảm của hai ngôi sao có vấn đề.\r\n\r\nHồi đầu năm 2017 trên tài khoản mạng xã hội của Song Seung Heon thường xuyên đăng tải hình ảnh phim mới hoặc poster quảng cáo của Lưu Diệc Phi. Xét về lý lẽ, Lưu Diệc Phi đươc tham gia phim Hoa Mộc Lan của Disney là một chuyện vui lớn, lẽ ra Song Seung Heon phải đăng ảnh chúc mừng như thói quen trước đó. Tuy nhiên, chàng tài tử lại lặng thing trước những việc xảy ra xung quanh vị hôn thê.\r\n\r\n<img class="size-medium wp-image-70 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg" alt="" width="300" height="265" />\r\n\r\nLưu Diệc Phi và Song Seung Heon quen biết nhau từ khi tham gia bộ phim Tình yêu thứ ba. Đã hai năm kể từ khi công khai tình cảm đến nay, cặp đôi Song Seung Hun - Lưu Diệc Phi gặp vô số lời đồn đoán cả hai chia tay vì nhiều lý do khác nhau. Từng có tin đồn, nàng "Thần tiên tỷ tỷ" không quên được bạn gái đồng tính mà chia tay tài tử Trái tim mùa thu, cũng có tin đồn Song Seung Hun cảm thấy mình không thể mang lại hạnh phúc cho bạn gái mà cả hai "đường ai nấy đi".\r\n\r\nLần này, tuy không có bất kỳ câu trả lời chính thức nào từ cả hai phía, nhưng việc Lưu Diệc Phi và Song Seung Hun ngày càng ít và thậm chí là không còn xuất hiện cạnh nhau, không tương tác trên mạng xã hội đã nói lên rằng cặp đôi rất có thể đã chia tay <!--more--><!--more--><!--more-->\r\ntrong êm đẹp.\r\n\r\n\r\n', 'Đóng "Hoa Mộc Lan", Lưu Diệc Phi lộ bằng chứng đã chia tay Song Seung Heon', 'fsafsafdasffasfsa', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-04 03:41:51', '2017-12-04 03:41:51', '', 68, 'http://localhost:82/wordpress/?p=98', 0, 'revision', '', 0, NULL);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`, `post_overview`) VALUES
(99, 1, '2017-12-04 04:03:36', '2017-12-04 04:03:36', 'Rất nhiều dân cư mạng nhanh chóng chỉ ra bằng chứng chứng minh cặp đôi đã đường ai nấy đi.\r\n<!--more-->\r\nLưu Diệc Phi hay Triệu Vy, phiên bản Hoa Mộc Lan nào đẹp nhất ?\r\nVượt qua cả ngàn ứng viên, Lưu Diệc Phi trở thành Hoa Mộc Lan của Disney\r\nNỗi khổ "thấu trời" của "thuốc độc phòng vé" Lưu Diệc Phi\r\n\r\nNhững ngày qua, tuyên bố của Disney về nữ diễn viên chính cho phiên bản người thật Hoa Mộc Lan đã làm xôn xao làng giải trí Hoa ngữ. Rất nhiều người gửi lời chúc mừng đến “thần tiên tỷ tỷ” Lưu Diệc Phi. Tuy nhiên, bên cạnh niềm vui đó, một số dân cư mạng đã phát hiện ra bằng chứng chứng minh cặp đôi Lưu Diệc Phi và Song Seung Heon đã chính thức chia tay.\r\n\r\n<img class="size-medium wp-image-69 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/luu_diec_phi_qreq-300x257.jpg" alt="" width="300" height="257" />\r\n\r\nMối tình vượt biên giới Lưu-Song suốt hai năm nay đã làm hao tốn nhiều bút mực của giới báo chí. Thế nhưng, đến thời điểm này, có lẽ chủ đề chuyện tình cảm của ngôi sao xinh đẹp làng giải trí Hoa ngữ và chàng tài tử Hàn Quốc sắp phải khép lại. Từ khi được trở thành công chúa của Disney, Lưu Diệc Phi cũng đã lập ngay tài khoản Instagram và Twitter để giao lưu nhiều hơn với fan quốc tế.\r\n\r\nLưu Diệc Phi dùng Instagram sau khi biết tin được trở thành công chúa của Disney\r\n\r\nTuy nhiên, điều đặc biệt là cả tài khoản Instargram và Twitter của "thần tiên tỷ tỷ" và tài tử Song Seung Heon đều không theo dõi nhau. Rõ ràng, khi Lưu Diệc Phi mới lập tài khoản mạng xã hội mới, người theo dõi, kết bạn sớm hơn cả lẽ ra phải là vị hôn phu Song Seung Heon. Thế nhưng, ngược lại là cả hai bên đều không có bất kỳ tương tác nào. Dựa vào điều này, fan tin rằng, mối quan hệ tình cảm của hai ngôi sao có vấn đề.\r\n\r\nHồi đầu năm 2017 trên tài khoản mạng xã hội của Song Seung Heon thường xuyên đăng tải hình ảnh phim mới hoặc poster quảng cáo của Lưu Diệc Phi. Xét về lý lẽ, Lưu Diệc Phi đươc tham gia phim Hoa Mộc Lan của Disney là một chuyện vui lớn, lẽ ra Song Seung Heon phải đăng ảnh chúc mừng như thói quen trước đó. Tuy nhiên, chàng tài tử lại lặng thing trước những việc xảy ra xung quanh vị hôn thê.\r\n\r\n<img class="size-medium wp-image-70 alignright" src="http://localhost:82/wordpress/wp-content/uploads/2017/12/7e6cdf02-b168-49cf-aa5f-1611b3402f35-300x265.jpg" alt="" width="300" height="265" />\r\n\r\nLưu Diệc Phi và Song Seung Heon quen biết nhau từ khi tham gia bộ phim Tình yêu thứ ba. Đã hai năm kể từ khi công khai tình cảm đến nay, cặp đôi Song Seung Hun - Lưu Diệc Phi gặp vô số lời đồn đoán cả hai chia tay vì nhiều lý do khác nhau. Từng có tin đồn, nàng "Thần tiên tỷ tỷ" không quên được bạn gái đồng tính mà chia tay tài tử Trái tim mùa thu, cũng có tin đồn Song Seung Hun cảm thấy mình không thể mang lại hạnh phúc cho bạn gái mà cả hai "đường ai nấy đi".\r\n\r\nLần này, tuy không có bất kỳ câu trả lời chính thức nào từ cả hai phía, nhưng việc Lưu Diệc Phi và Song Seung Hun ngày càng ít và thậm chí là không còn xuất hiện cạnh nhau, không tương tác trên mạng xã hội đã nói lên rằng cặp đôi rất có thể đã chia tay <!--more--><!--more--><!--more-->\r\ntrong êm đẹp.', 'Đóng "Hoa Mộc Lan", Lưu Diệc Phi lộ bằng chứng đã chia tay Song Seung Heon', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-04 04:03:36', '2017-12-04 04:03:36', '', 68, 'http://localhost:82/wordpress/?p=99', 0, 'revision', '', 0, ''),
(100, 1, '2017-12-04 04:03:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 04:03:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=100', 0, 'post', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Thời Sự', 'thoi-su', 0),
(3, 'Thể Thao', 'the-thao', 0),
(4, 'Thế Giới', 'the-gioi', 0),
(5, 'Âm Nhạc', 'am-nhac', 0),
(6, 'Mp3', 'mp3', 0),
(7, 'MP4', 'mp4', 0),
(8, 'Trong Nuoc', 'trong-nuoc', 0),
(9, 'Ngoai Nuoc', 'ngoai-nuoc', 0),
(10, 'ListPage', 'listpage', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(12, 5, 0),
(12, 6, 0),
(12, 7, 0),
(15, 5, 0),
(19, 5, 0),
(19, 6, 0),
(20, 5, 0),
(28, 2, 0),
(28, 8, 0),
(30, 2, 0),
(30, 8, 0),
(30, 9, 0),
(35, 5, 0),
(37, 4, 0),
(39, 2, 0),
(41, 3, 0),
(59, 10, 0),
(68, 2, 0),
(68, 9, 0),
(83, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 5),
(6, 6, 'category', '', 5, 2),
(7, 7, 'category', '', 5, 1),
(8, 8, 'category', '', 2, 0),
(9, 9, 'category', '', 2, 1),
(10, 10, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=84 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '65'),
(17, 5, 'nickname', 'cotk'),
(18, 5, 'first_name', ''),
(19, 5, 'last_name', ''),
(20, 5, 'description', ''),
(21, 5, 'rich_editing', 'true'),
(22, 5, 'comment_shortcuts', 'false'),
(23, 5, 'admin_color', 'fresh'),
(24, 5, 'use_ssl', '0'),
(25, 5, 'show_admin_bar_front', 'true'),
(26, 5, 'locale', ''),
(27, 5, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(28, 5, 'wp_user_level', '10'),
(29, 5, 'dismissed_wp_pointers', ''),
(30, 6, 'nickname', 'tuannt'),
(31, 6, 'first_name', ''),
(32, 6, 'last_name', ''),
(33, 6, 'description', ''),
(34, 6, 'rich_editing', 'true'),
(35, 6, 'comment_shortcuts', 'false'),
(36, 6, 'admin_color', 'fresh'),
(37, 6, 'use_ssl', '0'),
(38, 6, 'show_admin_bar_front', 'true'),
(39, 6, 'locale', ''),
(40, 6, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(41, 6, 'wp_user_level', '10'),
(42, 6, 'dismissed_wp_pointers', ''),
(43, 7, 'nickname', 'nuth'),
(44, 7, 'first_name', ''),
(45, 7, 'last_name', ''),
(46, 7, 'description', ''),
(47, 7, 'rich_editing', 'true'),
(48, 7, 'comment_shortcuts', 'false'),
(49, 7, 'admin_color', 'fresh'),
(50, 7, 'use_ssl', '0'),
(51, 7, 'show_admin_bar_front', 'true'),
(52, 7, 'locale', ''),
(53, 7, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(54, 7, 'wp_user_level', '7'),
(55, 7, 'dismissed_wp_pointers', ''),
(57, 5, 'wp_dashboard_quick_press_last_post_id', '34'),
(59, 8, 'session_tokens', 'a:1:{s:64:"d1eb542f85ca4a03cfae26da23625677c17c1bae1558e2b43fab4e62407a6e5a";a:4:{s:10:"expiration";i:1510902477;s:2:"ip";s:14:"192.168.100.24";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1510729677;}}'),
(62, 5, 'session_tokens', 'a:1:{s:64:"074ac09d31d92d1dae659e7691afcc06a8566dfbc41a774b9ae2f2922d2f5aa8";a:4:{s:10:"expiration";i:1512520701;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512347901;}}'),
(64, 6, 'wp_dashboard_quick_press_last_post_id', '8'),
(65, 1, 'session_tokens', 'a:2:{s:64:"883a806a0a1dccfc8f63d62265ecbecd728e8f6c1b7df134d625b440c3d7f0ac";a:4:{s:10:"expiration";i:1512520557;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512347757;}s:64:"34f33e9d50842c9f9522a41263b65045a6b0863d068ec43292bcce75efb561c2";a:4:{s:10:"expiration";i:1512528781;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1512355981;}}'),
(66, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&mfold=o&posts_list_mode=excerpt'),
(67, 1, 'wp_user-settings-time', '1512355993'),
(68, 5, 'wp_user-settings', 'hidetb=1&editor=html&libraryContent=browse&posts_list_mode=excerpt'),
(69, 5, 'wp_user-settings-time', '1512360629'),
(70, 5, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(71, 5, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(72, 5, 'nav_menu_recently_edited', '10'),
(73, 5, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:38:"dashboard_right_now,dashboard_activity";s:4:"side";s:39:"dashboard_quick_press,dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(74, 5, 'closedpostboxes_post', 'a:0:{}'),
(75, 5, 'metaboxhidden_post', 'a:6:{i:0;s:12:"postimagediv";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(76, 5, 'meta-box-order_post', 'a:3:{s:4:"side";s:61:"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:96:"trackbacksdiv,postexcerpt,postcustom,commentstatusdiv,slugdiv,authordiv,revisionsdiv,commentsdiv";s:8:"advanced";s:0:"";}'),
(77, 5, 'screen_layout_post', '2'),
(78, 5, 'edit_post_per_page', '20'),
(79, 1, 'closedpostboxes_post', 'a:1:{i:0;s:12:"revisionsdiv";}'),
(80, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(81, 1, 'edit_post_per_page', '20'),
(82, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:61:"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:96:"postexcerpt,revisionsdiv,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(83, 1, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BVgQZ0iSjUgZPSZWUwv32g2s74SY8W/', 'admin', 'please2996@gmail.com', '', '2017-11-13 03:43:53', '', 0, 'admin'),
(5, 'cotk', '$P$BlmjilfADnQVWi2E/V292vbcgcnp8B.', 'cotk', 'kimco2404@gmail.com', '', '2017-11-13 04:03:31', '1510545812:$P$B/0ODrEROTO2sgjr3l9xvcW3TjkTcR/', 0, 'cotk'),
(6, 'tuannt', '$P$B9.BHT3Frg/3c8GK0O3hlONA1EeRb7.', 'tuannt', 'calvinnguyen.tt@gmail.com', '', '2017-11-13 04:04:28', '1510545870:$P$BkPF3sCjDAiNtz9xYDWd8EHqk3GyJe/', 0, 'tuannt'),
(7, 'nuth', '$P$BMfo1wLmBUdpFT0PF27TfuDMFIdthz/', 'nuth', 'nu123@gmail.com', '', '2017-11-13 04:04:51', '1510545892:$P$BiF/iLBni1VgkK8GvPkgf7p2a5ST3l/', 0, 'nuth');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
