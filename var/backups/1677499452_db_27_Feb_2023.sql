-- Magento DB backup
--
-- Host: localhost    Database: nakshathra
-- ------------------------------------------------------
-- Server version: 5.7.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_analytics_usage_version_log`
--

DROP TABLE IF EXISTS `admin_analytics_usage_version_log`;
CREATE TABLE `admin_analytics_usage_version_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `last_viewed_in_version` varchar(50) NOT NULL COMMENT 'Viewer last viewed on product version',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ADMIN_ANALYTICS_USAGE_VERSION_LOG_LAST_VIEWED_IN_VERSION` (`last_viewed_in_version`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin Notification Viewer Log Table';

--
-- Dumping data for table `admin_analytics_usage_version_log`
--

LOCK TABLES `admin_analytics_usage_version_log` WRITE;
/*!40000 ALTER TABLE `admin_analytics_usage_version_log` DISABLE KEYS */;
INSERT INTO `admin_analytics_usage_version_log` VALUES ('1','2.3.7');
/*!40000 ALTER TABLE `admin_analytics_usage_version_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_passwords`
--

DROP TABLE IF EXISTS `admin_passwords`;
CREATE TABLE `admin_passwords` (
  `password_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Password ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Deprecated',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Last Updated',
  PRIMARY KEY (`password_id`),
  KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

--
-- Dumping data for table `admin_passwords`
--

LOCK TABLES `admin_passwords` WRITE;
/*!40000 ALTER TABLE `admin_passwords` DISABLE KEYS */;
INSERT INTO `admin_passwords` VALUES ('1','1','d3d83cf4aae0c65dfa29eaa50fbf85e4aa3129f3f903081004cfc21f57b39db7:2ZSnQw1hBHcvyATeKw3I0B5JldFmDbgV:2','0','1677415468');
/*!40000 ALTER TABLE `admin_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_system_messages`
--

DROP TABLE IF EXISTS `admin_system_messages`;
CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message ID',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

--
-- Dumping data for table `admin_system_messages`
--

LOCK TABLES `admin_system_messages` WRITE;
/*!40000 ALTER TABLE `admin_system_messages` DISABLE KEYS */;
INSERT INTO `admin_system_messages` VALUES ('custom_system_notification',4,'2023-02-27 10:54:55');
/*!40000 ALTER TABLE `admin_system_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES ('1','Neeraj','R','neeraj@gloify.com','neeraj','d3d83cf4aae0c65dfa29eaa50fbf85e4aa3129f3f903081004cfc21f57b39db7:2ZSnQw1hBHcvyATeKw3I0B5JldFmDbgV:2','2023-02-26 12:44:28','2023-02-27 12:01:10','2023-02-27 11:59:36',8,0,1,'{\"configState\":{\"shopkartlitesettings_navigation_settings\":\"1\",\"shopkartlitesettings_footer_bottom\":\"1\",\"shopkartlitesettings_footer_columns\":\"1\",\"shopkartlitesettings_product_settings\":\"1\",\"shopkartlitesettings_htinformation\":\"1\",\"shopkartlitesettings_promotion_settings\":\"1\",\"shopkartlitesettings_category_settings\":\"1\",\"shopkartlitesettings_customcss\":\"0\",\"payment_other_checkmo\":\"0\",\"payment_other_free\":\"1\",\"payment_other_banktransfer\":\"1\",\"payment_other_cashondelivery\":\"1\",\"payment_other_purchaseorder\":\"0\",\"payment_other_other_paypal_payment_solutions\":\"1\",\"system_currency\":\"1\",\"system_smtp\":\"1\",\"system_cron\":\"1\",\"system_mysqlmq\":\"0\",\"system_adminnotification\":\"0\",\"system_backup\":\"1\",\"system_bulk\":\"0\",\"system_full_page_cache\":\"0\",\"system_media_storage_configuration\":\"0\",\"system_upload_configuration\":\"0\",\"admin_startup\":\"0\",\"admin_emails\":\"0\",\"admin_url\":\"0\",\"admin_security\":\"0\",\"admin_dashboard\":\"1\",\"payment_us_razorpay\":\"1\",\"payment_other_razorpay\":\"1\",\"payment_other_account\":\"1\",\"payment_other_recommended_solutions\":\"1\",\"payment_other_express_checkout_other\":\"0\",\"payment_other_paypal_group_all_in_one\":\"1\",\"payment_other_other_payment_methods\":\"1\",\"payment_other_deprecated_payment_methods\":\"1\",\"payment_other_authorizenet_directpost\":\"0\",\"payment_other_authorizenet_acceptjs\":\"0\",\"carriers_freeshipping\":\"1\"}}',NULL,NULL,'en_US',0,NULL,NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_session`
--

DROP TABLE IF EXISTS `admin_user_session`;
CREATE TABLE `admin_user_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `session_id` varchar(128) NOT NULL COMMENT 'Session ID value',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  KEY `ADMIN_USER_SESSION_USER_ID` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Admin User sessions table';

--
-- Dumping data for table `admin_user_session`
--

LOCK TABLES `admin_user_session` WRITE;
/*!40000 ALTER TABLE `admin_user_session` DISABLE KEYS */;
INSERT INTO `admin_user_session` VALUES ('1','96cj8ete9ap578ubvbbjq7h7gj','1',1,'2023-02-26 12:53:21','2023-02-26 13:04:23','::1'),('2','d4oe15db6fnsc5ompmbqi13i73','1',1,'2023-02-26 13:29:15','2023-02-26 15:36:58','::1'),('3','cifful7mr0084j40arn76tv0a8','1',1,'2023-02-26 18:39:20','2023-02-26 18:43:21','::1'),('4','crseu5r28oo6omm1h128j4oa8k','1',1,'2023-02-27 02:27:23','2023-02-27 02:47:18','::1'),('5','qrlo2nabp1nit6uc46q7otcse7','1',1,'2023-02-27 05:05:26','2023-02-27 05:33:45','::1'),('6','vritktgcquvoj257u7it7uiidk','1',1,'2023-02-27 06:57:55','2023-02-27 07:29:54','::1'),('7','ictdv46ki6iajaf81pmjrsjvj3','1',1,'2023-02-27 10:54:33','2023-02-27 10:58:48','::1'),('8','1hg3cv30hq64kmg8cspd635k48','1',1,'2023-02-27 11:59:36','2023-02-27 12:03:46','::1');
/*!40000 ALTER TABLE `admin_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminnotification_inbox`
--

DROP TABLE IF EXISTS `adminnotification_inbox`;
CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification ID',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Dumping data for table `adminnotification_inbox`
--

LOCK TABLES `adminnotification_inbox` WRITE;
/*!40000 ALTER TABLE `adminnotification_inbox` DISABLE KEYS */;
INSERT INTO `adminnotification_inbox` VALUES ('1',4,'2023-02-26 12:44:25','Deprecation Notice','Catalog Search is currently configured to use the MySQL engine, which has been deprecated. Consider migrating to one of\nthe Elasticsearch engines now to ensure there are no service interruptions during your next upgrade.','',1,0),('2',4,'2023-02-26 12:44:27','Disable Notice','To improve performance, collecting statistics for the Magento Report module is disabled by default. \nYou can enable it in System Config.','',1,0);
/*!40000 ALTER TABLE `adminnotification_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization_role`
--

DROP TABLE IF EXISTS `authorization_role`;
CREATE TABLE `authorization_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Dumping data for table `authorization_role`
--

LOCK TABLES `authorization_role` WRITE;
/*!40000 ALTER TABLE `authorization_role` DISABLE KEYS */;
INSERT INTO `authorization_role` VALUES ('1','0',1,1,'G','0','2','Administrators'),('2','1',2,0,'U','1','2','neeraj'),('3','0',1,0,'U','1','1','11');
/*!40000 ALTER TABLE `authorization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization_rule`
--

DROP TABLE IF EXISTS `authorization_rule`;
CREATE TABLE `authorization_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1310 DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Dumping data for table `authorization_rule`
--

LOCK TABLES `authorization_rule` WRITE;
/*!40000 ALTER TABLE `authorization_rule` DISABLE KEYS */;
INSERT INTO `authorization_rule` VALUES ('1','1','Magento_Backend::all',NULL,'allow'),('1092','3','Magento_Backend::all',NULL,'deny'),('1093','3','Magento_Backend::admin',NULL,'allow'),('1094','3','Magento_Backend::dashboard',NULL,'deny'),('1095','3','Magento_Analytics::analytics',NULL,'allow'),('1096','3','Magento_Analytics::analytics_api',NULL,'allow'),('1097','3','Magento_Sales::sales',NULL,'deny'),('1098','3','Magento_Sales::sales_operation',NULL,'deny'),('1099','3','Magento_Sales::sales_order',NULL,'deny'),('1100','3','Magento_Sales::actions',NULL,'deny'),('1101','3','Magento_Sales::create',NULL,'deny'),('1102','3','Magento_Sales::actions_view',NULL,'deny'),('1103','3','Magento_Sales::email',NULL,'deny'),('1104','3','Magento_Sales::reorder',NULL,'deny'),('1105','3','Magento_Sales::actions_edit',NULL,'deny'),('1106','3','Magento_Sales::cancel',NULL,'deny'),('1107','3','Magento_Sales::review_payment',NULL,'deny'),('1108','3','Magento_Sales::capture',NULL,'deny'),('1109','3','Magento_Sales::invoice',NULL,'deny'),('1110','3','Magento_Sales::creditmemo',NULL,'deny'),('1111','3','Magento_Sales::hold',NULL,'deny'),('1112','3','Magento_Sales::unhold',NULL,'deny'),('1113','3','Magento_Sales::ship',NULL,'deny'),('1114','3','Magento_Sales::comment',NULL,'deny'),('1115','3','Magento_Sales::emails',NULL,'deny'),('1116','3','Magento_Paypal::authorization',NULL,'deny'),('1117','3','Magento_Braintree::get_client_token',NULL,'deny'),('1118','3','Magento_Sales::sales_invoice',NULL,'deny'),('1119','3','Magento_Sales::shipment',NULL,'deny'),('1120','3','Magento_Sales::sales_creditmemo',NULL,'deny'),('1121','3','Magento_Paypal::billing_agreement',NULL,'deny'),('1122','3','Magento_Paypal::billing_agreement_actions',NULL,'deny'),('1123','3','Magento_Paypal::billing_agreement_actions_view',NULL,'deny'),('1124','3','Magento_Paypal::actions_manage',NULL,'deny'),('1125','3','Magento_Paypal::use',NULL,'deny'),('1126','3','Magento_Sales::transactions',NULL,'deny'),('1127','3','Magento_Sales::transactions_fetch',NULL,'deny'),('1128','3','Magento_Catalog::catalog',NULL,'deny'),('1129','3','Magento_Catalog::catalog_inventory',NULL,'deny'),('1130','3','Magento_Catalog::products',NULL,'deny'),('1131','3','Magento_Catalog::update_attributes',NULL,'deny'),('1132','3','Magento_Catalog::edit_product_design',NULL,'deny'),('1133','3','Magento_Catalog::categories',NULL,'deny'),('1134','3','Magento_Catalog::edit_category_design',NULL,'deny'),('1135','3','Magento_Customer::customer',NULL,'deny'),('1136','3','Magento_Customer::manage',NULL,'deny'),('1137','3','Magento_Customer::actions',NULL,'deny'),('1138','3','Magento_Customer::delete',NULL,'deny'),('1139','3','Magento_Customer::reset_password',NULL,'deny'),('1140','3','Magento_Customer::invalidate_tokens',NULL,'deny'),('1141','3','Magento_Customer::online',NULL,'deny'),('1142','3','Magento_Customer::group',NULL,'deny'),('1143','3','Magento_Cart::cart',NULL,'deny'),('1144','3','Magento_Cart::manage',NULL,'deny'),('1145','3','Magento_Backend::myaccount',NULL,'deny'),('1146','3','Magento_Backend::marketing',NULL,'deny'),('1147','3','Magento_CatalogRule::promo',NULL,'deny'),('1148','3','Magento_CatalogRule::promo_catalog',NULL,'deny'),('1149','3','Magento_SalesRule::quote',NULL,'deny'),('1150','3','Magento_Backend::marketing_communications',NULL,'deny'),('1151','3','Magento_Email::template',NULL,'deny'),('1152','3','Magento_Newsletter::template',NULL,'deny'),('1153','3','Magento_Newsletter::queue',NULL,'deny'),('1154','3','Magento_Newsletter::subscriber',NULL,'deny'),('1155','3','Magento_Backend::marketing_seo',NULL,'deny'),('1156','3','Magento_Search::search',NULL,'deny'),('1157','3','Magento_Search::synonyms',NULL,'deny'),('1158','3','Magento_UrlRewrite::urlrewrite',NULL,'deny'),('1159','3','Magento_Sitemap::sitemap',NULL,'deny'),('1160','3','Magento_Backend::marketing_user_content',NULL,'deny'),('1161','3','Magento_Review::reviews_all',NULL,'deny'),('1162','3','Magento_Review::pending',NULL,'deny'),('1163','3','Magento_Backend::content',NULL,'deny'),('1164','3','Magento_Backend::content_elements',NULL,'deny'),('1165','3','Magento_Cms::page',NULL,'deny'),('1166','3','Magento_Cms::save',NULL,'deny'),('1167','3','Magento_Cms::save_design',NULL,'deny'),('1168','3','Magento_Cms::page_delete',NULL,'deny'),('1169','3','Magento_Cms::block',NULL,'deny'),('1170','3','Magento_Widget::widget_instance',NULL,'deny'),('1171','3','Magento_Cms::media_gallery',NULL,'deny'),('1172','3','Magento_Backend::design',NULL,'deny'),('1173','3','Magento_Theme::theme',NULL,'deny'),('1174','3','Magento_Backend::schedule',NULL,'deny'),('1175','3','Magento_Backend::content_translation',NULL,'deny'),('1176','3','Magento_Reports::report',NULL,'deny'),('1177','3','Magento_Reports::report_marketing',NULL,'deny'),('1178','3','Magento_Reports::shopcart',NULL,'deny'),('1179','3','Magento_Reports::product',NULL,'deny'),('1180','3','Magento_Reports::abandoned',NULL,'deny'),('1181','3','Magento_Reports::report_search',NULL,'deny'),('1182','3','Magento_Newsletter::problem',NULL,'deny'),('1183','3','Magento_Reports::review',NULL,'deny'),('1184','3','Magento_Reports::review_customer',NULL,'deny'),('1185','3','Magento_Reports::review_product',NULL,'deny'),('1186','3','Magento_Reports::salesroot',NULL,'deny'),('1187','3','Magento_Reports::salesroot_sales',NULL,'deny'),('1188','3','Magento_Reports::tax',NULL,'deny'),('1189','3','Magento_Reports::invoiced',NULL,'deny'),('1190','3','Magento_Reports::shipping',NULL,'deny'),('1191','3','Magento_Reports::refunded',NULL,'deny'),('1192','3','Magento_Reports::coupons',NULL,'deny'),('1193','3','Magento_Paypal::paypal_settlement_reports',NULL,'deny'),('1194','3','Magento_Paypal::paypal_settlement_reports_view',NULL,'deny'),('1195','3','Magento_Paypal::fetch',NULL,'deny'),('1196','3','Magento_Braintree::settlement_report',NULL,'deny'),('1197','3','Magento_Reports::customers',NULL,'deny'),('1198','3','Magento_Reports::totals',NULL,'deny'),('1199','3','Magento_Reports::customers_orders',NULL,'deny'),('1200','3','Magento_Reports::accounts',NULL,'deny'),('1201','3','Magento_Reports::report_products',NULL,'deny'),('1202','3','Magento_Reports::viewed',NULL,'deny'),('1203','3','Magento_Reports::bestsellers',NULL,'deny'),('1204','3','Magento_Reports::lowstock',NULL,'deny'),('1205','3','Magento_Reports::sold',NULL,'deny'),('1206','3','Magento_Reports::downloads',NULL,'deny'),('1207','3','Magento_Reports::statistics',NULL,'deny'),('1208','3','Magento_Reports::statistics_refresh',NULL,'deny'),('1209','3','Magento_Analytics::business_intelligence',NULL,'deny'),('1210','3','Magento_Analytics::advanced_reporting',NULL,'deny'),('1211','3','Magento_Analytics::bi_essentials',NULL,'deny'),('1212','3','Magento_Backend::stores',NULL,'deny'),('1213','3','Magento_Backend::stores_settings',NULL,'deny'),('1214','3','Magento_Backend::store',NULL,'deny'),('1215','3','Magento_Config::config',NULL,'deny'),('1216','3','Magento_Contact::contact',NULL,'deny'),('1217','3','Magento_Cms::config_cms',NULL,'deny'),('1218','3','Magento_Newsletter::newsletter',NULL,'deny'),('1219','3','Magento_GoogleAnalytics::google',NULL,'deny'),('1220','3','Magento_Downloadable::downloadable',NULL,'deny'),('1221','3','Magento_Payment::payment_services',NULL,'deny'),('1222','3','Magento_CatalogInventory::cataloginventory',NULL,'deny'),('1223','3','Magento_Catalog::config_catalog',NULL,'deny'),('1224','3','Magento_CatalogSearch::config_catalog_search',NULL,'deny'),('1225','3','Magento_Payment::payment',NULL,'deny'),('1226','3','Magento_Sales::fraud_protection',NULL,'deny'),('1227','3','Magento_Shipping::carriers',NULL,'deny'),('1228','3','Magento_Shipping::config_shipping',NULL,'deny'),('1229','3','Magento_Shipping::shipping_policy',NULL,'deny'),('1230','3','Magento_Multishipping::config_multishipping',NULL,'deny'),('1231','3','Magento_Config::config_general',NULL,'deny'),('1232','3','Magento_Config::web',NULL,'deny'),('1233','3','Magento_Config::config_design',NULL,'deny'),('1234','3','Magento_Customer::config_customer',NULL,'deny'),('1235','3','Magento_Paypal::paypal',NULL,'deny'),('1236','3','Magento_Tax::config_tax',NULL,'deny'),('1237','3','Magento_Checkout::checkout',NULL,'deny'),('1238','3','Magento_Sales::config_sales',NULL,'deny'),('1239','3','Magento_Persistent::persistent',NULL,'deny'),('1240','3','Magento_Sales::sales_email',NULL,'deny'),('1241','3','Magento_Sales::sales_pdf',NULL,'deny'),('1242','3','Magento_Sitemap::config_sitemap',NULL,'deny'),('1243','3','Magento_Reports::reports',NULL,'deny'),('1244','3','Magento_Wishlist::config_wishlist',NULL,'deny'),('1245','3','Magento_Config::config_system',NULL,'deny'),('1246','3','Magento_SalesRule::config_promo',NULL,'deny'),('1247','3','Magento_Config::trans_email',NULL,'deny'),('1248','3','Magento_Config::config_admin',NULL,'deny'),('1249','3','Magento_Config::dev',NULL,'deny'),('1250','3','Magento_Config::currency',NULL,'deny'),('1251','3','Magento_Rss::rss',NULL,'deny'),('1252','3','Magento_Config::sendfriend',NULL,'deny'),('1253','3','Magento_Analytics::analytics_settings',NULL,'deny'),('1254','3','Magento_NewRelicReporting::config_newrelicreporting',NULL,'deny'),('1255','3','Magento_CheckoutAgreements::checkoutagreement',NULL,'deny'),('1256','3','Magento_Sales::order_statuses',NULL,'deny'),('1257','3','Magento_Tax::manage_tax',NULL,'deny'),('1258','3','Magento_CurrencySymbol::system_currency',NULL,'deny'),('1259','3','Magento_CurrencySymbol::currency_rates',NULL,'deny'),('1260','3','Magento_CurrencySymbol::symbols',NULL,'deny'),('1261','3','Magento_Backend::stores_attributes',NULL,'deny'),('1262','3','Magento_Catalog::attributes_attributes',NULL,'deny'),('1263','3','Magento_Catalog::sets',NULL,'deny'),('1264','3','Magento_Review::ratings',NULL,'deny'),('1265','3','Magento_Swatches::iframe',NULL,'deny'),('1266','3','Magento_Backend::stores_other_settings',NULL,'deny'),('1267','3','Magento_Backend::system',NULL,'deny'),('1268','3','Magento_Backend::convert',NULL,'deny'),('1269','3','Magento_ImportExport::import',NULL,'deny'),('1270','3','Magento_ImportExport::export',NULL,'deny'),('1271','3','Magento_TaxImportExport::import_export',NULL,'deny'),('1272','3','Magento_ImportExport::history',NULL,'deny'),('1273','3','Magento_Backend::extensions',NULL,'deny'),('1274','3','Magento_Backend::local',NULL,'deny'),('1275','3','Magento_Backend::custom',NULL,'deny'),('1276','3','Magento_Integration::extensions',NULL,'deny'),('1277','3','Magento_Integration::integrations',NULL,'deny'),('1278','3','Magento_Backend::tools',NULL,'deny'),('1279','3','Magento_Backend::cache',NULL,'deny'),('1280','3','Magento_Backend::main_actions',NULL,'deny'),('1281','3','Magento_Backend::flush_cache_storage',NULL,'deny'),('1282','3','Magento_Backend::flush_magento_cache',NULL,'deny'),('1283','3','Magento_Backend::mass_actions',NULL,'deny'),('1284','3','Magento_Backend::toggling_cache_type',NULL,'deny'),('1285','3','Magento_Backend::refresh_cache_type',NULL,'deny'),('1286','3','Magento_Backend::additional_cache_management',NULL,'deny'),('1287','3','Magento_Backend::flush_catalog_images',NULL,'deny'),('1288','3','Magento_Backend::flush_js_css',NULL,'deny'),('1289','3','Magento_Backend::flush_static_files',NULL,'deny'),('1290','3','Magento_Backup::backup',NULL,'deny'),('1291','3','Magento_Backup::rollback',NULL,'deny'),('1292','3','Magento_Indexer::index',NULL,'deny'),('1293','3','Magento_Indexer::changeMode',NULL,'deny'),('1294','3','Magento_User::acl',NULL,'deny'),('1295','3','Magento_User::acl_users',NULL,'deny'),('1296','3','Magento_User::locks',NULL,'deny'),('1297','3','Magento_User::acl_roles',NULL,'deny'),('1298','3','Magento_Logging::magento_logging',NULL,'deny'),('1299','3','Magento_Logging::magento_logging_events',NULL,'deny'),('1300','3','Magento_Logging::system_magento_logging_bulk_operations',NULL,'deny'),('1301','3','Magento_Backend::system_other_settings',NULL,'deny'),('1302','3','Magento_AdminNotification::adminnotification',NULL,'deny'),('1303','3','Magento_AdminNotification::show_toolbar',NULL,'deny'),('1304','3','Magento_AdminNotification::show_list',NULL,'deny'),('1305','3','Magento_AdminNotification::mark_as_read',NULL,'deny'),('1306','3','Magento_AdminNotification::adminnotification_remove',NULL,'deny'),('1307','3','Magento_Variable::variable',NULL,'deny'),('1308','3','Magento_EncryptionKey::crypt_key',NULL,'deny'),('1309','3','Magento_Backend::global_search',NULL,'deny');
/*!40000 ALTER TABLE `authorization_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

--
-- Table structure for table `cache_tag`
--

DROP TABLE IF EXISTS `cache_tag`;
CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

--
-- Table structure for table `captcha_log`
--

DROP TABLE IF EXISTS `captcha_log`;
CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

--
-- Table structure for table `catalog_category_entity`
--

DROP TABLE IF EXISTS `catalog_category_entity`;
CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `CATALOG_CATEGORY_ENTITY_PATH` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

LOCK TABLES `catalog_category_entity` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity` DISABLE KEYS */;
INSERT INTO `catalog_category_entity` VALUES ('1',3,'0','2023-02-26 12:44:24','2023-02-26 15:32:09','1','0','0','10'),('2',3,'1','2023-02-26 12:44:25','2023-02-26 15:32:09','1/2','1','1','9'),('3',3,'2','2023-02-26 13:35:39','2023-02-26 14:56:21','1/2/3','1','2','2'),('5',3,'2','2023-02-26 13:36:33','2023-02-26 13:49:48','1/2/5','2','2','2'),('6',3,'2','2023-02-26 13:38:36','2023-02-26 15:32:09','1/2/6','3','2','2'),('7',3,'5','2023-02-26 13:49:19','2023-02-26 13:49:19','1/2/5/7','1','3','0'),('8',3,'5','2023-02-26 13:49:48','2023-02-26 13:49:48','1/2/5/8','2','3','0'),('9',3,'3','2023-02-26 14:04:17','2023-02-26 14:04:17','1/2/3/9','1','3','0'),('10',3,'3','2023-02-26 14:56:21','2023-02-26 14:56:21','1/2/3/10','2','3','0'),('11',3,'6','2023-02-26 15:31:52','2023-02-26 15:32:20','1/2/6/11','1','3','0'),('12',3,'6','2023-02-26 15:32:09','2023-02-26 15:32:09','1/2/6/12','2','3','0');
/*!40000 ALTER TABLE `catalog_category_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_category_entity_datetime`;
CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_datetime`
--

LOCK TABLES `catalog_category_entity_datetime` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_datetime` VALUES ('1',61,0,'11',NULL),('2',62,0,'11',NULL);
/*!40000 ALTER TABLE `catalog_category_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_category_entity_decimal`;
CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(20,6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

--
-- Table structure for table `catalog_category_entity_int`
--

DROP TABLE IF EXISTS `catalog_category_entity_int`;
CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_int`
--

LOCK TABLES `catalog_category_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_int` VALUES ('1',69,0,'1','1'),('2',46,0,'2','1'),('3',69,0,'2','1'),('4',46,0,'3','1'),('5',54,0,'3','1'),('6',69,0,'3','1'),('7',70,0,'3','0'),('8',71,0,'3','0'),('14',46,0,'5','1'),('15',54,0,'5','1'),('16',69,0,'5','1'),('17',70,0,'5','0'),('18',71,0,'5','0'),('19',46,0,'6','1'),('20',54,0,'6','1'),('21',69,0,'6','1'),('22',70,0,'6','0'),('23',71,0,'6','0'),('24',46,0,'7','1'),('25',54,0,'7','1'),('26',69,0,'7','1'),('27',70,0,'7','0'),('28',71,0,'7','0'),('29',46,0,'8','1'),('30',54,0,'8','1'),('31',69,0,'8','1'),('32',70,0,'8','0'),('33',71,0,'8','0'),('34',46,0,'9','1'),('35',54,0,'9','1'),('36',69,0,'9','1'),('37',70,0,'9','0'),('38',71,0,'9','0'),('39',46,0,'10','1'),('40',54,0,'10','1'),('41',69,0,'10','1'),('42',46,0,'11','1'),('43',54,0,'11','1'),('44',69,0,'11','1'),('45',70,0,'11','0'),('46',71,0,'11','0'),('47',46,0,'12','1'),('48',54,0,'12','1'),('49',69,0,'12','1'),('50',70,0,'12','0'),('51',71,0,'12','0'),('52',53,0,'11',NULL);
/*!40000 ALTER TABLE `catalog_category_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_text`
--

DROP TABLE IF EXISTS `catalog_category_entity_text`;
CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_text`
--

LOCK TABLES `catalog_category_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_text` VALUES ('1',47,0,'11',NULL),('2',50,0,'11',NULL),('3',51,0,'11',NULL);
/*!40000 ALTER TABLE `catalog_category_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_category_entity_varchar`;
CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_varchar`
--

LOCK TABLES `catalog_category_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_varchar` VALUES ('1',45,0,'1','Root Catalog'),('2',45,0,'2','Default Category'),('3',52,0,'2','PRODUCTS'),('4',45,0,'3','Mens'),('5',52,0,'3','PRODUCTS'),('6',121,0,'3','mens'),('7',122,0,'3','mens'),('12',45,0,'5','Womens'),('13',52,0,'5','PRODUCTS'),('14',121,0,'5','womens'),('15',122,0,'5','womens'),('16',45,0,'6','Kids'),('17',52,0,'6','PRODUCTS'),('18',121,0,'6','kids'),('19',122,0,'6','kids'),('20',45,0,'7','Bridal'),('21',52,0,'7','PRODUCTS'),('22',121,0,'7','bridal'),('23',122,0,'7','womens/bridal'),('24',45,0,'8','Western wear'),('25',52,0,'8','PRODUCTS'),('26',121,0,'8','western-wear'),('27',122,0,'8','womens/western-wear'),('28',45,0,'9','Shirts'),('29',52,0,'9','PRODUCTS'),('30',121,0,'9','shirts'),('31',122,0,'9','mens/shirts'),('32',45,0,'10','Ethnic Wear'),('33',121,0,'10','ethnic-wear'),('34',122,0,'10','mens/ethnic-wear'),('35',45,0,'11','Boys'),('36',52,0,'11','PRODUCTS'),('37',121,0,'11','boy'),('38',122,0,'11','kids/boy'),('39',45,0,'12','Girls'),('40',52,0,'12','PRODUCTS'),('41',121,0,'12','girls'),('42',122,0,'12','kids/girls'),('44',48,0,'11',NULL),('45',49,0,'11',NULL),('46',60,0,'11',NULL),('47',63,0,'11',NULL);
/*!40000 ALTER TABLE `catalog_category_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product`
--

DROP TABLE IF EXISTS `catalog_category_product`;
CREATE TABLE `catalog_category_product` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

LOCK TABLES `catalog_category_product` WRITE;
/*!40000 ALTER TABLE `catalog_category_product` DISABLE KEYS */;
INSERT INTO `catalog_category_product` VALUES ('1','7','1','0'),('2','9','2','0'),('3','9','3','0'),('4','9','4','0'),('5','9','5','0'),('6','10','6','0'),('7','7','7','0'),('8','12','8','0');
/*!40000 ALTER TABLE `catalog_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index`
--

DROP TABLE IF EXISTS `catalog_category_product_index`;
CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Table structure for table `catalog_category_product_index_replica`
--

DROP TABLE IF EXISTS `catalog_category_product_index_replica`;
CREATE TABLE `catalog_category_product_index_replica` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Table structure for table `catalog_category_product_index_store1`
--

DROP TABLE IF EXISTS `catalog_category_product_index_store1`;
CREATE TABLE `catalog_category_product_index_store1` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_4B965DC45C352D6E4C9DC0FF50B1FCF5` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_47AB760CD6A893ACEA69A9C2E0112C60` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index Store1 Replica';

--
-- Dumping data for table `catalog_category_product_index_store1`
--

LOCK TABLES `catalog_category_product_index_store1` WRITE;
/*!40000 ALTER TABLE `catalog_category_product_index_store1` DISABLE KEYS */;
INSERT INTO `catalog_category_product_index_store1` VALUES ('2','1','0',1,1,4),('2','5','0',1,1,4),('2','6','0',1,1,4),('2','7','0',1,1,4),('2','8','0',1,1,4),('3','5','10000',0,1,4),('3','6','10000',0,1,4),('5','1','10000',0,1,4),('5','7','10000',0,1,4),('6','8','10000',0,1,4),('7','1','0',1,1,4),('7','7','0',1,1,4),('9','5','0',1,1,4),('10','6','0',1,1,4),('12','8','0',1,1,4);
/*!40000 ALTER TABLE `catalog_category_product_index_store1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index_store1_replica`
--

DROP TABLE IF EXISTS `catalog_category_product_index_store1_replica`;
CREATE TABLE `catalog_category_product_index_store1_replica` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_STORE1_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_216E521C8AD125E066D2B0BAB4A08412` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index Store1';

--
-- Dumping data for table `catalog_category_product_index_store1_replica`
--

LOCK TABLES `catalog_category_product_index_store1_replica` WRITE;
/*!40000 ALTER TABLE `catalog_category_product_index_store1_replica` DISABLE KEYS */;
INSERT INTO `catalog_category_product_index_store1_replica` VALUES ('2','1','0',1,1,4),('2','5','0',1,1,4),('3','5','10000',0,1,4),('5','1','10000',0,1,4),('7','1','0',1,1,4),('9','5','0',1,1,4);
/*!40000 ALTER TABLE `catalog_category_product_index_store1_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index_tmp`
--

DROP TABLE IF EXISTS `catalog_category_product_index_tmp`;
CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer temporary table';

--
-- Table structure for table `catalog_compare_item`
--

DROP TABLE IF EXISTS `catalog_compare_item`;
CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

--
-- Table structure for table `catalog_eav_attribute`
--

DROP TABLE IF EXISTS `catalog_eav_attribute`;
CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data',
  PRIMARY KEY (`attribute_id`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

LOCK TABLES `catalog_eav_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_eav_attribute` DISABLE KEYS */;
INSERT INTO `catalog_eav_attribute` VALUES (45,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(46,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(47,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,0,'0',1,0,0,0,0,0,'1',NULL),(48,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(49,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(50,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(51,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(52,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(53,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(54,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(55,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(56,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(57,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(58,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(59,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(60,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(61,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(62,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(63,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(64,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(65,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(66,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(67,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(68,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(69,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(70,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(71,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(72,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(73,NULL,0,1,1,0,0,0,0,0,0,1,1,NULL,1,'0',0,0,0,0,0,0,'5',NULL),(74,NULL,1,1,1,0,1,0,0,0,0,0,0,NULL,1,'0',0,0,0,0,0,0,'6',NULL),(75,NULL,0,1,1,0,1,0,1,0,0,0,0,NULL,1,'0',1,0,0,0,0,0,'1',NULL),(76,NULL,0,1,1,0,1,0,1,0,0,1,0,NULL,1,'0',1,0,0,1,0,0,'1',NULL),(77,NULL,1,1,1,1,0,0,0,0,0,1,1,'simple,virtual,configurable,downloadable,bundle',1,'0',0,0,0,0,0,0,'1',NULL),(78,NULL,1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,configurable,downloadable,bundle',0,'0',0,0,0,1,0,1,'1',NULL),(79,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,configurable,downloadable,bundle',0,'0',0,0,0,1,0,0,'1',NULL),(80,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,configurable,downloadable,bundle',0,'0',0,0,0,1,0,0,'1',NULL),(81,NULL,1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable',0,'0',0,0,0,1,0,1,'1',NULL),(82,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight',1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,configurable,downloadable,bundle',0,'0',0,0,0,1,0,1,'1',NULL),(83,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple,configurable',1,'0',0,0,0,1,0,1,'1',NULL),(84,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(85,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(86,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(87,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(88,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(89,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(90,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(91,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(92,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable,bundle',0,'0',0,0,0,0,0,0,'1',NULL),(93,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple,virtual,configurable',1,'0',0,0,0,1,0,1,'1',NULL),(94,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(95,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(96,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(97,'Magento\\Framework\\Data\\Form\\Element\\Hidden',2,1,1,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,1,0,0,0,'1',NULL),(98,NULL,0,0,0,0,0,0,0,0,0,0,0,'simple,virtual,configurable,downloadable,bundle',0,'0',0,0,0,0,0,0,'1',NULL),(99,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,1,0,0,0,'1',NULL),(100,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(101,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(102,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(103,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(104,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(105,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(106,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(107,NULL,1,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(108,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(109,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(110,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(111,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(112,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(113,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(114,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,bundle,configurable,grouped',0,'0',0,0,0,1,0,1,'1',NULL),(115,'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(116,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(117,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(118,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(119,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type',1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(120,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price',2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(121,NULL,0,1,1,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(122,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(123,NULL,0,1,1,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(124,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(125,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(126,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(127,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(128,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(129,'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(130,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(131,NULL,1,1,0,0,0,0,0,0,0,0,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(132,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(133,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(134,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(135,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(136,NULL,2,1,1,0,0,0,0,0,0,1,0,'simple,virtual,configurable,downloadable,bundle',0,'0',0,0,0,1,0,1,'1',NULL),(137,NULL,1,1,0,0,0,0,0,0,0,1,0,'simple,configurable,virtual,bundle,downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(138,NULL,0,1,0,0,0,1,0,0,1,1,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(139,NULL,0,1,0,0,0,1,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL);
/*!40000 ALTER TABLE `catalog_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_bundle_option`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option`;
CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

--
-- Table structure for table `catalog_product_bundle_option_value`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option_value`;
CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_BNDL_OPT_VAL_OPT_ID_PARENT_PRD_ID_STORE_ID` (`option_id`,`parent_product_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

--
-- Table structure for table `catalog_product_bundle_price_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_price_index`;
CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `min_price` decimal(20,6) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

--
-- Table structure for table `catalog_product_bundle_selection`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection`;
CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection ID',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option ID',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection_price`;
CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Selection Price Value',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product ID',
  PRIMARY KEY (`selection_id`,`parent_product_id`,`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_stock_index`;
CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

--
-- Table structure for table `catalog_product_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity`;
CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Dumping data for table `catalog_product_entity`
--

LOCK TABLES `catalog_product_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity` VALUES ('1',4,'simple','NAK00001',1,1,'2023-02-26 13:54:33','2023-02-27 02:45:45'),('2',4,'virtual','NAK00002-Black',0,0,'2023-02-26 14:08:34','2023-02-26 14:08:34'),('3',4,'virtual','NAK00002-white',0,0,'2023-02-26 14:08:40','2023-02-26 14:08:40'),('4',4,'virtual','NAK00002-Navy blue',0,0,'2023-02-26 14:08:45','2023-02-26 14:08:45'),('5',4,'configurable','NAK00002',1,1,'2023-02-26 14:08:48','2023-02-26 14:23:25'),('6',4,'simple','NAK00003',1,1,'2023-02-26 14:57:48','2023-02-26 15:00:35'),('7',4,'simple','NAK00004',1,1,'2023-02-26 15:17:39','2023-02-27 02:45:09'),('8',4,'simple','NAK00005',0,0,'2023-02-26 15:36:43','2023-02-26 15:36:43');
/*!40000 ALTER TABLE `catalog_product_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_product_entity_datetime`;
CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Table structure for table `catalog_product_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_product_entity_decimal`;
CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(20,6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_decimal`
--

LOCK TABLES `catalog_product_entity_decimal` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_decimal` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_decimal` VALUES ('1',77,0,'1','49999.000000'),('2',77,0,'2','599.000000'),('3',77,0,'3','599.000000'),('4',77,0,'4','599.000000'),('5',77,0,'6','5999.000000'),('6',77,0,'7','29999.000000'),('7',77,0,'8','2599.000000');
/*!40000 ALTER TABLE `catalog_product_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_gallery`;
CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

--
-- Table structure for table `catalog_product_entity_int`
--

DROP TABLE IF EXISTS `catalog_product_entity_int`;
CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID_STORE_ID_VALUE` (`attribute_id`,`store_id`,`value`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_int`
--

LOCK TABLES `catalog_product_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_int` VALUES ('1',97,0,'1','1'),('2',99,0,'1','4'),('3',136,0,'1','2'),('4',137,0,'1','1'),('5',93,0,'2','4'),('6',97,0,'2','1'),('7',99,0,'2','1'),('8',136,0,'2','2'),('9',137,0,'2','1'),('10',93,0,'3','5'),('11',97,0,'3','1'),('12',99,0,'3','1'),('13',136,0,'3','2'),('14',137,0,'3','1'),('15',93,0,'4','6'),('16',97,0,'4','1'),('17',99,0,'4','1'),('18',136,0,'4','2'),('19',137,0,'4','1'),('20',97,0,'5','1'),('21',99,0,'5','4'),('22',136,0,'5','2'),('23',137,0,'5','1'),('24',138,0,'5',NULL),('25',138,0,'1','9'),('26',97,0,'6','1'),('27',99,0,'6','4'),('28',136,0,'6','2'),('29',137,0,'6','1'),('30',138,0,'6','9'),('31',97,0,'7','1'),('32',99,0,'7','4'),('33',136,0,'7','2'),('34',137,0,'7','1'),('35',138,0,'7','9'),('36',97,0,'8','1'),('37',99,0,'8','4'),('38',136,0,'8','2'),('39',137,0,'8','0'),('40',138,0,'8','9');
/*!40000 ALTER TABLE `catalog_product_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery`;
CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility status',
  PRIMARY KEY (`value_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

LOCK TABLES `catalog_product_entity_media_gallery` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery` VALUES ('1',90,'/b/r/bridal_1.jpg','image',0),('2',90,'/b/r/bridal_2.jpg','image',0),('3',90,'/b/l/black_1_1.jpg','image',0),('4',90,'/b/l/black_3_1.jpg','image',0),('5',90,'/b/l/black_2_1.jpg','image',0),('6',90,'/w/h/white_1_1__1.jpg','image',0),('7',90,'/m/-/m-frml-st2-vebnor-original-imag6bk3hhqgfmpp_1.jpg','image',0),('8',90,'/w/h/white_2_1__1.jpg','image',0),('9',90,'/b/l/blue_1_1.jpg','image',0),('10',90,'/b/l/blue_2_1.jpg','image',0),('12',90,'/b/l/black_2_1_2.jpg','image',0),('13',90,'/k/u/kurtha_1.jpeg','image',0),('14',90,'/k/u/kurtha_2.jpg','image',0),('15',90,'/k/u/kurtha_3.jpg','image',0),('16',90,'/k/u/kurtha_4.jpg','image',0),('17',90,'/l/e/lehenga_1.jpeg','image',0),('18',90,'/l/e/lehenga_2.jpeg','image',0),('19',90,'/k/i/kid_green_1.jpg','image',0),('20',90,'/k/i/kid_green_2.jpg','image',0);
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value`;
CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record ID',
  PRIMARY KEY (`record_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_VAL_ID_STORE_ID` (`entity_id`,`value_id`,`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

LOCK TABLES `catalog_product_entity_media_gallery_value` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value` VALUES ('3',0,'2',NULL,'1',0,'3'),('4',0,'2',NULL,'2',0,'4'),('5',0,'2',NULL,'3',0,'5'),('6',0,'3',NULL,'1',0,'6'),('7',0,'3',NULL,'2',0,'7'),('8',0,'3',NULL,'3',0,'8'),('9',0,'4',NULL,'1',0,'9'),('10',0,'4',NULL,'2',0,'10'),('12',0,'5',NULL,'3',0,'14'),('13',0,'6',NULL,'1',0,'21'),('14',0,'6',NULL,'2',0,'22'),('15',0,'6',NULL,'3',0,'23'),('16',0,'6',NULL,'4',0,'24'),('19',0,'8',NULL,'1',0,'27'),('20',0,'8',NULL,'2',0,'28'),('17',0,'7',NULL,'1',0,'29'),('18',0,'7',NULL,'2',0,'30'),('1',0,'1',NULL,'1',0,'31'),('2',0,'1',NULL,'2',0,'32');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value_to_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_to_entity`;
CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Product Entity ID',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value_to_entity`
--

LOCK TABLES `catalog_product_entity_media_gallery_value_to_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value_to_entity` VALUES ('1','1'),('2','1'),('3','2'),('4','2'),('5','2'),('6','3'),('7','3'),('8','3'),('9','4'),('10','4'),('12','5'),('13','6'),('14','6'),('15','6'),('16','6'),('17','7'),('18','7'),('19','8'),('20','8');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value_video`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_video`;
CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';

--
-- Table structure for table `catalog_product_entity_text`
--

DROP TABLE IF EXISTS `catalog_product_entity_text`;
CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_text`
--

LOCK TABLES `catalog_product_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_text` VALUES ('1',85,0,'1','Designer Light Blue Net Lehenga'),('2',85,0,'2','Men Regular Fit Solid Button Down Collar Formal Shirt'),('3',85,0,'3','Men Regular Fit Solid Button Down Collar Formal Shirt'),('4',85,0,'4','Men Regular Fit Solid Button Down Collar Formal Shirt'),('5',85,0,'5','Men Regular Fit Solid Button Down Collar Formal Shirt'),('6',85,0,'6','Floral Kurta in Maroon & Black'),('7',85,0,'7','Floral Pattern Lehenga Choli'),('8',85,0,'8','Cotton Shirt and Pants Set for Kids | Green');
/*!40000 ALTER TABLE `catalog_product_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_entity_tier_price`;
CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `percentage_value` decimal(5,2) DEFAULT NULL COMMENT 'Percentage value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

--
-- Table structure for table `catalog_product_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_product_entity_varchar`;
CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_varchar`
--

LOCK TABLES `catalog_product_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_varchar` VALUES ('1',73,0,'1','Designer Light Blue Net Lehenga'),('2',84,0,'1','Designer Light Blue Net Lehenga'),('3',86,0,'1','Designer Light Blue Net Lehenga '),('4',87,0,'1','/b/r/bridal_1.jpg'),('5',88,0,'1','/b/r/bridal_1.jpg'),('6',89,0,'1','/b/r/bridal_1.jpg'),('7',106,0,'1','container2'),('8',114,0,'1','IN'),('9',120,0,'1','0'),('10',123,0,'1','designer-light-blue-net-lehenga'),('11',129,0,'1','2'),('12',135,0,'1','/b/r/bridal_1.jpg'),('17',73,0,'2','Men Regular Fit Solid Button Down Collar Formal Shirt-Black'),('18',84,0,'2','Men Regular Fit Solid Button Down Collar Formal Shirt'),('19',86,0,'2','Men Regular Fit Solid Button Down Collar Formal Shirt '),('20',87,0,'2','/b/l/black_1_1.jpg'),('21',88,0,'2','/b/l/black_1_1.jpg'),('22',89,0,'2','/b/l/black_1_1.jpg'),('23',106,0,'2','container2'),('24',123,0,'2','men-regular-fit-solid-button-down-collar-formal-shirt-black'),('25',129,0,'2','0'),('26',135,0,'2','/b/l/black_1_1.jpg'),('31',73,0,'3','Men Regular Fit Solid Button Down Collar Formal Shirt-white'),('32',84,0,'3','Men Regular Fit Solid Button Down Collar Formal Shirt'),('33',86,0,'3','Men Regular Fit Solid Button Down Collar Formal Shirt '),('34',87,0,'3','/w/h/white_1_1__1.jpg'),('35',88,0,'3','/w/h/white_1_1__1.jpg'),('36',89,0,'3','/w/h/white_1_1__1.jpg'),('37',106,0,'3','container2'),('38',123,0,'3','men-regular-fit-solid-button-down-collar-formal-shirt-white'),('39',129,0,'3','0'),('40',135,0,'3','/w/h/white_1_1__1.jpg'),('45',73,0,'4','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue'),('46',84,0,'4','Men Regular Fit Solid Button Down Collar Formal Shirt'),('47',86,0,'4','Men Regular Fit Solid Button Down Collar Formal Shirt '),('48',87,0,'4','/b/l/blue_1_1.jpg'),('49',88,0,'4','/b/l/blue_1_1.jpg'),('50',89,0,'4','/b/l/blue_1_1.jpg'),('51',106,0,'4','container2'),('52',123,0,'4','men-regular-fit-solid-button-down-collar-formal-shirt-navy-blue'),('53',129,0,'4','0'),('54',135,0,'4','/b/l/blue_1_1.jpg'),('59',73,0,'5','Men Regular Fit Solid Button Down Collar Formal Shirt'),('60',84,0,'5','Men Regular Fit Solid Button Down Collar Formal Shirt'),('61',86,0,'5','Men Regular Fit Solid Button Down Collar Formal Shirt '),('62',106,0,'5','container2'),('63',114,0,'5','IN'),('64',120,0,'5','0'),('65',123,0,'5','men-regular-fit-solid-button-down-collar-formal-shirt'),('66',129,0,'5','1'),('67',87,0,'5','/b/l/black_2_1_2.jpg'),('68',88,0,'5','/b/l/black_2_1_2.jpg'),('69',89,0,'5','/b/l/black_2_1_2.jpg'),('79',139,0,'5','Pure Cotton'),('87',73,0,'6','Floral Kurta in Maroon & Black'),('88',84,0,'6','Floral Kurta in Maroon & Black'),('89',86,0,'6','Floral Kurta in Maroon & Black '),('90',87,0,'6','/k/u/kurtha_1.jpeg'),('91',88,0,'6','/k/u/kurtha_1.jpeg'),('92',89,0,'6','/k/u/kurtha_1.jpeg'),('93',106,0,'6','container2'),('94',114,0,'6','IN'),('95',120,0,'6','0'),('96',123,0,'6','floral-kurta-in-maroon-black'),('97',129,0,'6','2'),('98',135,0,'6','/k/u/kurtha_1.jpeg'),('107',73,0,'7','Floral Pattern Lehenga Choli'),('108',84,0,'7','Floral Pattern Lehenga Choli'),('109',86,0,'7','Floral Pattern Lehenga Choli '),('110',87,0,'7','/l/e/lehenga_1.jpeg'),('111',88,0,'7','/l/e/lehenga_1.jpeg'),('112',89,0,'7','/l/e/lehenga_1.jpeg'),('113',106,0,'7','container2'),('114',114,0,'7','IN'),('115',120,0,'7','0'),('116',123,0,'7','floral-pattern-lehenga-choli'),('117',129,0,'7','2'),('118',135,0,'7','/l/e/lehenga_1.jpeg'),('123',73,0,'8','Cotton Shirt and Pants Set for Kids | Green'),('124',84,0,'8','Cotton Shirt and Pants Set for Kids | Green'),('125',86,0,'8','Cotton Shirt and Pants Set for Kids | Green '),('126',87,0,'8','/k/i/kid_green_1.jpg'),('127',88,0,'8','/k/i/kid_green_1.jpg'),('128',89,0,'8','/k/i/kid_green_1.jpg'),('129',106,0,'8','container2'),('130',114,0,'8','IN'),('131',120,0,'8','0'),('132',123,0,'8','cotton-shirt-and-pants-set-for-kids-green'),('133',129,0,'8','2'),('134',135,0,'8','/k/i/kid_green_1.jpg');
/*!40000 ALTER TABLE `catalog_product_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_frontend_action`
--

DROP TABLE IF EXISTS `catalog_product_frontend_action`;
CREATE TABLE `catalog_product_frontend_action` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Action ID',
  `type_id` varchar(64) NOT NULL COMMENT 'Type of product action',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `added_at` bigint(20) NOT NULL COMMENT 'Added At',
  PRIMARY KEY (`action_id`),
  UNIQUE KEY `CATALOG_PRODUCT_FRONTEND_ACTION_VISITOR_ID_PRODUCT_ID_TYPE_ID` (`visitor_id`,`product_id`,`type_id`),
  UNIQUE KEY `CATALOG_PRODUCT_FRONTEND_ACTION_CUSTOMER_ID_PRODUCT_ID_TYPE_ID` (`customer_id`,`product_id`,`type_id`),
  KEY `CAT_PRD_FRONTEND_ACTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Frontend Action Table';

--
-- Table structure for table `catalog_product_index_eav`
--

DROP TABLE IF EXISTS `catalog_product_index_eav`;
CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav`
--

LOCK TABLES `catalog_product_index_eav` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_eav` DISABLE KEYS */;
INSERT INTO `catalog_product_index_eav` VALUES ('5',93,1,'4','2'),('5',93,1,'5','3'),('5',93,1,'6','4'),('1',99,1,'4','1'),('5',99,1,'1','2'),('5',99,1,'1','3'),('5',99,1,'1','4'),('5',99,1,'4','5'),('6',99,1,'4','6'),('7',99,1,'4','7'),('8',99,1,'4','8'),('1',138,1,'9','1'),('6',138,1,'9','6'),('7',138,1,'9','7'),('8',138,1,'9','8');
/*!40000 ALTER TABLE `catalog_product_index_eav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal`;
CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_idx`;
CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_replica`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_replica`;
CREATE TABLE `catalog_product_index_eav_decimal_replica` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_tmp`;
CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_eav_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_idx`;
CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Table structure for table `catalog_product_index_eav_replica`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_replica`;
CREATE TABLE `catalog_product_index_eav_replica` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav_replica`
--

LOCK TABLES `catalog_product_index_eav_replica` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_eav_replica` DISABLE KEYS */;
INSERT INTO `catalog_product_index_eav_replica` VALUES ('5',93,1,'4','2'),('5',93,1,'5','3'),('5',93,1,'6','4'),('1',99,1,'4','1'),('5',99,1,'1','2'),('5',99,1,'1','3'),('5',99,1,'1','4'),('5',99,1,'4','5'),('5',138,1,'9','5');
/*!40000 ALTER TABLE `catalog_product_index_eav_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_tmp`;
CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity ID for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_price`
--

DROP TABLE IF EXISTS `catalog_product_index_price`;
CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

LOCK TABLES `catalog_product_index_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price` VALUES ('1','0',1,2,'49999.000000','49999.000000','49999.000000','49999.000000',NULL),('1','1',1,2,'49999.000000','49999.000000','49999.000000','49999.000000',NULL),('1','2',1,2,'49999.000000','49999.000000','49999.000000','49999.000000',NULL),('1','3',1,2,'49999.000000','49999.000000','49999.000000','49999.000000',NULL),('2','0',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('2','1',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('2','2',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('2','3',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('3','0',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('3','1',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('3','2',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('3','3',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('4','0',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('4','1',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('4','2',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('4','3',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('5','0',1,2,'0.000000','0.000000','599.000000','599.000000',NULL),('5','1',1,2,'0.000000','0.000000','599.000000','599.000000',NULL),('5','2',1,2,'0.000000','0.000000','599.000000','599.000000',NULL),('5','3',1,2,'0.000000','0.000000','599.000000','599.000000',NULL),('6','0',1,2,'5999.000000','5999.000000','5999.000000','5999.000000',NULL),('6','1',1,2,'5999.000000','5999.000000','5999.000000','5999.000000',NULL),('6','2',1,2,'5999.000000','5999.000000','5999.000000','5999.000000',NULL),('6','3',1,2,'5999.000000','5999.000000','5999.000000','5999.000000',NULL),('7','0',1,2,'29999.000000','29999.000000','29999.000000','29999.000000',NULL),('7','1',1,2,'29999.000000','29999.000000','29999.000000','29999.000000',NULL),('7','2',1,2,'29999.000000','29999.000000','29999.000000','29999.000000',NULL),('7','3',1,2,'29999.000000','29999.000000','29999.000000','29999.000000',NULL),('8','0',1,2,'2599.000000','2599.000000','2599.000000','2599.000000',NULL),('8','1',1,2,'2599.000000','2599.000000','2599.000000','2599.000000',NULL),('8','2',1,2,'2599.000000','2599.000000','2599.000000','2599.000000',NULL),('8','3',1,2,'2599.000000','2599.000000','2599.000000','2599.000000',NULL);
/*!40000 ALTER TABLE `catalog_product_index_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_idx`;
CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(20,6) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(20,6) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_idx`;
CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_idx`;
CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection ID',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection ID',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(20,6) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(20,6) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_idx`;
CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_tmp`;
CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_idx`;
CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_tmp`;
CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_idx`;
CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Minimum price',
  `max_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_tmp`;
CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Minimum price',
  `max_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_idx`;
CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_tmp`;
CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

--
-- Table structure for table `catalog_product_index_price_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_idx`;
CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_idx`;
CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_tmp`;
CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_idx`;
CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_tmp`;
CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

--
-- Table structure for table `catalog_product_index_price_replica`
--

DROP TABLE IF EXISTS `catalog_product_index_price_replica`;
CREATE TABLE `catalog_product_index_price_replica` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price_replica`
--

LOCK TABLES `catalog_product_index_price_replica` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price_replica` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price_replica` VALUES ('1','0',1,2,'25999.000000','25999.000000','25999.000000','25999.000000',NULL),('1','1',1,2,'25999.000000','25999.000000','25999.000000','25999.000000',NULL),('1','2',1,2,'25999.000000','25999.000000','25999.000000','25999.000000',NULL),('1','3',1,2,'25999.000000','25999.000000','25999.000000','25999.000000',NULL),('2','0',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('2','1',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('2','2',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('2','3',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('3','0',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('3','1',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('3','2',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('3','3',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('4','0',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('4','1',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('4','2',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('4','3',1,2,'599.000000','599.000000','599.000000','599.000000',NULL),('5','0',1,2,'0.000000','0.000000','599.000000','599.000000',NULL),('5','1',1,2,'0.000000','0.000000','599.000000','599.000000',NULL),('5','2',1,2,'0.000000','0.000000','599.000000','599.000000',NULL),('5','3',1,2,'0.000000','0.000000','599.000000','599.000000',NULL);
/*!40000 ALTER TABLE `catalog_product_index_price_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_price_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_tmp`;
CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_index_tier_price`;
CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

--
-- Table structure for table `catalog_product_index_website`
--

DROP TABLE IF EXISTS `catalog_product_index_website`;
CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `default_store_id` smallint(5) unsigned NOT NULL COMMENT 'Default store ID for website',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

LOCK TABLES `catalog_product_index_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_website` DISABLE KEYS */;
INSERT INTO `catalog_product_index_website` VALUES (1,1,'2023-02-26','1');
/*!40000 ALTER TABLE `catalog_product_index_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link`
--

DROP TABLE IF EXISTS `catalog_product_link`;
CREATE TABLE `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

--
-- Table structure for table `catalog_product_link_attribute`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute`;
CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute`
--

LOCK TABLES `catalog_product_link_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_attribute` DISABLE KEYS */;
INSERT INTO `catalog_product_link_attribute` VALUES (1,1,'position','int'),(2,4,'position','int'),(3,5,'position','int'),(4,3,'position','int'),(5,3,'qty','decimal');
/*!40000 ALTER TABLE `catalog_product_link_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_decimal`;
CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

--
-- Table structure for table `catalog_product_link_attribute_int`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_int`;
CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_varchar`;
CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

--
-- Table structure for table `catalog_product_link_type`
--

DROP TABLE IF EXISTS `catalog_product_link_type`;
CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Dumping data for table `catalog_product_link_type`
--

LOCK TABLES `catalog_product_link_type` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_type` DISABLE KEYS */;
INSERT INTO `catalog_product_link_type` VALUES (1,'relation'),(3,'super'),(4,'up_sell'),(5,'cross_sell');
/*!40000 ALTER TABLE `catalog_product_link_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option`
--

DROP TABLE IF EXISTS `catalog_product_option`;
CREATE TABLE `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

--
-- Dumping data for table `catalog_product_option`
--

LOCK TABLES `catalog_product_option` WRITE;
/*!40000 ALTER TABLE `catalog_product_option` DISABLE KEYS */;
INSERT INTO `catalog_product_option` VALUES ('1','5','drop_down',1,NULL,'0',NULL,0,0,'1'),('2','6','drop_down',1,NULL,'0',NULL,0,0,'1'),('3','7','drop_down',1,NULL,'0',NULL,0,0,'3'),('4','1','drop_down',1,NULL,'0',NULL,0,0,'2');
/*!40000 ALTER TABLE `catalog_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_price`
--

DROP TABLE IF EXISTS `catalog_product_option_price`;
CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

--
-- Table structure for table `catalog_product_option_title`
--

DROP TABLE IF EXISTS `catalog_product_option_title`;
CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

--
-- Dumping data for table `catalog_product_option_title`
--

LOCK TABLES `catalog_product_option_title` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_title` DISABLE KEYS */;
INSERT INTO `catalog_product_option_title` VALUES ('1','1',0,'Size'),('2','2',0,'Size'),('3','3',0,'Size'),('4','4',0,'Size');
/*!40000 ALTER TABLE `catalog_product_option_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_type_price`
--

DROP TABLE IF EXISTS `catalog_product_option_type_price`;
CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

--
-- Dumping data for table `catalog_product_option_type_price`
--

LOCK TABLES `catalog_product_option_type_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_type_price` DISABLE KEYS */;
INSERT INTO `catalog_product_option_type_price` VALUES ('1','1',0,'0.000000','fixed'),('2','2',0,'0.000000','fixed'),('3','3',0,'0.000000','fixed'),('4','4',0,'0.000000','fixed'),('5','5',0,'0.000000','fixed'),('6','6',0,'0.000000','fixed'),('7','7',0,'0.000000','fixed'),('8','8',0,'0.000000','fixed'),('9','9',0,'0.000000','fixed'),('10','10',0,'0.000000','fixed'),('11','11',0,'0.000000','fixed'),('12','12',0,'0.000000','fixed'),('13','13',0,'0.000000','fixed'),('14','14',0,'0.000000','fixed'),('15','15',0,'0.000000','fixed'),('16','16',0,'0.000000','fixed'),('17','17',0,'0.000000','fixed'),('18','18',0,'0.000000','fixed'),('19','19',0,'0.000000','fixed'),('20','20',0,'0.000000','fixed');
/*!40000 ALTER TABLE `catalog_product_option_type_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_type_title`
--

DROP TABLE IF EXISTS `catalog_product_option_type_title`;
CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

--
-- Dumping data for table `catalog_product_option_type_title`
--

LOCK TABLES `catalog_product_option_type_title` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_type_title` DISABLE KEYS */;
INSERT INTO `catalog_product_option_type_title` VALUES ('1','1',0,'S'),('2','2',0,'M'),('3','3',0,'L'),('4','4',0,'XL'),('5','5',0,'XXL'),('6','6',0,'S'),('7','7',0,'M'),('8','8',0,'L'),('9','9',0,'XL'),('10','10',0,'XXL'),('11','11',0,'S'),('12','12',0,'M'),('13','13',0,'L'),('14','14',0,'XL'),('15','15',0,'XXL'),('16','16',0,'S'),('17','17',0,'M'),('18','18',0,'L'),('19','19',0,'XL'),('20','20',0,'XXL');
/*!40000 ALTER TABLE `catalog_product_option_type_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option_type_value`
--

DROP TABLE IF EXISTS `catalog_product_option_type_value`;
CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

--
-- Dumping data for table `catalog_product_option_type_value`
--

LOCK TABLES `catalog_product_option_type_value` WRITE;
/*!40000 ALTER TABLE `catalog_product_option_type_value` DISABLE KEYS */;
INSERT INTO `catalog_product_option_type_value` VALUES ('1','1',NULL,'1'),('2','1',NULL,'2'),('3','1',NULL,'3'),('4','1',NULL,'4'),('5','1',NULL,'5'),('6','2',NULL,'1'),('7','2',NULL,'2'),('8','2',NULL,'3'),('9','2',NULL,'4'),('10','2',NULL,'5'),('11','3',NULL,'1'),('12','3',NULL,'2'),('13','3',NULL,'3'),('14','3',NULL,'4'),('15','3',NULL,'5'),('16','4',NULL,'1'),('17','4',NULL,'2'),('18','4',NULL,'3'),('19','4',NULL,'4'),('20','4',NULL,'5');
/*!40000 ALTER TABLE `catalog_product_option_type_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_relation`
--

DROP TABLE IF EXISTS `catalog_product_relation`;
CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

--
-- Dumping data for table `catalog_product_relation`
--

LOCK TABLES `catalog_product_relation` WRITE;
/*!40000 ALTER TABLE `catalog_product_relation` DISABLE KEYS */;
INSERT INTO `catalog_product_relation` VALUES ('5','2'),('5','3'),('5','4');
/*!40000 ALTER TABLE `catalog_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_super_attribute`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute`;
CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

--
-- Dumping data for table `catalog_product_super_attribute`
--

LOCK TABLES `catalog_product_super_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_product_super_attribute` DISABLE KEYS */;
INSERT INTO `catalog_product_super_attribute` VALUES ('1','5',93,0);
/*!40000 ALTER TABLE `catalog_product_super_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_super_attribute_label`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute_label`;
CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

--
-- Dumping data for table `catalog_product_super_attribute_label`
--

LOCK TABLES `catalog_product_super_attribute_label` WRITE;
/*!40000 ALTER TABLE `catalog_product_super_attribute_label` DISABLE KEYS */;
INSERT INTO `catalog_product_super_attribute_label` VALUES ('1','1',0,0,'Color');
/*!40000 ALTER TABLE `catalog_product_super_attribute_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_super_link`
--

DROP TABLE IF EXISTS `catalog_product_super_link`;
CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

--
-- Dumping data for table `catalog_product_super_link`
--

LOCK TABLES `catalog_product_super_link` WRITE;
/*!40000 ALTER TABLE `catalog_product_super_link` DISABLE KEYS */;
INSERT INTO `catalog_product_super_link` VALUES ('1','2','5'),('2','3','5'),('3','4','5');
/*!40000 ALTER TABLE `catalog_product_super_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_website`
--

DROP TABLE IF EXISTS `catalog_product_website`;
CREATE TABLE `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

LOCK TABLES `catalog_product_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_website` DISABLE KEYS */;
INSERT INTO `catalog_product_website` VALUES ('1',1),('2',1),('3',1),('4',1),('5',1),('6',1),('7',1),('8',1);
/*!40000 ALTER TABLE `catalog_product_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_url_rewrite_product_category`
--

DROP TABLE IF EXISTS `catalog_url_rewrite_product_category`;
CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) unsigned NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) unsigned NOT NULL COMMENT 'category_id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'product_id',
  KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`),
  KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

--
-- Dumping data for table `catalog_url_rewrite_product_category`
--

LOCK TABLES `catalog_url_rewrite_product_category` WRITE;
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` DISABLE KEYS */;
INSERT INTO `catalog_url_rewrite_product_category` VALUES ('13','7','1'),('14','5','1'),('18','3','5'),('17','9','5'),('21','10','6'),('22','3','6'),('24','7','7'),('25','5','7'),('30','6','8'),('29','12','8');
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock`
--

DROP TABLE IF EXISTS `cataloginventory_stock`;
CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Dumping data for table `cataloginventory_stock`
--

LOCK TABLES `cataloginventory_stock` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock` VALUES (1,0,'Default');
/*!40000 ALTER TABLE `cataloginventory_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_item`
--

DROP TABLE IF EXISTS `cataloginventory_stock_item`;
CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock ID',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID_PRODUCT_ID` (`website_id`,`product_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Dumping data for table `cataloginventory_stock_item`
--

LOCK TABLES `cataloginventory_stock_item` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_item` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_item` VALUES ('1','1',1,'8.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('2','2',1,'10.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('3','3',1,'10.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('4','4',1,'8.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('5','5',1,'0.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('6','6',1,'9.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('7','7',1,'9.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('8','8',1,'15.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0);
/*!40000 ALTER TABLE `cataloginventory_stock_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status`;
CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

LOCK TABLES `cataloginventory_stock_status` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status` VALUES ('1',0,1,'8.0000',1),('2',0,1,'10.0000',1),('3',0,1,'10.0000',1),('4',0,1,'8.0000',1),('5',0,1,'0.0000',1),('6',0,1,'9.0000',1),('7',0,1,'9.0000',1),('8',0,1,'15.0000',1);
/*!40000 ALTER TABLE `cataloginventory_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_idx`;
CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Table structure for table `cataloginventory_stock_status_replica`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_replica`;
CREATE TABLE `cataloginventory_stock_status_replica` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status_replica`
--

LOCK TABLES `cataloginventory_stock_status_replica` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status_replica` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status_replica` VALUES ('1',0,1,'10.0000',1),('2',0,1,'10.0000',1),('3',0,1,'10.0000',1),('4',0,1,'10.0000',1),('5',0,1,'0.0000',1);
/*!40000 ALTER TABLE `cataloginventory_stock_status_replica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_tmp`;
CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

--
-- Table structure for table `catalogrule`
--

DROP TABLE IF EXISTS `catalogrule`;
CREATE TABLE `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Discount Amount',
  PRIMARY KEY (`rule_id`),
  KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

--
-- Table structure for table `catalogrule_customer_group`
--

DROP TABLE IF EXISTS `catalogrule_customer_group`;
CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

--
-- Table structure for table `catalogrule_group_website`
--

DROP TABLE IF EXISTS `catalogrule_group_website`;
CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

--
-- Table structure for table `catalogrule_group_website_replica`
--

DROP TABLE IF EXISTS `catalogrule_group_website_replica`;
CREATE TABLE `catalogrule_group_website_replica` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

--
-- Table structure for table `catalogrule_product`
--

DROP TABLE IF EXISTS `catalogrule_product`;
CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product ID',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `UNQ_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

--
-- Table structure for table `catalogrule_product_price`
--

DROP TABLE IF EXISTS `catalogrule_product_price`;
CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `rule_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

--
-- Table structure for table `catalogrule_product_price_replica`
--

DROP TABLE IF EXISTS `catalogrule_product_price_replica`;
CREATE TABLE `catalogrule_product_price_replica` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `rule_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

--
-- Table structure for table `catalogrule_product_replica`
--

DROP TABLE IF EXISTS `catalogrule_product_replica`;
CREATE TABLE `catalogrule_product_replica` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product ID',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `UNQ_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

--
-- Table structure for table `catalogrule_website`
--

DROP TABLE IF EXISTS `catalogrule_website`;
CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

--
-- Table structure for table `catalogsearch_fulltext_scope1`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope1`;
CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1_tmp';

--
-- Dumping data for table `catalogsearch_fulltext_scope1`
--

LOCK TABLES `catalogsearch_fulltext_scope1` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope1` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext_scope1` VALUES ('1','73','Designer Light Blue Net Lehenga'),('1','74','NAK00001'),('1','97','Enabled'),('1','123','designer-light-blue-net-lehenga'),('1','136','Taxable Goods'),('5','73','Men Regular Fit Solid Button Down Collar Formal Shirt | Men Regular Fit Solid Button Down Collar Formal Shirt-Black | Men Regular Fit Solid Button Down Collar Formal Shirt-white | Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue'),('5','74','NAK00002'),('5','93','Black | white | Navy blue'),('5','97','Enabled | Enabled | Enabled | Enabled'),('5','123','men-regular-fit-solid-button-down-collar-formal-shirt | men-regular-fit-solid-button-down-collar-formal-shirt-black | men-regular-fit-solid-button-down-collar-formal-shirt-white | men-regular-fit-solid-button-down-collar-formal-shirt-navy-blue'),('5','136','Taxable Goods | Taxable Goods | Taxable Goods | Taxable Goods'),('6','73','Floral Kurta in Maroon & Black'),('6','74','NAK00003'),('6','97','Enabled'),('6','123','floral-kurta-in-maroon-black'),('6','136','Taxable Goods'),('7','73','Floral Pattern Lehenga Choli'),('7','74','NAK00004'),('7','97','Enabled'),('7','123','floral-pattern-lehenga-choli'),('7','136','Taxable Goods'),('8','73','Cotton Shirt and Pants Set for Kids | Green'),('8','74','NAK00005'),('8','97','Enabled'),('8','123','cotton-shirt-and-pants-set-for-kids-green'),('8','136','Taxable Goods');
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogsearch_recommendations`
--

DROP TABLE IF EXISTS `catalogsearch_recommendations`;
CREATE TABLE `catalogsearch_recommendations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `query_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Query ID',
  `relation_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Relation ID',
  PRIMARY KEY (`id`),
  KEY `CATALOGSEARCH_RECOMMENDATIONS_QUERY_ID_SEARCH_QUERY_QUERY_ID` (`query_id`),
  KEY `CATALOGSEARCH_RECOMMENDATIONS_RELATION_ID_SEARCH_QUERY_QUERY_ID` (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Advanced Search Recommendations';

--
-- Table structure for table `checkout_agreement`
--

DROP TABLE IF EXISTS `checkout_agreement`;
CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

--
-- Table structure for table `checkout_agreement_store`
--

DROP TABLE IF EXISTS `checkout_agreement_store`;
CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

--
-- Table structure for table `cms_block`
--

DROP TABLE IF EXISTS `cms_block`;
CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`),
  FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

LOCK TABLES `cms_block` WRITE;
/*!40000 ALTER TABLE `cms_block` DISABLE KEYS */;
INSERT INTO `cms_block` VALUES (1,'Payments Icons','payment-icons','<span class=\"payment-icons\">\r\n    <ul>\r\n        <li><a href=\"#\"><img class=\"image-responsive middle-block\" src=\"{{media url=\"wysiwyg/paymet/americanexpress.png\"}}\" alt=\"americanexpress\" /></a></li>\r\n        <li><a href=\"#\"><img class=\"image-responsive middle-block\" src=\"{{media url=\"wysiwyg/paymet/discover.png\"}}\" alt=\"discover\" /></a></li>\r\n        <li><a href=\"#\"><img class=\"image-responsive middle-block\" src=\"{{media url=\"wysiwyg/paymet/maestro.png\"}}\" alt=\"maestro\" /></a></li>\r\n        <li><a href=\"#\"><img class=\"image-responsive middle-block\" src=\"{{media url=\"wysiwyg/paymet/master.png\"}}\" alt=\"master\" /></a></li>\r\n        <li><a href=\"#\"><img class=\"image-responsive middle-block\" src=\"{{media url=\"wysiwyg/paymet/visa.png\"}}\" alt=\"visa\" /></a></li>\r\n    </ul>\r\n</span>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(2,'Home Slider','home-slider','<div class=\"home-slider-wrapper\">\r\n    <div class=\"home-slider-main below-padding\">\r\n        <ul class=\"home-slider\">\r\n            <li><a href=\"#\"><img class=\"image-responsive middle-block\" src=\"{{media url=\"wysiwyg/slider/shopkartlite-home-banner-1.png\"}}\" alt=\"home banner\" /> </a></li>\r\n            <li style=\"display:none;\"><a href=\"#\"><img class=\"image-responsive middle-block\" src=\"{{media url=\"wysiwyg/slider/shopkartlite-home-banner-2.png\"}}\" alt=\"home banner\" /> </a></li>\r\n        </ul>\r\n    </div>\r\n    <script type=\"text/javascript\">\r\n        require([\'jquery\', \'shopkartliteowlcarousel\'], function() {\r\n            jQuery(document).ready(function() {\r\n                jQuery(\".home-slider\").owlCarousel({\r\n                    items: 1,\r\n                    itemsDesktop: [1198, 1],\r\n                    itemsDesktopSmall: [1023, 1],\r\n                    itemsTablet: [768, 1],\r\n                    itemsTabletSmall: [767, 1],\r\n                    itemsMobile: [479, 1],\r\n                    pagination: false,\r\n                    navigationText: [\"<div class=\'left-arrow\'><i class=\'fa fa-arrow-left\'></i></div>\", \"<div class=\'right-arrow\'><i class=\'fa fa-arrow-right\'></div>\"],\r\n                    navigation: true,\r\n                });\r\n                jQuery(\".home-slider li\").show();\r\n            });\r\n        });\r\n    </script>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(3,'ShopkartLite Above','shopkartlite-above','{{widget type=\"Magento\\Cms\\Block\\Widget\\Block\" template=\"widget/static_block/default.phtml\" block_id=\"home-slider\"}}','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(4,'Home Images Block','home-images-one','<div class=\"advert-outer-wrapper top-margin bottom-margin\">\r\n    <div class=\"page-main\">\r\n        <div class=\"content-row\">\r\n            <div class=\"advert-inner-wrapper\">\r\n                <div class=\"item-wrapper\">\r\n                    <div class=\"item\">\r\n                        <a target=\"_blank\" href=\"https://www.zara.com/in/\">\r\n                            <img src=\"{{media url=\"wysiwyg/advertisement/adv-image-1.png\"}}\" alt=\"\" />  \r\n                        </a>\r\n                    </div>\r\n                </div>  \r\n                <div class=\"item-wrapper\">\r\n                    <div class=\"item\">\r\n                        <a target=\"_blank\" href=\"https://www.levi.in/\">\r\n                            <img src=\"{{media url=\"wysiwyg/advertisement/adv-image-2.png\"}}\" alt=\"\" />  \r\n                        </a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(5,'ShopkartLite Below','shopkartlite-below','<div class=\"page-main\">\r\n    {{widget type=\"Magento\\Catalog\\Block\\Product\\Widget\\NewWidget\" display_type=\"all_products\" show_pager=\"0\" products_count=\"10\" template=\"product/widget/new/content/new_grid.phtml\"}}\r\n</div>\r\n{{widget type=\"Magento\\Cms\\Block\\Widget\\Block\" template=\"widget/static_block/default.phtml\" block_id=\"home-images-one\"}}\r\n<div class=\"page-main\">\r\n    {{widget type=\"Magento\\CatalogWidget\\Block\\Product\\ProductsList\" title=\"Featured Products\" show_pager=\"0\" products_count=\"10\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"^[`1`:^[`type`:`Magento||CatalogWidget||Model||Rule||Condition||Combine`,`aggregator`:`all`,`value`:`1`,`new_child`:``^],`1--1`:^[`type`:`Magento||CatalogWidget||Model||Rule||Condition||Product`,`attribute`:`is_featured`,`operator`:`==`,`value`:`1`^]^]\"}}\r\n</div>\r\n{{widget type=\"Magento\\Cms\\Block\\Widget\\Block\" template=\"widget/static_block/default.phtml\" block_id=\"home_testimonials\"}} \r\n{{widget type=\"Magento\\Cms\\Block\\Widget\\Block\" template=\"widget/static_block/default.phtml\" block_id=\"home-brands\"}}','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(6,'Home Testimonials','home_testimonials','<div class=\"testimonial-outer-wrapper slider-block top-margin bottom-margin\" style=\"background-image: url({{media url=\'wysiwyg/testimonial/testimonials-bg.png\'}});\">\r\n    <div class=\"page-main\">\r\n        <div class=\"title-block\">\r\n            <strong>\r\n                <span>What client say</span>\r\n            </strong>\r\n        </div>\r\n        <div class=\"content-row\">\r\n            <div class=\"testimonial-slider\">\r\n                <div class=\"item\">                \r\n                    <div class=\"item-inner\">  \r\n                        <div class=\"image-block\">\r\n                            <img src=\"{{media url=\"wysiwyg/testimonial/testimonial-1.png\"}}\" alt=\"\" />\r\n                            <div class=\"content-block\">\r\n                                <span class=\"testimonial-name\">Smita</span>\r\n                                <span class=\"testimonial-desc\">India</span>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"text-block\">\r\n                            <p>I have been using Nakshathra’s services for years now. \r\n                            I don’t look for any other options but Nakshathra for salwar, \r\n                            blouse stitching and designing. They are very humble and delivers on time. \r\n                            I also refer them to my neighbours and friends.\r\n                            </p>                    \r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"item\">                \r\n                    <div class=\"item-inner\">  \r\n                        <div class=\"image-block\">\r\n                            <img src=\"{{media url=\"wysiwyg/testimonial/testimonial-2.png\"}}\" alt=\"\" />\r\n                            <div class=\"content-block\">\r\n                                <span class=\"testimonial-name\">Padma</span>\r\n                                <span class=\"testimonial-desc\">United States</span>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"text-block\">\r\n                            <p>I love the outfits from Nakshathra. \r\n                            </p>                    \r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"item\">\r\n                    <div class=\"item-inner\">\r\n                        <div class=\"image-block\">\r\n                            <img src=\"{{media url=\"wysiwyg/testimonial/testimonial-3.png\"}}\" alt=\"\" />\r\n                            <div class=\"content-block\">\r\n                                <span class=\"testimonial-name\">Malathi</span>\r\n                                <span class=\"testimonial-desc\">Australia</span>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"text-block\">\r\n                            <p>Even after moving out of India, I prefer using Nakshathra\'s outfits.\r\n                            Design, fittings and everything is so perfect. I love it.\r\n                            </p>                    \r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <script>\r\n                require([\'jquery\', \'shopkartliteowlcarousel\'], function () {\r\n                    jQuery(document).ready(function () {\r\n                        jQuery(\".testimonial-slider\").owlCarousel({\r\n                            items: 2,\r\n                            itemsDesktop: [1199, 2],\r\n                            itemsDesktopSmall: [991, 2],\r\n                            itemsTablet: [767, 2],\r\n                            itemsTabletSmall: [639, 1],\r\n                            itemsMobile: [479, 1],\r\n                            pagination: false,\r\n                            navigationText: [\"<div class=\'prev-arrow\'><i class=\'fa fa-angle-left\'></i></div>\", \"<div class=\'next-arrow\'><i class=\'fa fa-angle-right\'></div>\"],\r\n                            navigation: true,\r\n                            autoPlay: true,\r\n                        });\r\n                        jQuery(\".testimonial-slider .item\").show();\r\n                    });\r\n                });\r\n            </script>\r\n        </div>\r\n    </div>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(7,'Home Brands','home-brands','<div class=\"brands-wrapper above-padding below-padding\">\r\n    <div class=\"page-main\">\r\n        <div class=\"title-block\">\r\n            <strong> \r\n                <span>Brands</span>                \r\n            </strong>\r\n        </div>\r\n        <div class=\"brands-main\">\r\n            <ul class=\"brands-slider\">\r\n                <li style=\"display: none;\"><a target=\"_blank\" href=\"https://www.pepejeans.in/\"><img src=\"{{media url=\"wysiwyg/brand/brand-1.png\"}}\" alt=\"brand-image\" /></a></li>\r\n                <li style=\"display: none;\"><a target=\"_blank\" href=\"https://www.fabindia.com/\"><img src=\"{{media url=\"wysiwyg/brand/brand-2.png\"}}\" alt=\"brand-image\" /></a></li>\r\n                <li style=\"display: none;\"><a target=\"_blank\" href=\"https://flyingmachine.nnnow.com/\"><img src=\"{{media url=\"wysiwyg/brand/brand-3.png\"}}\" alt=\"brand-image\" /></a></li>\r\n                <li style=\"display: none;\"><a target=\"_blank\" href=\"https://vanheusenindia.abfrl.in/\"><img src=\"{{media url=\"wysiwyg/brand/brand-4.png\"}}\" alt=\"brand-image\" /></a></li>\r\n                <li style=\"display: none;\"><a target=\"_blank\" href=\"https://www.zara.com/in/\"><img src=\"{{media url=\"wysiwyg/brand/brand-5.png\"}}\" alt=\"brand-image\" /></a></li>\r\n                <li style=\"display: none;\"><a target=\"_blank\" href=\"https://www2.hm.com/\"><img src=\"{{media url=\"wysiwyg/brand/brand-6.png\"}}\" alt=\"brand-image\" /></a></li>\r\n                <li style=\"display: none;\"><a target=\"_blank\" href=\"#\"><img src=\"{{media url=\"wysiwyg/brand/brand-7.png\"}}\" alt=\"brand-image\" /></a></li>\r\n                <li style=\"display: none;\"><a target=\"_blank\" href=\"#\"><img src=\"{{media url=\"wysiwyg/brand/brand-8.png\"}}\" alt=\"brand-image\" /></a></li>\r\n            </ul>\r\n            <script type=\"text/javascript\" xml=\"space\">\r\n                require([\'jquery\', \'shopkartliteowlcarousel\'], function () {\r\n                    jQuery(document).ready(function () {\r\n                        jQuery(\".brands-slider\").owlCarousel({\r\n                            items: 6,\r\n                            itemsDesktop: [1198, 5],\r\n                            itemsDesktopSmall: [1023, 5],\r\n                            itemsTablet: [768, 4],\r\n                            itemsTabletSmall: [767, 4],\r\n                            itemsMobile: [479, 2],\r\n                            pagination: false,\r\n                            navigationText: [\"<div class=\'left-arrow\'><i class=\'fa fa-angle-left\'></i></div>\", \"<div class=\'right-arrow\'><i class=\'fa fa-angle-right\'></div>\"],\r\n                            navigation: false,\r\n                        });\r\n                        jQuery(\".brands-slider li\").show();\r\n                    });\r\n                });\r\n            </script>\r\n        </div>\r\n    </div>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(8,'Footer My Account Block','footer_myaccount','<div class=\"footer-colum-title\">\r\n                                    <h3>\r\n                                        My Account\r\n                                    </h3>\r\n                                </div>\r\n                                <div class=\"footer-column-content\">\r\n<ul class=\"footer links\">\r\n<li class=\"nav item\"><a href=\"#\">My Account</a></li>\r\n<li class=\"nav item\"><a href=\"#\">Login</a></li>\r\n<li class=\"nav item\"><a href=\"#\">My Cart</a></li>\r\n<li class=\"nav item\"><a href=\"#\">My Compare</a></li>\r\n<li class=\"nav item\"><a href=\"#\">My Wishlist</a></li>\r\n</ul>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(9,'Footer Payment & Shipping','footer_payment_shipping','<div class=\"footer-colum-title\">\r\n                            <h3>\r\n                                Payment & Shipping\r\n                            </h3>\r\n                        </div>\r\n                        <div class=\"footer-column-content\">\r\n<ul class=\"footer links\">\r\n<li class=\"nav item\"><a href=\"#\">Terms of Use</a></li>\r\n<li class=\"nav item\"><a href=\"#\">Payment Methods</a></li>\r\n<li class=\"nav item\"><a href=\"#\">Shipping Guide</a></li>\r\n<li class=\"nav item\"><a href=\"#\">Order Tracking</a></li>\r\n<li class=\"nav item\"><a href=\"#\">Return % Exchange</a></li>\r\n</ul>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(10,'Home Blogs','home_blogs','<div class=\"ab-home-blogs slider-block above-padding below-padding\">\r\n    <div class=\"page-main\">\r\n        <div class=\"title-block\">\r\n            <strong> \r\n                <span>Recent Posts</span>                \r\n            </strong>\r\n        </div>\r\n        <div class=\"content-block\">\r\n            <div class=\"content-row\">\r\n                <div class=\"blog-slider\">\r\n                    <div class=\"item\" style=\"display: none;\">\r\n                        <div class=\"item-inner\">\r\n                            <div class=\"img-block\">\r\n                                <a href=\"#\">\r\n                                    <img src=\"{{media url=\'wysiwyg/blog/blog-img-1.png\'}}\" alt=\"\" />\r\n                                </a>\r\n                            </div>\r\n                            <div class=\"text-block\">                                  \r\n                                <a href=\"#\" class=\"blog-title\">\r\n                                    <span>\r\n                                        At vero eos et accusamus et iusto odio.\r\n                                    </span>\r\n                                </a>\r\n                                <div class=\"blog-desc\">\r\n                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque. Laudantium totam.\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"item\" style=\"display: none;\">\r\n                        <div class=\"item-inner\">\r\n                            <div class=\"img-block\">\r\n                                <a href=\"#\">\r\n                                    <img src=\"{{media url=\'wysiwyg/blog/blog-img-2.png\'}}\" alt=\"\" />\r\n                                </a>\r\n                            </div>\r\n                            <div class=\"text-block\">\r\n                                <a href=\"#\" class=\"blog-title\">\r\n                                    <span>\r\n                                        Nemo enim ipsam voluptatem quia.\r\n                                    </span>\r\n                                </a>\r\n                                <div class=\"blog-desc\">\r\n                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque. Laudantium totam.\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"item\" style=\"display: none;\">\r\n                        <div class=\"item-inner\">\r\n                            <div class=\"img-block\">\r\n                                <a href=\"#\">\r\n                                    <img src=\"{{media url=\'wysiwyg/blog/blog-img-3.png\'}}\" alt=\"\" />\r\n                                </a>\r\n                            </div>\r\n                            <div class=\"text-block\">\r\n                                <a href=\"#\" class=\"blog-title\">\r\n                                    <span>\r\n                                        Et harum quidem rerum facilis estet.\r\n                                    </span>\r\n                                </a>\r\n                                <div class=\"blog-desc\">\r\n                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque. Laudantium totam.\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"item\" style=\"display: none;\">\r\n                        <div class=\"item-inner\">\r\n                            <div class=\"img-block\">\r\n                                <a href=\"#\">\r\n                                    <img src=\"{{media url=\'wysiwyg/blog/blog-img-4.png\'}}\" alt=\"\" />\r\n                                </a>\r\n                            </div>\r\n                            <div class=\"text-block\">\r\n                                <a href=\"#\" class=\"blog-title\">\r\n                                    <span>\r\n                                        At vero eos et accusamus et iusto odio.\r\n                                    </span>\r\n                                </a>\r\n                                <div class=\"blog-desc\">\r\n                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque. Laudantium totam.\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"item\" style=\"display: none;\">\r\n                        <div class=\"item-inner\">\r\n                            <div class=\"img-block\">\r\n                                <a href=\"#\">\r\n                                    <img src=\"{{media url=\'wysiwyg/blog/blog-img-5.png\'}}\" alt=\"\" />\r\n                                </a>\r\n                            </div>\r\n                            <div class=\"text-block\">\r\n                                <a href=\"#\" class=\"blog-title\">\r\n                                    <span>\r\n                                        Nemo enim ipsam voluptatem volu.\r\n                                    </span>\r\n                                </a>\r\n                                <div class=\"blog-desc\">\r\n                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque. Laudantium totam.\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <script>\r\n                    require([\'jquery\', \'shopkartliteowlcarousel\'], function() {\r\n                        jQuery(document).ready(function() {\r\n                            jQuery(\".blog-slider\").owlCarousel({\r\n                                items: 3,\r\n                                itemsDesktop: [1199, 3],\r\n                                itemsDesktopSmall: [991, 2],\r\n                                itemsTablet: [767, 2],\r\n                                itemsTabletSmall: [639, 1],\r\n                                itemsMobile: [479, 1],\r\n                                pagination: false,\r\n                                navigationText: [\"<div class=\'prev-arrow\'><i class=\'fa fa-angle-left\'></i></div>\", \"<div class=\'next-arrow\'><i class=\'fa fa-angle-right\'></div>\"],\r\n                                navigation: true,\r\n                                autoPlay: false,\r\n                            });\r\n                            jQuery(\".blog-slider .item\").show();\r\n                        });\r\n                    });\r\n                </script>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(11,'Footer Socials Block','footer-socials','<div class=\"socials-block\">\r\n            <a href=\"#\"><em class=\"fa fa-facebook\"></em></a>\r\n            <a href=\"#\"><em class=\"fa fa-twitter\"></em></a>\r\n            <a href=\"#\"><em class=\"fa fa-linkedin\"></em></a>\r\n            <a href=\"#\"><em class=\"fa fa-google\"></em></a>\r\n        </div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(12,'Home Images Block','home-images-two','<div class=\"home-parallax-block above-margin below-margin\">\r\n<p>ONLY THIS MONTH</p>\r\n<h1>SAVE 60% OFF SALE</h1>\r\n<a class=\"action primary\" href=\"https://demo.hiddentechies.com/shopkartlite/electronics.html\" target=\"_blank\">Shop Now</a>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(13,'Home Services Block','home-services','<div class=\"home-advantage-block\">\r\n    <div class=\"page-main\">\r\n        <div class=\"hab-row\">\r\n            <div class=\"hab-inner\">\r\n                <div class=\"home-advantage-block-inner\">\r\n                    <span> \r\n                        <em class=\"fa fa-usd\"></em> \r\n                    </span>\r\n                    <p>30-Day Money Back</p>\r\n                </div>\r\n            </div>\r\n            <div class=\"hab-inner\">\r\n                <div class=\"home-advantage-block-inner\">\r\n                    <span> \r\n                        <em class=\"fa fa-headphones\"></em> \r\n                    </span>\r\n                    <p>1 year Free Support</p>\r\n                </div>\r\n            </div>\r\n            <div class=\"hab-inner\">\r\n                <div class=\"home-advantage-block-inner\">\r\n                    <span> \r\n                        <em class=\"fa fa-undo\"></em> \r\n                    </span>\r\n                    <p>Free Lifetime Update</p>\r\n                </div>\r\n            </div>\r\n            <div class=\"hab-inner\">\r\n                <div class=\"home-advantage-block-inner\">\r\n                    <span> \r\n                        <em class=\"fa fa-thumbs-up\"></em> \r\n                    </span>\r\n                    <p>100% Satisfaction</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(14,'Home Single Images Block','home-single-images-block','<div class=\"home-images-wrapper above-padding below-padding\">\r\n<div class=\"page-main\">\r\n<div class=\"home-image-main\">\r\n<div class=\"home-image-inner\"><a href=\"#\"> <img class=\"image-responsive middle-block\" src=\"{{media url=\"wysiwyg/advertisement/advt-block2.png\"}}\" alt=\"shopkartlite-fashion-image\" /> </a></div>\r\n</div>\r\n</div>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(15,'Sidebar add banner','sidebar-add-banner','<img src=\"{{media url=\"wysiwyg/advertisement/sidebar-banner.png\"}}\" alt=\"\" />','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(16,'Footer Quicklinks Block','footer_quicklinks','<div class=\"footer-colum-title\">\r\n<h3>Quick Links</h3>\r\n</div>\r\n<div class=\"footer-column-content\">\r\n<ul class=\"footer links\">\r\n<li class=\"nav item\"><a href=\"{{store url=\'privacy-policy-cookie-restriction-mode\'}}\"> Privacy and Cookie Policy </a></li>\r\n<li class=\"nav item\"><a href=\"{{store url=\'search/term/popular\'}}\"> Search Terms </a></li>\r\n<li class=\"nav item\"><a href=\"{{store url=\'contact\'}}\"> Contact Us </a></li>\r\n<li class=\"nav item\"><a href=\"{{store url=\'sales/guest/form\'}}\"> Orders and Returns </a></li>\r\n<li class=\"nav item\"><a href=\"{{store url=\'catalogsearch/advanced\'}}\" data-action=\"advanced-search\"> Advanced Search </a></li>\r\n</ul>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(17,'Footer Newsletter','footer_newsletter','<div class=\"footer-colum-title\">\r\n    <h3>Get in touch</h3>\r\n</div>\r\n<div class=\"footer-column-content\">\r\n    <p>Subscribe to our newsletter to get exclusive discounts.</p>\r\n    {{block class=\"Magento\\Newsletter\\Block\\Subscribe\" name=\"form.subscribe\" template=\"Magento_Newsletter::subscribe.phtml\"}}\r\n</div>\r\n\r\n\r\n\r\n\r\n','2023-02-26 12:46:58','2023-02-26 12:46:58',1),(18,'Footer Shop Info','footer_shop_info','<div class=\"footer-colum-title desktop-hide\">\r\n    <h3>\r\n        Shop Info\r\n    </h3>\r\n</div>\r\n<div class=\"footer-column-content\">\r\n    <div class=\"content\">\r\n        <img src=\"{{media url=\"wysiwyg/footer-logo.png\"}}\" alt=\"\" />\r\n        <p class=\"address\">                                        \r\n            <span>265, Lorem Street, New York, 32456, United States</span>\r\n        </p>\r\n        <p class=\"phone\">\r\n            <span>Phone: +1 234 567 8901</span>\r\n        </p>\r\n        <p class=\"email\">                                        \r\n            <span>Email: info@yourdomain.com</span>\r\n        </p>\r\n    </div>\r\n</div>','2023-02-26 12:46:58','2023-02-26 12:46:58',1);
/*!40000 ALTER TABLE `cms_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_block_store`
--

DROP TABLE IF EXISTS `cms_block_store`;
CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `cms_block_store`
--

LOCK TABLES `cms_block_store` WRITE;
/*!40000 ALTER TABLE `cms_block_store` DISABLE KEYS */;
INSERT INTO `cms_block_store` VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0);
/*!40000 ALTER TABLE `cms_block_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `layout_update_selected` varchar(128) DEFAULT NULL COMMENT 'Page Custom Layout File',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title',
  PRIMARY KEY (`page_id`),
  KEY `CMS_PAGE_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'404 Not Found','2columns-right','Page keywords','Page description','no-route','Whoops, our bad...','<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n','2023-02-26 12:44:23','2023-02-26 12:44:23',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Home page','1column',NULL,NULL,'home','Home Page','<p>CMS homepage content goes here.</p>\r\n','2023-02-26 12:44:23','2023-02-26 12:44:27',1,0,'<!--\n    <referenceContainer name=\"right\">\n        <referenceBlock name=\"catalog.compare.sidebar\" remove=\"true\" />\n    </referenceContainer>-->',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Enable Cookies','1column',NULL,NULL,'enable-cookies','What are Cookies?','<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>','2023-02-26 12:44:23','2023-02-26 12:44:23',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Privacy and Cookie Policy','1column',NULL,NULL,'privacy-policy-cookie-restriction-mode','Privacy and Cookie Policy','<div class=\"privacy-policy cms-content\">\n    <div class=\"message info\">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter \"the Store\") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name=\"list\"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class=\"data-table data-table-definition-list\">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>','2023-02-26 12:44:23','2023-02-26 12:44:23',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Nakshathra Designer Boutique','1column','','','shopkartlite_home','','<span class=\"display:none;\"></span>','2023-02-26 12:46:58','2023-02-26 13:04:03',1,0,NULL,'','',NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_store`
--

DROP TABLE IF EXISTS `cms_page_store`;
CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Entity ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

LOCK TABLES `cms_page_store` WRITE;
/*!40000 ALTER TABLE `cms_page_store` DISABLE KEYS */;
INSERT INTO `cms_page_store` VALUES (1,0),(2,0),(3,0),(4,0),(5,0);
/*!40000 ALTER TABLE `cms_page_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_config_data`
--

DROP TABLE IF EXISTS `core_config_data`;
CREATE TABLE `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config ID',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope ID',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

LOCK TABLES `core_config_data` WRITE;
/*!40000 ALTER TABLE `core_config_data` DISABLE KEYS */;
INSERT INTO `core_config_data` VALUES ('1','default','0','web/unsecure/base_url','http://localhost/nakshathra/','2023-02-26 12:44:17'),('2','default','0','general/locale/code','en_US','2023-02-26 12:44:17'),('3','default','0','currency/options/base','INR','2023-02-26 12:44:17'),('4','default','0','currency/options/default','INR','2023-02-26 12:44:17'),('5','default','0','currency/options/allow','INR','2023-02-26 12:44:17'),('6','default','0','general/region/display_all','1','2023-02-26 12:44:18'),('7','default','0','general/region/state_required','AU,BR,CA,CH,CN,CO,EE,ES,HR,IN,LT,LV,MX,PL,RO,US','2023-02-26 12:44:21'),('8','default','0','catalog/category/root_id','2','2023-02-26 12:44:25'),('9','default','0','analytics/subscription/enabled','1','2023-02-26 12:44:26'),('10','default','0','crontab/default/jobs/analytics_subscribe/schedule/cron_expr','0 * * * *','2023-02-26 12:44:26'),('11','default','0','crontab/default/jobs/analytics_collect_data/schedule/cron_expr','00 02 * * *','2023-02-26 12:44:27'),('12','default','0','payment/authorizenet_acceptjs/cctypes','AE,VI,MC,DI,JCB,DN','2023-02-26 12:44:27'),('13','default','0','payment/authorizenet_acceptjs/order_status','processing','2023-02-26 12:44:27'),('14','default','0','payment/authorizenet_acceptjs/payment_action','authorize','2023-02-26 12:44:27'),('15','default','0','payment/authorizenet_acceptjs/currency','USD','2023-02-26 12:44:27'),('16','websites','1','payment/authorizenet_acceptjs/cctypes','AE,VI,MC,DI,JCB,DN','2023-02-26 12:44:27'),('17','websites','1','payment/authorizenet_acceptjs/order_status','processing','2023-02-26 12:44:27'),('18','websites','1','payment/authorizenet_acceptjs/payment_action','authorize','2023-02-26 12:44:27'),('19','websites','1','payment/authorizenet_acceptjs/currency','USD','2023-02-26 12:44:27'),('20','default','0','admin/usage/enabled','1','2023-02-26 12:59:26'),('21','stores','1','design/theme/theme_id','4','2023-02-26 12:59:46'),('22','default','0','shopkartlitesettings/navigation_settings/enable','1','2023-02-26 13:01:19'),('23','default','0','shopkartlitesettings/promotion_settings/enable_promotion','0','2023-02-27 02:29:31'),('24','default','0','shopkartlitesettings/category_settings/show_border','0','2023-02-26 13:01:19'),('25','default','0','shopkartlitesettings/category_settings/show_new_label','0','2023-02-26 13:01:19'),('26','default','0','shopkartlitesettings/category_settings/show_sale_label','0','2023-02-26 13:01:19'),('27','default','0','shopkartlitesettings/product_settings/show_new_label','0','2023-02-26 13:01:19'),('28','default','0','shopkartlitesettings/product_settings/show_sale_label','0','2023-02-26 13:01:19'),('29','default','0','shopkartlitesettings/footer_columns/enable_footer_columns','1','2023-02-26 13:01:19'),('30','default','0','shopkartlitesettings/footer_columns/footer_st_column',NULL,'2023-02-26 13:01:19'),('31','default','0','shopkartlitesettings/footer_columns/footer_nd_column','footer_quicklinks','2023-02-26 13:01:19'),('32','default','0','shopkartlitesettings/footer_columns/footer_rd_column','footer_myaccount','2023-02-26 13:01:19'),('33','default','0','shopkartlitesettings/footer_columns/footer_th_column','footer_newsletter','2023-02-26 13:01:19'),('34','default','0','shopkartlitesettings/footer_bottom/enable_footer_bottom','1','2023-02-26 13:01:19'),('35','default','0','shopkartlitesettings/footer_bottom/copyright_text','Copyright © 2014-present Nakshathra Designer Boutique, Inc. All rights reserved.','2023-02-26 13:31:20'),('36','default','0','shopkartlitesettings/footer_bottom/copyright_right_block',NULL,'2023-02-26 13:01:19'),('37','default','0','shopkartlitesettings/customcss/custom_css',NULL,'2023-02-26 13:01:19'),('38','stores','1','design/header/logo_src','stores/1/Picsart_23-02-26_20-02-06-375.jpg','2023-02-26 13:30:33'),('39','stores','1','design/footer/copyright','Copyright © 2014-present Nakshathra Designer Boutique, Inc. All rights reserved.','2023-02-26 13:30:33'),('40','stores','1','design/header/welcome','Your comfort is our mission!','2023-02-26 13:41:49'),('41','stores','1','design/head/default_title','Nakshathra Designer Boutique','2023-02-26 14:34:02'),('42','stores','1','design/head/shortcut_icon','stores/1/Untitled_design_1_.png','2023-02-26 18:40:14'),('43','default','0','shopkartlitesettings/promotion_settings/promotion_text','This site is under development.','2023-02-27 02:28:21'),('44','default','0','system/full_page_cache/varnish/access_list','localhost','2023-02-27 05:23:31'),('45','default','0','system/full_page_cache/varnish/backend_host','localhost','2023-02-27 05:23:31'),('46','default','0','system/full_page_cache/varnish/backend_port','8080','2023-02-27 05:23:31'),('47','default','0','system/full_page_cache/varnish/grace_period','300','2023-02-27 05:23:31'),('48','default','0','system/mysqlmq/successful_messages_lifetime','10080','2023-02-27 05:23:55'),('49','default','0','system/mysqlmq/retry_inprogress_after','1440','2023-02-27 05:23:55'),('50','default','0','system/mysqlmq/failed_messages_lifetime','10080','2023-02-27 05:23:55'),('51','default','0','system/mysqlmq/new_messages_lifetime','10080','2023-02-27 05:23:55'),('52','default','0','system/smtp/port','1025','2023-02-27 05:23:55'),('53','default','0','system/smtp/set_return_path','0','2023-02-27 05:23:55'),('54','default','0','system/backup/functionality_enabled','1','2023-02-27 12:01:19'),('55','default','0','system/bulk/lifetime','60','2023-02-27 05:23:55'),('56','default','0','system/media_storage_configuration/media_storage','0','2023-02-27 05:23:55'),('57','default','0','paypal/general/merchant_country','IN','2023-02-27 07:05:48'),('58','default','0','payment/paypal_express/active','0','2023-02-27 07:05:48'),('59','default','0','payment/paypal_express/in_context','0','2023-02-27 07:05:48'),('60','default','0','paypal/general/business_account',NULL,'2023-02-27 07:05:48'),('61','default','0','paypal/wpp/api_authentication','0','2023-02-27 07:05:48'),('62','default','0','paypal/wpp/api_username',NULL,'2023-02-27 07:05:48'),('63','default','0','paypal/wpp/api_password',NULL,'2023-02-27 07:05:48'),('64','default','0','paypal/wpp/api_signature',NULL,'2023-02-27 07:05:48'),('65','default','0','paypal/wpp/sandbox_flag','0','2023-02-27 07:05:48'),('66','default','0','paypal/wpp/use_proxy','0','2023-02-27 07:05:48'),('67','default','0','payment/paypal_express/title','PayPal Express Checkout','2023-02-27 07:05:48'),('68','default','0','payment/paypal_express/sort_order',NULL,'2023-02-27 07:05:48'),('69','default','0','payment/paypal_express/payment_action','Authorization','2023-02-27 07:05:48'),('70','default','0','payment/paypal_express/visible_on_product','1','2023-02-27 07:05:48'),('71','default','0','payment/paypal_express/visible_on_cart','1','2023-02-27 07:05:48'),('72','default','0','payment/paypal_express/allowspecific','0','2023-02-27 07:05:48'),('73','default','0','payment/paypal_express/debug','0','2023-02-27 07:05:48'),('74','default','0','payment/paypal_express/verify_peer','1','2023-02-27 07:05:48'),('75','default','0','payment/paypal_express/line_items_enabled','1','2023-02-27 07:05:48'),('76','default','0','payment/paypal_express/transfer_shipping_options','0','2023-02-27 07:05:48'),('77','default','0','paypal/wpp/button_flavor','dynamic','2023-02-27 07:05:48'),('78','default','0','payment/paypal_express/solution_type','Mark','2023-02-27 07:05:48'),('79','default','0','payment/paypal_express/require_billing_address','0','2023-02-27 07:05:48'),('80','default','0','payment/paypal_express/allow_ba_signup','never','2023-02-27 07:05:48'),('81','default','0','payment/paypal_express/skip_order_review_step','1','2023-02-27 07:05:48'),('82','default','0','payment/paypal_billing_agreement/active','1','2023-02-27 07:05:48'),('83','default','0','payment/paypal_billing_agreement/title','PayPal Billing Agreement','2023-02-27 07:05:48'),('84','default','0','payment/paypal_billing_agreement/sort_order',NULL,'2023-02-27 07:05:48'),('85','default','0','payment/paypal_billing_agreement/payment_action','Authorization','2023-02-27 07:05:48'),('86','default','0','payment/paypal_billing_agreement/allowspecific','0','2023-02-27 07:05:48'),('87','default','0','payment/paypal_billing_agreement/debug','0','2023-02-27 07:05:48'),('88','default','0','payment/paypal_billing_agreement/verify_peer','1','2023-02-27 07:05:48'),('89','default','0','payment/paypal_billing_agreement/line_items_enabled','0','2023-02-27 07:05:48'),('90','default','0','payment/paypal_billing_agreement/allow_billing_agreement_wizard','1','2023-02-27 07:05:48'),('91','default','0','paypal/fetch_reports/ftp_login',NULL,'2023-02-27 07:05:48'),('92','default','0','paypal/fetch_reports/ftp_password',NULL,'2023-02-27 07:05:48'),('93','default','0','paypal/fetch_reports/ftp_sandbox','0','2023-02-27 07:05:48'),('94','default','0','paypal/fetch_reports/ftp_ip',NULL,'2023-02-27 07:05:48'),('95','default','0','paypal/fetch_reports/ftp_path',NULL,'2023-02-27 07:05:48'),('96','default','0','paypal/fetch_reports/active','0','2023-02-27 07:05:48'),('97','default','0','paypal/fetch_reports/schedule','1','2023-02-27 07:05:48'),('98','default','0','paypal/fetch_reports/time','00,00,00','2023-02-27 07:05:48'),('99','default','0','paypal/style/logo',NULL,'2023-02-27 07:05:48'),('100','default','0','paypal/style/page_style',NULL,'2023-02-27 07:05:48'),('101','default','0','paypal/style/paypal_hdrimg',NULL,'2023-02-27 07:05:48'),('102','default','0','paypal/style/paypal_hdrbackcolor',NULL,'2023-02-27 07:05:48'),('103','default','0','paypal/style/paypal_hdrbordercolor',NULL,'2023-02-27 07:05:48'),('104','default','0','paypal/style/paypal_payflowcolor',NULL,'2023-02-27 07:05:48'),('105','default','0','paypal/style/checkout_page_button_customize','0','2023-02-27 07:05:48'),('106','default','0','paypal/style/product_page_button_customize','0','2023-02-27 07:05:48'),('107','default','0','paypal/style/cart_page_button_customize','0','2023-02-27 07:05:48'),('108','default','0','paypal/style/mini_cart_page_button_customize','0','2023-02-27 07:05:48'),('109','default','0','paypal/style/disable_funding_options',NULL,'2023-02-27 07:05:48'),('110','default','0','payment/wps_express/active','0','2023-02-27 07:05:48'),('111','default','0','payment/checkmo/specificcountry',NULL,'2023-02-27 07:05:48'),('112','default','0','payment/checkmo/payable_to',NULL,'2023-02-27 07:05:48'),('113','default','0','payment/checkmo/mailing_address',NULL,'2023-02-27 07:05:48'),('114','default','0','payment/checkmo/min_order_total',NULL,'2023-02-27 07:05:48'),('115','default','0','payment/checkmo/max_order_total',NULL,'2023-02-27 07:05:48'),('116','default','0','payment/checkmo/sort_order',NULL,'2023-02-27 07:05:48'),('117','default','0','payment/cashondelivery/specificcountry',NULL,'2023-02-27 07:05:48'),('118','default','0','payment/cashondelivery/instructions',NULL,'2023-02-27 07:05:48'),('119','default','0','payment/cashondelivery/min_order_total',NULL,'2023-02-27 07:05:48'),('120','default','0','payment/cashondelivery/max_order_total',NULL,'2023-02-27 07:05:48'),('121','default','0','payment/cashondelivery/sort_order',NULL,'2023-02-27 07:05:48'),('122','default','0','payment/banktransfer/specificcountry',NULL,'2023-02-27 07:05:48'),('123','default','0','payment/banktransfer/instructions',NULL,'2023-02-27 07:05:48'),('124','default','0','payment/banktransfer/min_order_total',NULL,'2023-02-27 07:05:48'),('125','default','0','payment/banktransfer/max_order_total',NULL,'2023-02-27 07:05:48'),('126','default','0','payment/banktransfer/sort_order',NULL,'2023-02-27 07:05:48'),('127','default','0','payment/free/specificcountry',NULL,'2023-02-27 07:05:48'),('128','default','0','payment/purchaseorder/specificcountry',NULL,'2023-02-27 07:05:48'),('129','default','0','payment/purchaseorder/min_order_total',NULL,'2023-02-27 07:05:48'),('130','default','0','payment/purchaseorder/max_order_total',NULL,'2023-02-27 07:05:48'),('131','default','0','payment/purchaseorder/sort_order',NULL,'2023-02-27 07:05:48'),('132','default','0','payment/razorpay/title','Razorpay','2023-02-27 07:05:48'),('133','default','0','payment/razorpay/merchant_name_override','Nakshathra Designer Boutique','2023-02-27 07:07:20'),('134','default','0','payment/razorpay/active','1','2023-02-27 07:05:48'),('135','default','0','payment/razorpay/rzp_payment_action','authorize_capture','2023-02-27 07:05:48'),('136','default','0','payment/razorpay/auto_invoice','1','2023-02-27 07:05:48'),('137','default','0','payment/razorpay/key_id','rzp_test_E0WEQ7KkjWYfIV','2023-02-27 07:05:48'),('138','default','0','payment/razorpay/key_secret','caFwyC26U0rfJ1lx2Td95MuF','2023-02-27 07:05:48'),('139','default','0','payment/razorpay/enable_pending_orders_cron','1','2023-02-27 07:05:48'),('140','default','0','payment/razorpay/pending_orders_timeout','30','2023-02-27 07:05:48'),('141','default','0','payment/razorpay/order_status','pending','2023-02-27 07:05:48'),('142','default','0','payment/razorpay/enable_custom_paid_order_status','0','2023-02-27 07:05:48'),('143','default','0','payment/razorpay/allowspecific','0','2023-02-27 07:05:48'),('144','default','0','payment/razorpay/specificcountry',NULL,'2023-02-27 07:05:48'),('145','default','0','payment/razorpay/disable_upgrade_notice','0','2023-02-27 07:05:48'),('146','default','0','payment/razorpay/sort_order',NULL,'2023-02-27 07:05:48'),('147','default','0','payment/braintree/active','0','2023-02-27 07:05:48'),('148','default','0','payment/braintree_paypal/active','0','2023-02-27 07:05:48'),('149','default','0','payment/braintree_cc_vault/active','0','2023-02-27 07:05:48'),('150','default','0','payment/braintree/title','Credit Card (Braintree)','2023-02-27 07:05:48'),('151','default','0','payment/braintree/environment','sandbox','2023-02-27 07:05:48'),('152','default','0','payment/braintree/payment_action','authorize','2023-02-27 07:05:48'),('153','default','0','payment/braintree/merchant_id',NULL,'2023-02-27 07:05:49'),('154','default','0','payment/braintree/public_key',NULL,'2023-02-27 07:05:49'),('155','default','0','payment/braintree/private_key',NULL,'2023-02-27 07:05:49'),('156','default','0','payment/braintree_cc_vault/title','Stored Cards (Braintree)','2023-02-27 07:05:49'),('157','default','0','payment/braintree/merchant_account_id',NULL,'2023-02-27 07:05:49'),('158','default','0','payment/braintree/fraudprotection','0','2023-02-27 07:05:49'),('159','default','0','payment/braintree/debug','0','2023-02-27 07:05:49'),('160','default','0','payment/braintree/useccv','1','2023-02-27 07:05:49'),('161','default','0','payment/braintree/cctypes','CUP,AE,VI,MC,DI,JCB,DN,MI','2023-02-27 07:05:49'),('162','default','0','payment/braintree/sort_order',NULL,'2023-02-27 07:05:49'),('163','default','0','payment/braintree/allowspecific','0','2023-02-27 07:05:49'),('164','default','0','payment/braintree/specificcountry',NULL,'2023-02-27 07:05:49'),('165','default','0','payment/braintree/countrycreditcard','[]','2023-02-27 07:05:49'),('166','default','0','payment/braintree_paypal/title','PayPal (Braintree)','2023-02-27 07:05:49'),('167','default','0','payment/braintree_paypal_vault/active','0','2023-02-27 07:05:49'),('168','default','0','payment/braintree_paypal/sort_order',NULL,'2023-02-27 07:05:49'),('169','default','0','payment/braintree_paypal/merchant_name_override',NULL,'2023-02-27 07:05:49'),('170','default','0','payment/braintree_paypal/payment_action','authorize','2023-02-27 07:05:49'),('171','default','0','payment/braintree_paypal/allowspecific','0','2023-02-27 07:05:49'),('172','default','0','payment/braintree_paypal/specificcountry',NULL,'2023-02-27 07:05:49'),('173','default','0','payment/braintree_paypal/require_billing_address','0','2023-02-27 07:05:49'),('174','default','0','payment/braintree_paypal/allow_shipping_address_override','1','2023-02-27 07:05:49'),('175','default','0','payment/braintree_paypal/debug','0','2023-02-27 07:05:49'),('176','default','0','payment/braintree_paypal/display_on_shopping_cart','1','2023-02-27 07:05:49'),('177','default','0','payment/braintree_paypal/skip_order_review','0','2023-02-27 07:05:49'),('178','default','0','payment/braintree/verify_3dsecure','0','2023-02-27 07:05:49'),('179','default','0','payment/braintree/threshold_amount',NULL,'2023-02-27 07:05:49'),('180','default','0','payment/braintree/verify_all_countries','0','2023-02-27 07:05:49'),('181','default','0','payment/braintree/verify_specific_countries',NULL,'2023-02-27 07:05:49'),('182','default','0','payment/braintree/descriptor_name',NULL,'2023-02-27 07:05:49'),('183','default','0','payment/braintree/descriptor_phone',NULL,'2023-02-27 07:05:49'),('184','default','0','payment/braintree/descriptor_url',NULL,'2023-02-27 07:05:49'),('185','default','0','payment/authorizenet_directpost/login',NULL,'2023-02-27 07:05:49'),('186','default','0','payment/authorizenet_directpost/trans_key',NULL,'2023-02-27 07:05:49'),('187','default','0','payment/authorizenet_directpost/signature_key',NULL,'2023-02-27 07:05:49'),('188','default','0','payment/authorizenet_directpost/trans_md5',NULL,'2023-02-27 07:05:49'),('189','default','0','payment/authorizenet_directpost/merchant_email',NULL,'2023-02-27 07:05:49'),('190','default','0','payment/authorizenet_directpost/useccv','0','2023-02-27 07:05:49'),('191','default','0','payment/authorizenet_directpost/specificcountry',NULL,'2023-02-27 07:05:49'),('192','default','0','payment/authorizenet_directpost/min_order_total',NULL,'2023-02-27 07:05:49'),('193','default','0','payment/authorizenet_directpost/max_order_total',NULL,'2023-02-27 07:05:49'),('194','default','0','payment/authorizenet_directpost/sort_order',NULL,'2023-02-27 07:05:49'),('195','default','0','payment/authorizenet_acceptjs/environment','production','2023-02-27 07:05:49'),('196','default','0','payment/authorizenet_acceptjs/specificcountry',NULL,'2023-02-27 07:05:49'),('197','default','0','payment/authorizenet_acceptjs/min_order_total',NULL,'2023-02-27 07:05:49'),('198','default','0','payment/authorizenet_acceptjs/max_order_total',NULL,'2023-02-27 07:05:49'),('199','default','0','payment/authorizenet_acceptjs/sort_order',NULL,'2023-02-27 07:05:49'),('200','default','0','payment/checkmo/active','0','2023-02-27 07:07:20'),('201','default','0','system/backup/enabled','0','2023-02-27 12:01:19');
/*!40000 ALTER TABLE `core_config_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_schedule`
--

DROP TABLE IF EXISTS `cron_schedule`;
CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule ID',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4211 DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

--
-- Dumping data for table `cron_schedule`
--

LOCK TABLES `cron_schedule` WRITE;
/*!40000 ALTER TABLE `cron_schedule` DISABLE KEYS */;
INSERT INTO `cron_schedule` VALUES ('271','indexer_reindex_all_invalid','missed','Cron Job indexer_reindex_all_invalid is missed at 2023-02-27 06:54:00','2023-02-27 06:53:07','2023-02-27 06:54:00',NULL,NULL),('272','razorpay_update_order_to_processing','error','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'rzp_update_order_cron_status\' in \'where clause\', query was: SELECT `main_table`.* FROM `sales_order` AS `main_table` WHERE ((`rzp_update_order_cron_status` < 5)) AND ((`rzp_webhook_notified_at` != \'\')) AND ((`rzp_webhook_notified_at` < 1677480671)) AND ((`status` = \'pending\')) ORDER BY main_table.entity_id DESC\n','2023-02-27 06:53:07','2023-02-27 06:55:00','2023-02-27 06:56:11',NULL),('280','indexer_update_all_views','missed','Cron Job indexer_update_all_views is missed at 2023-02-27 06:54:00','2023-02-27 06:53:07','2023-02-27 06:54:00',NULL,NULL),('1114','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1115','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1116','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1117','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1118','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1119','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1130','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1131','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1132','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1133','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1134','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1135','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1138','catalog_product_attribute_value_synchronize','missed','Cron Job catalog_product_attribute_value_synchronize is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1157','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1158','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1159','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1160','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1161','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1162','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1173','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1174','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1175','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1176','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1177','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1178','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1189','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1190','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1191','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1192','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1193','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1194','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1205','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1206','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1207','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1208','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1209','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1210','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1220','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 08:08:00','2023-02-27 07:55:08','2023-02-27 08:08:00',NULL,NULL),('1221','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1222','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1223','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1224','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1225','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1226','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1236','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 08:08:00','2023-02-27 07:55:08','2023-02-27 08:08:00',NULL,NULL),('1237','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1238','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1239','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1240','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1241','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1242','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1252','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 08:08:00','2023-02-27 07:55:08','2023-02-27 08:08:00',NULL,NULL),('1253','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 08:09:00','2023-02-27 07:55:08','2023-02-27 08:09:00',NULL,NULL),('1254','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 08:10:00','2023-02-27 07:55:08','2023-02-27 08:10:00',NULL,NULL),('1255','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 08:11:00','2023-02-27 07:55:08','2023-02-27 08:11:00',NULL,NULL),('1256','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 08:12:00','2023-02-27 07:55:08','2023-02-27 08:12:00',NULL,NULL),('1257','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 08:13:00','2023-02-27 07:55:08','2023-02-27 08:13:00',NULL,NULL),('1258','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 08:14:00','2023-02-27 07:55:08','2023-02-27 08:14:00',NULL,NULL),('1268','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 08:08:00','2023-02-27 07:55:09','2023-02-27 08:08:00',NULL,NULL),('1269','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 08:09:00','2023-02-27 07:55:09','2023-02-27 08:09:00',NULL,NULL),('1270','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 08:10:00','2023-02-27 07:55:09','2023-02-27 08:10:00',NULL,NULL),('1271','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 08:11:00','2023-02-27 07:55:09','2023-02-27 08:11:00',NULL,NULL),('1272','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 08:12:00','2023-02-27 07:55:09','2023-02-27 08:12:00',NULL,NULL),('1273','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 08:13:00','2023-02-27 07:55:09','2023-02-27 08:13:00',NULL,NULL),('1274','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 08:14:00','2023-02-27 07:55:09','2023-02-27 08:14:00',NULL,NULL),('1277','captcha_delete_expired_images','missed','Cron Job captcha_delete_expired_images is missed at 2023-02-27 08:10:00','2023-02-27 07:55:09','2023-02-27 08:10:00',NULL,NULL),('1287','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 08:08:00','2023-02-27 07:55:09','2023-02-27 08:08:00',NULL,NULL),('1288','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 08:09:00','2023-02-27 07:55:09','2023-02-27 08:09:00',NULL,NULL),('1289','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 08:10:00','2023-02-27 07:55:09','2023-02-27 08:10:00',NULL,NULL),('1290','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 08:11:00','2023-02-27 07:55:09','2023-02-27 08:11:00',NULL,NULL),('1291','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 08:12:00','2023-02-27 07:55:09','2023-02-27 08:12:00',NULL,NULL),('1292','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 08:13:00','2023-02-27 07:55:09','2023-02-27 08:13:00',NULL,NULL),('1293','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 08:14:00','2023-02-27 07:55:09','2023-02-27 08:14:00',NULL,NULL),('1304','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 08:08:00','2023-02-27 07:55:09','2023-02-27 08:08:00',NULL,NULL),('1305','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 08:09:00','2023-02-27 07:55:09','2023-02-27 08:09:00',NULL,NULL),('1306','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 08:10:00','2023-02-27 07:55:09','2023-02-27 08:10:00',NULL,NULL),('1307','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 08:11:00','2023-02-27 07:55:09','2023-02-27 08:11:00',NULL,NULL),('1308','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 08:12:00','2023-02-27 07:55:09','2023-02-27 08:12:00',NULL,NULL),('1309','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 08:13:00','2023-02-27 07:55:09','2023-02-27 08:13:00',NULL,NULL),('1310','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 08:14:00','2023-02-27 07:55:09','2023-02-27 08:14:00',NULL,NULL),('1318','magento_newrelicreporting_cron','missed','Cron Job magento_newrelicreporting_cron is missed at 2023-02-27 08:10:00','2023-02-27 07:55:09','2023-02-27 08:10:00',NULL,NULL),('1319','magento_newrelicreporting_cron','missed','Cron Job magento_newrelicreporting_cron is missed at 2023-02-27 08:12:00','2023-02-27 07:55:09','2023-02-27 08:12:00',NULL,NULL),('1320','magento_newrelicreporting_cron','missed','Cron Job magento_newrelicreporting_cron is missed at 2023-02-27 08:14:00','2023-02-27 07:55:09','2023-02-27 08:14:00',NULL,NULL),('1323','newsletter_send_all','missed','Cron Job newsletter_send_all is missed at 2023-02-27 08:10:00','2023-02-27 07:55:09','2023-02-27 08:10:00',NULL,NULL),('1339','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 08:09:00','2023-02-27 07:55:18','2023-02-27 08:09:00',NULL,NULL),('1340','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 08:10:00','2023-02-27 07:55:18','2023-02-27 08:10:00',NULL,NULL),('1341','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 08:11:00','2023-02-27 07:55:18','2023-02-27 08:11:00',NULL,NULL),('1342','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 08:12:00','2023-02-27 07:55:18','2023-02-27 08:12:00',NULL,NULL),('1343','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 08:13:00','2023-02-27 07:55:18','2023-02-27 08:13:00',NULL,NULL),('1344','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 08:14:00','2023-02-27 07:55:18','2023-02-27 08:14:00',NULL,NULL),('1371','indexer_reindex_all_invalid','missed','Cron Job indexer_reindex_all_invalid is missed at 2023-02-27 08:09:00','2023-02-27 08:06:23','2023-02-27 08:09:00',NULL,NULL),('1373','indexer_update_all_views','missed','Cron Job indexer_update_all_views is missed at 2023-02-27 08:09:00','2023-02-27 08:06:23','2023-02-27 08:09:00',NULL,NULL),('1374','indexer_reindex_all_invalid','missed','Cron Job indexer_reindex_all_invalid is missed at 2023-02-27 08:10:00','2023-02-27 08:07:40','2023-02-27 08:10:00',NULL,NULL),('1375','razorpay_cancel_pending_orders','missed','Cron Job razorpay_cancel_pending_orders is missed at 2023-02-27 08:10:00','2023-02-27 08:07:40','2023-02-27 08:10:00',NULL,NULL),('1376','indexer_update_all_views','missed','Cron Job indexer_update_all_views is missed at 2023-02-27 08:10:00','2023-02-27 08:07:40','2023-02-27 08:10:00',NULL,NULL),('1377','razorpay_update_order_to_processing','missed','Cron Job razorpay_update_order_to_processing is missed at 2023-02-27 08:10:00','2023-02-27 08:07:40','2023-02-27 08:10:00',NULL,NULL),('2418','razorpay_cancel_pending_orders','missed','Cron Job razorpay_cancel_pending_orders is missed at 2023-02-27 10:00:00','2023-02-27 09:58:05','2023-02-27 10:00:00',NULL,NULL),('2420','indexer_reindex_all_invalid','missed','Cron Job indexer_reindex_all_invalid is missed at 2023-02-27 10:00:00','2023-02-27 09:58:05','2023-02-27 10:00:00',NULL,NULL),('2423','razorpay_update_order_to_processing','missed','Cron Job razorpay_update_order_to_processing is missed at 2023-02-27 10:00:00','2023-02-27 09:58:05','2023-02-27 10:00:00',NULL,NULL),('2425','indexer_update_all_views','missed','Cron Job indexer_update_all_views is missed at 2023-02-27 10:00:00','2023-02-27 09:58:05','2023-02-27 10:00:00',NULL,NULL),('2429','indexer_clean_all_changelogs','missed','Cron Job indexer_clean_all_changelogs is missed at 2023-02-27 10:00:00','2023-02-27 09:58:05','2023-02-27 10:00:00',NULL,NULL),('3240','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3241','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3242','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3243','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3244','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3245','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3246','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3247','catalog_product_outdated_price_values_cleanup','missed','Cron Job catalog_product_outdated_price_values_cleanup is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3256','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3257','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3258','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3259','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3260','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3261','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3262','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3263','catalog_product_frontend_actions_flush','missed','Cron Job catalog_product_frontend_actions_flush is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3265','catalog_product_attribute_value_synchronize','missed','Cron Job catalog_product_attribute_value_synchronize is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3266','catalog_product_attribute_value_synchronize','missed','Cron Job catalog_product_attribute_value_synchronize is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3275','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3276','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3277','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3278','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3279','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3280','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3281','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3282','sales_grid_order_async_insert','missed','Cron Job sales_grid_order_async_insert is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3291','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3292','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3293','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3294','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3295','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3296','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3297','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3298','sales_grid_order_invoice_async_insert','missed','Cron Job sales_grid_order_invoice_async_insert is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3307','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3308','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3309','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3310','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3311','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3312','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3313','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3314','sales_grid_order_shipment_async_insert','missed','Cron Job sales_grid_order_shipment_async_insert is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3322','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:08:00','2023-02-27 10:57:14','2023-02-27 11:08:00',NULL,NULL),('3323','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3324','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3325','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3326','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3327','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3328','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3329','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3330','sales_grid_order_creditmemo_async_insert','missed','Cron Job sales_grid_order_creditmemo_async_insert is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3338','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:08:00','2023-02-27 10:57:14','2023-02-27 11:08:00',NULL,NULL),('3339','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3340','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3341','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3342','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3343','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3344','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3345','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3346','sales_send_order_emails','missed','Cron Job sales_send_order_emails is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3354','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:08:00','2023-02-27 10:57:14','2023-02-27 11:08:00',NULL,NULL),('3355','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3356','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3357','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3358','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3359','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3360','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3361','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3362','sales_send_order_invoice_emails','missed','Cron Job sales_send_order_invoice_emails is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3370','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:08:00','2023-02-27 10:57:14','2023-02-27 11:08:00',NULL,NULL),('3371','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3372','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3373','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3374','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3375','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3376','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3377','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3378','sales_send_order_shipment_emails','missed','Cron Job sales_send_order_shipment_emails is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3386','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:08:00','2023-02-27 10:57:14','2023-02-27 11:08:00',NULL,NULL),('3387','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3388','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3389','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3390','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3391','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3392','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3393','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3394','sales_send_order_creditmemo_emails','missed','Cron Job sales_send_order_creditmemo_emails is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3395','captcha_delete_expired_images','missed','Cron Job captcha_delete_expired_images is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3403','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:08:00','2023-02-27 10:57:14','2023-02-27 11:08:00',NULL,NULL),('3404','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3405','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3406','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3407','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3408','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3409','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3410','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3411','outdated_authentication_failures_cleanup','missed','Cron Job outdated_authentication_failures_cleanup is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3419','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:08:00','2023-02-27 10:57:14','2023-02-27 11:08:00',NULL,NULL),('3420','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:09:00','2023-02-27 10:57:14','2023-02-27 11:09:00',NULL,NULL),('3421','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3422','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:11:00','2023-02-27 10:57:14','2023-02-27 11:11:00',NULL,NULL),('3423','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3424','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:13:00','2023-02-27 10:57:14','2023-02-27 11:13:00',NULL,NULL),('3425','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3426','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3427','bulk_cleanup','missed','Cron Job bulk_cleanup is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3432','magento_newrelicreporting_cron','missed','Cron Job magento_newrelicreporting_cron is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3433','magento_newrelicreporting_cron','missed','Cron Job magento_newrelicreporting_cron is missed at 2023-02-27 11:12:00','2023-02-27 10:57:14','2023-02-27 11:12:00',NULL,NULL),('3434','magento_newrelicreporting_cron','missed','Cron Job magento_newrelicreporting_cron is missed at 2023-02-27 11:14:00','2023-02-27 10:57:14','2023-02-27 11:14:00',NULL,NULL),('3435','magento_newrelicreporting_cron','missed','Cron Job magento_newrelicreporting_cron is missed at 2023-02-27 11:16:00','2023-02-27 10:57:14','2023-02-27 11:16:00',NULL,NULL),('3437','newsletter_send_all','missed','Cron Job newsletter_send_all is missed at 2023-02-27 11:10:00','2023-02-27 10:57:14','2023-02-27 11:10:00',NULL,NULL),('3438','newsletter_send_all','missed','Cron Job newsletter_send_all is missed at 2023-02-27 11:15:00','2023-02-27 10:57:14','2023-02-27 11:15:00',NULL,NULL),('3451','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:08:00','2023-02-27 10:59:23','2023-02-27 11:08:00',NULL,NULL),('3453','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:09:00','2023-02-27 10:59:23','2023-02-27 11:09:00',NULL,NULL),('3454','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:10:00','2023-02-27 10:59:23','2023-02-27 11:10:00',NULL,NULL),('3457','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:11:00','2023-02-27 10:59:23','2023-02-27 11:11:00',NULL,NULL),('3458','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:12:00','2023-02-27 10:59:23','2023-02-27 11:12:00',NULL,NULL),('3459','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:13:00','2023-02-27 10:59:23','2023-02-27 11:13:00',NULL,NULL),('3460','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:14:00','2023-02-27 10:59:23','2023-02-27 11:14:00',NULL,NULL),('3461','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:15:00','2023-02-27 10:59:23','2023-02-27 11:15:00',NULL,NULL),('3462','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:16:00','2023-02-27 10:59:23','2023-02-27 11:16:00',NULL,NULL),('3463','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:17:00','2023-02-27 10:59:23','2023-02-27 11:17:00',NULL,NULL),('3464','consumers_runner','missed','Cron Job consumers_runner is missed at 2023-02-27 11:18:00','2023-02-27 10:59:23','2023-02-27 11:18:00',NULL,NULL),('3475','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:04:14','2023-02-27 11:07:00','2023-02-27 11:07:21','2023-02-27 11:07:21'),('3476','indexer_update_all_views','success',NULL,'2023-02-27 11:04:14','2023-02-27 11:07:00','2023-02-27 11:07:21','2023-02-27 11:07:21'),('3477','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:05:27','2023-02-27 11:08:00','2023-02-27 11:08:14','2023-02-27 11:08:14'),('3478','indexer_update_all_views','success',NULL,'2023-02-27 11:05:27','2023-02-27 11:08:00','2023-02-27 11:08:14','2023-02-27 11:08:14'),('3479','razorpay_cancel_pending_orders','missed','Cron Job razorpay_cancel_pending_orders is missed at 2023-02-27 11:10:00','2023-02-27 11:07:20','2023-02-27 11:10:00',NULL,NULL),('3480','indexer_reindex_all_invalid','missed','Cron Job indexer_reindex_all_invalid is missed at 2023-02-27 11:09:00','2023-02-27 11:07:20','2023-02-27 11:09:00',NULL,NULL),('3481','indexer_reindex_all_invalid','missed','Cron Job indexer_reindex_all_invalid is missed at 2023-02-27 11:10:00','2023-02-27 11:07:20','2023-02-27 11:10:00',NULL,NULL),('3482','indexer_update_all_views','missed','Cron Job indexer_update_all_views is missed at 2023-02-27 11:09:00','2023-02-27 11:07:20','2023-02-27 11:09:00',NULL,NULL),('3483','indexer_update_all_views','missed','Cron Job indexer_update_all_views is missed at 2023-02-27 11:10:00','2023-02-27 11:07:20','2023-02-27 11:10:00',NULL,NULL),('3484','razorpay_update_order_to_processing','missed','Cron Job razorpay_update_order_to_processing is missed at 2023-02-27 11:10:00','2023-02-27 11:07:21','2023-02-27 11:10:00',NULL,NULL),('3485','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:37:00','2023-02-27 11:37:18','2023-02-27 11:37:18'),('3486','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:38:00','2023-02-27 11:38:11','2023-02-27 11:38:11'),('3487','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:39:00','2023-02-27 11:39:11','2023-02-27 11:39:11'),('3488','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:40:00','2023-02-27 11:40:11','2023-02-27 11:40:11'),('3489','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:41:00','2023-02-27 11:41:06','2023-02-27 11:41:06'),('3490','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:42:00','2023-02-27 11:42:11','2023-02-27 11:42:11'),('3491','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:43:00','2023-02-27 11:43:12','2023-02-27 11:43:12'),('3492','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3493','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:45:00','2023-02-27 11:45:07','2023-02-27 11:45:07'),('3494','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:46:00','2023-02-27 11:46:06','2023-02-27 11:46:06'),('3495','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:47:00','2023-02-27 11:47:06','2023-02-27 11:47:06'),('3496','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:48:00','2023-02-27 11:48:10','2023-02-27 11:48:10'),('3497','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:49:00','2023-02-27 11:49:06','2023-02-27 11:49:06'),('3498','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:50:00','2023-02-27 11:50:06','2023-02-27 11:50:06'),('3499','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:51:00','2023-02-27 11:51:07','2023-02-27 11:51:08'),('3500','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:52:00','2023-02-27 11:52:11','2023-02-27 11:52:11'),('3501','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:53:00','2023-02-27 11:53:13','2023-02-27 11:53:13'),('3502','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:54:00','2023-02-27 11:54:06','2023-02-27 11:54:07'),('3503','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:55:00','2023-02-27 11:55:11','2023-02-27 11:55:11'),('3504','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:56:00','2023-02-27 11:56:11','2023-02-27 11:56:11'),('3505','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:37:00','2023-02-27 11:37:19','2023-02-27 11:37:19'),('3506','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:38:00','2023-02-27 11:38:11','2023-02-27 11:38:11'),('3507','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:39:00','2023-02-27 11:39:11','2023-02-27 11:39:11'),('3508','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:40:00','2023-02-27 11:40:11','2023-02-27 11:40:11'),('3509','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:41:00','2023-02-27 11:41:06','2023-02-27 11:41:06'),('3510','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:42:00','2023-02-27 11:42:11','2023-02-27 11:42:11'),('3511','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:43:00','2023-02-27 11:43:12','2023-02-27 11:43:12'),('3512','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3513','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:45:00','2023-02-27 11:45:07','2023-02-27 11:45:07'),('3514','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:46:00','2023-02-27 11:46:06','2023-02-27 11:46:06'),('3515','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:47:00','2023-02-27 11:47:06','2023-02-27 11:47:06'),('3516','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:48:00','2023-02-27 11:48:11','2023-02-27 11:48:11'),('3517','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:49:00','2023-02-27 11:49:06','2023-02-27 11:49:06'),('3518','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:16','2023-02-27 11:50:00','2023-02-27 11:50:06','2023-02-27 11:50:06'),('3519','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3520','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:11','2023-02-27 11:52:11'),('3521','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:13','2023-02-27 11:53:13'),('3522','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:07','2023-02-27 11:54:07'),('3523','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:11','2023-02-27 11:55:11'),('3524','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:11','2023-02-27 11:56:11'),('3525','catalog_product_attribute_value_synchronize','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:11','2023-02-27 11:40:11'),('3526','catalog_product_attribute_value_synchronize','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:07','2023-02-27 11:45:07'),('3527','catalog_product_attribute_value_synchronize','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3528','catalog_product_attribute_value_synchronize','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:11','2023-02-27 11:55:11'),('3529','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:19','2023-02-27 11:37:19'),('3530','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:11','2023-02-27 11:38:11'),('3531','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:12','2023-02-27 11:39:12'),('3532','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:11','2023-02-27 11:40:11'),('3533','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:06','2023-02-27 11:41:06'),('3534','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:11','2023-02-27 11:42:11'),('3535','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:12','2023-02-27 11:43:12'),('3536','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3537','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:07','2023-02-27 11:45:07'),('3538','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:06','2023-02-27 11:46:06'),('3539','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:06','2023-02-27 11:47:06'),('3540','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:11','2023-02-27 11:48:11'),('3541','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:07','2023-02-27 11:49:07'),('3542','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3543','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3544','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:11','2023-02-27 11:52:11'),('3545','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:13','2023-02-27 11:53:13'),('3546','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:07','2023-02-27 11:54:07'),('3547','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:11','2023-02-27 11:55:11'),('3548','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:11','2023-02-27 11:56:11'),('3549','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:19','2023-02-27 11:37:19'),('3550','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:11','2023-02-27 11:38:11'),('3551','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:12','2023-02-27 11:39:12'),('3552','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:11','2023-02-27 11:40:11'),('3553','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3554','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:11','2023-02-27 11:42:11'),('3555','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:12','2023-02-27 11:43:12'),('3556','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3557','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:07','2023-02-27 11:45:07'),('3558','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3559','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:06','2023-02-27 11:47:06'),('3560','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:11','2023-02-27 11:48:11'),('3561','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:07','2023-02-27 11:49:07'),('3562','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3563','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3564','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:11','2023-02-27 11:52:11'),('3565','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:13','2023-02-27 11:53:13'),('3566','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:07','2023-02-27 11:54:07'),('3567','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:11','2023-02-27 11:55:11'),('3568','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:11','2023-02-27 11:56:11'),('3569','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:19','2023-02-27 11:37:19'),('3570','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:11','2023-02-27 11:38:11'),('3571','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:12','2023-02-27 11:39:12'),('3572','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:11','2023-02-27 11:40:11'),('3573','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3574','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:11','2023-02-27 11:42:11'),('3575','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:12','2023-02-27 11:43:12'),('3576','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3577','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:07','2023-02-27 11:45:07'),('3578','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3579','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:06','2023-02-27 11:47:06'),('3580','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:11','2023-02-27 11:48:11'),('3581','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:07','2023-02-27 11:49:07'),('3582','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3583','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3584','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:11','2023-02-27 11:52:11'),('3585','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:13','2023-02-27 11:53:14'),('3586','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:07','2023-02-27 11:54:07'),('3587','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:11','2023-02-27 11:55:11'),('3588','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:11','2023-02-27 11:56:11'),('3589','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:19','2023-02-27 11:37:19'),('3590','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:11','2023-02-27 11:38:11'),('3591','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:12','2023-02-27 11:39:12'),('3592','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:11','2023-02-27 11:40:11'),('3593','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3594','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:11','2023-02-27 11:42:11'),('3595','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:12','2023-02-27 11:43:12'),('3596','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3597','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:07','2023-02-27 11:45:07'),('3598','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3599','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:06','2023-02-27 11:47:06'),('3600','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:11','2023-02-27 11:48:11'),('3601','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:07','2023-02-27 11:49:07'),('3602','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3603','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3604','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:11','2023-02-27 11:52:11'),('3605','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:14','2023-02-27 11:53:14'),('3606','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:07','2023-02-27 11:54:07'),('3607','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:11','2023-02-27 11:55:11'),('3608','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:11','2023-02-27 11:56:11'),('3609','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:19','2023-02-27 11:37:19'),('3610','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:12','2023-02-27 11:38:12'),('3611','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:12','2023-02-27 11:39:12'),('3612','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:12','2023-02-27 11:40:12'),('3613','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3614','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:12','2023-02-27 11:42:12'),('3615','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:15','2023-02-27 11:43:15'),('3616','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3617','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:08','2023-02-27 11:45:08'),('3618','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3619','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:07','2023-02-27 11:47:07'),('3620','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:11','2023-02-27 11:48:11'),('3621','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:07','2023-02-27 11:49:07'),('3622','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3623','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3624','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:11','2023-02-27 11:52:11'),('3625','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:14','2023-02-27 11:53:14'),('3626','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:07','2023-02-27 11:54:07'),('3627','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:12','2023-02-27 11:55:12'),('3628','sales_send_order_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:12','2023-02-27 11:56:12'),('3629','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:20','2023-02-27 11:37:20'),('3630','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:12','2023-02-27 11:38:12'),('3631','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:13','2023-02-27 11:39:13'),('3632','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:12','2023-02-27 11:40:12'),('3633','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3634','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:12','2023-02-27 11:42:12'),('3635','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:15','2023-02-27 11:43:15'),('3636','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3637','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:08','2023-02-27 11:45:08'),('3638','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3639','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:07','2023-02-27 11:47:07'),('3640','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:11','2023-02-27 11:48:11'),('3641','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:07','2023-02-27 11:49:07'),('3642','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3643','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3644','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:12','2023-02-27 11:52:12'),('3645','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:14','2023-02-27 11:53:14'),('3646','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:07','2023-02-27 11:54:07'),('3647','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:12','2023-02-27 11:55:12'),('3648','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:12','2023-02-27 11:56:12'),('3649','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:20','2023-02-27 11:37:20'),('3650','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:12','2023-02-27 11:38:12'),('3651','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:13','2023-02-27 11:39:13'),('3652','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:12','2023-02-27 11:40:12'),('3653','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3654','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:12','2023-02-27 11:42:12'),('3655','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:15','2023-02-27 11:43:15'),('3656','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3657','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:08','2023-02-27 11:45:08'),('3658','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3659','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:07','2023-02-27 11:47:07'),('3660','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:11','2023-02-27 11:48:11'),('3661','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:07','2023-02-27 11:49:07'),('3662','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3663','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3664','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:12','2023-02-27 11:52:12'),('3665','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:14','2023-02-27 11:53:14'),('3666','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:08','2023-02-27 11:54:08'),('3667','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:12','2023-02-27 11:55:12'),('3668','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:12','2023-02-27 11:56:12'),('3669','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:20','2023-02-27 11:37:20'),('3670','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:12','2023-02-27 11:38:12'),('3671','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:13','2023-02-27 11:39:13'),('3672','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:12','2023-02-27 11:40:12'),('3673','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3674','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:12','2023-02-27 11:42:12'),('3675','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:15','2023-02-27 11:43:15'),('3676','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3677','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:08','2023-02-27 11:45:08'),('3678','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3679','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:07','2023-02-27 11:47:07'),('3680','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:12','2023-02-27 11:48:12'),('3681','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:08','2023-02-27 11:49:08'),('3682','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3683','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3684','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:12','2023-02-27 11:52:12'),('3685','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:14','2023-02-27 11:53:14'),('3686','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:08','2023-02-27 11:54:08'),('3687','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:12','2023-02-27 11:55:12'),('3688','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:12','2023-02-27 11:56:12'),('3689','captcha_delete_expired_images','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:12','2023-02-27 11:40:12'),('3690','captcha_delete_expired_images','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3691','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:20','2023-02-27 11:37:20'),('3692','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:12','2023-02-27 11:38:12'),('3693','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:13','2023-02-27 11:39:13'),('3694','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:13','2023-02-27 11:40:13'),('3695','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3696','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:12','2023-02-27 11:42:12'),('3697','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:15','2023-02-27 11:43:15'),('3698','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:07'),('3699','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:08','2023-02-27 11:45:08'),('3700','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3701','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:07','2023-02-27 11:47:07'),('3702','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:12','2023-02-27 11:48:12'),('3703','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:08','2023-02-27 11:49:08'),('3704','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3705','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3706','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:12','2023-02-27 11:52:12'),('3707','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:14','2023-02-27 11:53:14'),('3708','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:08','2023-02-27 11:54:08'),('3709','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:12','2023-02-27 11:55:12'),('3710','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:12','2023-02-27 11:56:12'),('3711','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:37:00','2023-02-27 11:37:20','2023-02-27 11:37:20'),('3712','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:13','2023-02-27 11:38:13'),('3713','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:39:00','2023-02-27 11:39:13','2023-02-27 11:39:13'),('3714','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:13','2023-02-27 11:40:13'),('3715','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:41:00','2023-02-27 11:41:07','2023-02-27 11:41:07'),('3716','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:12','2023-02-27 11:42:12'),('3717','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:43:00','2023-02-27 11:43:15','2023-02-27 11:43:15'),('3718','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:07','2023-02-27 11:44:08'),('3719','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:08','2023-02-27 11:45:08'),('3720','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3721','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:47:00','2023-02-27 11:47:07','2023-02-27 11:47:07'),('3722','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:12','2023-02-27 11:48:12'),('3723','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:49:00','2023-02-27 11:49:08','2023-02-27 11:49:08'),('3724','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3725','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:51:00','2023-02-27 11:51:08','2023-02-27 11:51:08'),('3726','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:12','2023-02-27 11:52:12'),('3727','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:53:00','2023-02-27 11:53:15','2023-02-27 11:53:15'),('3728','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:08','2023-02-27 11:54:08'),('3729','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:12','2023-02-27 11:55:12'),('3730','bulk_cleanup','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:12','2023-02-27 11:56:12'),('3731','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:38:00','2023-02-27 11:38:13','2023-02-27 11:38:13'),('3732','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:13','2023-02-27 11:40:13'),('3733','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:42:00','2023-02-27 11:42:13','2023-02-27 11:42:13'),('3734','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:44:00','2023-02-27 11:44:08','2023-02-27 11:44:08'),('3735','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:46:00','2023-02-27 11:46:07','2023-02-27 11:46:07'),('3736','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:48:00','2023-02-27 11:48:12','2023-02-27 11:48:12'),('3737','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3738','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:52:00','2023-02-27 11:52:12','2023-02-27 11:52:12'),('3739','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:54:00','2023-02-27 11:54:08','2023-02-27 11:54:08'),('3740','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:56:00','2023-02-27 11:56:13','2023-02-27 11:56:13'),('3741','newsletter_send_all','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:40:00','2023-02-27 11:40:13','2023-02-27 11:40:13'),('3742','newsletter_send_all','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:45:00','2023-02-27 11:45:08','2023-02-27 11:45:08'),('3743','newsletter_send_all','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:50:00','2023-02-27 11:50:07','2023-02-27 11:50:07'),('3744','newsletter_send_all','success',NULL,'2023-02-27 11:37:17','2023-02-27 11:55:00','2023-02-27 11:55:12','2023-02-27 11:55:12'),('3745','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:37:00','2023-02-27 11:37:29','2023-02-27 11:37:29'),('3746','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:37:00','2023-02-27 11:37:29','2023-02-27 11:37:29'),('3747','razorpay_cancel_pending_orders','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:40:00','2023-02-27 11:40:22','2023-02-27 11:40:22'),('3748','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:38:00','2023-02-27 11:38:20','2023-02-27 11:38:20'),('3749','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:38:00','2023-02-27 11:38:20','2023-02-27 11:38:20'),('3750','razorpay_update_order_to_processing','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:40:00','2023-02-27 11:40:23','2023-02-27 11:40:23'),('3751','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:39:00','2023-02-27 11:39:20','2023-02-27 11:39:20'),('3752','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:39:00','2023-02-27 11:39:20','2023-02-27 11:39:20'),('3753','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:40:00','2023-02-27 11:40:21','2023-02-27 11:40:21'),('3754','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:40:00','2023-02-27 11:40:21','2023-02-27 11:40:21'),('3755','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:41:00','2023-02-27 11:41:13','2023-02-27 11:41:13'),('3756','indexer_update_all_views','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:37:00','2023-02-27 11:37:29','2023-02-27 11:37:29'),('3757','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:42:00','2023-02-27 11:42:21','2023-02-27 11:42:21'),('3758','indexer_update_all_views','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:38:00','2023-02-27 11:38:20','2023-02-27 11:38:20'),('3759','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:43:00','2023-02-27 11:43:22','2023-02-27 11:43:22'),('3760','indexer_update_all_views','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:39:00','2023-02-27 11:39:20','2023-02-27 11:39:20'),('3761','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:44:00','2023-02-27 11:44:16','2023-02-27 11:44:16'),('3762','indexer_update_all_views','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:40:00','2023-02-27 11:40:21','2023-02-27 11:40:21'),('3763','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:45:00','2023-02-27 11:45:15','2023-02-27 11:45:15'),('3764','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:46:00','2023-02-27 11:46:14','2023-02-27 11:46:14'),('3765','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:47:00','2023-02-27 11:47:14','2023-02-27 11:47:14'),('3766','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:48:00','2023-02-27 11:48:21','2023-02-27 11:48:21'),('3767','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:49:00','2023-02-27 11:49:14','2023-02-27 11:49:14'),('3768','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:50:00','2023-02-27 11:50:23','2023-02-27 11:50:23'),('3769','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:51:00','2023-02-27 11:51:15','2023-02-27 11:51:15'),('3770','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:52:00','2023-02-27 11:52:21','2023-02-27 11:52:21'),('3771','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:53:00','2023-02-27 11:53:21','2023-02-27 11:53:21'),('3772','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:54:00','2023-02-27 11:54:15','2023-02-27 11:54:15'),('3773','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:55:00','2023-02-27 11:55:20','2023-02-27 11:55:20'),('3774','consumers_runner','success',NULL,'2023-02-27 11:37:28','2023-02-27 11:56:00','2023-02-27 11:56:27','2023-02-27 11:56:27'),('3775','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:39:19','2023-02-27 11:41:00','2023-02-27 11:41:13','2023-02-27 11:41:13'),('3776','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:39:19','2023-02-27 11:42:00','2023-02-27 11:42:21','2023-02-27 11:42:21'),('3777','indexer_update_all_views','success',NULL,'2023-02-27 11:39:19','2023-02-27 11:41:00','2023-02-27 11:41:13','2023-02-27 11:41:13'),('3778','indexer_update_all_views','success',NULL,'2023-02-27 11:39:19','2023-02-27 11:42:00','2023-02-27 11:42:21','2023-02-27 11:42:21'),('3779','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:40:21','2023-02-27 11:43:00','2023-02-27 11:43:22','2023-02-27 11:43:22'),('3780','indexer_update_all_views','success',NULL,'2023-02-27 11:40:21','2023-02-27 11:43:00','2023-02-27 11:43:22','2023-02-27 11:43:22'),('3781','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:42:21','2023-02-27 11:44:00','2023-02-27 11:44:16','2023-02-27 11:44:16'),('3782','razorpay_cancel_pending_orders','success',NULL,'2023-02-27 11:42:21','2023-02-27 11:45:00','2023-02-27 11:45:15','2023-02-27 11:45:16'),('3783','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:42:21','2023-02-27 11:45:00','2023-02-27 11:45:14','2023-02-27 11:45:15'),('3784','razorpay_update_order_to_processing','success',NULL,'2023-02-27 11:42:21','2023-02-27 11:45:00','2023-02-27 11:45:16','2023-02-27 11:45:16'),('3785','indexer_update_all_views','success',NULL,'2023-02-27 11:42:21','2023-02-27 11:44:00','2023-02-27 11:44:16','2023-02-27 11:44:16'),('3786','indexer_update_all_views','success',NULL,'2023-02-27 11:42:21','2023-02-27 11:45:00','2023-02-27 11:45:15','2023-02-27 11:45:15'),('3787','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:43:22','2023-02-27 11:46:00','2023-02-27 11:46:14','2023-02-27 11:46:14'),('3788','indexer_update_all_views','success',NULL,'2023-02-27 11:43:22','2023-02-27 11:46:00','2023-02-27 11:46:14','2023-02-27 11:46:15'),('3789','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:45:14','2023-02-27 11:47:00','2023-02-27 11:47:14','2023-02-27 11:47:14'),('3790','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:45:14','2023-02-27 11:48:00','2023-02-27 11:48:20','2023-02-27 11:48:21'),('3791','indexer_update_all_views','success',NULL,'2023-02-27 11:45:14','2023-02-27 11:47:00','2023-02-27 11:47:14','2023-02-27 11:47:14'),('3792','indexer_update_all_views','success',NULL,'2023-02-27 11:45:14','2023-02-27 11:48:00','2023-02-27 11:48:21','2023-02-27 11:48:21'),('3793','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:46:14','2023-02-27 11:49:00','2023-02-27 11:49:14','2023-02-27 11:49:14'),('3794','indexer_update_all_views','success',NULL,'2023-02-27 11:46:14','2023-02-27 11:49:00','2023-02-27 11:49:14','2023-02-27 11:49:14'),('3795','razorpay_cancel_pending_orders','success',NULL,'2023-02-27 11:47:14','2023-02-27 11:50:00','2023-02-27 11:50:24','2023-02-27 11:50:25'),('3796','razorpay_update_order_to_processing','success',NULL,'2023-02-27 11:47:14','2023-02-27 11:50:00','2023-02-27 11:50:26','2023-02-27 11:50:26'),('3797','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:48:20','2023-02-27 11:50:00','2023-02-27 11:50:23','2023-02-27 11:50:23'),('3798','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:48:20','2023-02-27 11:51:00','2023-02-27 11:51:15','2023-02-27 11:51:15'),('3799','indexer_update_all_views','success',NULL,'2023-02-27 11:48:20','2023-02-27 11:50:00','2023-02-27 11:50:24','2023-02-27 11:50:24'),('3800','indexer_update_all_views','success',NULL,'2023-02-27 11:48:20','2023-02-27 11:51:00','2023-02-27 11:51:15','2023-02-27 11:51:15'),('3801','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:50:23','2023-02-27 11:52:00','2023-02-27 11:52:21','2023-02-27 11:52:21'),('3802','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:50:23','2023-02-27 11:53:00','2023-02-27 11:53:21','2023-02-27 11:53:21'),('3803','indexer_update_all_views','success',NULL,'2023-02-27 11:50:23','2023-02-27 11:52:00','2023-02-27 11:52:21','2023-02-27 11:52:21'),('3804','indexer_update_all_views','success',NULL,'2023-02-27 11:50:23','2023-02-27 11:53:00','2023-02-27 11:53:21','2023-02-27 11:53:22'),('3805','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:52:21','2023-02-27 11:54:00','2023-02-27 11:54:15','2023-02-27 11:54:15'),('3806','razorpay_cancel_pending_orders','success',NULL,'2023-02-27 11:52:21','2023-02-27 11:55:00','2023-02-27 11:55:21','2023-02-27 11:55:22'),('3807','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:52:21','2023-02-27 11:55:00','2023-02-27 11:55:20','2023-02-27 11:55:20'),('3808','razorpay_update_order_to_processing','success',NULL,'2023-02-27 11:52:21','2023-02-27 11:55:00','2023-02-27 11:55:22','2023-02-27 11:55:22'),('3809','indexer_update_all_views','success',NULL,'2023-02-27 11:52:21','2023-02-27 11:54:00','2023-02-27 11:54:15','2023-02-27 11:54:15'),('3810','indexer_update_all_views','success',NULL,'2023-02-27 11:52:21','2023-02-27 11:55:00','2023-02-27 11:55:20','2023-02-27 11:55:20'),('3811','catalog_index_refresh_price','success',NULL,'2023-02-27 11:53:12','2023-02-27 12:00:00','2023-02-27 12:00:16','2023-02-27 12:00:16'),('3812','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:53:12','2023-02-27 11:57:00','2023-02-27 11:57:07','2023-02-27 11:57:07'),('3813','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:53:12','2023-02-27 11:58:00','2023-02-27 11:58:07','2023-02-27 11:58:07'),('3814','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:53:12','2023-02-27 11:59:00','2023-02-27 11:59:11','2023-02-27 11:59:11'),('3815','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:53:12','2023-02-27 12:00:00','2023-02-27 12:00:16','2023-02-27 12:00:16'),('3816','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:53:12','2023-02-27 12:01:00','2023-02-27 12:01:10','2023-02-27 12:01:10'),('3817','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:53:12','2023-02-27 12:02:00','2023-02-27 12:02:10','2023-02-27 12:02:10'),('3818','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:53:12','2023-02-27 12:03:00','2023-02-27 12:03:56','2023-02-27 12:03:56'),('3819','catalog_product_outdated_price_values_cleanup','success',NULL,'2023-02-27 11:53:12','2023-02-27 12:04:00','2023-02-27 12:04:08','2023-02-27 12:04:08'),('3820','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 11:53:12','2023-02-27 12:05:00',NULL,NULL),('3821','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 11:53:12','2023-02-27 12:06:00',NULL,NULL),('3822','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 11:53:12','2023-02-27 12:07:00',NULL,NULL),('3823','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 11:53:12','2023-02-27 12:08:00',NULL,NULL),('3824','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 11:53:12','2023-02-27 12:09:00',NULL,NULL),('3825','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 11:53:12','2023-02-27 12:10:00',NULL,NULL),('3826','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 11:53:12','2023-02-27 12:11:00',NULL,NULL),('3827','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 11:53:12','2023-02-27 12:12:00',NULL,NULL),('3828','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:53:12','2023-02-27 11:57:00','2023-02-27 11:57:07','2023-02-27 11:57:07'),('3829','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:53:12','2023-02-27 11:58:00','2023-02-27 11:58:07','2023-02-27 11:58:07'),('3830','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:53:12','2023-02-27 11:59:00','2023-02-27 11:59:11','2023-02-27 11:59:11'),('3831','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:53:12','2023-02-27 12:00:00','2023-02-27 12:00:16','2023-02-27 12:00:16'),('3832','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:10','2023-02-27 12:01:10'),('3833','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:10','2023-02-27 12:02:10'),('3834','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:56','2023-02-27 12:03:56'),('3835','catalog_product_frontend_actions_flush','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:08','2023-02-27 12:04:08'),('3836','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3837','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3838','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3839','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3840','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3841','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3842','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3843','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3844','catalog_product_attribute_value_synchronize','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:16','2023-02-27 12:00:16'),('3845','catalog_product_attribute_value_synchronize','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3846','catalog_product_attribute_value_synchronize','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3847','sales_clean_orders','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:19','2023-02-27 12:00:20'),('3848','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:07','2023-02-27 11:57:07'),('3849','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:07','2023-02-27 11:58:07'),('3850','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:11','2023-02-27 11:59:11'),('3851','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:20','2023-02-27 12:00:20'),('3852','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:10','2023-02-27 12:01:10'),('3853','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:10','2023-02-27 12:02:10'),('3854','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:57','2023-02-27 12:03:57'),('3855','sales_grid_order_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:08','2023-02-27 12:04:08'),('3856','sales_grid_order_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3857','sales_grid_order_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3858','sales_grid_order_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3859','sales_grid_order_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3860','sales_grid_order_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3861','sales_grid_order_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3862','sales_grid_order_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3863','sales_grid_order_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3864','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:07','2023-02-27 11:57:07'),('3865','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:07','2023-02-27 11:58:07'),('3866','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:11','2023-02-27 11:59:11'),('3867','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:20','2023-02-27 12:00:20'),('3868','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:10','2023-02-27 12:01:10'),('3869','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:11','2023-02-27 12:02:11'),('3870','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:57','2023-02-27 12:03:57'),('3871','sales_grid_order_invoice_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:08','2023-02-27 12:04:08'),('3872','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3873','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3874','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3875','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3876','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3877','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3878','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3879','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3880','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:07','2023-02-27 11:57:07'),('3881','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:07','2023-02-27 11:58:07'),('3882','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:11','2023-02-27 11:59:11'),('3883','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:20','2023-02-27 12:00:20'),('3884','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:10','2023-02-27 12:01:10'),('3885','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:11','2023-02-27 12:02:11'),('3886','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:57','2023-02-27 12:03:57'),('3887','sales_grid_order_shipment_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:08','2023-02-27 12:04:08'),('3888','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3889','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3890','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3891','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3892','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3893','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3894','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3895','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3896','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:07','2023-02-27 11:57:07'),('3897','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:07','2023-02-27 11:58:07'),('3898','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:11','2023-02-27 11:59:11'),('3899','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:20','2023-02-27 12:00:20'),('3900','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:10','2023-02-27 12:01:10'),('3901','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:11','2023-02-27 12:02:11'),('3902','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:57','2023-02-27 12:03:57'),('3903','sales_grid_order_creditmemo_async_insert','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:08','2023-02-27 12:04:08'),('3904','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3905','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3906','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3907','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3908','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3909','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3910','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3911','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3912','sales_send_order_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:08','2023-02-27 11:57:08'),('3913','sales_send_order_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:08','2023-02-27 11:58:08'),('3914','sales_send_order_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:11','2023-02-27 11:59:11'),('3915','sales_send_order_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:20','2023-02-27 12:00:20'),('3916','sales_send_order_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:10','2023-02-27 12:01:10'),('3917','sales_send_order_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:11','2023-02-27 12:02:11'),('3918','sales_send_order_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:57','2023-02-27 12:03:57'),('3919','sales_send_order_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:09','2023-02-27 12:04:09'),('3920','sales_send_order_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3921','sales_send_order_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3922','sales_send_order_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3923','sales_send_order_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3924','sales_send_order_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3925','sales_send_order_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3926','sales_send_order_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3927','sales_send_order_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3928','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:08','2023-02-27 11:57:08'),('3929','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:08','2023-02-27 11:58:08'),('3930','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:11','2023-02-27 11:59:11'),('3931','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:21','2023-02-27 12:00:21'),('3932','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:10','2023-02-27 12:01:10'),('3933','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:11','2023-02-27 12:02:11'),('3934','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:57','2023-02-27 12:03:57'),('3935','sales_send_order_invoice_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:09','2023-02-27 12:04:09'),('3936','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3937','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3938','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3939','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3940','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3941','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3942','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3943','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3944','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:08','2023-02-27 11:57:08'),('3945','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:08','2023-02-27 11:58:08'),('3946','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:12','2023-02-27 11:59:12'),('3947','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:21','2023-02-27 12:00:21'),('3948','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:11','2023-02-27 12:01:11'),('3949','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:11','2023-02-27 12:02:11'),('3950','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:58','2023-02-27 12:03:58'),('3951','sales_send_order_shipment_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:09','2023-02-27 12:04:09'),('3952','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3953','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3954','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3955','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3956','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3957','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3958','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3959','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3960','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:08','2023-02-27 11:57:08'),('3961','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:08','2023-02-27 11:58:08'),('3962','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:12','2023-02-27 11:59:12'),('3963','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:21','2023-02-27 12:00:21'),('3964','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:11','2023-02-27 12:01:11'),('3965','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:11','2023-02-27 12:02:11'),('3966','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:58','2023-02-27 12:03:58'),('3967','sales_send_order_creditmemo_emails','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:09','2023-02-27 12:04:09'),('3968','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3969','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3970','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3971','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3972','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3973','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3974','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3975','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3976','captcha_delete_old_attempts','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:22','2023-02-27 12:00:22'),('3977','captcha_delete_expired_images','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:22','2023-02-27 12:00:22'),('3978','captcha_delete_expired_images','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3979','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:08','2023-02-27 11:57:08'),('3980','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:08','2023-02-27 11:58:08'),('3981','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:12','2023-02-27 11:59:12'),('3982','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:22','2023-02-27 12:00:22'),('3983','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:11','2023-02-27 12:01:11'),('3984','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:12','2023-02-27 12:02:12'),('3985','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:58','2023-02-27 12:03:58'),('3986','outdated_authentication_failures_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:09','2023-02-27 12:04:09'),('3987','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('3988','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('3989','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('3990','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('3991','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('3992','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('3993','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('3994','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('3995','expired_tokens_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:22','2023-02-27 12:00:22'),('3996','bulk_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:57:00','2023-02-27 11:57:08','2023-02-27 11:57:08'),('3997','bulk_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:08','2023-02-27 11:58:08'),('3998','bulk_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:59:00','2023-02-27 11:59:12','2023-02-27 11:59:12'),('3999','bulk_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:22','2023-02-27 12:00:22');
INSERT INTO `cron_schedule` VALUES ('4000','bulk_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:01:00','2023-02-27 12:01:11','2023-02-27 12:01:11'),('4001','bulk_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:12','2023-02-27 12:02:12'),('4002','bulk_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:03:00','2023-02-27 12:03:58','2023-02-27 12:03:58'),('4003','bulk_cleanup','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:09','2023-02-27 12:04:09'),('4004','bulk_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('4005','bulk_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('4006','bulk_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:07:00',NULL,NULL),('4007','bulk_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('4008','bulk_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:09:00',NULL,NULL),('4009','bulk_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('4010','bulk_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:11:00',NULL,NULL),('4011','bulk_cleanup','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('4012','analytics_subscribe','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:22','2023-02-27 12:00:27'),('4013','messagequeue_clean_outdated_locks','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:28','2023-02-27 12:00:28'),('4014','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:53:13','2023-02-27 11:58:00','2023-02-27 11:58:09','2023-02-27 11:58:09'),('4015','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:29','2023-02-27 12:00:29'),('4016','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:02:00','2023-02-27 12:02:12','2023-02-27 12:02:12'),('4017','magento_newrelicreporting_cron','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:04:00','2023-02-27 12:04:10','2023-02-27 12:04:10'),('4018','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:06:00',NULL,NULL),('4019','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:08:00',NULL,NULL),('4020','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('4021','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:12:00',NULL,NULL),('4022','newsletter_send_all','success',NULL,'2023-02-27 11:53:13','2023-02-27 12:00:00','2023-02-27 12:00:30','2023-02-27 12:00:30'),('4023','newsletter_send_all','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:05:00',NULL,NULL),('4024','newsletter_send_all','pending',NULL,'2023-02-27 11:53:13','2023-02-27 12:10:00',NULL,NULL),('4025','consumers_runner','success',NULL,'2023-02-27 11:53:21','2023-02-27 11:57:00','2023-02-27 11:57:16','2023-02-27 11:57:16'),('4026','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:53:21','2023-02-27 11:56:00','2023-02-27 11:56:27','2023-02-27 11:56:27'),('4027','consumers_runner','success',NULL,'2023-02-27 11:53:21','2023-02-27 11:58:00','2023-02-27 11:58:15','2023-02-27 11:58:15'),('4028','indexer_update_all_views','success',NULL,'2023-02-27 11:53:21','2023-02-27 11:56:00','2023-02-27 11:56:27','2023-02-27 11:56:27'),('4029','consumers_runner','success',NULL,'2023-02-27 11:53:21','2023-02-27 11:59:00','2023-02-27 11:59:21','2023-02-27 11:59:21'),('4030','consumers_runner','success',NULL,'2023-02-27 11:53:21','2023-02-27 12:00:00','2023-02-27 12:00:37','2023-02-27 12:00:37'),('4031','consumers_runner','success',NULL,'2023-02-27 11:53:21','2023-02-27 12:01:00','2023-02-27 12:01:19','2023-02-27 12:01:19'),('4032','consumers_runner','success',NULL,'2023-02-27 11:53:21','2023-02-27 12:02:00','2023-02-27 12:02:24','2023-02-27 12:02:24'),('4033','consumers_runner','success',NULL,'2023-02-27 11:53:21','2023-02-27 12:03:00','2023-02-27 12:04:11','2023-02-27 12:04:11'),('4034','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:04:00',NULL,NULL),('4035','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:05:00',NULL,NULL),('4036','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:06:00',NULL,NULL),('4037','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:07:00',NULL,NULL),('4038','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:08:00',NULL,NULL),('4039','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:09:00',NULL,NULL),('4040','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:10:00',NULL,NULL),('4041','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:11:00',NULL,NULL),('4042','consumers_runner','pending',NULL,'2023-02-27 11:53:21','2023-02-27 12:12:00',NULL,NULL),('4043','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:55:20','2023-02-27 11:57:00','2023-02-27 11:57:16','2023-02-27 11:57:16'),('4044','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:55:20','2023-02-27 11:58:00','2023-02-27 11:58:15','2023-02-27 11:58:15'),('4045','indexer_update_all_views','success',NULL,'2023-02-27 11:55:20','2023-02-27 11:57:00','2023-02-27 11:57:16','2023-02-27 11:57:16'),('4046','indexer_update_all_views','success',NULL,'2023-02-27 11:55:20','2023-02-27 11:58:00','2023-02-27 11:58:15','2023-02-27 11:58:15'),('4047','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:56:26','2023-02-27 11:59:00','2023-02-27 11:59:21','2023-02-27 11:59:21'),('4048','indexer_update_all_views','success',NULL,'2023-02-27 11:56:27','2023-02-27 11:59:00','2023-02-27 11:59:21','2023-02-27 11:59:21'),('4049','razorpay_cancel_pending_orders','success',NULL,'2023-02-27 11:58:15','2023-02-27 12:00:00','2023-02-27 12:00:38','2023-02-27 12:00:39'),('4050','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:58:15','2023-02-27 12:00:00','2023-02-27 12:00:37','2023-02-27 12:00:37'),('4051','razorpay_update_order_to_processing','success',NULL,'2023-02-27 11:58:15','2023-02-27 12:00:00','2023-02-27 12:00:39','2023-02-27 12:00:39'),('4052','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:58:15','2023-02-27 12:01:00','2023-02-27 12:01:19','2023-02-27 12:01:19'),('4053','indexer_update_all_views','success',NULL,'2023-02-27 11:58:15','2023-02-27 12:00:00','2023-02-27 12:00:37','2023-02-27 12:00:37'),('4054','indexer_update_all_views','success',NULL,'2023-02-27 11:58:15','2023-02-27 12:01:00','2023-02-27 12:01:19','2023-02-27 12:01:19'),('4055','indexer_clean_all_changelogs','success',NULL,'2023-02-27 11:58:15','2023-02-27 12:00:00','2023-02-27 12:00:37','2023-02-27 12:00:37'),('4056','indexer_reindex_all_invalid','success',NULL,'2023-02-27 11:59:21','2023-02-27 12:02:00','2023-02-27 12:02:24','2023-02-27 12:02:24'),('4057','indexer_update_all_views','success',NULL,'2023-02-27 11:59:21','2023-02-27 12:02:00','2023-02-27 12:02:24','2023-02-27 12:02:24'),('4058','indexer_reindex_all_invalid','success',NULL,'2023-02-27 12:00:37','2023-02-27 12:03:00','2023-02-27 12:04:07','2023-02-27 12:04:07'),('4059','indexer_update_all_views','success',NULL,'2023-02-27 12:00:37','2023-02-27 12:03:00','2023-02-27 12:04:07','2023-02-27 12:04:08'),('4060','indexer_reindex_all_invalid','pending',NULL,'2023-02-27 12:02:24','2023-02-27 12:04:00',NULL,NULL),('4061','razorpay_cancel_pending_orders','pending',NULL,'2023-02-27 12:02:24','2023-02-27 12:05:00',NULL,NULL),('4062','indexer_reindex_all_invalid','pending',NULL,'2023-02-27 12:02:24','2023-02-27 12:05:00',NULL,NULL),('4063','razorpay_update_order_to_processing','pending',NULL,'2023-02-27 12:02:24','2023-02-27 12:05:00',NULL,NULL),('4064','indexer_update_all_views','pending',NULL,'2023-02-27 12:02:24','2023-02-27 12:04:00',NULL,NULL),('4065','indexer_update_all_views','pending',NULL,'2023-02-27 12:02:24','2023-02-27 12:05:00',NULL,NULL),('4066','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4067','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4068','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4069','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4070','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4071','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4072','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4073','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4074','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4075','catalog_product_outdated_price_values_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4076','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4077','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4078','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4079','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4080','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4081','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4082','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4083','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4084','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4085','catalog_product_frontend_actions_flush','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4086','catalog_product_attribute_value_synchronize','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4087','catalog_product_attribute_value_synchronize','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4088','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4089','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4090','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4091','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4092','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4093','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4094','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4095','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4096','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4097','sales_grid_order_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4098','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4099','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4100','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4101','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4102','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4103','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4104','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4105','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4106','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4107','sales_grid_order_invoice_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4108','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4109','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4110','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4111','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4112','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4113','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4114','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4115','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4116','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4117','sales_grid_order_shipment_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4118','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4119','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4120','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4121','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4122','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4123','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4124','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4125','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4126','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4127','sales_grid_order_creditmemo_async_insert','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4128','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4129','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4130','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4131','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4132','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4133','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4134','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4135','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4136','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4137','sales_send_order_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4138','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4139','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4140','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4141','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4142','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4143','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4144','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4145','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4146','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4147','sales_send_order_invoice_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4148','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4149','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4150','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4151','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4152','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4153','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4154','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4155','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4156','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4157','sales_send_order_shipment_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4158','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4159','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4160','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4161','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4162','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4163','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4164','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4165','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4166','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4167','sales_send_order_creditmemo_emails','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4168','captcha_delete_expired_images','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4169','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4170','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4171','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4172','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4173','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4174','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4175','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4176','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4177','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4178','outdated_authentication_failures_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4179','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:13:00',NULL,NULL),('4180','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4181','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4182','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4183','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:17:00',NULL,NULL),('4184','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4185','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:19:00',NULL,NULL),('4186','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4187','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:21:00',NULL,NULL),('4188','bulk_cleanup','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4189','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:14:00',NULL,NULL),('4190','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:16:00',NULL,NULL),('4191','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:18:00',NULL,NULL),('4192','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4193','magento_newrelicreporting_cron','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:22:00',NULL,NULL),('4194','newsletter_send_all','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:15:00',NULL,NULL),('4195','newsletter_send_all','pending',NULL,'2023-02-27 12:03:56','2023-02-27 12:20:00',NULL,NULL),('4196','indexer_reindex_all_invalid','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:06:00',NULL,NULL),('4197','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:13:00',NULL,NULL),('4198','indexer_reindex_all_invalid','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:07:00',NULL,NULL),('4199','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:14:00',NULL,NULL),('4200','indexer_update_all_views','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:06:00',NULL,NULL),('4201','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:15:00',NULL,NULL),('4202','indexer_update_all_views','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:07:00',NULL,NULL),('4203','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:16:00',NULL,NULL),('4204','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:17:00',NULL,NULL),('4205','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:18:00',NULL,NULL),('4206','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:19:00',NULL,NULL),('4207','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:20:00',NULL,NULL),('4208','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:21:00',NULL,NULL),('4209','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:22:00',NULL,NULL),('4210','consumers_runner','pending',NULL,'2023-02-27 12:04:07','2023-02-27 12:23:00',NULL,NULL);
/*!40000 ALTER TABLE `cron_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address_entity`
--

DROP TABLE IF EXISTS `customer_address_entity`;
CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validation request success',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

--
-- Dumping data for table `customer_address_entity`
--

LOCK TABLES `customer_address_entity` WRITE;
/*!40000 ALTER TABLE `customer_address_entity` DISABLE KEYS */;
INSERT INTO `customer_address_entity` VALUES ('1',NULL,'1','2023-02-27 03:51:25','2023-02-27 03:52:20',1,'Bangalore','Gloify','IN',NULL,'Farah','Khan',NULL,'560076',NULL,'Karnataka','549','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout',NULL,'9901434817',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_address_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address_entity_datetime`
--

DROP TABLE IF EXISTS `customer_address_entity_datetime`;
CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

--
-- Table structure for table `customer_address_entity_decimal`
--

DROP TABLE IF EXISTS `customer_address_entity_decimal`;
CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

--
-- Table structure for table `customer_address_entity_int`
--

DROP TABLE IF EXISTS `customer_address_entity_int`;
CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

--
-- Table structure for table `customer_address_entity_text`
--

DROP TABLE IF EXISTS `customer_address_entity_text`;
CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

--
-- Table structure for table `customer_address_entity_varchar`
--

DROP TABLE IF EXISTS `customer_address_entity_varchar`;
CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

--
-- Table structure for table `customer_eav_attribute`
--

DROP TABLE IF EXISTS `customer_eav_attribute`;
CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid',
  PRIMARY KEY (`attribute_id`),
  KEY `CUSTOMER_EAV_ATTRIBUTE_SORT_ORDER` (`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

LOCK TABLES `customer_eav_attribute` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute` VALUES (1,1,NULL,0,NULL,1,'10',NULL,1,1,1,0),(2,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(3,1,NULL,0,NULL,1,'20',NULL,1,1,0,1),(4,0,NULL,0,NULL,0,'30',NULL,0,0,0,0),(5,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,'40',NULL,0,0,0,0),(6,0,'trim',0,NULL,0,'50',NULL,0,0,0,0),(7,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,'60',NULL,0,0,0,0),(8,0,NULL,0,NULL,0,'70',NULL,0,0,0,0),(9,1,NULL,0,'{\"input_validation\":\"email\"}',1,'80',NULL,1,1,1,1),(10,1,NULL,0,NULL,1,'25',NULL,1,1,1,0),(11,0,'date',0,'{\"input_validation\":\"date\"}',0,'90',NULL,1,1,1,0),(12,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(13,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(14,0,NULL,0,'{\"input_validation\":\"date\"}',1,'0',NULL,0,0,0,0),(15,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(16,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(17,0,NULL,0,'{\"max_text_length\":255}',0,'100',NULL,1,1,0,1),(18,0,NULL,0,NULL,1,'0',NULL,1,1,1,0),(19,0,NULL,0,NULL,0,'0',NULL,1,1,1,0),(20,0,NULL,0,'[]',0,'110',NULL,1,1,1,0),(21,1,NULL,0,NULL,1,'28',NULL,0,0,0,0),(22,0,NULL,0,NULL,0,'10',NULL,0,0,0,0),(23,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,'20',NULL,1,0,0,1),(24,0,'trim',0,NULL,0,'30',NULL,0,0,0,0),(25,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,'40',NULL,1,0,0,1),(26,0,NULL,0,NULL,0,'50',NULL,0,0,0,0),(27,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,'60',NULL,1,0,0,1),(28,1,NULL,2,'{\"max_text_length\":255,\"min_text_length\":1}',1,'70',NULL,1,0,0,1),(29,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,'80',NULL,1,0,0,1),(30,1,NULL,0,NULL,1,'90',NULL,1,1,1,0),(31,1,NULL,0,NULL,1,'100',NULL,1,1,0,1),(32,1,NULL,0,NULL,1,'100',NULL,0,0,0,0),(33,1,NULL,0,'[]',1,'110','Magento\\Customer\\Model\\Attribute\\Data\\Postcode',1,1,1,1),(34,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,'120',NULL,1,1,1,1),(35,0,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',0,'130',NULL,1,0,0,1),(36,1,NULL,0,NULL,1,'140',NULL,0,0,0,0),(37,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(38,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(39,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(40,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(41,0,NULL,0,NULL,0,'0',NULL,0,0,0,0),(42,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(43,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(44,0,NULL,0,NULL,1,'0',NULL,0,0,0,0);
/*!40000 ALTER TABLE `customer_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_eav_attribute_website`
--

DROP TABLE IF EXISTS `customer_eav_attribute_website`;
CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Dumping data for table `customer_eav_attribute_website`
--

LOCK TABLES `customer_eav_attribute_website` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute_website` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute_website` VALUES (1,1,NULL,NULL,NULL,NULL),(3,1,NULL,NULL,NULL,NULL),(5,1,NULL,NULL,NULL,NULL),(6,1,NULL,NULL,NULL,NULL),(7,1,NULL,NULL,NULL,NULL),(9,1,NULL,NULL,NULL,NULL),(10,1,NULL,NULL,NULL,NULL),(11,1,NULL,NULL,NULL,NULL),(17,1,NULL,NULL,NULL,NULL),(18,1,NULL,NULL,NULL,NULL),(19,1,NULL,NULL,NULL,NULL),(20,1,NULL,NULL,NULL,NULL),(21,1,NULL,NULL,NULL,NULL),(23,1,NULL,NULL,NULL,NULL),(24,1,NULL,NULL,NULL,NULL),(25,1,NULL,NULL,NULL,NULL),(27,1,NULL,NULL,NULL,NULL),(28,1,NULL,NULL,NULL,NULL),(29,1,NULL,NULL,NULL,NULL),(30,1,NULL,NULL,NULL,NULL),(31,1,NULL,NULL,NULL,NULL),(32,1,NULL,NULL,NULL,NULL),(33,1,NULL,NULL,NULL,NULL),(34,1,NULL,NULL,NULL,NULL),(35,1,NULL,NULL,NULL,NULL),(36,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_eav_attribute_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity`
--

DROP TABLE IF EXISTS `customer_entity`;
CREATE TABLE `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website ID',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) unsigned DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) unsigned DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

--
-- Dumping data for table `customer_entity`
--

LOCK TABLES `customer_entity` WRITE;
/*!40000 ALTER TABLE `customer_entity` DISABLE KEYS */;
INSERT INTO `customer_entity` VALUES ('1',1,'farah@gloify.com',1,NULL,1,'2023-02-26 18:44:27','2023-02-27 03:51:25',1,0,'Default Store View',NULL,'Farah',NULL,'Khan',NULL,NULL,'a3abd042ecbacf007e680bf1c05eff91cebdae69419ce81fec3c3288a44677b4:yJ9FNuLR7kEhiCx4cNzsFQMuBkYuqVGo:2','XtZURdhBECTbo4jT5Xm9qQEqF7kMyWWD','2023-02-26 18:44:27','1','1',NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `customer_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity_datetime`
--

DROP TABLE IF EXISTS `customer_entity_datetime`;
CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

--
-- Table structure for table `customer_entity_decimal`
--

DROP TABLE IF EXISTS `customer_entity_decimal`;
CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

--
-- Table structure for table `customer_entity_int`
--

DROP TABLE IF EXISTS `customer_entity_int`;
CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

--
-- Table structure for table `customer_entity_text`
--

DROP TABLE IF EXISTS `customer_entity_text`;
CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

--
-- Table structure for table `customer_entity_varchar`
--

DROP TABLE IF EXISTS `customer_entity_varchar`;
CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

--
-- Table structure for table `customer_form_attribute`
--

DROP TABLE IF EXISTS `customer_form_attribute`;
CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

LOCK TABLES `customer_form_attribute` WRITE;
/*!40000 ALTER TABLE `customer_form_attribute` DISABLE KEYS */;
INSERT INTO `customer_form_attribute` VALUES ('adminhtml_customer',1),('adminhtml_customer',3),('adminhtml_customer',4),('customer_account_create',4),('customer_account_edit',4),('adminhtml_customer',5),('customer_account_create',5),('customer_account_edit',5),('adminhtml_customer',6),('customer_account_create',6),('customer_account_edit',6),('adminhtml_customer',7),('customer_account_create',7),('customer_account_edit',7),('adminhtml_customer',8),('customer_account_create',8),('customer_account_edit',8),('adminhtml_checkout',9),('adminhtml_customer',9),('customer_account_create',9),('customer_account_edit',9),('adminhtml_checkout',10),('adminhtml_customer',10),('adminhtml_checkout',11),('adminhtml_customer',11),('customer_account_create',11),('customer_account_edit',11),('adminhtml_checkout',17),('adminhtml_customer',17),('customer_account_create',17),('customer_account_edit',17),('adminhtml_customer',19),('customer_account_create',19),('customer_account_edit',19),('adminhtml_checkout',20),('adminhtml_customer',20),('customer_account_create',20),('customer_account_edit',20),('adminhtml_customer',21),('adminhtml_customer_address',22),('customer_address_edit',22),('customer_register_address',22),('adminhtml_customer_address',23),('customer_address_edit',23),('customer_register_address',23),('adminhtml_customer_address',24),('customer_address_edit',24),('customer_register_address',24),('adminhtml_customer_address',25),('customer_address_edit',25),('customer_register_address',25),('adminhtml_customer_address',26),('customer_address_edit',26),('customer_register_address',26),('adminhtml_customer_address',27),('customer_address_edit',27),('customer_register_address',27),('adminhtml_customer_address',28),('customer_address_edit',28),('customer_register_address',28),('adminhtml_customer_address',29),('customer_address_edit',29),('customer_register_address',29),('adminhtml_customer_address',30),('customer_address_edit',30),('customer_register_address',30),('adminhtml_customer_address',31),('customer_address_edit',31),('customer_register_address',31),('adminhtml_customer_address',32),('customer_address_edit',32),('customer_register_address',32),('adminhtml_customer_address',33),('customer_address_edit',33),('customer_register_address',33),('adminhtml_customer_address',34),('customer_address_edit',34),('customer_register_address',34),('adminhtml_customer_address',35),('customer_address_edit',35),('customer_register_address',35),('adminhtml_customer_address',36),('customer_address_edit',36),('customer_register_address',36);
/*!40000 ALTER TABLE `customer_form_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_grid_flat`
--

DROP TABLE IF EXISTS `customer_grid_flat`;
CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `shipping_full` text COMMENT 'Shipping_full',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_region_id` int(11) DEFAULT NULL COMMENT 'Billing_region_id',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`),
  FULLTEXT KEY `FTI_8746F705702DD5F6D45B8C7CE7FE9F2F` (`name`,`email`,`created_in`,`taxvat`,`shipping_full`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';

--
-- Dumping data for table `customer_grid_flat`
--

LOCK TABLES `customer_grid_flat` WRITE;
/*!40000 ALTER TABLE `customer_grid_flat` DISABLE KEYS */;
INSERT INTO `customer_grid_flat` VALUES ('1','Farah Khan','farah@gloify.com','1','2023-02-26 18:44:27','1',NULL,'Default Store View',NULL,NULL,NULL,NULL,'265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout Bangalore Karnataka 560076','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout Bangalore Karnataka 560076','Farah','Khan','9901434817','560076','IN','Karnataka','549','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore',NULL,NULL,'Gloify');
/*!40000 ALTER TABLE `customer_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE `customer_group` (
  `customer_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class ID',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES ('0','NOT LOGGED IN','3'),('1','General','3'),('2','Wholesale','3'),('3','Retailer','3');
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_log`
--

DROP TABLE IF EXISTS `customer_log`;
CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';

--
-- Dumping data for table `customer_log`
--

LOCK TABLES `customer_log` WRITE;
/*!40000 ALTER TABLE `customer_log` DISABLE KEYS */;
INSERT INTO `customer_log` VALUES ('1','1','2023-02-27 10:40:29','2023-02-27 05:13:42');
/*!40000 ALTER TABLE `customer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_visitor`
--

DROP TABLE IF EXISTS `customer_visitor`;
CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time',
  PRIMARY KEY (`visitor_id`),
  KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

--
-- Dumping data for table `customer_visitor`
--

LOCK TABLES `customer_visitor` WRITE;
/*!40000 ALTER TABLE `customer_visitor` DISABLE KEYS */;
INSERT INTO `customer_visitor` VALUES (1,'1','kuplthdg8n5go68o6gotoi6li3','2023-02-26 18:44:30'),(2,'1','mrvbrcdmv6s8odied8el27491a','2023-02-27 03:52:59'),(3,'1','540l12bh624bagqnsk9ov7tjon','2023-02-27 05:16:32'),(4,NULL,'ll0jg4cr0314v1h2agss4o821v','2023-02-27 06:59:30'),(5,'1','ildree9usrmbeal1gahk4pb119','2023-02-27 07:34:59'),(6,'1','209ak3slugdr7svtkvsu108obi','2023-02-27 10:54:11');
/*!40000 ALTER TABLE `customer_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_change`
--

DROP TABLE IF EXISTS `design_change`;
CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

--
-- Table structure for table `design_config_grid_flat`
--

DROP TABLE IF EXISTS `design_config_grid_flat`;
CREATE TABLE `design_config_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `store_website_id` int(11) DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int(11) DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int(11) DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id',
  PRIMARY KEY (`entity_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`),
  FULLTEXT KEY `DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_grid_flat';

--
-- Dumping data for table `design_config_grid_flat`
--

LOCK TABLES `design_config_grid_flat` WRITE;
/*!40000 ALTER TABLE `design_config_grid_flat` DISABLE KEYS */;
INSERT INTO `design_config_grid_flat` VALUES ('0',NULL,NULL,NULL,''),('1','1',NULL,NULL,''),('2','1','1','1','4');
/*!40000 ALTER TABLE `design_config_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country`
--

DROP TABLE IF EXISTS `directory_country`;
CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country ID in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

LOCK TABLES `directory_country` WRITE;
/*!40000 ALTER TABLE `directory_country` DISABLE KEYS */;
INSERT INTO `directory_country` VALUES ('AD','AD','AND'),('AE','AE','ARE'),('AF','AF','AFG'),('AG','AG','ATG'),('AI','AI','AIA'),('AL','AL','ALB'),('AM','AM','ARM'),('AN','AN','ANT'),('AO','AO','AGO'),('AQ','AQ','ATA'),('AR','AR','ARG'),('AS','AS','ASM'),('AT','AT','AUT'),('AU','AU','AUS'),('AW','AW','ABW'),('AX','AX','ALA'),('AZ','AZ','AZE'),('BA','BA','BIH'),('BB','BB','BRB'),('BD','BD','BGD'),('BE','BE','BEL'),('BF','BF','BFA'),('BG','BG','BGR'),('BH','BH','BHR'),('BI','BI','BDI'),('BJ','BJ','BEN'),('BL','BL','BLM'),('BM','BM','BMU'),('BN','BN','BRN'),('BO','BO','BOL'),('BQ','BQ','BES'),('BR','BR','BRA'),('BS','BS','BHS'),('BT','BT','BTN'),('BV','BV','BVT'),('BW','BW','BWA'),('BY','BY','BLR'),('BZ','BZ','BLZ'),('CA','CA','CAN'),('CC','CC','CCK'),('CD','CD','COD'),('CF','CF','CAF'),('CG','CG','COG'),('CH','CH','CHE'),('CI','CI','CIV'),('CK','CK','COK'),('CL','CL','CHL'),('CM','CM','CMR'),('CN','CN','CHN'),('CO','CO','COL'),('CR','CR','CRI'),('CU','CU','CUB'),('CV','CV','CPV'),('CW','CW','CUW'),('CX','CX','CXR'),('CY','CY','CYP'),('CZ','CZ','CZE'),('DE','DE','DEU'),('DJ','DJ','DJI'),('DK','DK','DNK'),('DM','DM','DMA'),('DO','DO','DOM'),('DZ','DZ','DZA'),('EC','EC','ECU'),('EE','EE','EST'),('EG','EG','EGY'),('EH','EH','ESH'),('ER','ER','ERI'),('ES','ES','ESP'),('ET','ET','ETH'),('FI','FI','FIN'),('FJ','FJ','FJI'),('FK','FK','FLK'),('FM','FM','FSM'),('FO','FO','FRO'),('FR','FR','FRA'),('GA','GA','GAB'),('GB','GB','GBR'),('GD','GD','GRD'),('GE','GE','GEO'),('GF','GF','GUF'),('GG','GG','GGY'),('GH','GH','GHA'),('GI','GI','GIB'),('GL','GL','GRL'),('GM','GM','GMB'),('GN','GN','GIN'),('GP','GP','GLP'),('GQ','GQ','GNQ'),('GR','GR','GRC'),('GS','GS','SGS'),('GT','GT','GTM'),('GU','GU','GUM'),('GW','GW','GNB'),('GY','GY','GUY'),('HK','HK','HKG'),('HM','HM','HMD'),('HN','HN','HND'),('HR','HR','HRV'),('HT','HT','HTI'),('HU','HU','HUN'),('ID','ID','IDN'),('IE','IE','IRL'),('IL','IL','ISR'),('IM','IM','IMN'),('IN','IN','IND'),('IO','IO','IOT'),('IQ','IQ','IRQ'),('IR','IR','IRN'),('IS','IS','ISL'),('IT','IT','ITA'),('JE','JE','JEY'),('JM','JM','JAM'),('JO','JO','JOR'),('JP','JP','JPN'),('KE','KE','KEN'),('KG','KG','KGZ'),('KH','KH','KHM'),('KI','KI','KIR'),('KM','KM','COM'),('KN','KN','KNA'),('KP','KP','PRK'),('KR','KR','KOR'),('KW','KW','KWT'),('KY','KY','CYM'),('KZ','KZ','KAZ'),('LA','LA','LAO'),('LB','LB','LBN'),('LC','LC','LCA'),('LI','LI','LIE'),('LK','LK','LKA'),('LR','LR','LBR'),('LS','LS','LSO'),('LT','LT','LTU'),('LU','LU','LUX'),('LV','LV','LVA'),('LY','LY','LBY'),('MA','MA','MAR'),('MC','MC','MCO'),('MD','MD','MDA'),('ME','ME','MNE'),('MF','MF','MAF'),('MG','MG','MDG'),('MH','MH','MHL'),('MK','MK','MKD'),('ML','ML','MLI'),('MM','MM','MMR'),('MN','MN','MNG'),('MO','MO','MAC'),('MP','MP','MNP'),('MQ','MQ','MTQ'),('MR','MR','MRT'),('MS','MS','MSR'),('MT','MT','MLT'),('MU','MU','MUS'),('MV','MV','MDV'),('MW','MW','MWI'),('MX','MX','MEX'),('MY','MY','MYS'),('MZ','MZ','MOZ'),('NA','NA','NAM'),('NC','NC','NCL'),('NE','NE','NER'),('NF','NF','NFK'),('NG','NG','NGA'),('NI','NI','NIC'),('NL','NL','NLD'),('NO','NO','NOR'),('NP','NP','NPL'),('NR','NR','NRU'),('NU','NU','NIU'),('NZ','NZ','NZL'),('OM','OM','OMN'),('PA','PA','PAN'),('PE','PE','PER'),('PF','PF','PYF'),('PG','PG','PNG'),('PH','PH','PHL'),('PK','PK','PAK'),('PL','PL','POL'),('PM','PM','SPM'),('PN','PN','PCN'),('PS','PS','PSE'),('PT','PT','PRT'),('PW','PW','PLW'),('PY','PY','PRY'),('QA','QA','QAT'),('RE','RE','REU'),('RO','RO','ROU'),('RS','RS','SRB'),('RU','RU','RUS'),('RW','RW','RWA'),('SA','SA','SAU'),('SB','SB','SLB'),('SC','SC','SYC'),('SD','SD','SDN'),('SE','SE','SWE'),('SG','SG','SGP'),('SH','SH','SHN'),('SI','SI','SVN'),('SJ','SJ','SJM'),('SK','SK','SVK'),('SL','SL','SLE'),('SM','SM','SMR'),('SN','SN','SEN'),('SO','SO','SOM'),('SR','SR','SUR'),('ST','ST','STP'),('SV','SV','SLV'),('SX','SX','SXM'),('SY','SY','SYR'),('SZ','SZ','SWZ'),('TC','TC','TCA'),('TD','TD','TCD'),('TF','TF','ATF'),('TG','TG','TGO'),('TH','TH','THA'),('TJ','TJ','TJK'),('TK','TK','TKL'),('TL','TL','TLS'),('TM','TM','TKM'),('TN','TN','TUN'),('TO','TO','TON'),('TR','TR','TUR'),('TT','TT','TTO'),('TV','TV','TUV'),('TW','TW','TWN'),('TZ','TZ','TZA'),('UA','UA','UKR'),('UG','UG','UGA'),('UM','UM','UMI'),('US','US','USA'),('UY','UY','URY'),('UZ','UZ','UZB'),('VA','VA','VAT'),('VC','VC','VCT'),('VE','VE','VEN'),('VG','VG','VGB'),('VI','VI','VIR'),('VN','VN','VNM'),('VU','VU','VUT'),('WF','WF','WLF'),('WS','WS','WSM'),('XK','XK','XKX'),('YE','YE','YEM'),('YT','YT','MYT'),('ZA','ZA','ZAF'),('ZM','ZM','ZMB'),('ZW','ZW','ZWE');
/*!40000 ALTER TABLE `directory_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country_format`
--

DROP TABLE IF EXISTS `directory_country_format`;
CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format ID',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country ID in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

--
-- Table structure for table `directory_country_region`
--

DROP TABLE IF EXISTS `directory_country_region`;
CREATE TABLE `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region ID',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country ID in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Dumping data for table `directory_country_region`
--

LOCK TABLES `directory_country_region` WRITE;
/*!40000 ALTER TABLE `directory_country_region` DISABLE KEYS */;
INSERT INTO `directory_country_region` VALUES ('1','US','AL','Alabama'),('2','US','AK','Alaska'),('3','US','AS','American Samoa'),('4','US','AZ','Arizona'),('5','US','AR','Arkansas'),('6','US','AE','Armed Forces Africa'),('7','US','AA','Armed Forces Americas'),('8','US','AE','Armed Forces Canada'),('9','US','AE','Armed Forces Europe'),('10','US','AE','Armed Forces Middle East'),('11','US','AP','Armed Forces Pacific'),('12','US','CA','California'),('13','US','CO','Colorado'),('14','US','CT','Connecticut'),('15','US','DE','Delaware'),('16','US','DC','District of Columbia'),('17','US','FM','Federated States Of Micronesia'),('18','US','FL','Florida'),('19','US','GA','Georgia'),('20','US','GU','Guam'),('21','US','HI','Hawaii'),('22','US','ID','Idaho'),('23','US','IL','Illinois'),('24','US','IN','Indiana'),('25','US','IA','Iowa'),('26','US','KS','Kansas'),('27','US','KY','Kentucky'),('28','US','LA','Louisiana'),('29','US','ME','Maine'),('30','US','MH','Marshall Islands'),('31','US','MD','Maryland'),('32','US','MA','Massachusetts'),('33','US','MI','Michigan'),('34','US','MN','Minnesota'),('35','US','MS','Mississippi'),('36','US','MO','Missouri'),('37','US','MT','Montana'),('38','US','NE','Nebraska'),('39','US','NV','Nevada'),('40','US','NH','New Hampshire'),('41','US','NJ','New Jersey'),('42','US','NM','New Mexico'),('43','US','NY','New York'),('44','US','NC','North Carolina'),('45','US','ND','North Dakota'),('46','US','MP','Northern Mariana Islands'),('47','US','OH','Ohio'),('48','US','OK','Oklahoma'),('49','US','OR','Oregon'),('50','US','PW','Palau'),('51','US','PA','Pennsylvania'),('52','US','PR','Puerto Rico'),('53','US','RI','Rhode Island'),('54','US','SC','South Carolina'),('55','US','SD','South Dakota'),('56','US','TN','Tennessee'),('57','US','TX','Texas'),('58','US','UT','Utah'),('59','US','VT','Vermont'),('60','US','VI','Virgin Islands'),('61','US','VA','Virginia'),('62','US','WA','Washington'),('63','US','WV','West Virginia'),('64','US','WI','Wisconsin'),('65','US','WY','Wyoming'),('66','CA','AB','Alberta'),('67','CA','BC','British Columbia'),('68','CA','MB','Manitoba'),('69','CA','NL','Newfoundland and Labrador'),('70','CA','NB','New Brunswick'),('71','CA','NS','Nova Scotia'),('72','CA','NT','Northwest Territories'),('73','CA','NU','Nunavut'),('74','CA','ON','Ontario'),('75','CA','PE','Prince Edward Island'),('76','CA','QC','Quebec'),('77','CA','SK','Saskatchewan'),('78','CA','YT','Yukon Territory'),('79','DE','NDS','Niedersachsen'),('80','DE','BAW','Baden-Württemberg'),('81','DE','BAY','Bayern'),('82','DE','BER','Berlin'),('83','DE','BRG','Brandenburg'),('84','DE','BRE','Bremen'),('85','DE','HAM','Hamburg'),('86','DE','HES','Hessen'),('87','DE','MEC','Mecklenburg-Vorpommern'),('88','DE','NRW','Nordrhein-Westfalen'),('89','DE','RHE','Rheinland-Pfalz'),('90','DE','SAR','Saarland'),('91','DE','SAS','Sachsen'),('92','DE','SAC','Sachsen-Anhalt'),('93','DE','SCN','Schleswig-Holstein'),('94','DE','THE','Thüringen'),('95','AT','WI','Wien'),('96','AT','NO','Niederösterreich'),('97','AT','OO','Oberösterreich'),('98','AT','SB','Salzburg'),('99','AT','KN','Kärnten'),('100','AT','ST','Steiermark'),('101','AT','TI','Tirol'),('102','AT','BL','Burgenland'),('103','AT','VB','Vorarlberg'),('104','CH','AG','Aargau'),('105','CH','AI','Appenzell Innerrhoden'),('106','CH','AR','Appenzell Ausserrhoden'),('107','CH','BE','Bern'),('108','CH','BL','Basel-Landschaft'),('109','CH','BS','Basel-Stadt'),('110','CH','FR','Freiburg'),('111','CH','GE','Genf'),('112','CH','GL','Glarus'),('113','CH','GR','Graubünden'),('114','CH','JU','Jura'),('115','CH','LU','Luzern'),('116','CH','NE','Neuenburg'),('117','CH','NW','Nidwalden'),('118','CH','OW','Obwalden'),('119','CH','SG','St. Gallen'),('120','CH','SH','Schaffhausen'),('121','CH','SO','Solothurn'),('122','CH','SZ','Schwyz'),('123','CH','TG','Thurgau'),('124','CH','TI','Tessin'),('125','CH','UR','Uri'),('126','CH','VD','Waadt'),('127','CH','VS','Wallis'),('128','CH','ZG','Zug'),('129','CH','ZH','Zürich'),('130','ES','A Coruсa','A Coruña'),('131','ES','Alava','Alava'),('132','ES','Albacete','Albacete'),('133','ES','Alicante','Alicante'),('134','ES','Almeria','Almeria'),('135','ES','Asturias','Asturias'),('136','ES','Avila','Avila'),('137','ES','Badajoz','Badajoz'),('138','ES','Baleares','Baleares'),('139','ES','Barcelona','Barcelona'),('140','ES','Burgos','Burgos'),('141','ES','Caceres','Caceres'),('142','ES','Cadiz','Cadiz'),('143','ES','Cantabria','Cantabria'),('144','ES','Castellon','Castellon'),('145','ES','Ceuta','Ceuta'),('146','ES','Ciudad Real','Ciudad Real'),('147','ES','Cordoba','Cordoba'),('148','ES','Cuenca','Cuenca'),('149','ES','Girona','Girona'),('150','ES','Granada','Granada'),('151','ES','Guadalajara','Guadalajara'),('152','ES','Guipuzcoa','Guipuzcoa'),('153','ES','Huelva','Huelva'),('154','ES','Huesca','Huesca'),('155','ES','Jaen','Jaen'),('156','ES','La Rioja','La Rioja'),('157','ES','Las Palmas','Las Palmas'),('158','ES','Leon','Leon'),('159','ES','Lleida','Lleida'),('160','ES','Lugo','Lugo'),('161','ES','Madrid','Madrid'),('162','ES','Malaga','Malaga'),('163','ES','Melilla','Melilla'),('164','ES','Murcia','Murcia'),('165','ES','Navarra','Navarra'),('166','ES','Ourense','Ourense'),('167','ES','Palencia','Palencia'),('168','ES','Pontevedra','Pontevedra'),('169','ES','Salamanca','Salamanca'),('170','ES','Santa Cruz de Tenerife','Santa Cruz de Tenerife'),('171','ES','Segovia','Segovia'),('172','ES','Sevilla','Sevilla'),('173','ES','Soria','Soria'),('174','ES','Tarragona','Tarragona'),('175','ES','Teruel','Teruel'),('176','ES','Toledo','Toledo'),('177','ES','Valencia','Valencia'),('178','ES','Valladolid','Valladolid'),('179','ES','Vizcaya','Vizcaya'),('180','ES','Zamora','Zamora'),('181','ES','Zaragoza','Zaragoza'),('182','FR','1','Ain'),('183','FR','2','Aisne'),('184','FR','3','Allier'),('185','FR','4','Alpes-de-Haute-Provence'),('186','FR','5','Hautes-Alpes'),('187','FR','6','Alpes-Maritimes'),('188','FR','7','Ardèche'),('189','FR','8','Ardennes'),('190','FR','9','Ariège'),('191','FR','10','Aube'),('192','FR','11','Aude'),('193','FR','12','Aveyron'),('194','FR','13','Bouches-du-Rhône'),('195','FR','14','Calvados'),('196','FR','15','Cantal'),('197','FR','16','Charente'),('198','FR','17','Charente-Maritime'),('199','FR','18','Cher'),('200','FR','19','Corrèze'),('201','FR','2A','Corse-du-Sud'),('202','FR','2B','Haute-Corse'),('203','FR','21','Côte-d\'Or'),('204','FR','22','Côtes-d\'Armor'),('205','FR','23','Creuse'),('206','FR','24','Dordogne'),('207','FR','25','Doubs'),('208','FR','26','Drôme'),('209','FR','27','Eure'),('210','FR','28','Eure-et-Loir'),('211','FR','29','Finistère'),('212','FR','30','Gard'),('213','FR','31','Haute-Garonne'),('214','FR','32','Gers'),('215','FR','33','Gironde'),('216','FR','34','Hérault'),('217','FR','35','Ille-et-Vilaine'),('218','FR','36','Indre'),('219','FR','37','Indre-et-Loire'),('220','FR','38','Isère'),('221','FR','39','Jura'),('222','FR','40','Landes'),('223','FR','41','Loir-et-Cher'),('224','FR','42','Loire'),('225','FR','43','Haute-Loire'),('226','FR','44','Loire-Atlantique'),('227','FR','45','Loiret'),('228','FR','46','Lot'),('229','FR','47','Lot-et-Garonne'),('230','FR','48','Lozère'),('231','FR','49','Maine-et-Loire'),('232','FR','50','Manche'),('233','FR','51','Marne'),('234','FR','52','Haute-Marne'),('235','FR','53','Mayenne'),('236','FR','54','Meurthe-et-Moselle'),('237','FR','55','Meuse'),('238','FR','56','Morbihan'),('239','FR','57','Moselle'),('240','FR','58','Nièvre'),('241','FR','59','Nord'),('242','FR','60','Oise'),('243','FR','61','Orne'),('244','FR','62','Pas-de-Calais'),('245','FR','63','Puy-de-Dôme'),('246','FR','64','Pyrénées-Atlantiques'),('247','FR','65','Hautes-Pyrénées'),('248','FR','66','Pyrénées-Orientales'),('249','FR','67','Bas-Rhin'),('250','FR','68','Haut-Rhin'),('251','FR','69','Rhône'),('252','FR','70','Haute-Saône'),('253','FR','71','Saône-et-Loire'),('254','FR','72','Sarthe'),('255','FR','73','Savoie'),('256','FR','74','Haute-Savoie'),('257','FR','75','Paris'),('258','FR','76','Seine-Maritime'),('259','FR','77','Seine-et-Marne'),('260','FR','78','Yvelines'),('261','FR','79','Deux-Sèvres'),('262','FR','80','Somme'),('263','FR','81','Tarn'),('264','FR','82','Tarn-et-Garonne'),('265','FR','83','Var'),('266','FR','84','Vaucluse'),('267','FR','85','Vendée'),('268','FR','86','Vienne'),('269','FR','87','Haute-Vienne'),('270','FR','88','Vosges'),('271','FR','89','Yonne'),('272','FR','90','Territoire-de-Belfort'),('273','FR','91','Essonne'),('274','FR','92','Hauts-de-Seine'),('275','FR','93','Seine-Saint-Denis'),('276','FR','94','Val-de-Marne'),('277','FR','95','Val-d\'Oise'),('278','RO','AB','Alba'),('279','RO','AR','Arad'),('280','RO','AG','Argeş'),('281','RO','BC','Bacău'),('282','RO','BH','Bihor'),('283','RO','BN','Bistriţa-Năsăud'),('284','RO','BT','Botoşani'),('285','RO','BV','Braşov'),('286','RO','BR','Brăila'),('287','RO','B','Bucureşti'),('288','RO','BZ','Buzău'),('289','RO','CS','Caraş-Severin'),('290','RO','CL','Călăraşi'),('291','RO','CJ','Cluj'),('292','RO','CT','Constanţa'),('293','RO','CV','Covasna'),('294','RO','DB','Dâmboviţa'),('295','RO','DJ','Dolj'),('296','RO','GL','Galaţi'),('297','RO','GR','Giurgiu'),('298','RO','GJ','Gorj'),('299','RO','HR','Harghita'),('300','RO','HD','Hunedoara'),('301','RO','IL','Ialomiţa'),('302','RO','IS','Iaşi'),('303','RO','IF','Ilfov'),('304','RO','MM','Maramureş'),('305','RO','MH','Mehedinţi'),('306','RO','MS','Mureş'),('307','RO','NT','Neamţ'),('308','RO','OT','Olt'),('309','RO','PH','Prahova'),('310','RO','SM','Satu-Mare'),('311','RO','SJ','Sălaj'),('312','RO','SB','Sibiu'),('313','RO','SV','Suceava'),('314','RO','TR','Teleorman'),('315','RO','TM','Timiş'),('316','RO','TL','Tulcea'),('317','RO','VS','Vaslui'),('318','RO','VL','Vâlcea'),('319','RO','VN','Vrancea'),('320','FI','Lappi','Lappi'),('321','FI','Pohjois-Pohjanmaa','Pohjois-Pohjanmaa'),('322','FI','Kainuu','Kainuu'),('323','FI','Pohjois-Karjala','Pohjois-Karjala'),('324','FI','Pohjois-Savo','Pohjois-Savo'),('325','FI','Etelä-Savo','Etelä-Savo'),('326','FI','Etelä-Pohjanmaa','Etelä-Pohjanmaa'),('327','FI','Pohjanmaa','Pohjanmaa'),('328','FI','Pirkanmaa','Pirkanmaa'),('329','FI','Satakunta','Satakunta'),('330','FI','Keski-Pohjanmaa','Keski-Pohjanmaa'),('331','FI','Keski-Suomi','Keski-Suomi'),('332','FI','Varsinais-Suomi','Varsinais-Suomi'),('333','FI','Etelä-Karjala','Etelä-Karjala'),('334','FI','Päijät-Häme','Päijät-Häme'),('335','FI','Kanta-Häme','Kanta-Häme'),('336','FI','Uusimaa','Uusimaa'),('337','FI','Itä-Uusimaa','Itä-Uusimaa'),('338','FI','Kymenlaakso','Kymenlaakso'),('339','FI','Ahvenanmaa','Ahvenanmaa'),('340','EE','EE-37','Harjumaa'),('341','EE','EE-39','Hiiumaa'),('342','EE','EE-44','Ida-Virumaa'),('343','EE','EE-49','Jõgevamaa'),('344','EE','EE-51','Järvamaa'),('345','EE','EE-57','Läänemaa'),('346','EE','EE-59','Lääne-Virumaa'),('347','EE','EE-65','Põlvamaa'),('348','EE','EE-67','Pärnumaa'),('349','EE','EE-70','Raplamaa'),('350','EE','EE-74','Saaremaa'),('351','EE','EE-78','Tartumaa'),('352','EE','EE-82','Valgamaa'),('353','EE','EE-84','Viljandimaa'),('354','EE','EE-86','Võrumaa'),('355','LV','LV-DGV','Daugavpils'),('356','LV','LV-JEL','Jelgava'),('357','LV','Jēkabpils','Jēkabpils'),('358','LV','LV-JUR','Jūrmala'),('359','LV','LV-LPX','Liepāja'),('360','LV','LV-LE','Liepājas novads'),('361','LV','LV-REZ','Rēzekne'),('362','LV','LV-RIX','Rīga'),('363','LV','LV-RI','Rīgas novads'),('364','LV','Valmiera','Valmiera'),('365','LV','LV-VEN','Ventspils'),('366','LV','Aglonas novads','Aglonas novads'),('367','LV','LV-AI','Aizkraukles novads'),('368','LV','Aizputes novads','Aizputes novads'),('369','LV','Aknīstes novads','Aknīstes novads'),('370','LV','Alojas novads','Alojas novads'),('371','LV','Alsungas novads','Alsungas novads'),('372','LV','LV-AL','Alūksnes novads'),('373','LV','Amatas novads','Amatas novads'),('374','LV','Apes novads','Apes novads'),('375','LV','Auces novads','Auces novads'),('376','LV','Babītes novads','Babītes novads'),('377','LV','Baldones novads','Baldones novads'),('378','LV','Baltinavas novads','Baltinavas novads'),('379','LV','LV-BL','Balvu novads'),('380','LV','LV-BU','Bauskas novads'),('381','LV','Beverīnas novads','Beverīnas novads'),('382','LV','Brocēnu novads','Brocēnu novads'),('383','LV','Burtnieku novads','Burtnieku novads'),('384','LV','Carnikavas novads','Carnikavas novads'),('385','LV','Cesvaines novads','Cesvaines novads'),('386','LV','Ciblas novads','Ciblas novads'),('387','LV','LV-CE','Cēsu novads'),('388','LV','Dagdas novads','Dagdas novads'),('389','LV','LV-DA','Daugavpils novads'),('390','LV','LV-DO','Dobeles novads'),('391','LV','Dundagas novads','Dundagas novads'),('392','LV','Durbes novads','Durbes novads'),('393','LV','Engures novads','Engures novads'),('394','LV','Garkalnes novads','Garkalnes novads'),('395','LV','Grobiņas novads','Grobiņas novads'),('396','LV','LV-GU','Gulbenes novads'),('397','LV','Iecavas novads','Iecavas novads'),('398','LV','Ikšķiles novads','Ikšķiles novads'),('399','LV','Ilūkstes novads','Ilūkstes novads'),('400','LV','Inčukalna novads','Inčukalna novads'),('401','LV','Jaunjelgavas novads','Jaunjelgavas novads'),('402','LV','Jaunpiebalgas novads','Jaunpiebalgas novads'),('403','LV','Jaunpils novads','Jaunpils novads'),('404','LV','LV-JL','Jelgavas novads'),('405','LV','LV-JK','Jēkabpils novads'),('406','LV','Kandavas novads','Kandavas novads'),('407','LV','Kokneses novads','Kokneses novads'),('408','LV','Krimuldas novads','Krimuldas novads'),('409','LV','Krustpils novads','Krustpils novads'),('410','LV','LV-KR','Krāslavas novads'),('411','LV','LV-KU','Kuldīgas novads'),('412','LV','Kārsavas novads','Kārsavas novads'),('413','LV','Lielvārdes novads','Lielvārdes novads'),('414','LV','LV-LM','Limbažu novads'),('415','LV','Lubānas novads','Lubānas novads'),('416','LV','LV-LU','Ludzas novads'),('417','LV','Līgatnes novads','Līgatnes novads'),('418','LV','Līvānu novads','Līvānu novads'),('419','LV','LV-MA','Madonas novads'),('420','LV','Mazsalacas novads','Mazsalacas novads'),('421','LV','Mālpils novads','Mālpils novads'),('422','LV','Mārupes novads','Mārupes novads'),('423','LV','Naukšēnu novads','Naukšēnu novads'),('424','LV','Neretas novads','Neretas novads'),('425','LV','Nīcas novads','Nīcas novads'),('426','LV','LV-OG','Ogres novads'),('427','LV','Olaines novads','Olaines novads'),('428','LV','Ozolnieku novads','Ozolnieku novads'),('429','LV','LV-PR','Preiļu novads'),('430','LV','Priekules novads','Priekules novads'),('431','LV','Priekuļu novads','Priekuļu novads'),('432','LV','Pārgaujas novads','Pārgaujas novads'),('433','LV','Pāvilostas novads','Pāvilostas novads'),('434','LV','Pļaviņu novads','Pļaviņu novads'),('435','LV','Raunas novads','Raunas novads'),('436','LV','Riebiņu novads','Riebiņu novads'),('437','LV','Rojas novads','Rojas novads'),('438','LV','Ropažu novads','Ropažu novads'),('439','LV','Rucavas novads','Rucavas novads'),('440','LV','Rugāju novads','Rugāju novads'),('441','LV','Rundāles novads','Rundāles novads'),('442','LV','LV-RE','Rēzeknes novads'),('443','LV','Rūjienas novads','Rūjienas novads'),('444','LV','Salacgrīvas novads','Salacgrīvas novads'),('445','LV','Salas novads','Salas novads'),('446','LV','Salaspils novads','Salaspils novads'),('447','LV','LV-SA','Saldus novads'),('448','LV','Saulkrastu novads','Saulkrastu novads'),('449','LV','Siguldas novads','Siguldas novads'),('450','LV','Skrundas novads','Skrundas novads'),('451','LV','Skrīveru novads','Skrīveru novads'),('452','LV','Smiltenes novads','Smiltenes novads'),('453','LV','Stopiņu novads','Stopiņu novads'),('454','LV','Strenču novads','Strenču novads'),('455','LV','Sējas novads','Sējas novads'),('456','LV','LV-TA','Talsu novads'),('457','LV','LV-TU','Tukuma novads'),('458','LV','Tērvetes novads','Tērvetes novads'),('459','LV','Vaiņodes novads','Vaiņodes novads'),('460','LV','LV-VK','Valkas novads'),('461','LV','LV-VM','Valmieras novads'),('462','LV','Varakļānu novads','Varakļānu novads'),('463','LV','Vecpiebalgas novads','Vecpiebalgas novads'),('464','LV','Vecumnieku novads','Vecumnieku novads'),('465','LV','LV-VE','Ventspils novads'),('466','LV','Viesītes novads','Viesītes novads'),('467','LV','Viļakas novads','Viļakas novads'),('468','LV','Viļānu novads','Viļānu novads'),('469','LV','Vārkavas novads','Vārkavas novads'),('470','LV','Zilupes novads','Zilupes novads'),('471','LV','Ādažu novads','Ādažu novads'),('472','LV','Ērgļu novads','Ērgļu novads'),('473','LV','Ķeguma novads','Ķeguma novads'),('474','LV','Ķekavas novads','Ķekavas novads'),('475','LT','LT-AL','Alytaus Apskritis'),('476','LT','LT-KU','Kauno Apskritis'),('477','LT','LT-KL','Klaipėdos Apskritis'),('478','LT','LT-MR','Marijampolės Apskritis'),('479','LT','LT-PN','Panevėžio Apskritis'),('480','LT','LT-SA','Šiaulių Apskritis'),('481','LT','LT-TA','Tauragės Apskritis'),('482','LT','LT-TE','Telšių Apskritis'),('483','LT','LT-UT','Utenos Apskritis'),('484','LT','LT-VL','Vilniaus Apskritis'),('485','BR','AC','Acre'),('486','BR','AL','Alagoas'),('487','BR','AP','Amapá'),('488','BR','AM','Amazonas'),('489','BR','BA','Bahia'),('490','BR','CE','Ceará'),('491','BR','ES','Espírito Santo'),('492','BR','GO','Goiás'),('493','BR','MA','Maranhão'),('494','BR','MT','Mato Grosso'),('495','BR','MS','Mato Grosso do Sul'),('496','BR','MG','Minas Gerais'),('497','BR','PA','Pará'),('498','BR','PB','Paraíba'),('499','BR','PR','Paraná'),('500','BR','PE','Pernambuco'),('501','BR','PI','Piauí'),('502','BR','RJ','Rio de Janeiro'),('503','BR','RN','Rio Grande do Norte'),('504','BR','RS','Rio Grande do Sul'),('505','BR','RO','Rondônia'),('506','BR','RR','Roraima'),('507','BR','SC','Santa Catarina'),('508','BR','SP','São Paulo'),('509','BR','SE','Sergipe'),('510','BR','TO','Tocantins'),('511','BR','DF','Distrito Federal'),('512','HR','HR-01','Zagrebačka županija'),('513','HR','HR-02','Krapinsko-zagorska županija'),('514','HR','HR-03','Sisačko-moslavačka županija'),('515','HR','HR-04','Karlovačka županija'),('516','HR','HR-05','Varaždinska županija'),('517','HR','HR-06','Koprivničko-križevačka županija'),('518','HR','HR-07','Bjelovarsko-bilogorska županija'),('519','HR','HR-08','Primorsko-goranska županija'),('520','HR','HR-09','Ličko-senjska županija'),('521','HR','HR-10','Virovitičko-podravska županija'),('522','HR','HR-11','Požeško-slavonska županija'),('523','HR','HR-12','Brodsko-posavska županija'),('524','HR','HR-13','Zadarska županija'),('525','HR','HR-14','Osječko-baranjska županija'),('526','HR','HR-15','Šibensko-kninska županija'),('527','HR','HR-16','Vukovarsko-srijemska županija'),('528','HR','HR-17','Splitsko-dalmatinska županija'),('529','HR','HR-18','Istarska županija'),('530','HR','HR-19','Dubrovačko-neretvanska županija'),('531','HR','HR-20','Međimurska županija'),('532','HR','HR-21','Grad Zagreb'),('533','IN','AN','Andaman and Nicobar Islands'),('534','IN','AP','Andhra Pradesh'),('535','IN','AR','Arunachal Pradesh'),('536','IN','AS','Assam'),('537','IN','BR','Bihar'),('538','IN','CH','Chandigarh'),('539','IN','CT','Chhattisgarh'),('540','IN','DN','Dadra and Nagar Haveli'),('541','IN','DD','Daman and Diu'),('542','IN','DL','Delhi'),('543','IN','GA','Goa'),('544','IN','GJ','Gujarat'),('545','IN','HR','Haryana'),('546','IN','HP','Himachal Pradesh'),('547','IN','JK','Jammu and Kashmir'),('548','IN','JH','Jharkhand'),('549','IN','KA','Karnataka'),('550','IN','KL','Kerala'),('551','IN','LD','Lakshadweep'),('552','IN','MP','Madhya Pradesh'),('553','IN','MH','Maharashtra'),('554','IN','MN','Manipur'),('555','IN','ML','Meghalaya'),('556','IN','MZ','Mizoram'),('557','IN','NL','Nagaland'),('558','IN','OR','Odisha'),('559','IN','PY','Puducherry'),('560','IN','PB','Punjab'),('561','IN','RJ','Rajasthan'),('562','IN','SK','Sikkim'),('563','IN','TN','Tamil Nadu'),('564','IN','TG','Telangana'),('565','IN','TR','Tripura'),('566','IN','UP','Uttar Pradesh'),('567','IN','UT','Uttarakhand'),('568','IN','WB','West Bengal'),('569','AU','ACT','Australian Capital Territory'),('570','AU','NSW','New South Wales'),('571','AU','VIC','Victoria'),('572','AU','QLD','Queensland'),('573','AU','SA','South Australia'),('574','AU','TAS','Tasmania'),('575','AU','WA','Western Australia'),('576','AU','NT','Northern Territory'),('577','BE','VAN','Antwerpen'),('578','BE','WBR','Brabant wallon'),('579','BE','BRU','Brussels-Capital Region'),('580','BE','WHT','Hainaut'),('581','BE','VLI','Limburg'),('582','BE','WLG','Liège'),('583','BE','WLX','Luxembourg'),('584','BE','WNA','Namur'),('585','BE','VOV','Oost-Vlaanderen'),('586','BE','VBR','Vlaams-Brabant'),('587','BE','VWV','West-Vlaanderen'),('588','CN','CN-AH','Anhui Sheng'),('589','CN','CN-BJ','Beijing Shi'),('590','CN','CN-CQ','Chongqing Shi'),('591','CN','CN-FJ','Fujian Sheng'),('592','CN','CN-GS','Gansu Sheng'),('593','CN','CN-GD','Guangdong Sheng'),('594','CN','CN-GX','Guangxi Zhuangzu Zizhiqu'),('595','CN','CN-GZ','Guizhou Sheng'),('596','CN','CN-HI','Hainan Sheng'),('597','CN','CN-HE','Hebei Sheng'),('598','CN','CN-HL','Heilongjiang Sheng'),('599','CN','CN-HA','Henan Sheng'),('600','CN','CN-HK','Hong Kong SAR'),('601','CN','CN-HB','Hubei Sheng'),('602','CN','CN-HN','Hunan Sheng'),('603','CN','CN-JS','Jiangsu Sheng'),('604','CN','CN-JX','Jiangxi Sheng'),('605','CN','CN-JL','Jilin Sheng'),('606','CN','CN-LN','Liaoning Sheng'),('607','CN','CN-MO','Macao SAR'),('608','CN','CN-NM','Nei Mongol Zizhiqu'),('609','CN','CN-NX','Ningxia Huizi Zizhiqu'),('610','CN','CN-QH','Qinghai Sheng'),('611','CN','CN-SN','Shaanxi Sheng'),('612','CN','CN-SD','Shandong Sheng'),('613','CN','CN-SH','Shanghai Shi'),('614','CN','CN-SX','Shanxi Sheng'),('615','CN','CN-SC','Sichuan Sheng'),('616','CN','CN-TW','Taiwan Sheng'),('617','CN','CN-TJ','Tianjin Shi'),('618','CN','CN-XJ','Xinjiang Uygur Zizhiqu'),('619','CN','CN-XZ','Xizang Zizhiqu'),('620','CN','CN-YN','Yunnan Sheng'),('621','CN','CN-ZJ','Zhejiang Sheng'),('622','CO','CO-AMA','Amazonas'),('623','CO','CO-ANT','Antioquia'),('624','CO','CO-ARA','Arauca'),('625','CO','CO-ATL','Atlántico'),('626','CO','CO-BOL','Bolívar'),('627','CO','CO-BOY','Boyacá'),('628','CO','CO-CAL','Caldas'),('629','CO','CO-CAQ','Caquetá'),('630','CO','CO-CAS','Casanare'),('631','CO','CO-CAU','Cauca'),('632','CO','CO-CES','Cesar'),('633','CO','CO-CHO','Chocó'),('634','CO','CO-COR','Córdoba'),('635','CO','CO-CUN','Cundinamarca'),('636','CO','CO-GUA','Guainía'),('637','CO','CO-GUV','Guaviare'),('638','CO','CO-HUL','Huila'),('639','CO','CO-LAG','La Guajira'),('640','CO','CO-MAG','Magdalena'),('641','CO','CO-MET','Meta'),('642','CO','CO-NAR','Nariño'),('643','CO','CO-NSA','Norte de Santander'),('644','CO','CO-PUT','Putumayo'),('645','CO','CO-QUI','Quindío'),('646','CO','CO-RIS','Risaralda'),('647','CO','CO-SAP','San Andrés y Providencia'),('648','CO','CO-SAN','Santander'),('649','CO','CO-SUC','Sucre'),('650','CO','CO-TOL','Tolima'),('651','CO','CO-VAC','Valle del Cauca'),('652','CO','CO-VAU','Vaupés'),('653','CO','CO-VID','Vichada'),('654','MX','AGU','Aguascalientes'),('655','MX','BCN','Baja California'),('656','MX','BCS','Baja California Sur'),('657','MX','CAM','Campeche'),('658','MX','CHP','Chiapas'),('659','MX','CHH','Chihuahua'),('660','MX','CMX','Ciudad de México'),('661','MX','COA','Coahuila'),('662','MX','COL','Colima'),('663','MX','DUR','Durango'),('664','MX','MEX','Estado de México'),('665','MX','GUA','Guanajuato'),('666','MX','GRO','Guerrero'),('667','MX','HID','Hidalgo'),('668','MX','JAL','Jalisco'),('669','MX','MIC','Michoacán'),('670','MX','MOR','Morelos'),('671','MX','NAY','Nayarit'),('672','MX','NLE','Nuevo León'),('673','MX','OAX','Oaxaca'),('674','MX','PUE','Puebla'),('675','MX','QUE','Querétaro'),('676','MX','ROO','Quintana Roo'),('677','MX','SLP','San Luis Potosí'),('678','MX','SIN','Sinaloa'),('679','MX','SON','Sonora'),('680','MX','TAB','Tabasco'),('681','MX','TAM','Tamaulipas'),('682','MX','TLA','Tlaxcala'),('683','MX','VER','Veracruz'),('684','MX','YUC','Yucatán'),('685','MX','ZAC','Zacatecas'),('686','PL','PL-02','dolnośląskie'),('687','PL','PL-04','kujawsko-pomorskie'),('688','PL','PL-06','lubelskie'),('689','PL','PL-08','lubuskie'),('690','PL','PL-10','łódzkie'),('691','PL','PL-12','małopolskie'),('692','PL','PL-14','mazowieckie'),('693','PL','PL-16','opolskie'),('694','PL','PL-18','podkarpackie'),('695','PL','PL-20','podlaskie'),('696','PL','PL-22','pomorskie'),('697','PL','PL-24','śląskie'),('698','PL','PL-26','świętokrzyskie'),('699','PL','PL-28','warmińsko-mazurskie'),('700','PL','PL-30','wielkopolskie'),('701','PL','PL-32','zachodniopomorskie');
/*!40000 ALTER TABLE `directory_country_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country_region_name`
--

DROP TABLE IF EXISTS `directory_country_region_name`;
CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

LOCK TABLES `directory_country_region_name` WRITE;
/*!40000 ALTER TABLE `directory_country_region_name` DISABLE KEYS */;
INSERT INTO `directory_country_region_name` VALUES ('en_US','1','Alabama'),('en_US','2','Alaska'),('en_US','3','American Samoa'),('en_US','4','Arizona'),('en_US','5','Arkansas'),('en_US','6','Armed Forces Africa'),('en_US','7','Armed Forces Americas'),('en_US','8','Armed Forces Canada'),('en_US','9','Armed Forces Europe'),('en_US','10','Armed Forces Middle East'),('en_US','11','Armed Forces Pacific'),('en_US','12','California'),('en_US','13','Colorado'),('en_US','14','Connecticut'),('en_US','15','Delaware'),('en_US','16','District of Columbia'),('en_US','17','Federated States Of Micronesia'),('en_US','18','Florida'),('en_US','19','Georgia'),('en_US','20','Guam'),('en_US','21','Hawaii'),('en_US','22','Idaho'),('en_US','23','Illinois'),('en_US','24','Indiana'),('en_US','25','Iowa'),('en_US','26','Kansas'),('en_US','27','Kentucky'),('en_US','28','Louisiana'),('en_US','29','Maine'),('en_US','30','Marshall Islands'),('en_US','31','Maryland'),('en_US','32','Massachusetts'),('en_US','33','Michigan'),('en_US','34','Minnesota'),('en_US','35','Mississippi'),('en_US','36','Missouri'),('en_US','37','Montana'),('en_US','38','Nebraska'),('en_US','39','Nevada'),('en_US','40','New Hampshire'),('en_US','41','New Jersey'),('en_US','42','New Mexico'),('en_US','43','New York'),('en_US','44','North Carolina'),('en_US','45','North Dakota'),('en_US','46','Northern Mariana Islands'),('en_US','47','Ohio'),('en_US','48','Oklahoma'),('en_US','49','Oregon'),('en_US','50','Palau'),('en_US','51','Pennsylvania'),('en_US','52','Puerto Rico'),('en_US','53','Rhode Island'),('en_US','54','South Carolina'),('en_US','55','South Dakota'),('en_US','56','Tennessee'),('en_US','57','Texas'),('en_US','58','Utah'),('en_US','59','Vermont'),('en_US','60','Virgin Islands'),('en_US','61','Virginia'),('en_US','62','Washington'),('en_US','63','West Virginia'),('en_US','64','Wisconsin'),('en_US','65','Wyoming'),('en_US','66','Alberta'),('en_US','67','British Columbia'),('en_US','68','Manitoba'),('en_US','69','Newfoundland and Labrador'),('en_US','70','New Brunswick'),('en_US','71','Nova Scotia'),('en_US','72','Northwest Territories'),('en_US','73','Nunavut'),('en_US','74','Ontario'),('en_US','75','Prince Edward Island'),('en_US','76','Quebec'),('en_US','77','Saskatchewan'),('en_US','78','Yukon Territory'),('en_US','79','Niedersachsen'),('en_US','80','Baden-Württemberg'),('en_US','81','Bayern'),('en_US','82','Berlin'),('en_US','83','Brandenburg'),('en_US','84','Bremen'),('en_US','85','Hamburg'),('en_US','86','Hessen'),('en_US','87','Mecklenburg-Vorpommern'),('en_US','88','Nordrhein-Westfalen'),('en_US','89','Rheinland-Pfalz'),('en_US','90','Saarland'),('en_US','91','Sachsen'),('en_US','92','Sachsen-Anhalt'),('en_US','93','Schleswig-Holstein'),('en_US','94','Thüringen'),('en_US','95','Wien'),('en_US','96','Niederösterreich'),('en_US','97','Oberösterreich'),('en_US','98','Salzburg'),('en_US','99','Kärnten'),('en_US','100','Steiermark'),('en_US','101','Tirol'),('en_US','102','Burgenland'),('en_US','103','Vorarlberg'),('en_US','104','Aargau'),('en_US','105','Appenzell Innerrhoden'),('en_US','106','Appenzell Ausserrhoden'),('en_US','107','Bern'),('en_US','108','Basel-Landschaft'),('en_US','109','Basel-Stadt'),('en_US','110','Freiburg'),('en_US','111','Genf'),('en_US','112','Glarus'),('en_US','113','Graubünden'),('en_US','114','Jura'),('en_US','115','Luzern'),('en_US','116','Neuenburg'),('en_US','117','Nidwalden'),('en_US','118','Obwalden'),('en_US','119','St. Gallen'),('en_US','120','Schaffhausen'),('en_US','121','Solothurn'),('en_US','122','Schwyz'),('en_US','123','Thurgau'),('en_US','124','Tessin'),('en_US','125','Uri'),('en_US','126','Waadt'),('en_US','127','Wallis'),('en_US','128','Zug'),('en_US','129','Zürich'),('en_US','130','A Coruña'),('en_US','131','Alava'),('en_US','132','Albacete'),('en_US','133','Alicante'),('en_US','134','Almeria'),('en_US','135','Asturias'),('en_US','136','Avila'),('en_US','137','Badajoz'),('en_US','138','Baleares'),('en_US','139','Barcelona'),('en_US','140','Burgos'),('en_US','141','Caceres'),('en_US','142','Cadiz'),('en_US','143','Cantabria'),('en_US','144','Castellon'),('en_US','145','Ceuta'),('en_US','146','Ciudad Real'),('en_US','147','Cordoba'),('en_US','148','Cuenca'),('en_US','149','Girona'),('en_US','150','Granada'),('en_US','151','Guadalajara'),('en_US','152','Guipuzcoa'),('en_US','153','Huelva'),('en_US','154','Huesca'),('en_US','155','Jaen'),('en_US','156','La Rioja'),('en_US','157','Las Palmas'),('en_US','158','Leon'),('en_US','159','Lleida'),('en_US','160','Lugo'),('en_US','161','Madrid'),('en_US','162','Malaga'),('en_US','163','Melilla'),('en_US','164','Murcia'),('en_US','165','Navarra'),('en_US','166','Ourense'),('en_US','167','Palencia'),('en_US','168','Pontevedra'),('en_US','169','Salamanca'),('en_US','170','Santa Cruz de Tenerife'),('en_US','171','Segovia'),('en_US','172','Sevilla'),('en_US','173','Soria'),('en_US','174','Tarragona'),('en_US','175','Teruel'),('en_US','176','Toledo'),('en_US','177','Valencia'),('en_US','178','Valladolid'),('en_US','179','Vizcaya'),('en_US','180','Zamora'),('en_US','181','Zaragoza'),('en_US','182','Ain'),('en_US','183','Aisne'),('en_US','184','Allier'),('en_US','185','Alpes-de-Haute-Provence'),('en_US','186','Hautes-Alpes'),('en_US','187','Alpes-Maritimes'),('en_US','188','Ardèche'),('en_US','189','Ardennes'),('en_US','190','Ariège'),('en_US','191','Aube'),('en_US','192','Aude'),('en_US','193','Aveyron'),('en_US','194','Bouches-du-Rhône'),('en_US','195','Calvados'),('en_US','196','Cantal'),('en_US','197','Charente'),('en_US','198','Charente-Maritime'),('en_US','199','Cher'),('en_US','200','Corrèze'),('en_US','201','Corse-du-Sud'),('en_US','202','Haute-Corse'),('en_US','203','Côte-d\'Or'),('en_US','204','Côtes-d\'Armor'),('en_US','205','Creuse'),('en_US','206','Dordogne'),('en_US','207','Doubs'),('en_US','208','Drôme'),('en_US','209','Eure'),('en_US','210','Eure-et-Loir'),('en_US','211','Finistère'),('en_US','212','Gard'),('en_US','213','Haute-Garonne'),('en_US','214','Gers'),('en_US','215','Gironde'),('en_US','216','Hérault'),('en_US','217','Ille-et-Vilaine'),('en_US','218','Indre'),('en_US','219','Indre-et-Loire'),('en_US','220','Isère'),('en_US','221','Jura'),('en_US','222','Landes'),('en_US','223','Loir-et-Cher'),('en_US','224','Loire'),('en_US','225','Haute-Loire'),('en_US','226','Loire-Atlantique'),('en_US','227','Loiret'),('en_US','228','Lot'),('en_US','229','Lot-et-Garonne'),('en_US','230','Lozère'),('en_US','231','Maine-et-Loire'),('en_US','232','Manche'),('en_US','233','Marne'),('en_US','234','Haute-Marne'),('en_US','235','Mayenne'),('en_US','236','Meurthe-et-Moselle'),('en_US','237','Meuse'),('en_US','238','Morbihan'),('en_US','239','Moselle'),('en_US','240','Nièvre'),('en_US','241','Nord'),('en_US','242','Oise'),('en_US','243','Orne'),('en_US','244','Pas-de-Calais'),('en_US','245','Puy-de-Dôme'),('en_US','246','Pyrénées-Atlantiques'),('en_US','247','Hautes-Pyrénées'),('en_US','248','Pyrénées-Orientales'),('en_US','249','Bas-Rhin'),('en_US','250','Haut-Rhin'),('en_US','251','Rhône'),('en_US','252','Haute-Saône'),('en_US','253','Saône-et-Loire'),('en_US','254','Sarthe'),('en_US','255','Savoie'),('en_US','256','Haute-Savoie'),('en_US','257','Paris'),('en_US','258','Seine-Maritime'),('en_US','259','Seine-et-Marne'),('en_US','260','Yvelines'),('en_US','261','Deux-Sèvres'),('en_US','262','Somme'),('en_US','263','Tarn'),('en_US','264','Tarn-et-Garonne'),('en_US','265','Var'),('en_US','266','Vaucluse'),('en_US','267','Vendée'),('en_US','268','Vienne'),('en_US','269','Haute-Vienne'),('en_US','270','Vosges'),('en_US','271','Yonne'),('en_US','272','Territoire-de-Belfort'),('en_US','273','Essonne'),('en_US','274','Hauts-de-Seine'),('en_US','275','Seine-Saint-Denis'),('en_US','276','Val-de-Marne'),('en_US','277','Val-d\'Oise'),('en_US','278','Alba'),('en_US','279','Arad'),('en_US','280','Argeş'),('en_US','281','Bacău'),('en_US','282','Bihor'),('en_US','283','Bistriţa-Năsăud'),('en_US','284','Botoşani'),('en_US','285','Braşov'),('en_US','286','Brăila'),('en_US','287','Bucureşti'),('en_US','288','Buzău'),('en_US','289','Caraş-Severin'),('en_US','290','Călăraşi'),('en_US','291','Cluj'),('en_US','292','Constanţa'),('en_US','293','Covasna'),('en_US','294','Dâmboviţa'),('en_US','295','Dolj'),('en_US','296','Galaţi'),('en_US','297','Giurgiu'),('en_US','298','Gorj'),('en_US','299','Harghita'),('en_US','300','Hunedoara'),('en_US','301','Ialomiţa'),('en_US','302','Iaşi'),('en_US','303','Ilfov'),('en_US','304','Maramureş'),('en_US','305','Mehedinţi'),('en_US','306','Mureş'),('en_US','307','Neamţ'),('en_US','308','Olt'),('en_US','309','Prahova'),('en_US','310','Satu-Mare'),('en_US','311','Sălaj'),('en_US','312','Sibiu'),('en_US','313','Suceava'),('en_US','314','Teleorman'),('en_US','315','Timiş'),('en_US','316','Tulcea'),('en_US','317','Vaslui'),('en_US','318','Vâlcea'),('en_US','319','Vrancea'),('en_US','320','Lappi'),('en_US','321','Pohjois-Pohjanmaa'),('en_US','322','Kainuu'),('en_US','323','Pohjois-Karjala'),('en_US','324','Pohjois-Savo'),('en_US','325','Etelä-Savo'),('en_US','326','Etelä-Pohjanmaa'),('en_US','327','Pohjanmaa'),('en_US','328','Pirkanmaa'),('en_US','329','Satakunta'),('en_US','330','Keski-Pohjanmaa'),('en_US','331','Keski-Suomi'),('en_US','332','Varsinais-Suomi'),('en_US','333','Etelä-Karjala'),('en_US','334','Päijät-Häme'),('en_US','335','Kanta-Häme'),('en_US','336','Uusimaa'),('en_US','337','Itä-Uusimaa'),('en_US','338','Kymenlaakso'),('en_US','339','Ahvenanmaa'),('en_US','340','Harjumaa'),('en_US','341','Hiiumaa'),('en_US','342','Ida-Virumaa'),('en_US','343','Jõgevamaa'),('en_US','344','Järvamaa'),('en_US','345','Läänemaa'),('en_US','346','Lääne-Virumaa'),('en_US','347','Põlvamaa'),('en_US','348','Pärnumaa'),('en_US','349','Raplamaa'),('en_US','350','Saaremaa'),('en_US','351','Tartumaa'),('en_US','352','Valgamaa'),('en_US','353','Viljandimaa'),('en_US','354','Võrumaa'),('en_US','355','Daugavpils'),('en_US','356','Jelgava'),('en_US','357','Jēkabpils'),('en_US','358','Jūrmala'),('en_US','359','Liepāja'),('en_US','360','Liepājas novads'),('en_US','361','Rēzekne'),('en_US','362','Rīga'),('en_US','363','Rīgas novads'),('en_US','364','Valmiera'),('en_US','365','Ventspils'),('en_US','366','Aglonas novads'),('en_US','367','Aizkraukles novads'),('en_US','368','Aizputes novads'),('en_US','369','Aknīstes novads'),('en_US','370','Alojas novads'),('en_US','371','Alsungas novads'),('en_US','372','Alūksnes novads'),('en_US','373','Amatas novads'),('en_US','374','Apes novads'),('en_US','375','Auces novads'),('en_US','376','Babītes novads'),('en_US','377','Baldones novads'),('en_US','378','Baltinavas novads'),('en_US','379','Balvu novads'),('en_US','380','Bauskas novads'),('en_US','381','Beverīnas novads'),('en_US','382','Brocēnu novads'),('en_US','383','Burtnieku novads'),('en_US','384','Carnikavas novads'),('en_US','385','Cesvaines novads'),('en_US','386','Ciblas novads'),('en_US','387','Cēsu novads'),('en_US','388','Dagdas novads'),('en_US','389','Daugavpils novads'),('en_US','390','Dobeles novads'),('en_US','391','Dundagas novads'),('en_US','392','Durbes novads'),('en_US','393','Engures novads'),('en_US','394','Garkalnes novads'),('en_US','395','Grobiņas novads'),('en_US','396','Gulbenes novads'),('en_US','397','Iecavas novads'),('en_US','398','Ikšķiles novads'),('en_US','399','Ilūkstes novads'),('en_US','400','Inčukalna novads'),('en_US','401','Jaunjelgavas novads'),('en_US','402','Jaunpiebalgas novads'),('en_US','403','Jaunpils novads'),('en_US','404','Jelgavas novads'),('en_US','405','Jēkabpils novads'),('en_US','406','Kandavas novads'),('en_US','407','Kokneses novads'),('en_US','408','Krimuldas novads'),('en_US','409','Krustpils novads'),('en_US','410','Krāslavas novads'),('en_US','411','Kuldīgas novads'),('en_US','412','Kārsavas novads'),('en_US','413','Lielvārdes novads'),('en_US','414','Limbažu novads'),('en_US','415','Lubānas novads'),('en_US','416','Ludzas novads'),('en_US','417','Līgatnes novads'),('en_US','418','Līvānu novads'),('en_US','419','Madonas novads'),('en_US','420','Mazsalacas novads'),('en_US','421','Mālpils novads'),('en_US','422','Mārupes novads'),('en_US','423','Naukšēnu novads'),('en_US','424','Neretas novads'),('en_US','425','Nīcas novads'),('en_US','426','Ogres novads'),('en_US','427','Olaines novads'),('en_US','428','Ozolnieku novads'),('en_US','429','Preiļu novads'),('en_US','430','Priekules novads'),('en_US','431','Priekuļu novads'),('en_US','432','Pārgaujas novads'),('en_US','433','Pāvilostas novads'),('en_US','434','Pļaviņu novads'),('en_US','435','Raunas novads'),('en_US','436','Riebiņu novads'),('en_US','437','Rojas novads'),('en_US','438','Ropažu novads'),('en_US','439','Rucavas novads'),('en_US','440','Rugāju novads'),('en_US','441','Rundāles novads'),('en_US','442','Rēzeknes novads'),('en_US','443','Rūjienas novads'),('en_US','444','Salacgrīvas novads'),('en_US','445','Salas novads'),('en_US','446','Salaspils novads'),('en_US','447','Saldus novads'),('en_US','448','Saulkrastu novads'),('en_US','449','Siguldas novads'),('en_US','450','Skrundas novads'),('en_US','451','Skrīveru novads'),('en_US','452','Smiltenes novads'),('en_US','453','Stopiņu novads'),('en_US','454','Strenču novads'),('en_US','455','Sējas novads'),('en_US','456','Talsu novads'),('en_US','457','Tukuma novads'),('en_US','458','Tērvetes novads'),('en_US','459','Vaiņodes novads'),('en_US','460','Valkas novads'),('en_US','461','Valmieras novads'),('en_US','462','Varakļānu novads'),('en_US','463','Vecpiebalgas novads'),('en_US','464','Vecumnieku novads'),('en_US','465','Ventspils novads'),('en_US','466','Viesītes novads'),('en_US','467','Viļakas novads'),('en_US','468','Viļānu novads'),('en_US','469','Vārkavas novads'),('en_US','470','Zilupes novads'),('en_US','471','Ādažu novads'),('en_US','472','Ērgļu novads'),('en_US','473','Ķeguma novads'),('en_US','474','Ķekavas novads'),('en_US','475','Alytaus Apskritis'),('en_US','476','Kauno Apskritis'),('en_US','477','Klaipėdos Apskritis'),('en_US','478','Marijampolės Apskritis'),('en_US','479','Panevėžio Apskritis'),('en_US','480','Šiaulių Apskritis'),('en_US','481','Tauragės Apskritis'),('en_US','482','Telšių Apskritis'),('en_US','483','Utenos Apskritis'),('en_US','484','Vilniaus Apskritis'),('en_US','485','Acre'),('en_US','486','Alagoas'),('en_US','487','Amapá'),('en_US','488','Amazonas'),('en_US','489','Bahia'),('en_US','490','Ceará'),('en_US','491','Espírito Santo'),('en_US','492','Goiás'),('en_US','493','Maranhão'),('en_US','494','Mato Grosso'),('en_US','495','Mato Grosso do Sul'),('en_US','496','Minas Gerais'),('en_US','497','Pará'),('en_US','498','Paraíba'),('en_US','499','Paraná'),('en_US','500','Pernambuco'),('en_US','501','Piauí'),('en_US','502','Rio de Janeiro'),('en_US','503','Rio Grande do Norte'),('en_US','504','Rio Grande do Sul'),('en_US','505','Rondônia'),('en_US','506','Roraima'),('en_US','507','Santa Catarina'),('en_US','508','São Paulo'),('en_US','509','Sergipe'),('en_US','510','Tocantins'),('en_US','511','Distrito Federal'),('en_US','512','Zagrebačka županija'),('en_US','513','Krapinsko-zagorska županija'),('en_US','514','Sisačko-moslavačka županija'),('en_US','515','Karlovačka županija'),('en_US','516','Varaždinska županija'),('en_US','517','Koprivničko-križevačka županija'),('en_US','518','Bjelovarsko-bilogorska županija'),('en_US','519','Primorsko-goranska županija'),('en_US','520','Ličko-senjska županija'),('en_US','521','Virovitičko-podravska županija'),('en_US','522','Požeško-slavonska županija'),('en_US','523','Brodsko-posavska županija'),('en_US','524','Zadarska županija'),('en_US','525','Osječko-baranjska županija'),('en_US','526','Šibensko-kninska županija'),('en_US','527','Vukovarsko-srijemska županija'),('en_US','528','Splitsko-dalmatinska županija'),('en_US','529','Istarska županija'),('en_US','530','Dubrovačko-neretvanska županija'),('en_US','531','Međimurska županija'),('en_US','532','Grad Zagreb'),('en_US','533','Andaman and Nicobar Islands'),('en_US','534','Andhra Pradesh'),('en_US','535','Arunachal Pradesh'),('en_US','536','Assam'),('en_US','537','Bihar'),('en_US','538','Chandigarh'),('en_US','539','Chhattisgarh'),('en_US','540','Dadra and Nagar Haveli'),('en_US','541','Daman and Diu'),('en_US','542','Delhi'),('en_US','543','Goa'),('en_US','544','Gujarat'),('en_US','545','Haryana'),('en_US','546','Himachal Pradesh'),('en_US','547','Jammu and Kashmir'),('en_US','548','Jharkhand'),('en_US','549','Karnataka'),('en_US','550','Kerala'),('en_US','551','Lakshadweep'),('en_US','552','Madhya Pradesh'),('en_US','553','Maharashtra'),('en_US','554','Manipur'),('en_US','555','Meghalaya'),('en_US','556','Mizoram'),('en_US','557','Nagaland'),('en_US','558','Odisha'),('en_US','559','Puducherry'),('en_US','560','Punjab'),('en_US','561','Rajasthan'),('en_US','562','Sikkim'),('en_US','563','Tamil Nadu'),('en_US','564','Telangana'),('en_US','565','Tripura'),('en_US','566','Uttar Pradesh'),('en_US','567','Uttarakhand'),('en_US','568','West Bengal'),('en_US','569','Australian Capital Territory'),('en_US','570','New South Wales'),('en_US','571','Victoria'),('en_US','572','Queensland'),('en_US','573','South Australia'),('en_US','574','Tasmania'),('en_US','575','Western Australia'),('en_US','576','Northern Territory'),('en_US','577','Antwerpen'),('en_US','578','Brabant wallon'),('en_US','579','Brussels-Capital Region'),('en_US','580','Hainaut'),('en_US','581','Limburg'),('en_US','582','Liège'),('en_US','583','Luxembourg'),('en_US','584','Namur'),('en_US','585','Oost-Vlaanderen'),('en_US','586','Vlaams-Brabant'),('en_US','587','West-Vlaanderen'),('en_US','588','Anhui Sheng'),('en_US','589','Beijing Shi'),('en_US','590','Chongqing Shi'),('en_US','591','Fujian Sheng'),('en_US','592','Gansu Sheng'),('en_US','593','Guangdong Sheng'),('en_US','594','Guangxi Zhuangzu Zizhiqu'),('en_US','595','Guizhou Sheng'),('en_US','596','Hainan Sheng'),('en_US','597','Hebei Sheng'),('en_US','598','Heilongjiang Sheng'),('en_US','599','Henan Sheng'),('en_US','600','Hong Kong SAR'),('en_US','601','Hubei Sheng'),('en_US','602','Hunan Sheng'),('en_US','603','Jiangsu Sheng'),('en_US','604','Jiangxi Sheng'),('en_US','605','Jilin Sheng'),('en_US','606','Liaoning Sheng'),('en_US','607','Macao SAR'),('en_US','608','Nei Mongol Zizhiqu'),('en_US','609','Ningxia Huizi Zizhiqu'),('en_US','610','Qinghai Sheng'),('en_US','611','Shaanxi Sheng'),('en_US','612','Shandong Sheng'),('en_US','613','Shanghai Shi'),('en_US','614','Shanxi Sheng'),('en_US','615','Sichuan Sheng'),('en_US','616','Taiwan Sheng'),('en_US','617','Tianjin Shi'),('en_US','618','Xinjiang Uygur Zizhiqu'),('en_US','619','Xizang Zizhiqu'),('en_US','620','Yunnan Sheng'),('en_US','621','Zhejiang Sheng'),('en_US','622','Amazonas'),('en_US','623','Antioquia'),('en_US','624','Arauca'),('en_US','625','Atlántico'),('en_US','626','Bolívar'),('en_US','627','Boyacá'),('en_US','628','Caldas'),('en_US','629','Caquetá'),('en_US','630','Casanare'),('en_US','631','Cauca'),('en_US','632','Cesar'),('en_US','633','Chocó'),('en_US','634','Córdoba'),('en_US','635','Cundinamarca'),('en_US','636','Guainía'),('en_US','637','Guaviare'),('en_US','638','Huila'),('en_US','639','La Guajira'),('en_US','640','Magdalena'),('en_US','641','Meta'),('en_US','642','Nariño'),('en_US','643','Norte de Santander'),('en_US','644','Putumayo'),('en_US','645','Quindío'),('en_US','646','Risaralda'),('en_US','647','San Andrés y Providencia'),('en_US','648','Santander'),('en_US','649','Sucre'),('en_US','650','Tolima'),('en_US','651','Valle del Cauca'),('en_US','652','Vaupés'),('en_US','653','Vichada'),('en_US','654','Aguascalientes'),('en_US','655','Baja California'),('en_US','656','Baja California Sur'),('en_US','657','Campeche'),('en_US','658','Chiapas'),('en_US','659','Chihuahua'),('en_US','660','Ciudad de México'),('en_US','661','Coahuila'),('en_US','662','Colima'),('en_US','663','Durango'),('en_US','664','Estado de México'),('en_US','665','Guanajuato'),('en_US','666','Guerrero'),('en_US','667','Hidalgo'),('en_US','668','Jalisco'),('en_US','669','Michoacán'),('en_US','670','Morelos'),('en_US','671','Nayarit'),('en_US','672','Nuevo León'),('en_US','673','Oaxaca'),('en_US','674','Puebla'),('en_US','675','Querétaro'),('en_US','676','Quintana Roo'),('en_US','677','San Luis Potosí'),('en_US','678','Sinaloa'),('en_US','679','Sonora'),('en_US','680','Tabasco'),('en_US','681','Tamaulipas'),('en_US','682','Tlaxcala'),('en_US','683','Veracruz'),('en_US','684','Yucatán'),('en_US','685','Zacatecas'),('en_US','686','dolnośląskie'),('en_US','687','kujawsko-pomorskie'),('en_US','688','lubelskie'),('en_US','689','lubuskie'),('en_US','690','łódzkie'),('en_US','691','małopolskie'),('en_US','692','mazowieckie'),('en_US','693','opolskie'),('en_US','694','podkarpackie'),('en_US','695','podlaskie'),('en_US','696','pomorskie'),('en_US','697','śląskie'),('en_US','698','świętokrzyskie'),('en_US','699','warmińsko-mazurskie'),('en_US','700','wielkopolskie'),('en_US','701','zachodniopomorskie');
/*!40000 ALTER TABLE `directory_country_region_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_currency_rate`
--

DROP TABLE IF EXISTS `directory_currency_rate`;
CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

LOCK TABLES `directory_currency_rate` WRITE;
/*!40000 ALTER TABLE `directory_currency_rate` DISABLE KEYS */;
INSERT INTO `directory_currency_rate` VALUES ('EUR','EUR','1.000000000000'),('EUR','USD','1.415000000000'),('USD','EUR','0.706700000000'),('USD','USD','1.000000000000');
/*!40000 ALTER TABLE `directory_currency_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadable_link`
--

DROP TABLE IF EXISTS `downloadable_link`;
CREATE TABLE `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

--
-- Table structure for table `downloadable_link_price`
--

DROP TABLE IF EXISTS `downloadable_link_price`;
CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

--
-- Table structure for table `downloadable_link_purchased`
--

DROP TABLE IF EXISTS `downloadable_link_purchased`;
CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

--
-- Table structure for table `downloadable_link_purchased_item`
--

DROP TABLE IF EXISTS `downloadable_link_purchased_item`;
CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

--
-- Table structure for table `downloadable_link_title`
--

DROP TABLE IF EXISTS `downloadable_link_title`;
CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

--
-- Table structure for table `downloadable_sample`
--

DROP TABLE IF EXISTS `downloadable_sample`;
CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

--
-- Table structure for table `downloadable_sample_title`
--

DROP TABLE IF EXISTS `downloadable_sample_title`;
CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

--
-- Table structure for table `eav_attribute`
--

DROP TABLE IF EXISTS `eav_attribute`;
CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_code` varchar(255) NOT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `EAV_ATTRIBUTE_FRONTEND_INPUT_ENTITY_TYPE_ID_IS_USER_DEFINED` (`frontend_input`,`entity_type_id`,`is_user_defined`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Dumping data for table `eav_attribute`
--

LOCK TABLES `eav_attribute` WRITE;
/*!40000 ALTER TABLE `eav_attribute` DISABLE KEYS */;
INSERT INTO `eav_attribute` VALUES (1,1,'website_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website','static',NULL,NULL,'select','Associate to Website',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website',1,0,NULL,0,NULL),(2,1,'store_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store','static',NULL,NULL,'select','Create In',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store',1,0,NULL,0,NULL),(3,1,'created_in',NULL,NULL,'static',NULL,NULL,'text','Created From',NULL,NULL,0,0,NULL,0,NULL),(4,1,'prefix',NULL,NULL,'static',NULL,NULL,'text','Name Prefix',NULL,NULL,0,0,NULL,0,NULL),(5,1,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(6,1,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(7,1,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(8,1,'suffix',NULL,NULL,'static',NULL,NULL,'text','Name Suffix',NULL,NULL,0,0,NULL,0,NULL),(9,1,'email',NULL,NULL,'static',NULL,NULL,'text','Email',NULL,NULL,1,0,NULL,0,NULL),(10,1,'group_id',NULL,NULL,'static',NULL,NULL,'select','Group',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group',1,0,NULL,0,NULL),(11,1,'dob',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','static',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Date of Birth',NULL,NULL,0,0,NULL,0,NULL),(12,1,'password_hash',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password','static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(13,1,'rp_token',NULL,NULL,'static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(14,1,'rp_token_created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,0,0,NULL,0,NULL),(15,1,'default_billing',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing','static',NULL,NULL,'text','Default Billing Address',NULL,NULL,0,0,NULL,0,NULL),(16,1,'default_shipping',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping','static',NULL,NULL,'text','Default Shipping Address',NULL,NULL,0,0,NULL,0,NULL),(17,1,'taxvat',NULL,NULL,'static',NULL,NULL,'text','Tax/VAT Number',NULL,NULL,0,0,NULL,0,NULL),(18,1,'confirmation',NULL,NULL,'static',NULL,NULL,'text','Is Confirmed',NULL,NULL,0,0,NULL,0,NULL),(19,1,'created_at',NULL,NULL,'static',NULL,NULL,'date','Created At',NULL,NULL,0,0,NULL,0,NULL),(20,1,'gender',NULL,NULL,'static',NULL,NULL,'select','Gender',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table',0,0,NULL,0,NULL),(21,1,'disable_auto_group_change','Magento\\Customer\\Model\\Attribute','Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean','static',NULL,NULL,'boolean','Disable Automatic Group Change Based on VAT ID',NULL,NULL,0,0,NULL,0,NULL),(22,2,'prefix',NULL,NULL,'static',NULL,NULL,'text','Name Prefix',NULL,NULL,0,0,NULL,0,NULL),(23,2,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(24,2,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(25,2,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(26,2,'suffix',NULL,NULL,'static',NULL,NULL,'text','Name Suffix',NULL,NULL,0,0,NULL,0,NULL),(27,2,'company',NULL,NULL,'static',NULL,NULL,'text','Company',NULL,NULL,0,0,NULL,0,NULL),(28,2,'street',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend','static',NULL,NULL,'multiline','Street Address',NULL,NULL,1,0,NULL,0,NULL),(29,2,'city',NULL,NULL,'static',NULL,NULL,'text','City',NULL,NULL,1,0,NULL,0,NULL),(30,2,'country_id',NULL,NULL,'static',NULL,NULL,'select','Country',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country',1,0,NULL,0,NULL),(31,2,'region',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region','static',NULL,NULL,'text','State/Province',NULL,NULL,0,0,NULL,0,NULL),(32,2,'region_id',NULL,NULL,'static',NULL,NULL,'hidden','State/Province',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region',0,0,NULL,0,NULL),(33,2,'postcode',NULL,NULL,'static',NULL,NULL,'text','Zip/Postal Code',NULL,NULL,0,0,NULL,0,NULL),(34,2,'telephone',NULL,NULL,'static',NULL,NULL,'text','Phone Number',NULL,NULL,1,0,NULL,0,NULL),(35,2,'fax',NULL,NULL,'static',NULL,NULL,'text','Fax',NULL,NULL,0,0,NULL,0,NULL),(36,2,'vat_id','Magento\\Customer\\Model\\Attribute',NULL,'static',NULL,NULL,'text','VAT Number',NULL,NULL,0,0,NULL,0,NULL),(37,2,'vat_is_valid',NULL,NULL,'static',NULL,NULL,'text','VAT number validity',NULL,NULL,0,0,NULL,0,NULL),(38,2,'vat_request_id',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request ID',NULL,NULL,0,0,NULL,0,NULL),(39,2,'vat_request_date',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request date',NULL,NULL,0,0,NULL,0,NULL),(40,2,'vat_request_success',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request success',NULL,NULL,0,0,NULL,0,NULL),(41,1,'updated_at',NULL,NULL,'static',NULL,NULL,'date','Updated At',NULL,NULL,0,0,NULL,0,NULL),(42,1,'failures_num',NULL,NULL,'static',NULL,NULL,'hidden','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(43,1,'first_failure',NULL,NULL,'static',NULL,NULL,'date','First Failure Date',NULL,NULL,0,0,NULL,0,NULL),(44,1,'lock_expires',NULL,NULL,'static',NULL,NULL,'date','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(45,3,'name',NULL,NULL,'varchar',NULL,NULL,'text','Name',NULL,NULL,1,0,NULL,0,NULL),(46,3,'is_active',NULL,NULL,'int',NULL,NULL,'select','Is Active',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,NULL,0,NULL),(47,3,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(48,3,'image',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image','varchar',NULL,NULL,'image','Image',NULL,NULL,0,0,NULL,0,NULL),(49,3,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Page Title',NULL,NULL,0,0,NULL,0,NULL),(50,3,'meta_keywords',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(51,3,'meta_description',NULL,NULL,'text',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,NULL),(52,3,'display_mode',NULL,NULL,'varchar',NULL,NULL,'select','Display Mode',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode',0,0,NULL,0,NULL),(53,3,'landing_page',NULL,NULL,'int',NULL,NULL,'select','CMS Block',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page',0,0,NULL,0,NULL),(54,3,'is_anchor',NULL,NULL,'int',NULL,NULL,'select','Is Anchor',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,'1',0,NULL),(55,3,'path',NULL,NULL,'static',NULL,NULL,'text','Path',NULL,NULL,0,0,NULL,0,NULL),(56,3,'position',NULL,NULL,'static',NULL,NULL,'text','Position',NULL,NULL,0,0,NULL,0,NULL),(57,3,'all_children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(58,3,'path_in_store',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(59,3,'children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(60,3,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','Custom Design',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(61,3,'custom_design_from','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Active From',NULL,NULL,0,0,NULL,0,NULL),(62,3,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(63,3,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Page Layout',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(64,3,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Custom Layout Update',NULL,NULL,0,0,NULL,0,NULL),(65,3,'level',NULL,NULL,'static',NULL,NULL,'text','Level',NULL,NULL,0,0,NULL,0,NULL),(66,3,'children_count',NULL,NULL,'static',NULL,NULL,'text','Children Count',NULL,NULL,0,0,NULL,0,NULL),(67,3,'available_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','text',NULL,NULL,'multiselect','Available Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(68,3,'default_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','varchar',NULL,NULL,'select','Default Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(69,3,'include_in_menu',NULL,NULL,'int',NULL,NULL,'select','Include in Navigation Menu',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,'1',0,NULL),(70,3,'custom_use_parent_settings',NULL,NULL,'int',NULL,NULL,'select','Use Parent Category Settings',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(71,3,'custom_apply_to_products',NULL,NULL,'int',NULL,NULL,'select','Apply To Products',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(72,3,'filter_price_range',NULL,NULL,'decimal',NULL,NULL,'text','Layered Navigation Price Step',NULL,NULL,0,0,NULL,0,NULL),(73,4,'name','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute',NULL,'varchar',NULL,NULL,'text','Product Name','validate-length maximum-length-255',NULL,1,0,NULL,0,NULL),(74,4,'sku','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku','static',NULL,NULL,'text','SKU','validate-length maximum-length-64',NULL,1,0,NULL,1,NULL),(75,4,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(76,4,'short_description',NULL,NULL,'text',NULL,NULL,'textarea','Short Description',NULL,NULL,0,0,NULL,0,NULL),(77,4,'price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Price',NULL,NULL,1,0,NULL,0,NULL),(78,4,'special_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Special Price',NULL,NULL,0,0,NULL,0,NULL),(79,4,'special_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Special Price From Date',NULL,NULL,0,0,NULL,0,NULL),(80,4,'special_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Special Price To Date',NULL,NULL,0,0,NULL,0,NULL),(81,4,'cost',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Cost',NULL,NULL,0,1,NULL,0,NULL),(82,4,'weight',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight','decimal',NULL,NULL,'weight','Weight',NULL,NULL,0,0,NULL,0,NULL),(83,4,'manufacturer',NULL,NULL,'int',NULL,NULL,'select','Manufacturer',NULL,NULL,0,1,NULL,0,NULL),(84,4,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Meta Title',NULL,NULL,0,0,NULL,0,NULL),(85,4,'meta_keyword',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(86,4,'meta_description',NULL,NULL,'varchar',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),(87,4,'image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Base',NULL,NULL,0,0,NULL,0,NULL),(88,4,'small_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Small',NULL,NULL,0,0,NULL,0,NULL),(89,4,'thumbnail',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Thumbnail',NULL,NULL,0,0,NULL,0,NULL),(90,4,'media_gallery',NULL,NULL,'static',NULL,NULL,'gallery','Media Gallery',NULL,NULL,0,0,NULL,0,NULL),(91,4,'old_id',NULL,NULL,'int',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(92,4,'tier_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice','decimal',NULL,NULL,'text','Tier Price',NULL,NULL,0,0,NULL,0,NULL),(93,4,'color',NULL,NULL,'int',NULL,NULL,'select','Color',NULL,NULL,0,1,'',0,NULL),(94,4,'news_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Set Product as New from Date',NULL,NULL,0,0,NULL,0,NULL),(95,4,'news_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Set Product as New to Date',NULL,NULL,0,0,NULL,0,NULL),(96,4,'gallery',NULL,NULL,'varchar',NULL,NULL,'gallery','Image Gallery',NULL,NULL,0,0,NULL,0,NULL),(97,4,'status',NULL,NULL,'int',NULL,NULL,'select','Enable Product',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status',0,0,'1',0,NULL),(98,4,'minimal_price',NULL,NULL,'decimal',NULL,NULL,'price','Minimal Price',NULL,NULL,0,0,NULL,0,NULL),(99,4,'visibility',NULL,NULL,'int',NULL,NULL,'select','Visibility',NULL,'Magento\\Catalog\\Model\\Product\\Visibility',0,0,'4',0,NULL),(100,4,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','New Theme',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(101,4,'custom_design_from',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Active From',NULL,NULL,0,0,NULL,0,NULL),(102,4,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(103,4,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Layout Update XML',NULL,NULL,0,0,NULL,0,NULL),(104,4,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(105,4,'category_ids',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category','static',NULL,NULL,'text','Categories',NULL,NULL,0,0,NULL,0,NULL),(106,4,'options_container',NULL,NULL,'varchar',NULL,NULL,'select','Display Product Options In',NULL,'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container',0,0,'container2',0,NULL),(107,4,'required_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(108,4,'has_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(109,4,'image_label',NULL,NULL,'varchar',NULL,NULL,'text','Image Label',NULL,NULL,0,0,NULL,0,NULL),(110,4,'small_image_label',NULL,NULL,'varchar',NULL,NULL,'text','Small Image Label',NULL,NULL,0,0,NULL,0,NULL),(111,4,'thumbnail_label',NULL,NULL,'varchar',NULL,NULL,'text','Thumbnail Label',NULL,NULL,0,0,NULL,0,NULL),(112,4,'created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(113,4,'updated_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(114,4,'country_of_manufacture',NULL,NULL,'varchar',NULL,NULL,'select','Country of Manufacture',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture',0,0,NULL,0,NULL),(115,4,'quantity_and_stock_status',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock','int',NULL,NULL,'select','Quantity',NULL,'Magento\\CatalogInventory\\Model\\Source\\Stock',0,0,'1',0,NULL),(116,4,'custom_layout',NULL,NULL,'varchar',NULL,NULL,'select','New Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(117,4,'custom_layout_update_file',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\LayoutUpdate','varchar',NULL,NULL,'select','Custom Layout Update',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\LayoutUpdate',0,0,NULL,0,NULL),(118,3,'custom_layout_update_file',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\LayoutUpdate','varchar',NULL,NULL,'select','Custom Layout Update',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\LayoutUpdate',0,0,NULL,0,NULL),(119,4,'msrp',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Minimum Advertised Price',NULL,NULL,0,0,NULL,0,NULL),(120,4,'msrp_display_actual_price_type',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Display Actual Price',NULL,'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price',0,0,'0',0,NULL),(121,3,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(122,3,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(123,4,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(124,4,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(125,4,'links_purchased_separately',NULL,NULL,'int',NULL,NULL,NULL,'Links can be purchased separately',NULL,NULL,1,0,NULL,0,NULL),(126,4,'samples_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Samples title',NULL,NULL,1,0,NULL,0,NULL),(127,4,'links_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Links title',NULL,NULL,1,0,NULL,0,NULL),(128,4,'links_exist',NULL,NULL,'int',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL),(129,4,'gift_message_available',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Allow Gift Message',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(130,4,'price_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Price',NULL,NULL,1,0,'0',0,NULL),(131,4,'sku_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic SKU',NULL,NULL,1,0,'0',0,NULL),(132,4,'weight_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Weight',NULL,NULL,1,0,'0',0,NULL),(133,4,'price_view',NULL,NULL,'int',NULL,NULL,'select','Price View',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View',1,0,NULL,0,NULL),(134,4,'shipment_type',NULL,NULL,'int',NULL,NULL,'select','Ship Bundle Items',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type',1,0,'0',0,NULL),(135,4,'swatch_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Swatch',NULL,NULL,0,0,NULL,0,NULL),(136,4,'tax_class_id',NULL,NULL,'int',NULL,NULL,'select','Tax Class',NULL,'Magento\\Tax\\Model\\TaxClass\\Source\\Product',0,0,'2',0,NULL),(137,4,'is_featured',NULL,NULL,'int',NULL,NULL,'boolean','Is Featured?',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,1,NULL,0,NULL),(138,4,'size',NULL,NULL,'int',NULL,NULL,'select','Size',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table',0,1,'9',0,NULL),(139,4,'fabric',NULL,NULL,'varchar',NULL,NULL,'text','Fabric',NULL,NULL,0,1,NULL,0,NULL);
/*!40000 ALTER TABLE `eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_group`
--

DROP TABLE IF EXISTS `eav_attribute_group`;
CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default ID',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_CODE` (`attribute_set_id`,`attribute_group_code`),
  UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

LOCK TABLES `eav_attribute_group` WRITE;
/*!40000 ALTER TABLE `eav_attribute_group` DISABLE KEYS */;
INSERT INTO `eav_attribute_group` VALUES (1,1,'General',1,1,'general',NULL),(2,2,'General',1,1,'general',NULL),(3,3,'General',10,1,'general',NULL),(4,3,'General Information',2,0,'general-information',NULL),(5,3,'Display Settings',20,0,'display-settings',NULL),(6,3,'Custom Design',30,0,'custom-design',NULL),(7,4,'Product Details',10,1,'product-details','basic'),(8,4,'Advanced Pricing',40,0,'advanced-pricing','advanced'),(9,4,'Search Engine Optimization',30,0,'search-engine-optimization','basic'),(10,4,'Images',20,0,'image-management','basic'),(11,4,'Design',50,0,'design','advanced'),(12,4,'Autosettings',60,0,'autosettings','advanced'),(13,4,'Content',15,0,'content','basic'),(14,4,'Schedule Design Update',55,0,'schedule-design-update','advanced'),(15,5,'General',1,1,'general',NULL),(16,6,'General',1,1,'general',NULL),(17,7,'General',1,1,'general',NULL),(18,8,'General',1,1,'general',NULL),(19,4,'Gift Options',61,0,'gift-options',NULL),(20,4,'Bundle Items',16,0,'bundle-items',NULL),(21,4,'Attributes',15,0,'attributes',NULL);
/*!40000 ALTER TABLE `eav_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_label`
--

DROP TABLE IF EXISTS `eav_attribute_label`;
CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

--
-- Table structure for table `eav_attribute_option`
--

DROP TABLE IF EXISTS `eav_attribute_option`;
CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Dumping data for table `eav_attribute_option`
--

LOCK TABLES `eav_attribute_option` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option` DISABLE KEYS */;
INSERT INTO `eav_attribute_option` VALUES ('1',20,0),('2',20,1),('3',20,3),('4',93,1),('5',93,2),('6',93,3),('7',138,1),('8',138,2),('9',138,3),('10',138,4),('11',138,5);
/*!40000 ALTER TABLE `eav_attribute_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_option_swatch`
--

DROP TABLE IF EXISTS `eav_attribute_option_swatch`;
CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type` smallint(5) unsigned NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value',
  PRIMARY KEY (`swatch_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';

--
-- Table structure for table `eav_attribute_option_value`
--

DROP TABLE IF EXISTS `eav_attribute_option_value`;
CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Dumping data for table `eav_attribute_option_value`
--

LOCK TABLES `eav_attribute_option_value` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option_value` DISABLE KEYS */;
INSERT INTO `eav_attribute_option_value` VALUES ('1','1',0,'Male'),('2','2',0,'Female'),('3','3',0,'Not Specified'),('4','4',0,'Black'),('5','5',0,'white'),('6','6',0,'Navy blue'),('7','7',1,'Small'),('8','7',0,'S'),('9','8',1,'Medium'),('10','8',0,'M'),('11','9',1,'Large'),('12','9',0,'L'),('13','10',1,'X Large'),('14','10',0,'XL'),('15','11',1,'XX Large'),('16','11',0,'XXL');
/*!40000 ALTER TABLE `eav_attribute_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_set`
--

DROP TABLE IF EXISTS `eav_attribute_set`;
CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Dumping data for table `eav_attribute_set`
--

LOCK TABLES `eav_attribute_set` WRITE;
/*!40000 ALTER TABLE `eav_attribute_set` DISABLE KEYS */;
INSERT INTO `eav_attribute_set` VALUES (1,1,'Default',2),(2,2,'Default',2),(3,3,'Default',1),(4,4,'Default',1),(5,5,'Default',1),(6,6,'Default',1),(7,7,'Default',1),(8,8,'Default',1);
/*!40000 ALTER TABLE `eav_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity`
--

DROP TABLE IF EXISTS `eav_entity`;
CREATE TABLE `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

--
-- Table structure for table `eav_entity_attribute`
--

DROP TABLE IF EXISTS `eav_entity_attribute`;
CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Dumping data for table `eav_entity_attribute`
--

LOCK TABLES `eav_entity_attribute` WRITE;
/*!40000 ALTER TABLE `eav_entity_attribute` DISABLE KEYS */;
INSERT INTO `eav_entity_attribute` VALUES ('1',1,1,1,1,10),('2',1,1,1,2,20),('3',1,1,1,3,20),('4',1,1,1,4,30),('5',1,1,1,5,40),('6',1,1,1,6,50),('7',1,1,1,7,60),('8',1,1,1,8,70),('9',1,1,1,9,80),('10',1,1,1,10,25),('11',1,1,1,11,90),('12',1,1,1,12,81),('13',1,1,1,13,115),('14',1,1,1,14,120),('15',1,1,1,15,82),('16',1,1,1,16,83),('17',1,1,1,17,100),('18',1,1,1,18,0),('19',1,1,1,19,0),('20',1,1,1,20,110),('21',1,1,1,21,28),('22',2,2,2,22,10),('23',2,2,2,23,20),('24',2,2,2,24,30),('25',2,2,2,25,40),('26',2,2,2,26,50),('27',2,2,2,27,60),('28',2,2,2,28,70),('29',2,2,2,29,80),('30',2,2,2,30,90),('31',2,2,2,31,100),('32',2,2,2,32,100),('33',2,2,2,33,110),('34',2,2,2,34,120),('35',2,2,2,35,130),('36',2,2,2,36,140),('37',2,2,2,37,132),('38',2,2,2,38,133),('39',2,2,2,39,134),('40',2,2,2,40,135),('41',1,1,1,41,87),('42',1,1,1,42,100),('43',1,1,1,43,110),('44',1,1,1,44,120),('45',3,3,4,45,1),('46',3,3,4,46,2),('47',3,3,4,47,4),('48',3,3,4,48,5),('49',3,3,4,49,6),('50',3,3,4,50,7),('51',3,3,4,51,8),('52',3,3,5,52,10),('53',3,3,5,53,20),('54',3,3,5,54,30),('55',3,3,4,55,12),('56',3,3,4,56,13),('57',3,3,4,57,14),('58',3,3,4,58,15),('59',3,3,4,59,16),('60',3,3,6,60,10),('61',3,3,6,61,30),('62',3,3,6,62,40),('63',3,3,6,63,50),('64',3,3,6,64,60),('65',3,3,4,65,24),('66',3,3,4,66,25),('67',3,3,5,67,40),('68',3,3,5,68,50),('69',3,3,4,69,10),('70',3,3,6,70,5),('71',3,3,6,71,6),('72',3,3,5,72,51),('73',4,4,7,73,10),('74',4,4,7,74,20),('75',4,4,13,75,90),('76',4,4,13,76,100),('77',4,4,7,77,30),('78',4,4,8,78,3),('79',4,4,8,79,4),('80',4,4,8,80,5),('81',4,4,8,81,6),('82',4,4,7,82,70),('83',4,4,9,84,20),('84',4,4,9,85,30),('85',4,4,9,86,40),('86',4,4,10,87,1),('87',4,4,10,88,2),('88',4,4,10,89,3),('89',4,4,10,90,4),('90',4,4,7,91,6),('91',4,4,8,92,7),('92',4,4,7,94,90),('93',4,4,7,95,100),('94',4,4,10,96,5),('95',4,4,7,97,5),('96',4,4,8,98,8),('97',4,4,7,99,80),('98',4,4,14,100,40),('99',4,4,14,101,20),('100',4,4,14,102,30),('101',4,4,11,103,10),('102',4,4,11,104,5),('103',4,4,7,105,80),('104',4,4,11,106,6),('105',4,4,7,107,14),('106',4,4,7,108,15),('107',4,4,7,109,16),('108',4,4,7,110,17),('109',4,4,7,111,18),('110',4,4,7,112,19),('111',4,4,7,113,20),('112',4,4,7,114,110),('113',4,4,7,115,60),('114',4,4,14,116,50),('115',4,4,11,117,51),('116',3,3,6,118,51),('117',4,4,8,119,9),('118',4,4,8,120,10),('119',3,3,4,121,3),('120',3,3,4,122,17),('121',4,4,9,123,10),('122',4,4,7,124,11),('123',4,4,7,125,111),('124',4,4,7,126,112),('125',4,4,7,127,113),('126',4,4,7,128,114),('127',4,4,19,129,10),('128',4,4,7,130,31),('129',4,4,7,131,21),('130',4,4,7,132,71),('131',4,4,8,133,11),('132',4,4,20,134,1),('133',4,4,10,135,3),('134',4,4,7,136,40),('135',4,4,7,137,102),('137',4,4,7,93,116),('139',4,4,21,138,2),('140',4,4,21,83,1),('142',4,4,21,139,4);
/*!40000 ALTER TABLE `eav_entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_datetime`
--

DROP TABLE IF EXISTS `eav_entity_datetime`;
CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_decimal`
--

DROP TABLE IF EXISTS `eav_entity_decimal`;
CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_int`
--

DROP TABLE IF EXISTS `eav_entity_int`;
CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_store`
--

DROP TABLE IF EXISTS `eav_entity_store`;
CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented ID',
  PRIMARY KEY (`entity_store_id`),
  KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

--
-- Table structure for table `eav_entity_text`
--

DROP TABLE IF EXISTS `eav_entity_text`;
CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_type`
--

DROP TABLE IF EXISTS `eav_entity_type`;
CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type ID',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity ID Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set ID',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Dumping data for table `eav_entity_type`
--

LOCK TABLES `eav_entity_type` WRITE;
/*!40000 ALTER TABLE `eav_entity_type` DISABLE KEYS */;
INSERT INTO `eav_entity_type` VALUES (1,'customer','Magento\\Customer\\Model\\ResourceModel\\Customer','Magento\\Customer\\Model\\Attribute','customer_entity',NULL,NULL,1,'default',1,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),(2,'customer_address','Magento\\Customer\\Model\\ResourceModel\\Address','Magento\\Customer\\Model\\Attribute','customer_address_entity',NULL,NULL,1,'default',2,NULL,0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),(3,'catalog_category','Magento\\Catalog\\Model\\ResourceModel\\Category','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_category_entity',NULL,NULL,1,'default',3,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),(4,'catalog_product','Magento\\Catalog\\Model\\ResourceModel\\Product','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_product_entity',NULL,NULL,1,'default',4,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),(5,'order','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_order',NULL,NULL,1,'default',5,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(6,'invoice','Magento\\Sales\\Model\\ResourceModel\\Order\\Invoice',NULL,'sales_invoice',NULL,NULL,1,'default',6,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(7,'creditmemo','Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo',NULL,'sales_creditmemo',NULL,NULL,1,'default',7,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(8,'shipment','Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment',NULL,'sales_shipment',NULL,NULL,1,'default',8,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL);
/*!40000 ALTER TABLE `eav_entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_varchar`
--

DROP TABLE IF EXISTS `eav_entity_varchar`;
CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_form_element`
--

DROP TABLE IF EXISTS `eav_form_element`;
CREATE TABLE `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element ID',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type ID',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Dumping data for table `eav_form_element`
--

LOCK TABLES `eav_form_element` WRITE;
/*!40000 ALTER TABLE `eav_form_element` DISABLE KEYS */;
INSERT INTO `eav_form_element` VALUES ('1',1,NULL,23,'0'),('2',1,NULL,25,'1'),('3',1,NULL,27,'2'),('4',1,NULL,9,'3'),('5',1,NULL,28,'4'),('6',1,NULL,29,'5'),('7',1,NULL,31,'6'),('8',1,NULL,33,'7'),('9',1,NULL,30,'8'),('10',1,NULL,34,'9'),('11',1,NULL,35,'10'),('12',2,NULL,23,'0'),('13',2,NULL,25,'1'),('14',2,NULL,27,'2'),('15',2,NULL,9,'3'),('16',2,NULL,28,'4'),('17',2,NULL,29,'5'),('18',2,NULL,31,'6'),('19',2,NULL,33,'7'),('20',2,NULL,30,'8'),('21',2,NULL,34,'9'),('22',2,NULL,35,'10'),('23',3,NULL,23,'0'),('24',3,NULL,25,'1'),('25',3,NULL,27,'2'),('26',3,NULL,28,'3'),('27',3,NULL,29,'4'),('28',3,NULL,31,'5'),('29',3,NULL,33,'6'),('30',3,NULL,30,'7'),('31',3,NULL,34,'8'),('32',3,NULL,35,'9'),('33',4,NULL,23,'0'),('34',4,NULL,25,'1'),('35',4,NULL,27,'2'),('36',4,NULL,28,'3'),('37',4,NULL,29,'4'),('38',4,NULL,31,'5'),('39',4,NULL,33,'6'),('40',4,NULL,30,'7'),('41',4,NULL,34,'8'),('42',4,NULL,35,'9');
/*!40000 ALTER TABLE `eav_form_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_form_fieldset`
--

DROP TABLE IF EXISTS `eav_form_fieldset`;
CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset ID',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type ID',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

--
-- Table structure for table `eav_form_fieldset_label`
--

DROP TABLE IF EXISTS `eav_form_fieldset_label`;
CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Table structure for table `eav_form_type`
--

DROP TABLE IF EXISTS `eav_form_type`;
CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Dumping data for table `eav_form_type`
--

LOCK TABLES `eav_form_type` WRITE;
/*!40000 ALTER TABLE `eav_form_type` DISABLE KEYS */;
INSERT INTO `eav_form_type` VALUES (1,'checkout_onepage_register','checkout_onepage_register',1,'',0),(2,'checkout_onepage_register_guest','checkout_onepage_register_guest',1,'',0),(3,'checkout_onepage_billing_address','checkout_onepage_billing_address',1,'',0),(4,'checkout_onepage_shipping_address','checkout_onepage_shipping_address',1,'',0);
/*!40000 ALTER TABLE `eav_form_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_form_type_entity`
--

DROP TABLE IF EXISTS `eav_form_type_entity`;
CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type ID',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type ID',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

LOCK TABLES `eav_form_type_entity` WRITE;
/*!40000 ALTER TABLE `eav_form_type_entity` DISABLE KEYS */;
INSERT INTO `eav_form_type_entity` VALUES (1,1),(2,1),(1,2),(2,2),(3,2),(4,2);
/*!40000 ALTER TABLE `eav_form_type_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
CREATE TABLE `email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  `is_legacy` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Should the template render in legacy mode',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

--
-- Table structure for table `flag`
--

DROP TABLE IF EXISTS `flag`;
CREATE TABLE `flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` mediumtext COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Dumping data for table `flag`
--

LOCK TABLES `flag` WRITE;
/*!40000 ALTER TABLE `flag` DISABLE KEYS */;
INSERT INTO `flag` VALUES ('1','analytics_link_attempts_reverse_counter',0,'19','2023-02-27 12:00:22'),('2','report_order_aggregated',0,NULL,'2023-02-27 08:00:13'),('3','report_invoiced_aggregated',0,NULL,'2023-02-27 08:00:13'),('4','report_refunded_aggregated',0,NULL,'2023-02-27 08:00:13'),('5','report_bestsellers_aggregated',0,NULL,'2023-02-27 08:00:13'),('6','report_coupons_aggregated',0,NULL,'2023-02-27 08:00:42'),('7','report_shipping_aggregated',0,NULL,'2023-02-27 08:00:43'),('8','report_tax_aggregated',0,NULL,'2023-02-27 08:00:43');
/*!40000 ALTER TABLE `flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_message`
--

DROP TABLE IF EXISTS `gift_message`;
CREATE TABLE `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

--
-- Table structure for table `googleoptimizer_code`
--

DROP TABLE IF EXISTS `googleoptimizer_code`;
CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code ID',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Optimized entity ID product ID or catalog ID',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `experiment_script` text COMMENT 'Google experiment script',
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';

--
-- Table structure for table `import_history`
--

DROP TABLE IF EXISTS `import_history`;
CREATE TABLE `import_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History record ID',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors',
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import history table';

--
-- Table structure for table `importexport_importdata`
--

DROP TABLE IF EXISTS `importexport_importdata`;
CREATE TABLE `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

--
-- Table structure for table `indexer_state`
--

DROP TABLE IF EXISTS `indexer_state`;
CREATE TABLE `indexer_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Indexer State ID',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer ID',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config',
  PRIMARY KEY (`state_id`),
  KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Indexer State';

--
-- Dumping data for table `indexer_state`
--

LOCK TABLES `indexer_state` WRITE;
/*!40000 ALTER TABLE `indexer_state` DISABLE KEYS */;
INSERT INTO `indexer_state` VALUES ('1','design_config_grid','valid','2023-02-27 06:56:16','f022b896c7c775f71f46bb12820c2da9'),('2','customer_grid','valid','2023-02-26 14:18:23','e29ca937d26f2d586026a447cd1544e9'),('3','catalog_category_product','valid','2023-02-26 14:18:23','7e43d60107c9011a2ad3e029717fbbe4'),('4','catalog_product_category','valid','2023-02-26 14:18:23','b55bd279a924db54858a5bf8459b653f'),('5','catalogrule_rule','valid','2023-02-26 14:18:24','72f92fa0e5a62fa15a1c2035c889fad8'),('6','catalog_product_attribute','valid','2023-02-26 14:18:25','06e1680e4b0b18b34f7ad6411516b2c9'),('7','cataloginventory_stock','valid','2023-02-26 14:18:25','ecbf980cbf4df6cb081b7790f12f79cb'),('8','catalog_product_price','valid','2023-02-26 14:18:25','0267f9d160778ffd1ad230c72e0311a1'),('9','catalogrule_product','valid','2023-02-26 14:18:24','c15729ec66808e2b9fbe46a2a7631732'),('10','catalogsearch_fulltext','valid','2023-02-26 14:18:26','1172fc0ee860561e4342da502c0709c5');
/*!40000 ALTER TABLE `indexer_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integration`
--

DROP TABLE IF EXISTS `integration`;
CREATE TABLE `integration` (
  `integration_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) unsigned NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url',
  PRIMARY KEY (`integration_id`),
  UNIQUE KEY `INTEGRATION_NAME` (`name`),
  UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='integration';

--
-- Dumping data for table `integration`
--

LOCK TABLES `integration` WRITE;
/*!40000 ALTER TABLE `integration` DISABLE KEYS */;
INSERT INTO `integration` VALUES ('1','Magento Analytics user','',NULL,1,'1','2023-02-27 07:00:12','2023-02-27 07:00:13',0,NULL);
/*!40000 ALTER TABLE `integration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_link`
--

DROP TABLE IF EXISTS `layout_link`;
CREATE TABLE `layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme ID',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update ID',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary',
  PRIMARY KEY (`layout_link_id`),
  KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`),
  KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

--
-- Table structure for table `layout_update`
--

DROP TABLE IF EXISTS `layout_update`;
CREATE TABLE `layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update ID',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp',
  PRIMARY KEY (`layout_update_id`),
  KEY `LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

--
-- Table structure for table `magento_acknowledged_bulk`
--

DROP TABLE IF EXISTS `magento_acknowledged_bulk`;
CREATE TABLE `magento_acknowledged_bulk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Internal ID',
  `bulk_uuid` varbinary(39) DEFAULT NULL COMMENT 'Related Bulk UUID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MAGENTO_ACKNOWLEDGED_BULK_BULK_UUID` (`bulk_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bulk that was viewed by user from notification area';

--
-- Table structure for table `magento_bulk`
--

DROP TABLE IF EXISTS `magento_bulk`;
CREATE TABLE `magento_bulk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bulk Internal ID (must not be exposed)',
  `uuid` varbinary(39) DEFAULT NULL COMMENT 'Bulk UUID (can be exposed to reference bulk entity)',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'ID of the WebAPI user that performed an action',
  `user_type` int(11) DEFAULT NULL COMMENT 'Which type of user',
  `description` varchar(255) DEFAULT NULL COMMENT 'Bulk Description',
  `operation_count` int(10) unsigned NOT NULL COMMENT 'Total number of operations scheduled within this bulk',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Bulk start time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MAGENTO_BULK_UUID` (`uuid`),
  KEY `MAGENTO_BULK_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bulk entity that represents set of related asynchronous operations';

--
-- Table structure for table `magento_operation`
--

DROP TABLE IF EXISTS `magento_operation`;
CREATE TABLE `magento_operation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Operation ID',
  `bulk_uuid` varbinary(39) DEFAULT NULL COMMENT 'Related Bulk UUID',
  `topic_name` varchar(255) DEFAULT NULL COMMENT 'Name of the related message queue topic',
  `serialized_data` blob COMMENT 'Data (serialized) required to perform an operation',
  `result_serialized_data` blob COMMENT 'Result data (serialized) after perform an operation',
  `status` smallint(6) DEFAULT '0' COMMENT 'Operation status (OPEN | COMPLETE | RETRIABLY_FAILED | NOT_RETRIABLY_FAILED)',
  `error_code` smallint(6) DEFAULT NULL COMMENT 'Code of the error that appeared during operation execution (used to aggregate related failed operations)',
  `result_message` varchar(255) DEFAULT NULL COMMENT 'Operation result message',
  PRIMARY KEY (`id`),
  KEY `MAGENTO_OPERATION_BULK_UUID_ERROR_CODE` (`bulk_uuid`,`error_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Operation entity';

--
-- Table structure for table `media_gallery_asset`
--

DROP TABLE IF EXISTS `media_gallery_asset`;
CREATE TABLE `media_gallery_asset` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `source` varchar(255) DEFAULT NULL COMMENT 'Source',
  `content_type` varchar(255) DEFAULT NULL COMMENT 'Content Type',
  `width` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Width',
  `height` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Height',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MEDIA_GALLERY_ASSET_PATH` (`path`),
  KEY `MEDIA_GALLERY_ASSET_ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Media Gallery Asset';

--
-- Table structure for table `media_gallery_asset_keyword`
--

DROP TABLE IF EXISTS `media_gallery_asset_keyword`;
CREATE TABLE `media_gallery_asset_keyword` (
  `keyword_id` int(10) unsigned NOT NULL COMMENT 'Keyword Id',
  `asset_id` int(10) unsigned NOT NULL COMMENT 'Asset ID',
  PRIMARY KEY (`keyword_id`,`asset_id`),
  KEY `MEDIA_GALLERY_ASSET_KEYWORD_ASSET_ID` (`asset_id`),
  KEY `MEDIA_GALLERY_ASSET_KEYWORD_KEYWORD_ID` (`keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Media Gallery Asset Keyword';

--
-- Table structure for table `media_gallery_keyword`
--

DROP TABLE IF EXISTS `media_gallery_keyword`;
CREATE TABLE `media_gallery_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Keyword ID',
  `keyword` varchar(255) NOT NULL COMMENT 'Keyword',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MEDIA_GALLERY_KEYWORD_KEYWORD` (`keyword`),
  KEY `MEDIA_GALLERY_KEYWORD_ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Media Gallery Keyword';

--
-- Table structure for table `mview_state`
--

DROP TABLE IF EXISTS `mview_state`;
CREATE TABLE `mview_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'View State ID',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View ID',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) unsigned DEFAULT NULL COMMENT 'View Version ID',
  PRIMARY KEY (`state_id`),
  KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  KEY `MVIEW_STATE_MODE` (`mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';

--
-- Table structure for table `newsletter_problem`
--

DROP TABLE IF EXISTS `newsletter_problem`;
CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem ID',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber ID',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue ID',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

--
-- Table structure for table `newsletter_queue`
--

DROP TABLE IF EXISTS `newsletter_queue`;
CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue ID',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

--
-- Table structure for table `newsletter_queue_link`
--

DROP TABLE IF EXISTS `newsletter_queue_link`;
CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link ID',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue ID',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber ID',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

--
-- Table structure for table `newsletter_queue_store_link`
--

DROP TABLE IF EXISTS `newsletter_queue_store_link`;
CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

--
-- Table structure for table `newsletter_subscriber`
--

DROP TABLE IF EXISTS `newsletter_subscriber`;
CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber ID',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store ID',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`),
  KEY `NEWSLETTER_SUBSCRIBER_SUBSCRIBER_EMAIL` (`subscriber_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

--
-- Table structure for table `newsletter_template`
--

DROP TABLE IF EXISTS `newsletter_template`;
CREATE TABLE `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `is_legacy` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Should the template render in legacy mode',
  PRIMARY KEY (`template_id`),
  KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
INSERT INTO `oauth_consumer` VALUES ('1','2023-02-27 07:00:13','0000-00-00 00:00:00','Integration1','1p2r3qrrjwsa3bjbvduxz0qe7suv02n9','pq6t95cdqch7th7plfbejcy9ovicoek7',NULL,'');
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`),
  KEY `OAUTH_NONCE_TIMESTAMP` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';

--
-- Table structure for table `oauth_token`
--

DROP TABLE IF EXISTS `oauth_token`;
CREATE TABLE `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`),
  KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

--
-- Dumping data for table `oauth_token`
--

LOCK TABLES `oauth_token` WRITE;
/*!40000 ALTER TABLE `oauth_token` DISABLE KEYS */;
INSERT INTO `oauth_token` VALUES ('1','1',NULL,NULL,'access','h5hjdqvmznq36i3tgo28es6ydpgr74le','d3o6n0yfw60ijwxgor7k7xm064083nn5','74vtc9m8z7uhg6nhv2m678cgai6fzgjz','oob',0,0,'1','2023-02-27 07:00:13');
/*!40000 ALTER TABLE `oauth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_token_request_log`
--

DROP TABLE IF EXISTS `oauth_token_request_log`;
CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) unsigned NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) unsigned DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';

--
-- Table structure for table `password_reset_request_event`
--

DROP TABLE IF EXISTS `password_reset_request_event`;
CREATE TABLE `password_reset_request_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `request_type` smallint(5) unsigned NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Password Reset Request Event under a security control';

--
-- Table structure for table `patch_list`
--

DROP TABLE IF EXISTS `patch_list`;
CREATE TABLE `patch_list` (
  `patch_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Patch Auto Increment',
  `patch_name` varchar(1024) NOT NULL COMMENT 'Patch Class Name',
  PRIMARY KEY (`patch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='List of data/schema patches';

--
-- Dumping data for table `patch_list`
--

LOCK TABLES `patch_list` WRITE;
/*!40000 ALTER TABLE `patch_list` DISABLE KEYS */;
INSERT INTO `patch_list` VALUES ('1','Magento\\Store\\Setup\\Patch\\Schema\\InitializeStoresAndWebsites'),('2','Magento\\Catalog\\Setup\\Patch\\Schema\\EnableSegmentation'),('3','Magento\\Bundle\\Setup\\Patch\\Schema\\UpdateBundleRelatedSchema'),('4','Magento\\Store\\Setup\\Patch\\Data\\DisableSid'),('5','Magento\\Store\\Setup\\Patch\\Data\\UpdateStoreGroupCodes'),('6','Magento\\Directory\\Setup\\Patch\\Data\\InitializeDirectoryData'),('7','Magento\\Directory\\Setup\\Patch\\Data\\AddCountriesCaribbeanCuracaoKosovoSintMaarten'),('8','Magento\\Directory\\Setup\\Patch\\Data\\AddDataForCroatia'),('9','Magento\\Directory\\Setup\\Patch\\Data\\AddDataForIndia'),('10','Magento\\Directory\\Setup\\Patch\\Data\\AddDataForAustralia'),('11','Magento\\Directory\\Setup\\Patch\\Data\\AddDataForBelgium'),('12','Magento\\Directory\\Setup\\Patch\\Data\\AddDataForChina'),('13','Magento\\Directory\\Setup\\Patch\\Data\\AddDataForColombia'),('14','Magento\\Directory\\Setup\\Patch\\Data\\AddDataForMexico'),('15','Magento\\Directory\\Setup\\Patch\\Data\\AddDataForPoland'),('16','Magento\\Config\\Setup\\Patch\\Data\\UnsetTinymce3'),('17','Magento\\Config\\Setup\\Patch\\Data\\UpdateClassAliases'),('18','Magento\\Theme\\Setup\\Patch\\Data\\RegisterThemes'),('19','Magento\\Theme\\Setup\\Patch\\Data\\ConvertSerializedData'),('20','Magento\\Eav\\Setup\\Patch\\Data\\InitializeAttributeModels'),('21','Magento\\Customer\\Setup\\Patch\\Data\\DefaultCustomerGroupsAndAttributes'),('22','Magento\\Customer\\Setup\\Patch\\Data\\UpdateCustomerAttributesMetadata'),('23','Magento\\Customer\\Setup\\Patch\\Data\\AddNonSpecifiedGenderAttributeOption'),('24','Magento\\Customer\\Setup\\Patch\\Data\\UpdateIdentifierCustomerAttributesVisibility'),('25','Magento\\Customer\\Setup\\Patch\\Data\\AddCustomerUpdatedAtAttribute'),('26','Magento\\Customer\\Setup\\Patch\\Data\\UpgradePasswordHashAndAddress'),('27','Magento\\Customer\\Setup\\Patch\\Data\\RemoveCheckoutRegisterAndUpdateAttributes'),('28','Magento\\Customer\\Setup\\Patch\\Data\\AddSecurityTrackingAttributes'),('29','Magento\\Customer\\Setup\\Patch\\Data\\UpdateAutocompleteOnStorefrontConfigPath'),('30','Magento\\Customer\\Setup\\Patch\\Data\\MigrateStoresAllowedCountriesToWebsite'),('31','Magento\\Customer\\Setup\\Patch\\Data\\ConvertValidationRulesFromSerializedToJson'),('32','Magento\\Customer\\Setup\\Patch\\Data\\UpdateVATNumber'),('33','Magento\\Customer\\Setup\\Patch\\Data\\UpdateCustomerAttributeInputFilters'),('34','Magento\\Indexer\\Setup\\Patch\\Data\\InitializeIndexerState'),('35','Magento\\Authorization\\Setup\\Patch\\Data\\InitializeAuthRoles'),('36','Magento\\Cms\\Setup\\Patch\\Data\\CreateDefaultPages'),('37','Magento\\Cms\\Setup\\Patch\\Data\\UpdatePrivacyPolicyPage'),('38','Magento\\Cms\\Setup\\Patch\\Data\\ConvertWidgetConditionsToJson'),('39','Magento\\Catalog\\Setup\\Patch\\Data\\InstallDefaultCategories'),('40','Magento\\Catalog\\Setup\\Patch\\Data\\SetNewResourceModelsPaths'),('41','Magento\\Catalog\\Setup\\Patch\\Data\\UpdateDefaultAttributeValue'),('42','Magento\\Catalog\\Setup\\Patch\\Data\\UpdateMediaAttributesBackendTypes'),('43','Magento\\Catalog\\Setup\\Patch\\Data\\UpdateProductAttributes'),('44','Magento\\Catalog\\Setup\\Patch\\Data\\UpdateProductMetaDescription'),('45','Magento\\Catalog\\Setup\\Patch\\Data\\ChangePriceAttributeDefaultScope'),('46','Magento\\Catalog\\Setup\\Patch\\Data\\DisallowUsingHtmlForProductName'),('47','Magento\\Catalog\\Setup\\Patch\\Data\\EnableDirectiveParsing'),('48','Magento\\Catalog\\Setup\\Patch\\Data\\EnableSegmentation'),('49','Magento\\Catalog\\Setup\\Patch\\Data\\UpdateCustomLayoutAttributes'),('50','Magento\\Catalog\\Setup\\Patch\\Data\\UpgradeWidgetData'),('51','Magento\\Catalog\\Setup\\Patch\\Data\\UpgradeWebsiteAttributes'),('52','Magento\\Quote\\Setup\\Patch\\Data\\InstallEntityTypes'),('53','Magento\\Quote\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),('54','Magento\\Quote\\Setup\\Patch\\Data\\WishlistDataCleanUp'),('55','Magento\\CatalogInventory\\Setup\\Patch\\Data\\CreateDefaultStock'),('56','Magento\\CatalogInventory\\Setup\\Patch\\Data\\UpdateStockItemsWebsite'),('57','Magento\\CatalogInventory\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),('58','Magento\\CatalogRule\\Setup\\Patch\\Data\\UpdateClassAliasesForCatalogRules'),('59','Magento\\CatalogRule\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),('60','Magento\\Msrp\\Setup\\Patch\\Data\\InitializeMsrpAttributes'),('61','Magento\\Msrp\\Setup\\Patch\\Data\\ChangeMsrpAttributeLabel'),('62','Magento\\Msrp\\Setup\\Patch\\Data\\ChangePriceAttributeDefaultScope'),('63','Magento\\CatalogSearch\\Setup\\Patch\\Data\\MySQLSearchDeprecationNotification'),('64','Magento\\CatalogSearch\\Setup\\Patch\\Data\\SetInitialSearchWeightForAttributes'),('65','Magento\\CatalogUrlRewrite\\Setup\\Patch\\Data\\CreateUrlAttributes'),('66','Magento\\CatalogUrlRewrite\\Setup\\Patch\\Data\\UpdateUrlKeySearchable'),('67','Magento\\Widget\\Setup\\Patch\\Data\\UpgradeModelInstanceClassAliases'),('68','Magento\\Widget\\Setup\\Patch\\Data\\ConvertSerializedData'),('69','Magento\\Sales\\Setup\\Patch\\Data\\InstallOrderStatusesAndInitialSalesConfig'),('70','Magento\\Sales\\Setup\\Patch\\Data\\UpdateEntityTypes'),('71','Magento\\Sales\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),('72','Magento\\Sales\\Setup\\Patch\\Data\\FillQuoteAddressIdInSalesOrderAddress'),('73','Magento\\Sales\\Setup\\Patch\\Data\\UpdateEntityTypeModelForInvoice'),('74','Magento\\Sales\\Setup\\Patch\\Data\\WishlistDataCleanUp'),('75','Magento\\User\\Setup\\Patch\\Data\\UpgradePasswordHashes'),('76','Magento\\User\\Setup\\Patch\\Data\\UpgradeSerializedFields'),('77','Magento\\Checkout\\Setup\\Patch\\Data\\PrepareInitialCheckoutConfiguration'),('78','Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\InstallInitialConfigurableAttributes'),('79','Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\UpdateManufacturerAttribute'),('80','Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\UpdateTierPriceAttribute'),('81','Magento\\CurrencySymbol\\Setup\\Patch\\Data\\ConvertSerializedCustomCurrencySymbolToJson'),('82','Magento\\Integration\\Setup\\Patch\\Data\\RemoveInactiveTokens'),('83','Magento\\Downloadable\\Setup\\Patch\\Data\\AddDownloadableHostsConfig'),('84','Magento\\Downloadable\\Setup\\Patch\\Data\\InstallDownloadableAttributes'),('85','Magento\\Downloadable\\Setup\\Patch\\Data\\UpdateLinksExistDefaultAttributeValue'),('86','Magento\\Dhl\\Setup\\Patch\\Data\\PrepareShipmentDays'),('87','Magento\\Elasticsearch\\Setup\\Patch\\Data\\InvalidateIndex'),('88','Magento\\Email\\Setup\\Patch\\Data\\FlagLegacyTemplates'),('89','Magento\\EncryptionKey\\Setup\\Patch\\Data\\SodiumChachaPatch'),('90','Magento\\Fedex\\Setup\\Patch\\Data\\ConfigureFedexDefaults'),('91','Magento\\GiftMessage\\Setup\\Patch\\Data\\AddGiftMessageAttributes'),('92','Magento\\GiftMessage\\Setup\\Patch\\Data\\MoveGiftMessageToGiftOptionsGroup'),('93','Magento\\GiftMessage\\Setup\\Patch\\Data\\UpdateGiftMessageAttribute'),('94','Magento\\GroupedProduct\\Setup\\Patch\\Data\\InitializeGroupedProductLinks'),('95','Magento\\GroupedProduct\\Setup\\Patch\\Data\\UpdateProductRelations'),('96','Magento\\Bundle\\Setup\\Patch\\Data\\ApplyAttributesUpdate'),('97','Magento\\Bundle\\Setup\\Patch\\Data\\UpdateBundleRelatedEntityTypes'),('98','Magento\\Analytics\\Setup\\Patch\\Data\\PrepareInitialConfig'),('99','Magento\\Analytics\\Setup\\Patch\\Data\\ActivateDataCollection'),('100','Magento\\Newsletter\\Setup\\Patch\\Data\\FlagLegacyTemplates'),('101','Magento\\SalesRule\\Setup\\Patch\\Data\\PrepareRuleModelSerializedData'),('102','Magento\\SalesRule\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),('103','Magento\\SalesRule\\Setup\\Patch\\Data\\FillSalesRuleProductAttributeTable'),('104','Magento\\Vault\\Setup\\Patch\\Data\\SetCreditCardAsDefaultTokenType'),('105','Magento\\Paypal\\Setup\\Patch\\Data\\AddPaypalOrderStatuses'),('106','Magento\\Paypal\\Setup\\Patch\\Data\\UpdatePaypalCreditOption'),('107','Magento\\AuthorizenetAcceptjs\\Setup\\Patch\\Data\\CopyCurrentConfig'),('108','Magento\\Reports\\Setup\\Patch\\Data\\InitializeReportEntityTypesAndPages'),('109','Magento\\Reports\\Setup\\Patch\\Data\\ReportDisableNotification'),('110','Magento\\Review\\Setup\\Patch\\Data\\InitReviewStatusesAndData'),('111','Magento\\OfflineShipping\\Setup\\Patch\\Data\\UpdateQuoteShippingAddresses'),('112','Magento\\OfflineShipping\\Setup\\Patch\\Data\\UpdateShippingTablerate'),('113','Magento\\Braintree\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),('114','Magento\\UrlRewrite\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),('115','Magento\\Swatches\\Setup\\Patch\\Data\\AddSwatchImageAttribute'),('116','Magento\\Swatches\\Setup\\Patch\\Data\\AddSwatchImageToDefaultAttribtueSet'),('117','Magento\\Swatches\\Setup\\Patch\\Data\\UpdateAdminTextSwatchValues'),('118','Magento\\Swatches\\Setup\\Patch\\Data\\ConvertAdditionalDataToJson'),('119','Magento\\Tax\\Setup\\Patch\\Data\\AddTaxAttributeAndTaxClasses'),('120','Magento\\Tax\\Setup\\Patch\\Data\\UpdateTaxClassAttributeVisibility'),('121','Magento\\Tax\\Setup\\Patch\\Data\\UpdateTaxRegionId'),('122','Magento\\SampleData\\Setup\\Patch\\Data\\ClearSampleDataState'),('123','Magento\\Usps\\Setup\\Patch\\Data\\UpdateAllowedMethods'),('124','Magento\\Weee\\Setup\\Patch\\Data\\InitQuoteAndOrderAttributes'),('125','Magento\\Wishlist\\Setup\\Patch\\Data\\ConvertSerializedData'),('126','Magento\\Wishlist\\Setup\\Patch\\Data\\WishlistDataCleanUp');
/*!40000 ALTER TABLE `patch_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_billing_agreement`
--

DROP TABLE IF EXISTS `paypal_billing_agreement`;
CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement ID',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer ID',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference ID',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

--
-- Table structure for table `paypal_billing_agreement_order`
--

DROP TABLE IF EXISTS `paypal_billing_agreement_order`;
CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement ID',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

--
-- Table structure for table `paypal_cert`
--

DROP TABLE IF EXISTS `paypal_cert`;
CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

--
-- Table structure for table `paypal_payment_transaction`
--

DROP TABLE IF EXISTS `paypal_payment_transaction`;
CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn ID',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

--
-- Table structure for table `paypal_settlement_report`
--

DROP TABLE IF EXISTS `paypal_settlement_report`;
CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report ID',
  `report_date` date DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account ID',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

--
-- Table structure for table `paypal_settlement_report_row`
--

DROP TABLE IF EXISTS `paypal_settlement_report_row`;
CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report ID',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction ID',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice ID',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference ID',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference ID Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer ID',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

--
-- Table structure for table `persistent_session`
--

DROP TABLE IF EXISTS `persistent_session`;
CREATE TABLE `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session ID',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`),
  KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

--
-- Table structure for table `product_alert_price`
--

DROP TABLE IF EXISTS `product_alert_price`;
CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store ID',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `PRODUCT_ALERT_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

--
-- Table structure for table `product_alert_stock`
--

DROP TABLE IF EXISTS `product_alert_stock`;
CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store ID',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`),
  KEY `PRODUCT_ALERT_STOCK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

--
-- Table structure for table `queue`
--

DROP TABLE IF EXISTS `queue`;
CREATE TABLE `queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Queue name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `QUEUE_NAME` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Table storing unique queues';

--
-- Dumping data for table `queue`
--

LOCK TABLES `queue` WRITE;
/*!40000 ALTER TABLE `queue` DISABLE KEYS */;
INSERT INTO `queue` VALUES ('5','async.operations.all'),('4','codegenerator'),('3','export'),('1','product_action_attribute.update'),('2','product_action_attribute.website.update');
/*!40000 ALTER TABLE `queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_lock`
--

DROP TABLE IF EXISTS `queue_lock`;
CREATE TABLE `queue_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message ID',
  `message_code` varchar(255) NOT NULL DEFAULT '' COMMENT 'Message Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`id`),
  UNIQUE KEY `QUEUE_LOCK_MESSAGE_CODE` (`message_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages that were processed are inserted here to be locked.';

--
-- Table structure for table `queue_message`
--

DROP TABLE IF EXISTS `queue_message`;
CREATE TABLE `queue_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message ID',
  `topic_name` varchar(255) DEFAULT NULL COMMENT 'Message topic',
  `body` longtext COMMENT 'Message body',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Queue messages';

--
-- Table structure for table `queue_message_status`
--

DROP TABLE IF EXISTS `queue_message_status`;
CREATE TABLE `queue_message_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Relation ID',
  `queue_id` int(10) unsigned NOT NULL COMMENT 'Queue ID',
  `message_id` bigint(20) unsigned NOT NULL COMMENT 'Message ID',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `status` smallint(5) unsigned NOT NULL COMMENT 'Message status in particular queue',
  `number_of_trials` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of trials to processed failed message processing',
  PRIMARY KEY (`id`),
  UNIQUE KEY `QUEUE_MESSAGE_STATUS_QUEUE_ID_MESSAGE_ID` (`queue_id`,`message_id`),
  KEY `QUEUE_MESSAGE_STATUS_MESSAGE_ID_QUEUE_MESSAGE_ID` (`message_id`),
  KEY `QUEUE_MESSAGE_STATUS_STATUS_UPDATED_AT` (`status`,`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relation table to keep associations between queues and messages';

--
-- Table structure for table `queue_poison_pill`
--

DROP TABLE IF EXISTS `queue_poison_pill`;
CREATE TABLE `queue_poison_pill` (
  `version` varchar(255) NOT NULL COMMENT 'Poison Pill version.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sequence table for poison pill versions';

--
-- Dumping data for table `queue_poison_pill`
--

LOCK TABLES `queue_poison_pill` WRITE;
/*!40000 ALTER TABLE `queue_poison_pill` DISABLE KEYS */;
INSERT INTO `queue_poison_pill` VALUES ('version-63fc9b8fc99ac');
/*!40000 ALTER TABLE `queue_poison_pill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
CREATE TABLE `quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order ID',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(20,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `customer_tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Tax Class ID',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group ID',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(45) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order ID',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message ID',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES ('1',1,'2023-02-26 18:44:29','2023-02-27 05:16:58',NULL,0,0,0,'2','2.0000','0','0.0000','0.0000','INR','INR','INR','25208.6000','25208.6000',NULL,'1','3','1','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,NULL,NULL,1,0,'::1','1','000000001',NULL,'NAK32HG23UH','INR','1.0000','1.0000',NULL,NULL,'35998.0000','35998.0000','25198.6000','25198.6000','1',0,NULL,NULL,0),('3',1,'2023-02-27 07:09:48','2023-02-27 07:15:17',NULL,0,0,0,'1','1.0000','0','0.0000','0.0000','INR','INR','INR','50004.0000','50004.0000',NULL,'1','3','1','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,NULL,NULL,1,0,'::1',NULL,'000000002',NULL,NULL,'INR','1.0000','1.0000',NULL,NULL,'49999.0000','49999.0000','49999.0000','49999.0000','1',0,NULL,NULL,0),('4',1,'2023-02-27 07:33:48','2023-02-27 07:34:14',NULL,0,1,0,'1','1.0000','0','0.0000','0.0000','INR','INR','INR','599.0000','599.0000',NULL,'1','3','1','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,NULL,NULL,1,0,'::1',NULL,'000000003',NULL,NULL,'INR','1.0000','1.0000',NULL,NULL,'599.0000','599.0000','599.0000','599.0000','1',0,NULL,NULL,0),('5',1,'2023-02-27 10:40:29','2023-02-27 10:43:48',NULL,0,1,0,'1','1.0000','0','0.0000','0.0000','INR','INR','INR','599.0000','599.0000',NULL,'1','3','1','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,NULL,NULL,1,0,'::1',NULL,'000000005',NULL,NULL,'INR','1.0000','1.0000',NULL,NULL,'599.0000','599.0000','599.0000','599.0000','1',0,NULL,NULL,0);
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_address`
--

DROP TABLE IF EXISTS `quote_address`;
CREATE TABLE `quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address ID',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address ID',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(40) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region ID',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country ID',
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(120) DEFAULT NULL,
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat ID',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request ID',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `validated_country_code` text COMMENT 'Validated Country Code',
  `validated_vat_number` text COMMENT 'Validated Vat Number',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message ID',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  PRIMARY KEY (`address_id`),
  KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Dumping data for table `quote_address`
--

LOCK TABLES `quote_address` WRITE;
/*!40000 ALTER TABLE `quote_address` DISABLE KEYS */;
INSERT INTO `quote_address` VALUES ('4','1','2023-02-27 02:43:16','2023-02-27 05:16:47','1',0,'1','shipping','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,'Gloify','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','Karnataka','549','560076','IN','9901434817',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','0.0000','35998.0000','35998.0000','25198.6000','25198.6000','0.0000','0.0000','10.0000','10.0000','0.0000','0.0000','-10799.4000','-10799.4000','25208.6000','25208.6000',NULL,'[]','30% Discount on cart value over 5999','0.0000','0.0000','35998.0000','35998.0000','0.0000','0.0000','0.0000',NULL,'10.0000','10.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('7','1','2023-02-27 05:16:54','2023-02-27 05:16:54','1',NULL,'1','billing','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,'Gloify','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','Karnataka','549','560076','IN','9901434817',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,'null',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('9','3','2023-02-27 07:09:48','2023-02-27 07:14:50','1',0,'1','shipping','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,'Gloify','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','Karnataka','549','560076','IN','9901434817',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','0.0000','49999.0000','49999.0000','49999.0000','49999.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000','0.0000','0.0000','50004.0000','50004.0000',NULL,'[]',NULL,'0.0000','0.0000','49999.0000','49999.0000','0.0000','0.0000','0.0000',NULL,'5.0000','5.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('10','3','2023-02-27 07:11:34','2023-02-27 07:11:34','1',NULL,'1','billing','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,'Gloify','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','Karnataka','549','560076','IN','9901434817',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,'null',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('12','4','2023-02-27 07:33:48','2023-02-27 07:33:48','1',0,NULL,'shipping','farah@gloify.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,'null',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('13','4','2023-02-27 07:34:13','2023-02-27 07:34:13','1',NULL,'1','billing','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,'Gloify','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','Karnataka','549','560076','IN','9901434817',NULL,0,0,NULL,NULL,'0.0000','599.0000','599.0000','599.0000','599.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','599.0000','599.0000',NULL,'[]',NULL,'0.0000','0.0000','599.0000','599.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('18','5','2023-02-27 10:43:18','2023-02-27 10:43:18','1',0,NULL,'shipping','farah@gloify.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,'null',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('19','5','2023-02-27 10:43:47','2023-02-27 10:43:47','1',NULL,'1','billing','farah@gloify.com',NULL,'Farah',NULL,'Khan',NULL,'Gloify','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','Karnataka','549','560076','IN','9901434817',NULL,0,0,NULL,NULL,'0.0000','599.0000','599.0000','599.0000','599.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','599.0000','599.0000',NULL,'[]',NULL,'0.0000','0.0000','599.0000','599.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `quote_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_address_item`
--

DROP TABLE IF EXISTS `quote_address_item`;
CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item ID',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item ID',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address ID',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product ID',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message ID',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  PRIMARY KEY (`address_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

--
-- Table structure for table `quote_id_mask`
--

DROP TABLE IF EXISTS `quote_id_mask`;
CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `quote_id` int(10) unsigned NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID',
  PRIMARY KEY (`entity_id`,`quote_id`),
  KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';

--
-- Table structure for table `quote_item`
--

DROP TABLE IF EXISTS `quote_item`;
CREATE TABLE `quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item ID',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message ID',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Dumping data for table `quote_item`
--

LOCK TABLES `quote_item` WRITE;
/*!40000 ALTER TABLE `quote_item` DISABLE KEYS */;
INSERT INTO `quote_item` VALUES ('2','1','2023-02-27 02:46:06','2023-02-27 02:46:27','7',1,NULL,0,'NAK00004','Floral Pattern Lehenga Choli',NULL,'1',NULL,0,0,NULL,'1.0000','29999.0000','29999.0000',NULL,'30.0000','8999.7000','8999.7000','0.0000','0.0000','0.0000','29999.0000','29999.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'29999.0000','29999.0000','29999.0000','29999.0000','0.0000','0.0000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','1','2023-02-27 05:15:48','2023-02-27 05:15:48','6',1,NULL,0,'NAK00003','Floral Kurta in Maroon & Black',NULL,'1',NULL,0,0,NULL,'1.0000','5999.0000','5999.0000',NULL,'30.0000','1799.7000','1799.7000','0.0000','0.0000','0.0000','5999.0000','5999.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'5999.0000','5999.0000','5999.0000','5999.0000','0.0000','0.0000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','3','2023-02-27 07:10:10','2023-02-27 07:10:10','1',1,NULL,0,'NAK00001','Designer Light Blue Net Lehenga',NULL,NULL,NULL,0,0,NULL,'1.0000','49999.0000','49999.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','49999.0000','49999.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'49999.0000','49999.0000','49999.0000','49999.0000','0.0000','0.0000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','4','2023-02-27 07:33:48','2023-02-27 07:33:48','5',1,NULL,1,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt',NULL,NULL,NULL,0,0,NULL,'1.0000','599.0000','599.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','599.0000','599.0000','0.0000','0.0000','configurable',NULL,NULL,NULL,NULL,NULL,'599.0000','599.0000','599.0000','599.0000','0.0000','0.0000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','4','2023-02-27 07:33:48','2023-02-27 07:33:48','4',1,'6',1,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue',NULL,NULL,NULL,0,0,NULL,'1.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','virtual',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9','5','2023-02-27 10:43:35','2023-02-27 10:43:35','5',1,NULL,1,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt',NULL,NULL,NULL,0,0,NULL,'1.0000','599.0000','599.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','599.0000','599.0000','0.0000','0.0000','configurable',NULL,NULL,NULL,NULL,NULL,'599.0000','599.0000','599.0000','599.0000','0.0000','0.0000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('10','5','2023-02-27 10:43:35','2023-02-27 10:43:35','4',1,'9',1,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue',NULL,NULL,NULL,0,0,NULL,'1.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','virtual',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_item_option`
--

DROP TABLE IF EXISTS `quote_item_option`;
CREATE TABLE `quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Dumping data for table `quote_item_option`
--

LOCK TABLES `quote_item_option` WRITE;
/*!40000 ALTER TABLE `quote_item_option` DISABLE KEYS */;
INSERT INTO `quote_item_option` VALUES ('2','2','7','info_buyRequest','{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9mbG9yYWwtcGF0dGVybi1sZWhlbmdhLWNob2xpLmh0bWw,\",\"product\":\"7\",\"selected_configurable_option\":\"\",\"related_product\":\"\",\"item\":\"7\",\"options\":{\"3\":\"12\"},\"qty\":\"1\"}'),('3','2','7','option_ids','3'),('4','2','7','option_3','12'),('8','4','6','info_buyRequest','{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9mbG9yYWwta3VydGEtaW4tbWFyb29uLWJsYWNrLmh0bWw_b3B0aW9ucz1jYXJ0\",\"product\":\"6\",\"selected_configurable_option\":\"\",\"related_product\":\"\",\"item\":\"6\",\"options\":{\"2\":\"9\"},\"qty\":\"1\"}'),('9','4','6','option_ids','2'),('10','4','6','option_2','9'),('11','5','1','info_buyRequest','{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9kZXNpZ25lci1saWdodC1ibHVlLW5ldC1sZWhlbmdhLmh0bWw_b3B0aW9ucz1jYXJ0\",\"product\":\"1\",\"selected_configurable_option\":\"\",\"related_product\":\"\",\"item\":\"1\",\"options\":{\"4\":\"17\"},\"qty\":\"1\"}'),('12','5','1','option_ids','4'),('13','5','1','option_4','17'),('14','6','5','info_buyRequest','{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9tZW4tcmVndWxhci1maXQtc29saWQtYnV0dG9uLWRvd24tY29sbGFyLWZvcm1hbC1zaGlydC5odG1s\",\"product\":\"5\",\"selected_configurable_option\":\"4\",\"related_product\":\"\",\"item\":\"5\",\"super_attribute\":{\"93\":\"6\"},\"options\":{\"1\":\"2\"},\"qty\":\"1\"}'),('15','6','5','option_ids','1'),('16','6','5','option_1','2'),('17','6','5','attributes','{\"93\":\"6\"}'),('18','6','4','product_qty_4','1'),('19','6','4','simple_product','4'),('20','7','4','info_buyRequest','{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9tZW4tcmVndWxhci1maXQtc29saWQtYnV0dG9uLWRvd24tY29sbGFyLWZvcm1hbC1zaGlydC5odG1s\",\"product\":\"5\",\"selected_configurable_option\":\"4\",\"related_product\":\"\",\"item\":\"5\",\"super_attribute\":{\"93\":\"6\"},\"options\":{\"1\":\"2\"},\"qty\":\"1\"}'),('21','7','4','option_1','2'),('22','7','4','parent_product_id','5'),('26','9','5','info_buyRequest','{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9tZW4tcmVndWxhci1maXQtc29saWQtYnV0dG9uLWRvd24tY29sbGFyLWZvcm1hbC1zaGlydC5odG1s\",\"product\":\"5\",\"selected_configurable_option\":\"4\",\"related_product\":\"\",\"item\":\"5\",\"super_attribute\":{\"93\":\"6\"},\"options\":{\"1\":\"3\"},\"qty\":\"1\"}'),('27','9','5','option_ids','1'),('28','9','5','option_1','3'),('29','9','5','attributes','{\"93\":\"6\"}'),('30','9','4','product_qty_4','1'),('31','9','4','simple_product','4'),('32','10','4','info_buyRequest','{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9tZW4tcmVndWxhci1maXQtc29saWQtYnV0dG9uLWRvd24tY29sbGFyLWZvcm1hbC1zaGlydC5odG1s\",\"product\":\"5\",\"selected_configurable_option\":\"4\",\"related_product\":\"\",\"item\":\"5\",\"super_attribute\":{\"93\":\"6\"},\"options\":{\"1\":\"3\"},\"qty\":\"1\"}'),('33','10','4','option_1','3'),('34','10','4','parent_product_id','5');
/*!40000 ALTER TABLE `quote_item_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_payment`
--

DROP TABLE IF EXISTS `quote_payment`;
CREATE TABLE `quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment ID',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer ID',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation ID',
  PRIMARY KEY (`payment_id`),
  KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

--
-- Dumping data for table `quote_payment`
--

LOCK TABLES `quote_payment` WRITE;
/*!40000 ALTER TABLE `quote_payment` DISABLE KEYS */;
INSERT INTO `quote_payment` VALUES ('1','1','2023-02-27 05:16:49','2023-02-27 05:16:49','checkmo',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'null',NULL,NULL,NULL),('2','3','2023-02-27 07:10:45','2023-02-27 07:10:45','razorpay',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'null',NULL,NULL,NULL),('3','4','2023-02-27 07:34:05','2023-02-27 07:34:05','razorpay',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'null',NULL,NULL,NULL),('4','5','2023-02-27 10:42:43','2023-02-27 10:42:43','razorpay',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'null',NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_shipping_rate`
--

DROP TABLE IF EXISTS `quote_shipping_rate`;
CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate ID',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

--
-- Dumping data for table `quote_shipping_rate`
--

LOCK TABLES `quote_shipping_rate` WRITE;
/*!40000 ALTER TABLE `quote_shipping_rate` DISABLE KEYS */;
INSERT INTO `quote_shipping_rate` VALUES ('3','4','2023-02-27 05:16:54','2023-02-27 05:16:54','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'10.0000',NULL,'Fixed'),('10','9','2023-02-27 07:14:51','2023-02-27 07:14:51','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'5.0000',NULL,'Fixed');
/*!40000 ALTER TABLE `quote_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating ID',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  KEY `RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,'Quality',0,1),(2,1,'Value',0,1),(3,1,'Price',0,1);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_entity`
--

DROP TABLE IF EXISTS `rating_entity`;
CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Dumping data for table `rating_entity`
--

LOCK TABLES `rating_entity` WRITE;
/*!40000 ALTER TABLE `rating_entity` DISABLE KEYS */;
INSERT INTO `rating_entity` VALUES (1,'product'),(2,'product_review'),(3,'review');
/*!40000 ALTER TABLE `rating_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option`
--

DROP TABLE IF EXISTS `rating_option`;
CREATE TABLE `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option ID',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront',
  PRIMARY KEY (`option_id`),
  KEY `RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Dumping data for table `rating_option`
--

LOCK TABLES `rating_option` WRITE;
/*!40000 ALTER TABLE `rating_option` DISABLE KEYS */;
INSERT INTO `rating_option` VALUES ('1',1,'1',1,1),('2',1,'2',2,2),('3',1,'3',3,3),('4',1,'4',4,4),('5',1,'5',5,5),('6',2,'1',1,1),('7',2,'2',2,2),('8',2,'3',3,3),('9',2,'4',4,4),('10',2,'5',5,5),('11',3,'1',1,1),('12',3,'2',2,2),('13',3,'3',3,3),('14',3,'4',4,4),('15',3,'5',5,5);
/*!40000 ALTER TABLE `rating_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option_vote`
--

DROP TABLE IF EXISTS `rating_option_vote`;
CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option ID',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review ID',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`),
  KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

--
-- Table structure for table `rating_option_vote_aggregated`
--

DROP TABLE IF EXISTS `rating_option_vote_aggregated`;
CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation ID',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`primary_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

--
-- Table structure for table `rating_store`
--

DROP TABLE IF EXISTS `rating_store`;
CREATE TABLE `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

--
-- Table structure for table `rating_title`
--

DROP TABLE IF EXISTS `rating_title`;
CREATE TABLE `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

--
-- Table structure for table `release_notification_viewer_log`
--

DROP TABLE IF EXISTS `release_notification_viewer_log`;
CREATE TABLE `release_notification_viewer_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `viewer_id` int(10) unsigned NOT NULL COMMENT 'Viewer admin user ID',
  `last_view_version` varchar(16) NOT NULL COMMENT 'Viewer last view on product version',
  PRIMARY KEY (`id`),
  UNIQUE KEY `RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID` (`viewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Release Notification Viewer Log Table';

--
-- Table structure for table `report_compared_product_index`
--

DROP TABLE IF EXISTS `report_compared_product_index`;
CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index ID',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

--
-- Table structure for table `report_event`
--

DROP TABLE IF EXISTS `report_event`;
CREATE TABLE `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event ID',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type ID',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object ID',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject ID',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`event_id`),
  KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Table structure for table `report_event_types`
--

DROP TABLE IF EXISTS `report_event_types`;
CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type ID',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Dumping data for table `report_event_types`
--

LOCK TABLES `report_event_types` WRITE;
/*!40000 ALTER TABLE `report_event_types` DISABLE KEYS */;
INSERT INTO `report_event_types` VALUES (1,'catalog_product_view',0),(2,'sendfriend_product',0),(3,'catalog_product_compare_add_product',0),(4,'checkout_cart_add_product',0),(5,'wishlist_add_product',0),(6,'wishlist_share',0);
/*!40000 ALTER TABLE `report_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_daily`;
CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_monthly`;
CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_yearly`;
CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

--
-- Table structure for table `report_viewed_product_index`
--

DROP TABLE IF EXISTS `report_viewed_product_index`;
CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index ID',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Table structure for table `reporting_counts`
--

DROP TABLE IF EXISTS `reporting_counts`;
CREATE TABLE `reporting_counts` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) unsigned DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';

--
-- Table structure for table `reporting_module_status`
--

DROP TABLE IF EXISTS `reporting_module_status`;
CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Module ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';

--
-- Table structure for table `reporting_orders`
--

DROP TABLE IF EXISTS `reporting_orders`;
CREATE TABLE `reporting_orders` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `total` decimal(20,4) unsigned DEFAULT NULL,
  `total_base` decimal(20,4) unsigned DEFAULT NULL,
  `item_count` int(10) unsigned NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';

--
-- Table structure for table `reporting_system_updates`
--

DROP TABLE IF EXISTS `reporting_system_updates`;
CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';

--
-- Table structure for table `reporting_users`
--

DROP TABLE IF EXISTS `reporting_users`;
CREATE TABLE `reporting_users` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `REVIEW_ENTITY_ID` (`entity_id`),
  KEY `REVIEW_STATUS_ID` (`status_id`),
  KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

--
-- Table structure for table `review_detail`
--

DROP TABLE IF EXISTS `review_detail`;
CREATE TABLE `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail ID',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review ID',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  PRIMARY KEY (`detail_id`),
  KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

--
-- Table structure for table `review_entity`
--

DROP TABLE IF EXISTS `review_entity`;
CREATE TABLE `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity ID',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Dumping data for table `review_entity`
--

LOCK TABLES `review_entity` WRITE;
/*!40000 ALTER TABLE `review_entity` DISABLE KEYS */;
INSERT INTO `review_entity` VALUES (1,'product'),(2,'customer'),(3,'category');
/*!40000 ALTER TABLE `review_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_entity_summary`
--

DROP TABLE IF EXISTS `review_entity_summary`;
CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity ID',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type ID',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`primary_id`),
  KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

--
-- Table structure for table `review_status`
--

DROP TABLE IF EXISTS `review_status`;
CREATE TABLE `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status ID',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Dumping data for table `review_status`
--

LOCK TABLES `review_status` WRITE;
/*!40000 ALTER TABLE `review_status` DISABLE KEYS */;
INSERT INTO `review_status` VALUES (1,'Approved'),(2,'Pending'),(3,'Not Approved');
/*!40000 ALTER TABLE `review_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_store`
--

DROP TABLE IF EXISTS `review_store`;
CREATE TABLE `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_daily`;
CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

--
-- Dumping data for table `sales_bestsellers_aggregated_daily`
--

LOCK TABLES `sales_bestsellers_aggregated_daily` WRITE;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_daily` DISABLE KEYS */;
INSERT INTO `sales_bestsellers_aggregated_daily` VALUES ('1','2023-02-26',1,'1','Designer Light Blue Net Lehenga','49999.0000','1.0000',1),('2','2023-02-26',1,'4','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue','599.0000','1.0000',2),('4','2023-02-26',0,'1','Designer Light Blue Net Lehenga','49999.0000','1.0000',1),('5','2023-02-26',0,'4','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue','599.0000','1.0000',2);
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_monthly`;
CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

--
-- Dumping data for table `sales_bestsellers_aggregated_monthly`
--

LOCK TABLES `sales_bestsellers_aggregated_monthly` WRITE;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_monthly` DISABLE KEYS */;
INSERT INTO `sales_bestsellers_aggregated_monthly` VALUES ('1','2023-02-01',0,'4','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue','599.0000','1.0000',1),('2','2023-02-01',0,'1','Designer Light Blue Net Lehenga','49999.0000','1.0000',2),('3','2023-02-01',1,'1','Designer Light Blue Net Lehenga','49999.0000','1.0000',1),('4','2023-02-01',1,'4','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue','599.0000','1.0000',2);
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_yearly`;
CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

--
-- Dumping data for table `sales_bestsellers_aggregated_yearly`
--

LOCK TABLES `sales_bestsellers_aggregated_yearly` WRITE;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_yearly` DISABLE KEYS */;
INSERT INTO `sales_bestsellers_aggregated_yearly` VALUES ('1','2023-01-01',0,'4','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue','599.0000','1.0000',1),('2','2023-01-01',0,'1','Designer Light Blue Net Lehenga','49999.0000','1.0000',2),('3','2023-01-01',1,'1','Designer Light Blue Net Lehenga','49999.0000','1.0000',1),('4','2023-01-01',1,'4','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue','599.0000','1.0000',2);
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_yearly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_creditmemo`
--

DROP TABLE IF EXISTS `sales_creditmemo`;
CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address ID',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address ID',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice ID',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `SALES_CREDITMEMO_STATE` (`state`),
  KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

--
-- Table structure for table `sales_creditmemo_comment`
--

DROP TABLE IF EXISTS `sales_creditmemo_comment`;
CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

--
-- Table structure for table `sales_creditmemo_grid`
--

DROP TABLE IF EXISTS `sales_creditmemo_grid`;
CREATE TABLE `sales_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int(11) DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group ID',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Order Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_CREDITMEMO_GRID_STATE` (`state`),
  KEY `SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  FULLTEXT KEY `FTI_32B7BA885941A8254EE84AE650ABDC86` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

--
-- Table structure for table `sales_creditmemo_item`
--

DROP TABLE IF EXISTS `sales_creditmemo_item`;
CREATE TABLE `sales_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product ID',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item ID',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

--
-- Table structure for table `sales_invoice`
--

DROP TABLE IF EXISTS `sales_invoice`;
CREATE TABLE `sales_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address ID',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address ID',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction ID',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_STATE` (`state`),
  KEY `SALES_INVOICE_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_SEND_EMAIL` (`send_email`),
  KEY `SALES_INVOICE_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

--
-- Dumping data for table `sales_invoice`
--

LOCK TABLES `sales_invoice` WRITE;
/*!40000 ALTER TABLE `sales_invoice` DISABLE KEYS */;
INSERT INTO `sales_invoice` VALUES ('1',1,'50004.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1.0000','50004.0000','5.0000','49999.0000','49999.0000','0.0000','5.0000','1.0000','1.0000','49999.0000','49999.0000','0.0000','4',NULL,'2',1,1,0,'2','3','INR','pay_LLNmVquABlCBSX','INR','INR','INR','000000001','2023-02-27 07:15:17','2023-02-27 07:15:25','0.0000','0.0000','0.0000','0.0000','5.0000','5.0000',NULL,NULL,NULL,NULL),('2',1,'599.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1.0000','599.0000','0.0000','599.0000','599.0000','0.0000','0.0000','2.0000','1.0000','599.0000','599.0000','0.0000','5',NULL,'3',1,1,0,'2',NULL,'INR','pay_LLO7IrIzq7rQXV','INR','INR','INR','000000002','2023-02-27 07:35:00','2023-02-27 07:35:06','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL),('3',1,'599.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1.0000','599.0000','0.0000','599.0000','599.0000','0.0000','0.0000','2.0000','1.0000','599.0000','599.0000','0.0000','8',NULL,'5',1,1,0,'2',NULL,'INR','pay_LLRL2cKf7GBeoy','INR','INR','INR','000000003','2023-02-27 10:44:03','2023-02-27 10:44:08','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoice_comment`
--

DROP TABLE IF EXISTS `sales_invoice_comment`;
CREATE TABLE `sales_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

--
-- Table structure for table `sales_invoice_grid`
--

DROP TABLE IF EXISTS `sales_invoice_grid`;
CREATE TABLE `sales_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_GRID_STATE` (`state`),
  KEY `SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_INVOICE_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  FULLTEXT KEY `FTI_95D9C924DD6A8734EB8B5D01D60F90DE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

--
-- Dumping data for table `sales_invoice_grid`
--

LOCK TABLES `sales_invoice_grid` WRITE;
/*!40000 ALTER TABLE `sales_invoice_grid` DISABLE KEYS */;
INSERT INTO `sales_invoice_grid` VALUES ('1','000000001','2',1,'Main Website\nMain Website Store\nDefault Store View','2','000000002','2023-02-27 07:11:35','Farah Khan','farah@gloify.com','1','razorpay','INR','INR','INR','INR','Farah Khan','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Flat Rate - Fixed','49999.0000','5.0000','50004.0000','2023-02-27 07:15:17','2023-02-27 07:15:17','50004.0000'),('2','000000002','2',1,'Main Website\nMain Website Store\nDefault Store View','3','000000003','2023-02-27 07:34:14','Farah Khan','farah@gloify.com','1','razorpay','INR','INR','INR','INR','Farah Khan','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','',NULL,'599.0000','0.0000','599.0000','2023-02-27 07:35:00','2023-02-27 07:35:00','599.0000'),('3','000000003','2',1,'Main Website\nMain Website Store\nDefault Store View','5','000000005','2023-02-27 10:43:48','Farah Khan','farah@gloify.com','1','razorpay','INR','INR','INR','INR','Farah Khan','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','',NULL,'599.0000','0.0000','599.0000','2023-02-27 10:44:03','2023-02-27 10:44:03','599.0000');
/*!40000 ALTER TABLE `sales_invoice_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoice_item`
--

DROP TABLE IF EXISTS `sales_invoice_item`;
CREATE TABLE `sales_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(20,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product ID',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item ID',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

--
-- Dumping data for table `sales_invoice_item`
--

LOCK TABLES `sales_invoice_item` WRITE;
/*!40000 ALTER TABLE `sales_invoice_item` DISABLE KEYS */;
INSERT INTO `sales_invoice_item` VALUES ('1','1','49999.0000','0.0000','49999.0000',NULL,'49999.0000',NULL,'49999.0000','0.0000','49999.0000','1.0000',NULL,'49999.0000','49999.0000','49999.0000','1','3',NULL,NULL,'NAK00001','Designer Light Blue Net Lehenga','0.0000','0.0000',NULL,'[]',NULL,'0.0000',NULL,'0.0000',NULL,NULL,NULL,'0.0000'),('2','2','599.0000','0.0000','599.0000',NULL,'599.0000',NULL,'599.0000','0.0000','599.0000','1.0000',NULL,'599.0000','599.0000','599.0000','5','4',NULL,NULL,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt','0.0000','0.0000',NULL,'[]',NULL,'0.0000',NULL,'0.0000',NULL,NULL,NULL,'0.0000'),('3','2','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0000',NULL,'0.0000',NULL,NULL,'4','5',NULL,NULL,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','3','599.0000','0.0000','599.0000',NULL,'599.0000',NULL,'599.0000','0.0000','599.0000','1.0000',NULL,'599.0000','599.0000','599.0000','5','7',NULL,NULL,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt','0.0000','0.0000',NULL,'[]',NULL,'0.0000',NULL,'0.0000',NULL,NULL,NULL,'0.0000'),('5','3','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0000',NULL,'0.0000',NULL,NULL,'4','8',NULL,NULL,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_invoice_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoiced_aggregated`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated`;
CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated_order`;
CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

--
-- Dumping data for table `sales_invoiced_aggregated_order`
--

LOCK TABLES `sales_invoiced_aggregated_order` WRITE;
/*!40000 ALTER TABLE `sales_invoiced_aggregated_order` DISABLE KEYS */;
INSERT INTO `sales_invoiced_aggregated_order` VALUES ('1','2023-02-26',1,'complete','2','2.0000','50603.0000','50603.0000','0.0000'),('2','2023-02-26',0,'complete','2','2.0000','50603.0000','50603.0000','0.0000');
/*!40000 ALTER TABLE `sales_invoiced_aggregated_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE `sales_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address ID',
  `customer_group_id` int(11) DEFAULT NULL,
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address ID',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote ID',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address ID',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(20,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(20,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(32) DEFAULT NULL COMMENT 'Increment ID',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer ID',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order ID',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(32) DEFAULT NULL COMMENT 'Original Increment ID',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child ID',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real ID',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent ID',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real ID',
  `remote_ip` varchar(45) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(120) DEFAULT NULL,
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(32) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message ID',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `rzp_order_id` varchar(55) DEFAULT NULL COMMENT 'RZP Order ID',
  `rzp_webhook_notified_at` bigint(20) DEFAULT NULL COMMENT 'RZP Webhook Notified Timestamp',
  `rzp_webhook_data` text COMMENT 'RZP Webhook Data',
  `rzp_update_order_cron_status` int(11) NOT NULL DEFAULT '0' COMMENT 'RZP Update Order Processing Cron # of times executed',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_STATUS` (`status`),
  KEY `SALES_ORDER_STATE` (`state`),
  KEY `SALES_ORDER_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `SALES_ORDER_QUOTE_ID` (`quote_id`),
  KEY `SALES_ORDER_UPDATED_AT` (`updated_at`),
  KEY `SALES_ORDER_SEND_EMAIL` (`send_email`),
  KEY `SALES_ORDER_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

--
-- Dumping data for table `sales_order`
--

LOCK TABLES `sales_order` WRITE;
/*!40000 ALTER TABLE `sales_order` DISABLE KEYS */;
INSERT INTO `sales_order` VALUES ('1','canceled','canceled','NAK32HG23UH','b5acf3766031d40c5579413eaad10c94','Flat Rate - Fixed',0,1,'1','-10799.4000','10799.4000',NULL,NULL,'25208.6000','10.0000','10.0000',NULL,NULL,'0.0000',NULL,'35998.0000','35998.0000',NULL,NULL,'0.0000','0.0000',NULL,NULL,'1.0000','1.0000','25208.6000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-10799.4000','10799.4000',NULL,NULL,'25208.6000','10.0000','10.0000',NULL,NULL,'0.0000',NULL,'0.0000','0.0000','35998.0000','35998.0000',NULL,NULL,'0.0000','0.0000',NULL,NULL,'25208.6000',NULL,NULL,NULL,NULL,'2.0000',NULL,NULL,NULL,0,1,'2','1',NULL,1,1,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'0.0000','35998.0000','25208.6000',NULL,'0.0000','35998.0000','25208.6000','0.0000',NULL,'000000001','1','INR','farah@gloify.com','Farah','Khan',NULL,NULL,NULL,NULL,'30% Discount on cart value over 5999',NULL,NULL,'INR',NULL,NULL,'INR',NULL,NULL,NULL,NULL,NULL,'::1','flatrate_flatrate','INR','Main Website\nMain Website Store\nDefault Store View',NULL,NULL,'2023-02-27 05:16:54','2023-02-27 07:23:09',2,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,'10.0000','10.0000','End of Month Sale 30% off',NULL,'0',NULL,NULL,NULL,'0'),('2','complete','complete',NULL,'57b4308a57f0d802d1eff9ce2ef8f0f1','Flat Rate - Fixed',0,1,'1','0.0000',NULL,'0.0000',NULL,'50004.0000','5.0000',NULL,'5.0000',NULL,'0.0000',NULL,'49999.0000',NULL,'49999.0000',NULL,'0.0000',NULL,'0.0000',NULL,'1.0000','1.0000',NULL,'50004.0000','0.0000',NULL,NULL,'50004.0000',NULL,NULL,'0.0000',NULL,'0.0000',NULL,'50004.0000','5.0000',NULL,'5.0000',NULL,'0.0000',NULL,'0.0000','0.0000','49999.0000',NULL,'49999.0000',NULL,'0.0000',NULL,'0.0000',NULL,NULL,'50004.0000',NULL,NULL,'50004.0000','1.0000',NULL,NULL,NULL,0,1,'4','1',NULL,1,1,NULL,NULL,NULL,'3','3',NULL,NULL,NULL,NULL,'0.0000','49999.0000','0.0000',NULL,'0.0000','49999.0000','0.0000','0.0000',NULL,'000000002',NULL,'INR','farah@gloify.com','Farah','Khan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR',NULL,NULL,'INR',NULL,NULL,NULL,NULL,NULL,'::1','flatrate_flatrate','INR','Main Website\nMain Website Store\nDefault Store View',NULL,NULL,'2023-02-27 07:11:35','2023-02-27 07:20:56',1,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'5.0000','5.0000',NULL,NULL,'0','order_LLNmByFVrYNscU',NULL,NULL,'0'),('3','complete','complete',NULL,'3792a1ce99a165181cdc347ac029f1a0',NULL,1,1,'1','0.0000',NULL,'0.0000',NULL,'599.0000','0.0000',NULL,'0.0000',NULL,'0.0000',NULL,'599.0000',NULL,'599.0000',NULL,'0.0000',NULL,'0.0000',NULL,'1.0000','1.0000',NULL,'599.0000','0.0000',NULL,NULL,'599.0000',NULL,NULL,'0.0000',NULL,'0.0000',NULL,'599.0000','0.0000',NULL,'0.0000',NULL,'0.0000',NULL,'0.0000','0.0000','599.0000',NULL,'599.0000',NULL,'0.0000',NULL,'0.0000',NULL,NULL,'599.0000',NULL,NULL,'599.0000','1.0000',NULL,NULL,NULL,0,1,'5','1',NULL,1,1,NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,'0.0000','599.0000','0.0000',NULL,'0.0000','599.0000','0.0000','0.0000',NULL,'000000003',NULL,'INR','farah@gloify.com','Farah','Khan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR',NULL,NULL,'INR',NULL,NULL,NULL,NULL,NULL,'::1',NULL,'INR','Main Website\nMain Website Store\nDefault Store View',NULL,NULL,'2023-02-27 07:34:14','2023-02-27 07:35:24',1,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000',NULL,NULL,'0','order_LLO6fUhqMpvtaj',NULL,NULL,'0'),('4','new','canceled',NULL,'6b89be04e0e21509bff518f184deeff3','Flat Rate - Fixed',0,1,'1','0.0000',NULL,NULL,NULL,'50004.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'49999.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'50004.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','49999.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0000',NULL,NULL,NULL,0,1,'7','1',NULL,NULL,0,NULL,NULL,NULL,'5','6',NULL,NULL,NULL,NULL,'0.0000','49999.0000','50004.0000',NULL,'0.0000','49999.0000','50004.0000','0.0000',NULL,'000000004',NULL,'INR','farah@gloify.com','Farah','Khan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR',NULL,NULL,'INR',NULL,NULL,NULL,NULL,NULL,'::1','flatrate_flatrate','INR','Main Website\nMain Website Store\nDefault Store View',NULL,NULL,'2023-02-27 10:42:49','2023-02-27 10:43:11',1,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,'5.0000','5.0000',NULL,NULL,'0','order_LLRJsySA8F3Jbg',NULL,NULL,'0'),('5','complete','complete',NULL,'42b5821bc92db8f3c472d16d67857f1e',NULL,1,1,'1','0.0000',NULL,'0.0000',NULL,'599.0000','0.0000',NULL,'0.0000',NULL,'0.0000',NULL,'599.0000',NULL,'599.0000',NULL,'0.0000',NULL,'0.0000',NULL,'1.0000','1.0000',NULL,'599.0000','0.0000',NULL,NULL,'599.0000',NULL,NULL,'0.0000',NULL,'0.0000',NULL,'599.0000','0.0000',NULL,'0.0000',NULL,'0.0000',NULL,'0.0000','0.0000','599.0000',NULL,'599.0000',NULL,'0.0000',NULL,'0.0000',NULL,NULL,'599.0000',NULL,NULL,'599.0000','1.0000',NULL,NULL,NULL,0,1,'8','1',NULL,1,1,NULL,NULL,NULL,'5',NULL,NULL,NULL,NULL,NULL,'0.0000','599.0000','0.0000',NULL,'0.0000','599.0000','0.0000','0.0000',NULL,'000000005',NULL,'INR','farah@gloify.com','Farah','Khan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR',NULL,NULL,'INR',NULL,NULL,NULL,NULL,NULL,'::1',NULL,'INR','Main Website\nMain Website Store\nDefault Store View',NULL,NULL,'2023-02-27 10:43:48','2023-02-27 10:44:13',1,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000',NULL,NULL,'0','order_LLRKtklrnZxriL',NULL,NULL,'0');
/*!40000 ALTER TABLE `sales_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_address`
--

DROP TABLE IF EXISTS `sales_order_address`;
CREATE TABLE `sales_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent ID',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address ID',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address ID',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer ID',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country ID',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat ID',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request ID',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

--
-- Dumping data for table `sales_order_address`
--

LOCK TABLES `sales_order_address` WRITE;
/*!40000 ALTER TABLE `sales_order_address` DISABLE KEYS */;
INSERT INTO `sales_order_address` VALUES ('1','1','1','4','549',NULL,NULL,'Karnataka','560076','Khan','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','farah@gloify.com','9901434817','IN','Farah','shipping',NULL,NULL,NULL,'Gloify',NULL,NULL,NULL,NULL,NULL),('2','1','1','7','549',NULL,NULL,'Karnataka','560076','Khan','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','farah@gloify.com','9901434817','IN','Farah','billing',NULL,NULL,NULL,'Gloify',NULL,NULL,NULL,NULL,NULL),('3','2','1','9','549',NULL,NULL,'Karnataka','560076','Khan','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','farah@gloify.com','9901434817','IN','Farah','shipping',NULL,NULL,NULL,'Gloify',NULL,NULL,NULL,NULL,NULL),('4','2','1','10','549',NULL,NULL,'Karnataka','560076','Khan','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','farah@gloify.com','9901434817','IN','Farah','billing',NULL,NULL,NULL,'Gloify',NULL,NULL,NULL,NULL,NULL),('5','3','1','13','549',NULL,NULL,'Karnataka','560076','Khan','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','farah@gloify.com','9901434817','IN','Farah','billing',NULL,NULL,NULL,'Gloify',NULL,NULL,NULL,NULL,NULL),('6','4','1','15','549',NULL,NULL,'Karnataka','560076','Khan','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','farah@gloify.com','9901434817','IN','Farah','shipping',NULL,NULL,NULL,'Gloify',NULL,NULL,NULL,NULL,NULL),('7','4','1','16','549',NULL,NULL,'Karnataka','560076','Khan','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','farah@gloify.com','9901434817','IN','Farah','billing',NULL,NULL,NULL,'Gloify',NULL,NULL,NULL,NULL,NULL),('8','5','1','19','549',NULL,NULL,'Karnataka','560076','Khan','265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout','Bangalore','farah@gloify.com','9901434817','IN','Farah','billing',NULL,NULL,NULL,'Gloify',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_aggregated_created`
--

DROP TABLE IF EXISTS `sales_order_aggregated_created`;
CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

--
-- Dumping data for table `sales_order_aggregated_created`
--

LOCK TABLES `sales_order_aggregated_created` WRITE;
/*!40000 ALTER TABLE `sales_order_aggregated_created` DISABLE KEYS */;
INSERT INTO `sales_order_aggregated_created` VALUES ('1','2023-02-26',1,'canceled','1','2.0000','0.0000','0.0000','0.0000','0.0000','0.0000','25208.6000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),('2','2023-02-26',1,'complete','2','2.0000','2.0000','50603.0000','50598.0000','50598.0000','50603.0000','0.0000','50603.0000','0.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000'),('4','2023-02-26',0,'canceled','1','2.0000','0.0000','0.0000','0.0000','0.0000','0.0000','25208.6000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),('5','2023-02-26',0,'complete','2','2.0000','2.0000','50603.0000','50598.0000','50598.0000','50603.0000','0.0000','50603.0000','0.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000');
/*!40000 ALTER TABLE `sales_order_aggregated_created` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_aggregated_updated`
--

DROP TABLE IF EXISTS `sales_order_aggregated_updated`;
CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

--
-- Dumping data for table `sales_order_aggregated_updated`
--

LOCK TABLES `sales_order_aggregated_updated` WRITE;
/*!40000 ALTER TABLE `sales_order_aggregated_updated` DISABLE KEYS */;
INSERT INTO `sales_order_aggregated_updated` VALUES ('1','2023-02-26',1,'canceled','1','2.0000','0.0000','0.0000','0.0000','0.0000','0.0000','25208.6000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),('2','2023-02-26',1,'complete','2','2.0000','2.0000','50603.0000','50598.0000','50598.0000','50603.0000','0.0000','50603.0000','0.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000'),('4','2023-02-26',0,'canceled','1','2.0000','0.0000','0.0000','0.0000','0.0000','0.0000','25208.6000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),('5','2023-02-26',0,'complete','2','2.0000','2.0000','50603.0000','50598.0000','50598.0000','50603.0000','0.0000','50603.0000','0.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000');
/*!40000 ALTER TABLE `sales_order_aggregated_updated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_grid`
--

DROP TABLE IF EXISTS `sales_order_grid`;
CREATE TABLE `sales_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Refunded',
  `signifyd_guarantee_status` varchar(32) DEFAULT NULL COMMENT 'Signifyd Guarantee Disposition Status',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_GRID_STATUS` (`status`),
  KEY `SALES_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_GRID_UPDATED_AT` (`updated_at`),
  FULLTEXT KEY `FTI_65B9E9925EC58F0C7C2E2F6379C233E7` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- Dumping data for table `sales_order_grid`
--

LOCK TABLES `sales_order_grid` WRITE;
/*!40000 ALTER TABLE `sales_order_grid` DISABLE KEYS */;
INSERT INTO `sales_order_grid` VALUES ('1','canceled',1,'Main Website\nMain Website Store\nDefault Store View','1','25208.6000',NULL,'25208.6000',NULL,'000000001','INR','INR','Farah Khan','Farah Khan','2023-02-27 05:16:54','2023-02-27 07:23:09','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Flat Rate - Fixed','farah@gloify.com','1','35998.0000','10.0000','Farah Khan','checkmo',NULL,NULL),('2','complete',1,'Main Website\nMain Website Store\nDefault Store View','1','50004.0000','50004.0000','50004.0000','50004.0000','000000002','INR','INR','Farah Khan','Farah Khan','2023-02-27 07:11:35','2023-02-27 07:20:56','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Flat Rate - Fixed','farah@gloify.com','1','49999.0000','5.0000','Farah Khan','razorpay',NULL,NULL),('3','complete',1,'Main Website\nMain Website Store\nDefault Store View','1','599.0000','599.0000','599.0000','599.0000','000000003','INR','INR','','Farah Khan','2023-02-27 07:34:14','2023-02-27 07:35:00','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','',NULL,'farah@gloify.com','1','599.0000','0.0000','Farah Khan','razorpay',NULL,NULL),('4','canceled',1,'Main Website\nMain Website Store\nDefault Store View','1','50004.0000',NULL,'50004.0000',NULL,'000000004','INR','INR','Farah Khan','Farah Khan','2023-02-27 10:42:49','2023-02-27 10:43:11','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Flat Rate - Fixed','farah@gloify.com','1','49999.0000','5.0000','Farah Khan','razorpay',NULL,NULL),('5','complete',1,'Main Website\nMain Website Store\nDefault Store View','1','599.0000','599.0000','599.0000','599.0000','000000005','INR','INR','','Farah Khan','2023-02-27 10:43:48','2023-02-27 10:44:03','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','',NULL,'farah@gloify.com','1','599.0000','0.0000','Farah Khan','razorpay',NULL,NULL);
/*!40000 ALTER TABLE `sales_order_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_item`
--

DROP TABLE IF EXISTS `sales_order_item`;
CREATE TABLE `sales_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order ID',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item ID',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product ID',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(20,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item ID',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message ID',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `SALES_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

--
-- Dumping data for table `sales_order_item`
--

LOCK TABLES `sales_order_item` WRITE;
/*!40000 ALTER TABLE `sales_order_item` DISABLE KEYS */;
INSERT INTO `sales_order_item` VALUES ('1','1',NULL,'2',1,'2023-02-27 05:16:54','2023-02-27 07:23:09','7','simple','{\"info_buyRequest\":{\"qty\":\"1.0000\",\"options\":{\"3\":\"12\"}},\"options\":[{\"label\":\"Size\",\"value\":\"M\",\"print_value\":\"M\",\"option_id\":\"3\",\"option_type\":\"drop_down\",\"option_value\":\"12\",\"custom_view\":false}]}',NULL,0,'NAK00004','Floral Pattern Lehenga Choli',NULL,'1',NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','1.0000',NULL,'29999.0000','29999.0000','29999.0000','29999.0000','0.0000','0.0000','0.0000','0.0000','0.0000','30.0000','8999.7000','8999.7000','0.0000','0.0000','0.0000','0.0000','29999.0000','29999.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'29999.0000','29999.0000','29999.0000','29999.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2','1',NULL,'4',1,'2023-02-27 05:16:54','2023-02-27 07:23:09','6','simple','{\"info_buyRequest\":{\"qty\":\"1.0000\",\"options\":{\"2\":\"9\"}},\"options\":[{\"label\":\"Size\",\"value\":\"XL\",\"print_value\":\"XL\",\"option_id\":\"2\",\"option_type\":\"drop_down\",\"option_value\":\"9\",\"custom_view\":false}]}',NULL,0,'NAK00003','Floral Kurta in Maroon & Black',NULL,'1',NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','1.0000',NULL,'5999.0000','5999.0000','5999.0000','5999.0000','0.0000','0.0000','0.0000','0.0000','0.0000','30.0000','1799.7000','1799.7000','0.0000','0.0000','0.0000','0.0000','5999.0000','5999.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'5999.0000','5999.0000','5999.0000','5999.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','2',NULL,'5',1,'2023-02-27 07:11:35','2023-02-27 07:20:56','1','simple','{\"info_buyRequest\":{\"qty\":\"1.0000\",\"options\":{\"4\":\"17\"}},\"options\":[{\"label\":\"Size\",\"value\":\"M\",\"print_value\":\"M\",\"option_id\":\"4\",\"option_type\":\"drop_down\",\"option_value\":\"17\",\"custom_view\":false}]}',NULL,0,'NAK00001','Designer Light Blue Net Lehenga',NULL,NULL,NULL,0,0,NULL,'0.0000','1.0000','1.0000','0.0000','1.0000',NULL,'49999.0000','49999.0000','49999.0000','49999.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','49999.0000','49999.0000','49999.0000','49999.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'49999.0000','49999.0000','49999.0000','49999.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','3',NULL,'6',1,'2023-02-27 07:34:14','2023-02-27 07:35:00','5','configurable','{\"info_buyRequest\":{\"qty\":\"1.0000\",\"super_attribute\":{\"93\":\"6\"},\"options\":{\"1\":\"2\"}},\"options\":[{\"label\":\"Size\",\"value\":\"M\",\"print_value\":\"M\",\"option_id\":\"1\",\"option_type\":\"drop_down\",\"option_value\":\"2\",\"custom_view\":false}],\"attributes_info\":[{\"label\":\"Color\",\"value\":\"Navy blue\",\"option_id\":93,\"option_value\":\"6\"}],\"simple_name\":\"Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue\",\"simple_sku\":\"NAK00002-Navy blue\",\"product_calculations\":1,\"shipment_type\":0}',NULL,1,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt',NULL,NULL,NULL,0,0,NULL,'0.0000','1.0000','1.0000','0.0000','0.0000',NULL,'599.0000','599.0000','599.0000','599.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','599.0000','599.0000','599.0000','599.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'599.0000','599.0000','599.0000','599.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',0,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','3','4','7',1,'2023-02-27 07:34:14','2023-02-27 07:35:00','4','virtual','{\"info_buyRequest\":{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9tZW4tcmVndWxhci1maXQtc29saWQtYnV0dG9uLWRvd24tY29sbGFyLWZvcm1hbC1zaGlydC5odG1s\",\"product\":\"5\",\"selected_configurable_option\":\"4\",\"related_product\":\"\",\"item\":\"5\",\"super_attribute\":{\"93\":\"6\"},\"options\":{\"1\":\"2\"},\"qty\":\"1\"}}',NULL,1,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue',NULL,NULL,NULL,0,0,NULL,'0.0000','1.0000','1.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','4',NULL,'8',1,'2023-02-27 10:42:50','2023-02-27 10:42:51','1','simple','{\"info_buyRequest\":{\"qty\":\"1.0000\",\"options\":{\"4\":\"17\"}},\"options\":[{\"label\":\"Size\",\"value\":\"M\",\"print_value\":\"M\",\"option_id\":\"4\",\"option_type\":\"drop_down\",\"option_value\":\"17\",\"custom_view\":false}]}',NULL,0,'NAK00001','Designer Light Blue Net Lehenga',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','0.0000',NULL,'49999.0000','49999.0000','49999.0000','49999.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','49999.0000','49999.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'49999.0000','49999.0000','49999.0000','49999.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','5',NULL,'9',1,'2023-02-27 10:43:48','2023-02-27 10:44:03','5','configurable','{\"info_buyRequest\":{\"qty\":\"1.0000\",\"super_attribute\":{\"93\":\"6\"},\"options\":{\"1\":\"3\"}},\"options\":[{\"label\":\"Size\",\"value\":\"L\",\"print_value\":\"L\",\"option_id\":\"1\",\"option_type\":\"drop_down\",\"option_value\":\"3\",\"custom_view\":false}],\"attributes_info\":[{\"label\":\"Color\",\"value\":\"Navy blue\",\"option_id\":93,\"option_value\":\"6\"}],\"simple_name\":\"Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue\",\"simple_sku\":\"NAK00002-Navy blue\",\"product_calculations\":1,\"shipment_type\":0}',NULL,1,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt',NULL,NULL,NULL,0,0,NULL,'0.0000','1.0000','1.0000','0.0000','0.0000',NULL,'599.0000','599.0000','599.0000','599.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','599.0000','599.0000','599.0000','599.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'599.0000','599.0000','599.0000','599.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',0,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','5','7','10',1,'2023-02-27 10:43:48','2023-02-27 10:44:03','4','virtual','{\"info_buyRequest\":{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9tZW4tcmVndWxhci1maXQtc29saWQtYnV0dG9uLWRvd24tY29sbGFyLWZvcm1hbC1zaGlydC5odG1s\",\"product\":\"5\",\"selected_configurable_option\":\"4\",\"related_product\":\"\",\"item\":\"5\",\"super_attribute\":{\"93\":\"6\"},\"options\":{\"1\":\"3\"},\"qty\":\"1\"}}',NULL,1,'NAK00002-Navy blue','Men Regular Fit Solid Button Down Collar Formal Shirt-Navy blue',NULL,NULL,NULL,0,0,NULL,'0.0000','1.0000','1.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_payment`
--

DROP TABLE IF EXISTS `sales_order_payment`;
CREATE TABLE `sales_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `base_shipping_captured` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(20,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(20,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(20,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment ID',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans ID',
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(128) DEFAULT NULL,
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans ID',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

--
-- Dumping data for table `sales_order_payment`
--

LOCK TABLES `sales_order_payment` WRITE;
/*!40000 ALTER TABLE `sales_order_payment` DISABLE KEYS */;
INSERT INTO `sales_order_payment` VALUES ('1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.0000','10.0000',NULL,NULL,'25208.6000',NULL,NULL,NULL,'25208.6000',NULL,NULL,NULL,NULL,'0',NULL,'checkmo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"method_title\":\"Check \\/ Money order\"}'),('2','2','5.0000','5.0000',NULL,'50004.0000',NULL,'50004.0000',NULL,NULL,'5.0000','5.0000','50004.0000','50004.0000','50004.0000',NULL,NULL,NULL,'50004.0000',NULL,NULL,NULL,NULL,'0',NULL,'razorpay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,'pay_LLNmVquABlCBSX',NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"method_title\":\"Razorpay\"}'),('3','3','0.0000','0.0000',NULL,'599.0000',NULL,'599.0000',NULL,NULL,'0.0000','0.0000','599.0000','599.0000','599.0000',NULL,NULL,NULL,'599.0000',NULL,NULL,NULL,NULL,'0',NULL,'razorpay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,'pay_LLO7IrIzq7rQXV',NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"method_title\":\"Razorpay\"}'),('4','4',NULL,NULL,NULL,NULL,NULL,'50004.0000',NULL,NULL,'5.0000','5.0000',NULL,'50004.0000','50004.0000',NULL,NULL,NULL,'50004.0000',NULL,NULL,NULL,NULL,'0',NULL,'razorpay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"method_title\":\"Razorpay\"}'),('5','5','0.0000','0.0000',NULL,'599.0000',NULL,'599.0000',NULL,NULL,'0.0000','0.0000','599.0000','599.0000','599.0000',NULL,NULL,NULL,'599.0000',NULL,NULL,NULL,NULL,'0',NULL,'razorpay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,'pay_LLRL2cKf7GBeoy',NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"method_title\":\"Razorpay\"}');
/*!40000 ALTER TABLE `sales_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status`
--

DROP TABLE IF EXISTS `sales_order_status`;
CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status`
--

LOCK TABLES `sales_order_status` WRITE;
/*!40000 ALTER TABLE `sales_order_status` DISABLE KEYS */;
INSERT INTO `sales_order_status` VALUES ('canceled','Canceled'),('closed','Closed'),('complete','Complete'),('fraud','Suspected Fraud'),('holded','On Hold'),('payment_review','Payment Review'),('paypal_canceled_reversal','PayPal Canceled Reversal'),('paypal_reversed','PayPal Reversed'),('pending','Pending'),('pending_payment','Pending Payment'),('pending_paypal','Pending PayPal'),('processing','Processing');
/*!40000 ALTER TABLE `sales_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status_history`
--

DROP TABLE IF EXISTS `sales_order_status_history`;
CREATE TABLE `sales_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

--
-- Dumping data for table `sales_order_status_history`
--

LOCK TABLES `sales_order_status_history` WRITE;
/*!40000 ALTER TABLE `sales_order_status_history` DISABLE KEYS */;
INSERT INTO `sales_order_status_history` VALUES ('1','1','1',1,NULL,'fraud','2023-02-27 05:20:29','order'),('2','1','1',1,'Verified shipping address','processing','2023-02-27 05:25:41','order'),('3','2',NULL,0,'Authorized amount of ₹50,004.00.','processing','2023-02-27 07:11:35','order'),('4','2',NULL,0,'Captured amount of ₹50,004.00 online. Transaction ID: \"pay_LLNmVquABlCBSX\"','processing','2023-02-27 07:15:17','order'),('5','2','1',0,'Notified customer about invoice #1.','processing','2023-02-27 07:15:25','invoice'),('6','3',NULL,0,'Authorized amount of ₹599.00.','processing','2023-02-27 07:34:14','order'),('7','3',NULL,0,'Captured amount of ₹599.00 online. Transaction ID: \"pay_LLO7IrIzq7rQXV\"','processing','2023-02-27 07:34:59','order'),('8','3','1',0,'Notified customer about invoice #2.','processing','2023-02-27 07:35:06','invoice'),('9','4',NULL,0,'Authorized amount of ₹50,004.00.','processing','2023-02-27 10:42:50','order'),('10','5',NULL,0,'Authorized amount of ₹599.00.','processing','2023-02-27 10:43:48','order'),('11','5',NULL,0,'Captured amount of ₹599.00 online. Transaction ID: \"pay_LLRL2cKf7GBeoy\"','processing','2023-02-27 10:44:03','order'),('12','5','1',0,'Notified customer about invoice #3.','processing','2023-02-27 10:44:08','invoice');
/*!40000 ALTER TABLE `sales_order_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status_label`
--

DROP TABLE IF EXISTS `sales_order_status_label`;
CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

--
-- Table structure for table `sales_order_status_state`
--

DROP TABLE IF EXISTS `sales_order_status_state`;
CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visible on front',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status_state`
--

LOCK TABLES `sales_order_status_state` WRITE;
/*!40000 ALTER TABLE `sales_order_status_state` DISABLE KEYS */;
INSERT INTO `sales_order_status_state` VALUES ('canceled','canceled',1,1),('closed','closed',1,1),('complete','complete',1,1),('fraud','payment_review',0,1),('fraud','processing',0,1),('holded','holded',1,1),('payment_review','payment_review',1,1),('pending','new',1,1),('pending_payment','pending_payment',1,0),('processing','processing',1,1);
/*!40000 ALTER TABLE `sales_order_status_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_tax`
--

DROP TABLE IF EXISTS `sales_order_tax`;
CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax ID',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Real Amount',
  PRIMARY KEY (`tax_id`),
  KEY `SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

--
-- Table structure for table `sales_order_tax_item`
--

DROP TABLE IF EXISTS `sales_order_tax_item`;
CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item ID',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax ID',
  `item_id` int(10) unsigned DEFAULT NULL COMMENT 'Item ID',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(20,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(20,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(20,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(20,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` (`associated_item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

--
-- Table structure for table `sales_payment_transaction`
--

DROP TABLE IF EXISTS `sales_payment_transaction`;
CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction ID',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order ID',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment ID',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn ID',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn ID',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

--
-- Dumping data for table `sales_payment_transaction`
--

LOCK TABLES `sales_payment_transaction` WRITE;
/*!40000 ALTER TABLE `sales_payment_transaction` DISABLE KEYS */;
INSERT INTO `sales_payment_transaction` VALUES ('1',NULL,'2','2','pay_LLNmVquABlCBSX','pay_LLNmVquABlCBSX','authorization',1,'null','2023-02-27 07:15:17'),('2',NULL,'3','3','pay_LLO7IrIzq7rQXV','pay_LLO7IrIzq7rQXV','authorization',1,'null','2023-02-27 07:34:59'),('3',NULL,'5','5','pay_LLRL2cKf7GBeoy','pay_LLRL2cKf7GBeoy','authorization',1,'null','2023-02-27 10:44:02');
/*!40000 ALTER TABLE `sales_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_refunded_aggregated`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated`;
CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(20,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

--
-- Table structure for table `sales_refunded_aggregated_order`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated_order`;
CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(20,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

--
-- Table structure for table `sales_sequence_meta`
--

DROP TABLE IF EXISTS `sales_sequence_meta`;
CREATE TABLE `sales_sequence_meta` (
  `meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `sequence_table` varchar(64) NOT NULL COMMENT 'table for sequence',
  PRIMARY KEY (`meta_id`),
  UNIQUE KEY `SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='sales_sequence_meta';

--
-- Dumping data for table `sales_sequence_meta`
--

LOCK TABLES `sales_sequence_meta` WRITE;
/*!40000 ALTER TABLE `sales_sequence_meta` DISABLE KEYS */;
INSERT INTO `sales_sequence_meta` VALUES ('1','order',0,'sequence_order_0'),('2','invoice',0,'sequence_invoice_0'),('3','creditmemo',0,'sequence_creditmemo_0'),('4','shipment',0,'sequence_shipment_0'),('5','order',1,'sequence_order_1'),('6','invoice',1,'sequence_invoice_1'),('7','creditmemo',1,'sequence_creditmemo_1'),('8','shipment',1,'sequence_shipment_1');
/*!40000 ALTER TABLE `sales_sequence_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_sequence_profile`
--

DROP TABLE IF EXISTS `sales_sequence_profile`;
CREATE TABLE `sales_sequence_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `meta_id` int(10) unsigned NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int(10) unsigned NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int(10) unsigned NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='sales_sequence_profile';

--
-- Dumping data for table `sales_sequence_profile`
--

LOCK TABLES `sales_sequence_profile` WRITE;
/*!40000 ALTER TABLE `sales_sequence_profile` DISABLE KEYS */;
INSERT INTO `sales_sequence_profile` VALUES ('1','1',NULL,NULL,'1','1','4294967295','4294966295',1),('2','2',NULL,NULL,'1','1','4294967295','4294966295',1),('3','3',NULL,NULL,'1','1','4294967295','4294966295',1),('4','4',NULL,NULL,'1','1','4294967295','4294966295',1),('5','5',NULL,NULL,'1','1','4294967295','4294966295',1),('6','6',NULL,NULL,'1','1','4294967295','4294966295',1),('7','7',NULL,NULL,'1','1','4294967295','4294966295',1),('8','8',NULL,NULL,'1','1','4294967295','4294966295',1);
/*!40000 ALTER TABLE `sales_sequence_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment`
--

DROP TABLE IF EXISTS `sales_shipment`;
CREATE TABLE `sales_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer ID',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address ID',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address ID',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  KEY `SALES_SHIPMENT_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

--
-- Dumping data for table `sales_shipment`
--

LOCK TABLES `sales_shipment` WRITE;
/*!40000 ALTER TABLE `sales_shipment` DISABLE KEYS */;
INSERT INTO `sales_shipment` VALUES ('1',1,NULL,'2.0000',1,1,'1','1','1','2',NULL,'000000001','2023-02-27 05:20:08','2023-02-27 05:20:10','[]',NULL,'iiii',0),('2',1,NULL,'1.0000',1,1,'2','1','3','4',NULL,'000000002','2023-02-27 07:20:56','2023-02-27 07:21:02','[]',NULL,'Item has been shipped to Bengaluru',1);
/*!40000 ALTER TABLE `sales_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment_comment`
--

DROP TABLE IF EXISTS `sales_shipment_comment`;
CREATE TABLE `sales_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

--
-- Dumping data for table `sales_shipment_comment`
--

LOCK TABLES `sales_shipment_comment` WRITE;
/*!40000 ALTER TABLE `sales_shipment_comment` DISABLE KEYS */;
INSERT INTO `sales_shipment_comment` VALUES ('1','1','0',0,'iiii','2023-02-27 05:20:08'),('2','2','1',0,'Item has been shipped to Bengaluru','2023-02-27 07:20:56');
/*!40000 ALTER TABLE `sales_shipment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment_grid`
--

DROP TABLE IF EXISTS `sales_shipment_grid`;
CREATE TABLE `sales_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment ID',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order Increment ID',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`),
  FULLTEXT KEY `FTI_086B40C8955F167B8EA76653437879B4` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

--
-- Dumping data for table `sales_shipment_grid`
--

LOCK TABLES `sales_shipment_grid` WRITE;
/*!40000 ALTER TABLE `sales_shipment_grid` DISABLE KEYS */;
INSERT INTO `sales_shipment_grid` VALUES ('1','000000001',1,'000000001','1','2023-02-27 05:16:54','Farah Khan','2.0000',NULL,'processing','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Farah Khan','Farah Khan','farah@gloify.com','1','checkmo','Flat Rate - Fixed','2023-02-27 05:20:08','2023-02-27 05:20:08'),('2','000000002',1,'000000002','2','2023-02-27 07:11:35','Farah Khan','1.0000',NULL,'complete','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Gloify,265, 2nd Floor, 6th Main, 4th Cross Road\nStage 2, BTM Layout,Bangalore,Karnataka,560076','Farah Khan','Farah Khan','farah@gloify.com','1','razorpay','Flat Rate - Fixed','2023-02-27 07:20:56','2023-02-27 07:21:02');
/*!40000 ALTER TABLE `sales_shipment_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment_item`
--

DROP TABLE IF EXISTS `sales_shipment_item`;
CREATE TABLE `sales_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `row_total` decimal(20,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(20,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product ID',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item ID',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

--
-- Dumping data for table `sales_shipment_item`
--

LOCK TABLES `sales_shipment_item` WRITE;
/*!40000 ALTER TABLE `sales_shipment_item` DISABLE KEYS */;
INSERT INTO `sales_shipment_item` VALUES ('1','1',NULL,'29999.0000',NULL,'1.0000','7','1',NULL,NULL,'Floral Pattern Lehenga Choli','NAK00004'),('2','1',NULL,'5999.0000',NULL,'1.0000','6','2',NULL,NULL,'Floral Kurta in Maroon & Black','NAK00003'),('3','2',NULL,'49999.0000',NULL,'1.0000','1','3',NULL,NULL,'Designer Light Blue Net Lehenga','NAK00001');
/*!40000 ALTER TABLE `sales_shipment_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment_track`
--

DROP TABLE IF EXISTS `sales_shipment_track`;
CREATE TABLE `sales_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order ID',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

--
-- Table structure for table `sales_shipping_aggregated`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated`;
CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

--
-- Table structure for table `sales_shipping_aggregated_order`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated_order`;
CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

--
-- Dumping data for table `sales_shipping_aggregated_order`
--

LOCK TABLES `sales_shipping_aggregated_order` WRITE;
/*!40000 ALTER TABLE `sales_shipping_aggregated_order` DISABLE KEYS */;
INSERT INTO `sales_shipping_aggregated_order` VALUES ('1','2023-02-26',1,'canceled','Flat Rate - Fixed','1','0.0000',NULL),('2','2023-02-26',1,'complete','Flat Rate - Fixed','1','5.0000','5.0000'),('4','2023-02-26',0,'canceled','Flat Rate - Fixed','1','0.0000',NULL),('5','2023-02-26',0,'complete','Flat Rate - Fixed','1','5.0000','5.0000');
/*!40000 ALTER TABLE `sales_shipping_aggregated_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrule`
--

DROP TABLE IF EXISTS `salesrule`;
CREATE TABLE `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  PRIMARY KEY (`rule_id`),
  KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Salesrule';

--
-- Dumping data for table `salesrule`
--

LOCK TABLES `salesrule` WRITE;
/*!40000 ALTER TABLE `salesrule` DISABLE KEYS */;
INSERT INTO `salesrule` VALUES ('1','End of Month Sale 30% off','30% Discount on cart value over 5999','2023-02-25','2023-02-28','1',1,'{\"type\":\"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Combine\",\"attribute\":null,\"operator\":null,\"value\":\"1\",\"is_value_processed\":null,\"aggregator\":\"all\",\"conditions\":[{\"type\":\"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Address\",\"attribute\":\"base_subtotal\",\"operator\":\">\",\"value\":\"5999\",\"is_value_processed\":false}]}','{\"type\":\"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product\\\\Combine\",\"attribute\":null,\"operator\":null,\"value\":\"1\",\"is_value_processed\":null,\"aggregator\":\"all\"}',0,1,NULL,'0','by_percent','30.0000',NULL,'0',0,'0',1,2,0,'0',0);
/*!40000 ALTER TABLE `salesrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrule_coupon`
--

DROP TABLE IF EXISTS `salesrule_coupon`;
CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon ID',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` datetime DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

--
-- Dumping data for table `salesrule_coupon`
--

LOCK TABLES `salesrule_coupon` WRITE;
/*!40000 ALTER TABLE `salesrule_coupon` DISABLE KEYS */;
INSERT INTO `salesrule_coupon` VALUES ('1','1','NAK32HG23UH',NULL,'1','0',NULL,1,NULL,0);
/*!40000 ALTER TABLE `salesrule_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrule_coupon_aggregated`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated`;
CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

--
-- Dumping data for table `salesrule_coupon_aggregated`
--

LOCK TABLES `salesrule_coupon_aggregated` WRITE;
/*!40000 ALTER TABLE `salesrule_coupon_aggregated` DISABLE KEYS */;
INSERT INTO `salesrule_coupon_aggregated` VALUES ('1','2023-02-26',1,'canceled','NAK32HG23UH','1','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','End of Month Sale 30% off'),('2','2023-02-26',0,'canceled','NAK32HG23UH','1','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','End of Month Sale 30% off');
/*!40000 ALTER TABLE `salesrule_coupon_aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrule_coupon_aggregated_order`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_order`;
CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

--
-- Table structure for table `salesrule_coupon_aggregated_updated`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_updated`;
CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';

--
-- Dumping data for table `salesrule_coupon_aggregated_updated`
--

LOCK TABLES `salesrule_coupon_aggregated_updated` WRITE;
/*!40000 ALTER TABLE `salesrule_coupon_aggregated_updated` DISABLE KEYS */;
INSERT INTO `salesrule_coupon_aggregated_updated` VALUES ('1','2023-02-26',1,'canceled','NAK32HG23UH','1','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','End of Month Sale 30% off'),('2','2023-02-26',0,'canceled','NAK32HG23UH','1','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','End of Month Sale 30% off');
/*!40000 ALTER TABLE `salesrule_coupon_aggregated_updated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrule_coupon_usage`
--

DROP TABLE IF EXISTS `salesrule_coupon_usage`;
CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon ID',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer ID',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

--
-- Dumping data for table `salesrule_coupon_usage`
--

LOCK TABLES `salesrule_coupon_usage` WRITE;
/*!40000 ALTER TABLE `salesrule_coupon_usage` DISABLE KEYS */;
INSERT INTO `salesrule_coupon_usage` VALUES ('1','1','0');
/*!40000 ALTER TABLE `salesrule_coupon_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrule_customer`
--

DROP TABLE IF EXISTS `salesrule_customer`;
CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer ID',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

--
-- Dumping data for table `salesrule_customer`
--

LOCK TABLES `salesrule_customer` WRITE;
/*!40000 ALTER TABLE `salesrule_customer` DISABLE KEYS */;
INSERT INTO `salesrule_customer` VALUES ('1','1','1',0);
/*!40000 ALTER TABLE `salesrule_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrule_customer_group`
--

DROP TABLE IF EXISTS `salesrule_customer_group`;
CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

--
-- Dumping data for table `salesrule_customer_group`
--

LOCK TABLES `salesrule_customer_group` WRITE;
/*!40000 ALTER TABLE `salesrule_customer_group` DISABLE KEYS */;
INSERT INTO `salesrule_customer_group` VALUES ('1','1');
/*!40000 ALTER TABLE `salesrule_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrule_label`
--

DROP TABLE IF EXISTS `salesrule_label`;
CREATE TABLE `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label ID',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `SALESRULE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

--
-- Table structure for table `salesrule_product_attribute`
--

DROP TABLE IF EXISTS `salesrule_product_attribute`;
CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

--
-- Table structure for table `salesrule_website`
--

DROP TABLE IF EXISTS `salesrule_website`;
CREATE TABLE `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

--
-- Dumping data for table `salesrule_website`
--

LOCK TABLES `salesrule_website` WRITE;
/*!40000 ALTER TABLE `salesrule_website` DISABLE KEYS */;
INSERT INTO `salesrule_website` VALUES ('1',1);
/*!40000 ALTER TABLE `salesrule_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_query`
--

DROP TABLE IF EXISTS `search_query`;
CREATE TABLE `search_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  UNIQUE KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `SEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `SEARCH_QUERY_IS_PROCESSED` (`is_processed`),
  KEY `SEARCH_QUERY_STORE_ID_POPULARITY` (`store_id`,`popularity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search query table';

--
-- Table structure for table `search_synonyms`
--

DROP TABLE IF EXISTS `search_synonyms`;
CREATE TABLE `search_synonyms` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Synonyms Group ID',
  `synonyms` text NOT NULL COMMENT 'list of synonyms making up this group',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID - identifies the store view these synonyms belong to',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID - identifies the website ID these synonyms belong to',
  PRIMARY KEY (`group_id`),
  KEY `SEARCH_SYNONYMS_STORE_ID` (`store_id`),
  KEY `SEARCH_SYNONYMS_WEBSITE_ID` (`website_id`),
  FULLTEXT KEY `SEARCH_SYNONYMS_SYNONYMS` (`synonyms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table storing various synonyms groups';

--
-- Table structure for table `sendfriend_log`
--

DROP TABLE IF EXISTS `sendfriend_log`;
CREATE TABLE `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `SENDFRIEND_LOG_IP` (`ip`),
  KEY `SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

--
-- Table structure for table `sequence_creditmemo_0`
--

DROP TABLE IF EXISTS `sequence_creditmemo_0`;
CREATE TABLE `sequence_creditmemo_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_creditmemo_1`
--

DROP TABLE IF EXISTS `sequence_creditmemo_1`;
CREATE TABLE `sequence_creditmemo_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_0`
--

DROP TABLE IF EXISTS `sequence_invoice_0`;
CREATE TABLE `sequence_invoice_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_1`
--

DROP TABLE IF EXISTS `sequence_invoice_1`;
CREATE TABLE `sequence_invoice_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sequence_invoice_1`
--

LOCK TABLES `sequence_invoice_1` WRITE;
/*!40000 ALTER TABLE `sequence_invoice_1` DISABLE KEYS */;
INSERT INTO `sequence_invoice_1` VALUES ('1'),('2'),('3');
/*!40000 ALTER TABLE `sequence_invoice_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_order_0`
--

DROP TABLE IF EXISTS `sequence_order_0`;
CREATE TABLE `sequence_order_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_order_1`
--

DROP TABLE IF EXISTS `sequence_order_1`;
CREATE TABLE `sequence_order_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sequence_order_1`
--

LOCK TABLES `sequence_order_1` WRITE;
/*!40000 ALTER TABLE `sequence_order_1` DISABLE KEYS */;
INSERT INTO `sequence_order_1` VALUES ('1'),('2'),('3'),('4'),('5');
/*!40000 ALTER TABLE `sequence_order_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_shipment_0`
--

DROP TABLE IF EXISTS `sequence_shipment_0`;
CREATE TABLE `sequence_shipment_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_shipment_1`
--

DROP TABLE IF EXISTS `sequence_shipment_1`;
CREATE TABLE `sequence_shipment_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sequence_shipment_1`
--

LOCK TABLES `sequence_shipment_1` WRITE;
/*!40000 ALTER TABLE `sequence_shipment_1` DISABLE KEYS */;
INSERT INTO `sequence_shipment_1` VALUES ('1'),('2');
/*!40000 ALTER TABLE `sequence_shipment_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

--
-- Table structure for table `setup_module`
--

DROP TABLE IF EXISTS `setup_module`;
CREATE TABLE `setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module versions registry';

--
-- Dumping data for table `setup_module`
--

LOCK TABLES `setup_module` WRITE;
/*!40000 ALTER TABLE `setup_module` DISABLE KEYS */;
INSERT INTO `setup_module` VALUES ('Hidden_Base','2.0.0','2.0.0'),('Hidden_ShopkartLite','1.0.2','1.0.2'),('Magento_AuthorizenetAcceptjs','1.0.0','1.0.0'),('Razorpay_Magento','4.0.2','4.0.2');
/*!40000 ALTER TABLE `setup_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_tablerate`
--

DROP TABLE IF EXISTS `shipping_tablerate`;
CREATE TABLE `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region ID',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(30) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `UNQ_D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

--
-- Table structure for table `signifyd_case`
--

DROP TABLE IF EXISTS `signifyd_case`;
CREATE TABLE `signifyd_case` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity_id',
  `order_id` int(10) unsigned DEFAULT NULL COMMENT 'Order_id',
  `case_id` int(10) unsigned DEFAULT NULL COMMENT 'Case_id',
  `guarantee_eligible` tinyint(1) DEFAULT NULL COMMENT 'Guarantee_eligible',
  `guarantee_disposition` varchar(32) DEFAULT 'PENDING' COMMENT 'Guarantee_disposition',
  `status` varchar(32) DEFAULT 'PENDING' COMMENT 'Status',
  `score` int(10) unsigned DEFAULT NULL COMMENT 'Score',
  `associated_team` text COMMENT 'Associated_team',
  `review_disposition` varchar(32) DEFAULT NULL COMMENT 'Review_disposition',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated_at',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SIGNIFYD_CASE_ORDER_ID` (`order_id`),
  UNIQUE KEY `SIGNIFYD_CASE_CASE_ID` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='signifyd_case';

--
-- Table structure for table `sitemap`
--

DROP TABLE IF EXISTS `sitemap`;
CREATE TABLE `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap ID',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`sitemap_id`),
  KEY `SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='XML Sitemap';

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `STORE_CODE` (`code`),
  KEY `STORE_WEBSITE_ID` (`website_id`),
  KEY `STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (0,'admin',0,0,'Admin',0,1),(1,'default',1,1,'Default Store View',0,1);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_group`
--

DROP TABLE IF EXISTS `store_group`;
CREATE TABLE `store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category ID',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Store group unique code',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `STORE_GROUP_CODE` (`code`),
  KEY `STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Dumping data for table `store_group`
--

LOCK TABLES `store_group` WRITE;
/*!40000 ALTER TABLE `store_group` DISABLE KEYS */;
INSERT INTO `store_group` VALUES (0,0,'Default','0',0,'default'),(1,1,'Main Website Store','2',1,'main_website_store');
/*!40000 ALTER TABLE `store_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_website`
--

DROP TABLE IF EXISTS `store_website`;
CREATE TABLE `store_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group ID',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `STORE_WEBSITE_CODE` (`code`),
  KEY `STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Dumping data for table `store_website`
--

LOCK TABLES `store_website` WRITE;
/*!40000 ALTER TABLE `store_website` DISABLE KEYS */;
INSERT INTO `store_website` VALUES (0,'admin','Admin',0,0,0),(1,'base','Main Website',0,1,1);
/*!40000 ALTER TABLE `store_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_calculation`
--

DROP TABLE IF EXISTS `tax_calculation`;
CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation ID',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate ID',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule ID',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class ID',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class ID',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Table structure for table `tax_calculation_rate`
--

DROP TABLE IF EXISTS `tax_calculation_rate`;
CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate ID',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country ID',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region ID',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Dumping data for table `tax_calculation_rate`
--

LOCK TABLES `tax_calculation_rate` WRITE;
/*!40000 ALTER TABLE `tax_calculation_rate` DISABLE KEYS */;
INSERT INTO `tax_calculation_rate` VALUES ('1','US','12','*','US-CA-*-Rate 1','8.2500',NULL,NULL,NULL),('2','US','43','*','US-NY-*-Rate 1','8.3750',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tax_calculation_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_calculation_rate_title`
--

DROP TABLE IF EXISTS `tax_calculation_rate_title`;
CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title ID',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

--
-- Table structure for table `tax_calculation_rule`
--

DROP TABLE IF EXISTS `tax_calculation_rule`;
CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  KEY `TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class ID',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (2,'Taxable Goods','PRODUCT'),(3,'Retail Customer','CUSTOMER');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_order_aggregated_created`
--

DROP TABLE IF EXISTS `tax_order_aggregated_created`;
CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

--
-- Table structure for table `tax_order_aggregated_updated`
--

DROP TABLE IF EXISTS `tax_order_aggregated_updated`;
CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `theme_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier',
  `parent_id` int(11) DEFAULT NULL COMMENT 'Parent ID',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint(6) NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Core theme';

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES ('1',NULL,'Magento/blank','Magento Blank','preview_image_63fb54255cf10.jpeg',0,'frontend',0,'Magento/blank'),('2','1','Magento/luma','Magento Luma','preview_image_63fb54258bab5.jpeg',0,'frontend',0,'Magento/luma'),('3',NULL,'Magento/backend','Magento 2 backend',NULL,0,'adminhtml',0,'Magento/backend'),('4','1','Hidden/shopkartlite','Hiddentechies ShopkartLite','preview_image_63fb54c3325b9.jpeg',0,'frontend',0,'Hidden/shopkartlite');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_file`
--

DROP TABLE IF EXISTS `theme_file`;
CREATE TABLE `theme_file` (
  `theme_files_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme ID',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File',
  PRIMARY KEY (`theme_files_id`),
  KEY `THEME_FILE_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme files';

--
-- Table structure for table `translation`
--

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key ID of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

--
-- Table structure for table `ui_bookmark`
--

DROP TABLE IF EXISTS `ui_bookmark`;
CREATE TABLE `ui_bookmark` (
  `bookmark_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier',
  `user_id` int(10) unsigned NOT NULL COMMENT 'User ID',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint(6) NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Bookmark updated at',
  PRIMARY KEY (`bookmark_id`),
  KEY `UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Bookmark';

--
-- Dumping data for table `ui_bookmark`
--

LOCK TABLES `ui_bookmark` WRITE;
/*!40000 ALTER TABLE `ui_bookmark` DISABLE KEYS */;
INSERT INTO `ui_bookmark` VALUES ('1','1','design_config_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5},\"filters\":{\"applied\":{\"placeholder\":true}}},\"value\":\"Default View\"}}}','2023-02-26 12:59:32','2023-02-26 12:59:32'),('2','1','design_config_listing','current',0,NULL,'{\"current\":{\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5},\"filters\":{\"applied\":{\"placeholder\":true}}}}','2023-02-26 12:59:33','2023-02-26 12:59:33'),('3','1','cms_page_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false}},\"filters\":{\"applied\":{\"placeholder\":true}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}},\"value\":\"Default View\"}}}','2023-02-26 13:01:31','2023-02-26 13:01:31'),('4','1','cms_page_listing','current',0,NULL,'{\"current\":{\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false}},\"filters\":{\"applied\":{\"placeholder\":true}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}}}','2023-02-26 13:01:32','2023-02-26 13:01:32'),('5','1','product_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"msrp\":31,\"url_key\":32,\"gift_message_available\":33,\"tax_class_id\":34,\"actions\":35},\"search\":{\"value\":\"\"}},\"value\":\"Default View\"}}}','2023-02-26 13:52:15','2023-02-26 13:52:15'),('6','1','product_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"size\":{\"visible\":false,\"sorting\":false},\"fabric\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"msrp\":31,\"url_key\":32,\"gift_message_available\":33,\"tax_class_id\":34,\"actions\":35,\"size\":36,\"fabric\":37},\"search\":{\"value\":\"\"}}}','2023-02-26 13:52:16','2023-02-27 02:44:21'),('7','1','product_attributes_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"displayMode\":\"grid\"},\"value\":\"Default View\"}}}','2023-02-26 13:53:49','2023-02-26 13:53:49'),('8','1','product_attributes_listing','current',0,NULL,'{\"current\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"displayMode\":\"grid\"}}','2023-02-26 13:53:51','2023-02-26 13:53:51'),('9','1','product_attributes_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"displayMode\":\"grid\"},\"value\":\"Default View\"}}}','2023-02-26 14:11:40','2023-02-26 14:11:40'),('10','1','product_attributes_grid','current',0,NULL,'{\"current\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"displayMode\":\"grid\"}}','2023-02-26 14:11:41','2023-02-26 14:11:41'),('11','1','customer_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"search\":{\"value\":\"\"},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"billing_telephone\":{\"visible\":true,\"sorting\":false},\"billing_postcode\":{\"visible\":true,\"sorting\":false},\"billing_region\":{\"visible\":true,\"sorting\":false},\"confirmation\":{\"visible\":true,\"sorting\":false},\"created_in\":{\"visible\":true,\"sorting\":false},\"billing_full\":{\"visible\":false,\"sorting\":false},\"shipping_full\":{\"visible\":false,\"sorting\":false},\"taxvat\":{\"visible\":true,\"sorting\":false},\"billing_street\":{\"visible\":false,\"sorting\":false},\"billing_city\":{\"visible\":false,\"sorting\":false},\"billing_fax\":{\"visible\":false,\"sorting\":false},\"billing_vat_id\":{\"visible\":false,\"sorting\":false},\"billing_company\":{\"visible\":false,\"sorting\":false},\"billing_firstname\":{\"visible\":false,\"sorting\":false},\"billing_lastname\":{\"visible\":false,\"sorting\":false},\"lock_expires\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"group_id\":{\"visible\":true,\"sorting\":false},\"billing_country_id\":{\"visible\":true,\"sorting\":false},\"website_id\":{\"visible\":true,\"sorting\":false},\"gender\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"dob\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"name\":2,\"email\":3,\"group_id\":4,\"billing_telephone\":5,\"billing_postcode\":6,\"billing_country_id\":7,\"billing_region\":8,\"created_at\":9,\"website_id\":10,\"confirmation\":11,\"created_in\":12,\"billing_full\":13,\"shipping_full\":14,\"dob\":15,\"taxvat\":16,\"gender\":17,\"billing_street\":18,\"billing_city\":19,\"billing_fax\":20,\"billing_vat_id\":21,\"billing_company\":22,\"billing_firstname\":23,\"billing_lastname\":24,\"lock_expires\":25,\"actions\":26}},\"value\":\"Default View\"}}}','2023-02-26 18:43:41','2023-02-26 18:43:41'),('12','1','customer_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"search\":{\"value\":\"\"},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"billing_telephone\":{\"visible\":true,\"sorting\":false},\"billing_postcode\":{\"visible\":true,\"sorting\":false},\"billing_region\":{\"visible\":true,\"sorting\":false},\"confirmation\":{\"visible\":true,\"sorting\":false},\"created_in\":{\"visible\":true,\"sorting\":false},\"billing_full\":{\"visible\":false,\"sorting\":false},\"shipping_full\":{\"visible\":false,\"sorting\":false},\"taxvat\":{\"visible\":true,\"sorting\":false},\"billing_street\":{\"visible\":false,\"sorting\":false},\"billing_city\":{\"visible\":false,\"sorting\":false},\"billing_fax\":{\"visible\":false,\"sorting\":false},\"billing_vat_id\":{\"visible\":false,\"sorting\":false},\"billing_company\":{\"visible\":false,\"sorting\":false},\"billing_firstname\":{\"visible\":false,\"sorting\":false},\"billing_lastname\":{\"visible\":false,\"sorting\":false},\"lock_expires\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"group_id\":{\"visible\":true,\"sorting\":false},\"billing_country_id\":{\"visible\":true,\"sorting\":false},\"website_id\":{\"visible\":true,\"sorting\":false},\"gender\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"dob\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"name\":2,\"email\":3,\"group_id\":4,\"billing_telephone\":5,\"billing_postcode\":6,\"billing_country_id\":7,\"billing_region\":8,\"created_at\":9,\"website_id\":10,\"confirmation\":11,\"created_in\":12,\"billing_full\":13,\"shipping_full\":14,\"dob\":15,\"taxvat\":16,\"gender\":17,\"billing_street\":18,\"billing_city\":19,\"billing_fax\":20,\"billing_vat_id\":21,\"billing_company\":22,\"billing_firstname\":23,\"billing_lastname\":24,\"lock_expires\":25,\"actions\":26}}}','2023-02-26 18:43:41','2023-02-26 18:43:41'),('13','1','customer_online_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"last_visit_at\":{\"visible\":true,\"sorting\":false},\"visitor_type\":{\"visible\":true,\"sorting\":false},\"customer_id\":{\"visible\":true,\"sorting\":\"asc\"},\"firstname\":{\"visible\":true,\"sorting\":false},\"lastname\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"customer_id\":0,\"firstname\":1,\"lastname\":2,\"email\":3,\"last_visit_at\":4,\"visitor_type\":5}},\"value\":\"Default View\"}}}','2023-02-27 02:32:55','2023-02-27 02:32:55'),('14','1','customer_online_grid','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"last_visit_at\":{\"visible\":true,\"sorting\":false},\"visitor_type\":{\"visible\":true,\"sorting\":false},\"customer_id\":{\"visible\":true,\"sorting\":\"asc\"},\"firstname\":{\"visible\":true,\"sorting\":false},\"lastname\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"customer_id\":0,\"firstname\":1,\"lastname\":2,\"email\":3,\"last_visit_at\":4,\"visitor_type\":5}}}','2023-02-27 02:32:57','2023-02-27 02:32:57'),('15','1','sales_order_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"total_refunded\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":\"desc\"},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"signifyd_guarantee_status\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"store_id\":2,\"created_at\":3,\"billing_name\":4,\"shipping_name\":5,\"base_grand_total\":6,\"grand_total\":7,\"status\":8,\"billing_address\":9,\"shipping_address\":10,\"shipping_information\":11,\"customer_email\":12,\"customer_group\":13,\"subtotal\":14,\"shipping_and_handling\":15,\"customer_name\":16,\"payment_method\":17,\"total_refunded\":18,\"actions\":19,\"signifyd_guarantee_status\":20}},\"value\":\"Default View\"}}}','2023-02-27 05:18:42','2023-02-27 05:18:42'),('16','1','sales_order_grid','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"total_refunded\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":\"desc\"},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"signifyd_guarantee_status\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"store_id\":2,\"created_at\":3,\"billing_name\":4,\"shipping_name\":5,\"base_grand_total\":6,\"grand_total\":7,\"status\":8,\"billing_address\":9,\"shipping_address\":10,\"shipping_information\":11,\"customer_email\":12,\"customer_group\":13,\"subtotal\":14,\"shipping_and_handling\":15,\"customer_name\":16,\"payment_method\":17,\"total_refunded\":18,\"actions\":19,\"signifyd_guarantee_status\":20}}}','2023-02-27 05:18:43','2023-02-27 05:18:43'),('17','1','sales_order_view_invoice_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"grand_total\":7,\"store_id\":8,\"billing_address\":9,\"shipping_address\":10,\"customer_name\":11,\"customer_email\":12,\"customer_group_id\":13,\"payment_method\":14,\"shipping_information\":15,\"subtotal\":16,\"shipping_and_handling\":17,\"actions\":18}},\"value\":\"Default View\"}}}','2023-02-27 05:18:51','2023-02-27 05:18:51'),('18','1','sales_order_view_creditmemo_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"adjustment_positive\":{\"visible\":false,\"sorting\":false},\"adjustment_negative\":{\"visible\":false,\"sorting\":false},\"order_base_grand_total\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"base_grand_total\":7,\"order_status\":8,\"store_id\":9,\"billing_address\":10,\"shipping_address\":11,\"customer_name\":12,\"customer_email\":13,\"customer_group_id\":14,\"payment_method\":15,\"shipping_information\":16,\"subtotal\":17,\"shipping_and_handling\":18,\"adjustment_positive\":19,\"adjustment_negative\":20,\"order_base_grand_total\":21,\"actions\":22}},\"value\":\"Default View\"}}}','2023-02-27 05:18:52','2023-02-27 05:18:52'),('19','1','sales_order_view_shipment_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}},\"value\":\"Default View\"}}}','2023-02-27 05:18:52','2023-02-27 05:18:52'),('20','1','sales_order_view_creditmemo_grid','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"adjustment_positive\":{\"visible\":false,\"sorting\":false},\"adjustment_negative\":{\"visible\":false,\"sorting\":false},\"order_base_grand_total\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"base_grand_total\":7,\"order_status\":8,\"store_id\":9,\"billing_address\":10,\"shipping_address\":11,\"customer_name\":12,\"customer_email\":13,\"customer_group_id\":14,\"payment_method\":15,\"shipping_information\":16,\"subtotal\":17,\"shipping_and_handling\":18,\"adjustment_positive\":19,\"adjustment_negative\":20,\"order_base_grand_total\":21,\"actions\":22}}}','2023-02-27 05:18:52','2023-02-27 05:18:52'),('21','1','sales_order_view_invoice_grid','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"grand_total\":7,\"store_id\":8,\"billing_address\":9,\"shipping_address\":10,\"customer_name\":11,\"customer_email\":12,\"customer_group_id\":13,\"payment_method\":14,\"shipping_information\":15,\"subtotal\":16,\"shipping_and_handling\":17,\"actions\":18}}}','2023-02-27 05:18:52','2023-02-27 05:18:52'),('22','1','sales_order_view_shipment_grid','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}}}','2023-02-27 05:18:52','2023-02-27 05:18:52');
/*!40000 ALTER TABLE `ui_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_rewrite`
--

DROP TABLE IF EXISTS `url_rewrite`;
CREATE TABLE `url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite ID',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  KEY `URL_REWRITE_TARGET_PATH` (`target_path`),
  KEY `URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`),
  KEY `URL_REWRITE_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Dumping data for table `url_rewrite`
--

LOCK TABLES `url_rewrite` WRITE;
/*!40000 ALTER TABLE `url_rewrite` DISABLE KEYS */;
INSERT INTO `url_rewrite` VALUES ('1','cms-page','1','no-route','cms/page/view/page_id/1',0,1,NULL,1,NULL),('2','cms-page','2','home','cms/page/view/page_id/2',0,1,NULL,1,NULL),('3','cms-page','3','enable-cookies','cms/page/view/page_id/3',0,1,NULL,1,NULL),('4','cms-page','4','privacy-policy-cookie-restriction-mode','cms/page/view/page_id/4',0,1,NULL,1,NULL),('5','cms-page','5','shopkartlite_home','cms/page/view/page_id/5',0,1,NULL,1,NULL),('6','category','3','mens.html','catalog/category/view/id/3',0,1,NULL,1,NULL),('8','category','5','womens.html','catalog/category/view/id/5',0,1,NULL,1,NULL),('9','category','6','kids.html','catalog/category/view/id/6',0,1,NULL,1,NULL),('10','category','7','womens/bridal.html','catalog/category/view/id/7',0,1,NULL,1,NULL),('11','category','8','womens/western-wear.html','catalog/category/view/id/8',0,1,NULL,1,NULL),('12','product','1','designer-light-blue-net-lehenga.html','catalog/product/view/id/1',0,1,NULL,1,NULL),('13','product','1','womens/bridal/designer-light-blue-net-lehenga.html','catalog/product/view/id/1/category/7',0,1,NULL,1,'{\"category_id\":\"7\"}'),('14','product','1','womens/designer-light-blue-net-lehenga.html','catalog/product/view/id/1/category/5',0,1,NULL,1,'{\"category_id\":\"5\"}'),('15','category','9','mens/shirts.html','catalog/category/view/id/9',0,1,NULL,1,NULL),('16','product','5','men-regular-fit-solid-button-down-collar-formal-shirt.html','catalog/product/view/id/5',0,1,NULL,1,NULL),('17','product','5','mens/shirts/men-regular-fit-solid-button-down-collar-formal-shirt.html','catalog/product/view/id/5/category/9',0,1,NULL,1,'{\"category_id\":\"9\"}'),('18','product','5','mens/men-regular-fit-solid-button-down-collar-formal-shirt.html','catalog/product/view/id/5/category/3',0,1,NULL,1,'{\"category_id\":\"3\"}'),('19','category','10','mens/ethnic-wear.html','catalog/category/view/id/10',0,1,NULL,1,NULL),('20','product','6','floral-kurta-in-maroon-black.html','catalog/product/view/id/6',0,1,NULL,1,NULL),('21','product','6','mens/ethnic-wear/floral-kurta-in-maroon-black.html','catalog/product/view/id/6/category/10',0,1,NULL,1,'{\"category_id\":\"10\"}'),('22','product','6','mens/floral-kurta-in-maroon-black.html','catalog/product/view/id/6/category/3',0,1,NULL,1,'{\"category_id\":\"3\"}'),('23','product','7','floral-pattern-lehenga-choli.html','catalog/product/view/id/7',0,1,NULL,1,NULL),('24','product','7','womens/bridal/floral-pattern-lehenga-choli.html','catalog/product/view/id/7/category/7',0,1,NULL,1,'{\"category_id\":\"7\"}'),('25','product','7','womens/floral-pattern-lehenga-choli.html','catalog/product/view/id/7/category/5',0,1,NULL,1,'{\"category_id\":\"5\"}'),('26','category','11','kids/boy.html','catalog/category/view/id/11',0,1,NULL,1,NULL),('27','category','12','kids/girls.html','catalog/category/view/id/12',0,1,NULL,1,NULL),('28','product','8','cotton-shirt-and-pants-set-for-kids-green.html','catalog/product/view/id/8',0,1,NULL,1,NULL),('29','product','8','kids/girls/cotton-shirt-and-pants-set-for-kids-green.html','catalog/product/view/id/8/category/12',0,1,NULL,1,'{\"category_id\":\"12\"}'),('30','product','8','kids/cotton-shirt-and-pants-set-for-kids-green.html','catalog/product/view/id/8/category/6',0,1,NULL,1,'{\"category_id\":\"6\"}');
/*!40000 ALTER TABLE `url_rewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
CREATE TABLE `variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable ID',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

--
-- Table structure for table `variable_value`
--

DROP TABLE IF EXISTS `variable_value`;
CREATE TABLE `variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value ID',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

--
-- Table structure for table `vault_payment_token`
--

DROP TABLE IF EXISTS `vault_payment_token`;
CREATE TABLE `vault_payment_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `public_hash` varchar(128) NOT NULL COMMENT 'Hash code for using on frontend',
  `payment_method_code` varchar(128) NOT NULL COMMENT 'Payment method code',
  `type` varchar(128) NOT NULL COMMENT 'Type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `expires_at` timestamp NULL DEFAULT NULL COMMENT 'Expires At',
  `gateway_token` varchar(255) NOT NULL COMMENT 'Gateway Token',
  `details` text COMMENT 'Details',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `VAULT_PAYMENT_TOKEN_PUBLIC_HASH` (`public_hash`),
  UNIQUE KEY `VAULT_PAYMENT_TOKEN_PAYMENT_METHOD_CODE_CSTR_ID_GATEWAY_TOKEN` (`payment_method_code`,`customer_id`,`gateway_token`),
  KEY `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Vault tokens of payment';

--
-- Table structure for table `vault_payment_token_order_payment_link`
--

DROP TABLE IF EXISTS `vault_payment_token_order_payment_link`;
CREATE TABLE `vault_payment_token_order_payment_link` (
  `order_payment_id` int(10) unsigned NOT NULL COMMENT 'Order payment ID',
  `payment_token_id` int(10) unsigned NOT NULL COMMENT 'Payment token ID',
  PRIMARY KEY (`order_payment_id`,`payment_token_id`),
  KEY `FK_4ED894655446D385894580BECA993862` (`payment_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order payments to vault token';

--
-- Table structure for table `weee_tax`
--

DROP TABLE IF EXISTS `weee_tax`;
CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  PRIMARY KEY (`value_id`),
  KEY `WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `WEEE_TAX_COUNTRY` (`country`),
  KEY `WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
CREATE TABLE `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget ID',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

--
-- Table structure for table `widget_instance`
--

DROP TABLE IF EXISTS `widget_instance`;
CREATE TABLE `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance ID',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`),
  KEY `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

--
-- Table structure for table `widget_instance_page`
--

DROP TABLE IF EXISTS `widget_instance_page`;
CREATE TABLE `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance ID',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

--
-- Table structure for table `widget_instance_page_layout`
--

DROP TABLE IF EXISTS `widget_instance_page_layout`;
CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update ID',
  UNIQUE KEY `WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES ('1','1',0,'6nsk9RWVh9I81KNhsZy82cszpdyvyBwj','2023-02-27 07:19:03');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_item`
--

DROP TABLE IF EXISTS `wishlist_item`;
CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

--
-- Dumping data for table `wishlist_item`
--

LOCK TABLES `wishlist_item` WRITE;
/*!40000 ALTER TABLE `wishlist_item` DISABLE KEYS */;
INSERT INTO `wishlist_item` VALUES ('3','1','5',1,'2023-02-27 10:40:29',NULL,'1.0000'),('4','1','1',1,'2023-02-27 10:41:07',NULL,'1.0000');
/*!40000 ALTER TABLE `wishlist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_item_option`
--

DROP TABLE IF EXISTS `wishlist_item_option`;
CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

--
-- Dumping data for table `wishlist_item_option`
--

LOCK TABLES `wishlist_item_option` WRITE;
/*!40000 ALTER TABLE `wishlist_item_option` DISABLE KEYS */;
INSERT INTO `wishlist_item_option` VALUES ('3','3','5','info_buyRequest','{\"product\":\"5\",\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC9tZW4tcmVndWxhci1maXQtc29saWQtYnV0dG9uLWRvd24tY29sbGFyLWZvcm1hbC1zaGlydC5odG1s\",\"options\":{\"1\":\"\"},\"qty\":\"1\",\"super_attribute\":{\"93\":\"5\"},\"form_key\":\"G98UrV88zDMtX2Uu\"}'),('4','3','5','attributes','{\"93\":\"5\"}'),('5','3','3','product_qty_3','1'),('6','3','3','simple_product','3'),('7','4','1','info_buyRequest','{\"product\":\"1\",\"uenc\":\"aHR0cDovL2xvY2FsaG9zdC9uYWtzaGF0aHJhL2luZGV4LnBocC93b21lbnMvYnJpZGFsLmh0bWw,\",\"form_key\":\"G98UrV88zDMtX2Uu\"}');
/*!40000 ALTER TABLE `wishlist_item_option` ENABLE KEYS */;
UNLOCK TABLES;

ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `admin_user_session`
  ADD CONSTRAINT `ADMIN_USER_SESSION_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `authorization_rule`
  ADD CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_frontend_action`
  ADD CONSTRAINT `CAT_PRD_FRONTEND_ACTION_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_FRONTEND_ACTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_url_rewrite_product_category`
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE;

ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalogsearch_recommendations`
  ADD CONSTRAINT `CATALOGSEARCH_RECOMMENDATIONS_QUERY_ID_SEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `search_query` (`query_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGSEARCH_RECOMMENDATIONS_RELATION_ID_SEARCH_QUERY_QUERY_ID` FOREIGN KEY (`relation_id`) REFERENCES `search_query` (`query_id`) ON DELETE CASCADE;

ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE;

ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity`
  ADD CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL;

ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `design_change`
  ADD CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option_swatch`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity`
  ADD CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `integration`
  ADD CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `layout_link`
  ADD CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `magento_acknowledged_bulk`
  ADD CONSTRAINT `MAGENTO_ACKNOWLEDGED_BULK_BULK_UUID_MAGENTO_BULK_UUID` FOREIGN KEY (`bulk_uuid`) REFERENCES `magento_bulk` (`uuid`) ON DELETE CASCADE;

ALTER TABLE `magento_operation`
  ADD CONSTRAINT `MAGENTO_OPERATION_BULK_UUID_MAGENTO_BULK_UUID` FOREIGN KEY (`bulk_uuid`) REFERENCES `magento_bulk` (`uuid`) ON DELETE CASCADE;

ALTER TABLE `media_gallery_asset_keyword`
  ADD CONSTRAINT `MEDIA_GALLERY_ASSET_KEYWORD_ASSET_ID_MEDIA_GALLERY_ASSET_ID` FOREIGN KEY (`asset_id`) REFERENCES `media_gallery_asset` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MEDIA_GALLERY_ASSET_KEYWORD_KEYWORD_ID_MEDIA_GALLERY_KEYWORD_ID` FOREIGN KEY (`keyword_id`) REFERENCES `media_gallery_keyword` (`id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `oauth_nonce`
  ADD CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `oauth_token`
  ADD CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_billing_agreement`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `paypal_billing_agreement_order`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE;

ALTER TABLE `persistent_session`
  ADD CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `queue_message_status`
  ADD CONSTRAINT `QUEUE_MESSAGE_STATUS_MESSAGE_ID_QUEUE_MESSAGE_ID` FOREIGN KEY (`message_id`) REFERENCES `queue_message` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUEUE_MESSAGE_STATUS_QUEUE_ID_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `queue` (`id`) ON DELETE CASCADE;

ALTER TABLE `quote`
  ADD CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `quote_address`
  ADD CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_address_item`
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE;

ALTER TABLE `quote_id_mask`
  ADD CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_item`
  ADD CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `quote_item_option`
  ADD CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE;

ALTER TABLE `quote_payment`
  ADD CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_shipping_rate`
  ADD CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

ALTER TABLE `rating`
  ADD CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option`
  ADD CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `rating_store`
  ADD CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `rating_title`
  ADD CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `release_notification_viewer_log`
  ADD CONSTRAINT `RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`viewer_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `report_event`
  ADD CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION;

ALTER TABLE `review_detail`
  ADD CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `review_store`
  ADD CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_creditmemo`
  ADD CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_creditmemo_comment`
  ADD CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_creditmemo_item`
  ADD CONSTRAINT `SALES_CREDITMEMO_ITEM_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoice`
  ADD CONSTRAINT `SALES_INVOICE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_INVOICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_invoice_comment`
  ADD CONSTRAINT `SALES_INVOICE_COMMENT_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoice_item`
  ADD CONSTRAINT `SALES_INVOICE_ITEM_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order`
  ADD CONSTRAINT `SALES_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `SALES_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_address`
  ADD CONSTRAINT `SALES_ORDER_ADDRESS_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_item`
  ADD CONSTRAINT `SALES_ORDER_ITEM_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_payment`
  ADD CONSTRAINT `SALES_ORDER_PAYMENT_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_history`
  ADD CONSTRAINT `SALES_ORDER_STATUS_HISTORY_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE;

ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`associated_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE;

ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_PAYMENT_ID_SALES_ORDER_PAYMENT_ENTT_ID` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_sequence_profile`
  ADD CONSTRAINT `SALES_SEQUENCE_PROFILE_META_ID_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `sales_sequence_meta` (`meta_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment`
  ADD CONSTRAINT `SALES_SHIPMENT_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_SHIPMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_shipment_comment`
  ADD CONSTRAINT `SALES_SHIPMENT_COMMENT_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment_item`
  ADD CONSTRAINT `SALES_SHIPMENT_ITEM_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment_track`
  ADD CONSTRAINT `SALES_SHIPMENT_TRACK_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `search_query`
  ADD CONSTRAINT `SEARCH_QUERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `search_synonyms`
  ADD CONSTRAINT `SEARCH_SYNONYMS_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SEARCH_SYNONYMS_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `signifyd_case`
  ADD CONSTRAINT `SIGNIFYD_CASE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

ALTER TABLE `sitemap`
  ADD CONSTRAINT `SITEMAP_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `store`
  ADD CONSTRAINT `STORE_GROUP_ID_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `store_group` (`group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `STORE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `store_group`
  ADD CONSTRAINT `STORE_GROUP_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE;

ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `theme_file`
  ADD CONSTRAINT `THEME_FILE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `translation`
  ADD CONSTRAINT `TRANSLATION_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `ui_bookmark`
  ADD CONSTRAINT `UI_BOOKMARK_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `variable_value`
  ADD CONSTRAINT `VARIABLE_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `VARIABLE_VALUE_VARIABLE_ID_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`) ON DELETE CASCADE;

ALTER TABLE `vault_payment_token`
  ADD CONSTRAINT `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `vault_payment_token_order_payment_link`
  ADD CONSTRAINT `FK_4ED894655446D385894580BECA993862` FOREIGN KEY (`payment_token_id`) REFERENCES `vault_payment_token` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CF37B9D854256534BE23C818F6291CA2` FOREIGN KEY (`order_payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `weee_tax`
  ADD CONSTRAINT `WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance`
  ADD CONSTRAINT `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LYT_LYT_UPDATE_ID_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist`
  ADD CONSTRAINT `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WISHLIST_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */; 
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-27 12:04:18 GMT