/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - mycccshopdev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mycccshopdev` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mycccshopdev`;

/*Table structure for table `ecs_account_log` */

DROP TABLE IF EXISTS `ecs_account_log`;

CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_account_log` */

insert  into `ecs_account_log`(`log_id`,`user_id`,`user_money`,`frozen_money`,`rank_points`,`pay_points`,`change_time`,`change_desc`,`change_type`) values (8,5,'99999999.99','0.00',0,0,1448230508,'111',2),(9,5,'-0.01','0.00',0,0,1448231164,'支付订单 2015112391096',99),(10,5,'0.00','0.00',0,0,1448232942,'订单 2015112356122 赠送的积分',99),(11,5,'-0.01','0.00',0,0,1448234136,'支付订单 2015112318877',99),(12,5,'0.00','0.00',0,0,1448242320,'订单 2015112369856 赠送的积分',99),(13,5,'0.00','0.00',0,0,1448247519,'订单 2015112314657 赠送的积分',99),(14,5,'0.00','0.00',0,0,1448250063,'订单 2015112366532 赠送的积分',99),(15,5,'-111111.00','0.00',0,0,1448408235,'111',2),(16,5,'-1111111.00','0.00',0,0,1448408273,'111',2),(17,5,'-99999999.99','0.00',0,0,1448408290,'1111',2),(18,5,'11111111.00','0.00',0,0,1448408322,'1111',2),(19,5,'99999999.99','0.00',0,0,1448408338,'111',2),(20,5,'-99999999.00','0.00',0,0,1448408358,'111',2),(21,5,'899.01','0.00',0,0,1448408391,'111',2),(22,5,'0.00','0.00',0,0,1448409431,'订单 2015112344712 赠送的积分',99),(23,5,'0.00','0.00',0,0,1448409980,'订单 2015112561257 赠送的积分',99),(27,5,'8.80','0.00',9,0,1456207215,'订单号 2015113044808, 分成:金钱 8.8 积分 9',99);

/*Table structure for table `ecs_ad` */

DROP TABLE IF EXISTS `ecs_ad`;

CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_ad` */

insert  into `ecs_ad`(`ad_id`,`position_id`,`media_type`,`ad_name`,`ad_link`,`ad_code`,`start_time`,`end_time`,`link_man`,`link_email`,`link_phone`,`click_count`,`enabled`) values (1,1,0,'首页-顶部通栏广告','','1483587816462576734.jpg',1476345600,1605168000,'','','',2,0),(2,2,0,'首页-轮播右侧广告','','1483588273524701048.png',1476345600,1605168000,'','','',1,1),(7,3,0,'首页-分类ID1-左侧广告','','1476426456618021589.JPG',1476345600,1605168000,'','','',1,1),(8,4,0,'首页-分类ID2-左侧广告','','1476426511730250269.JPG',1476345600,1605168000,'','','',1,1),(9,5,0,'首页-分类ID3-左侧广告','','1476426558111474910.JPG',1476345600,1605168000,'','','',1,1),(10,6,0,'首页-分类ID4-左侧广告','','1476426664486881624.JPG',1476345600,1605168000,'','','',1,1),(11,7,0,'首页-分类ID5-左侧广告','','1476426700006710198.JPG',1476345600,1605168000,'','','',1,1),(17,13,0,'文章页-右侧广告','','1476598679030077732.JPG',1476518400,1605340800,'','','',1,1);

/*Table structure for table `ecs_ad_custom` */

DROP TABLE IF EXISTS `ecs_ad_custom`;

CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_ad_custom` */

/*Table structure for table `ecs_ad_position` */

DROP TABLE IF EXISTS `ecs_ad_position`;

CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_ad_position` */

insert  into `ecs_ad_position`(`position_id`,`position_name`,`ad_width`,`ad_height`,`position_desc`,`position_style`) values (1,'首页-顶部通栏广告',1200,69,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),(2,'首页-轮播右侧广告',170,430,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),(3,'首页-分类ID1-左侧广告',320,423,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),(4,'首页-分类ID2-左侧广告',320,423,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),(5,'首页-分类ID3-左侧广告',320,423,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),(6,'首页-分类ID4-左侧广告',320,423,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),(7,'首页-分类ID5-左侧广告',320,423,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),(13,'文章页-右侧广告',356,304,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n');

/*Table structure for table `ecs_admin_action` */

DROP TABLE IF EXISTS `ecs_admin_action`;

CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_admin_action` */

insert  into `ecs_admin_action`(`action_id`,`parent_id`,`action_code`,`relevance`) values (1,0,'goods',''),(2,0,'cms_manage',''),(3,0,'users_manage',''),(4,0,'priv_manage',''),(5,0,'sys_manage',''),(6,0,'order_manage',''),(7,0,'promotion',''),(8,0,'email',''),(9,0,'templates_manage',''),(10,0,'db_manage',''),(11,0,'sms_manage',''),(21,1,'goods_manage',''),(22,1,'remove_back',''),(23,1,'cat_manage',''),(24,1,'cat_drop','cat_manage'),(25,1,'attr_manage',''),(26,1,'brand_manage',''),(27,1,'comment_priv',''),(84,1,'tag_manage',''),(30,2,'article_cat',''),(31,2,'article_manage',''),(32,2,'shopinfo_manage',''),(33,2,'shophelp_manage',''),(34,2,'vote_priv',''),(35,7,'topic_manage',''),(74,4,'template_manage',''),(73,3,'feedback_priv',''),(38,3,'integrate_users',''),(39,3,'sync_users','integrate_users'),(40,3,'users_manage',''),(41,3,'users_drop','users_manage'),(42,3,'user_rank',''),(85,3,'surplus_manage','account_manage'),(43,4,'admin_manage',''),(44,4,'admin_drop','admin_manage'),(45,4,'allot_priv','admin_manage'),(46,4,'logs_manage',''),(47,4,'logs_drop','logs_manage'),(48,5,'shop_config',''),(49,5,'ship_manage',''),(50,5,'payment',''),(51,5,'shiparea_manage',''),(52,5,'area_manage',''),(53,6,'order_os_edit',''),(54,6,'order_ps_edit','order_os_edit'),(55,6,'order_ss_edit','order_os_edit'),(56,6,'order_edit','order_os_edit'),(57,6,'order_view',''),(58,6,'order_view_finished',''),(59,6,'repay_manage',''),(60,6,'booking',''),(61,6,'sale_order_stats',''),(62,6,'client_flow_stats',''),(78,7,'snatch_manage',''),(83,7,'ad_manage',''),(80,7,'gift_manage',''),(81,7,'card_manage',''),(70,1,'goods_type',''),(82,7,'pack',''),(79,7,'bonus_manage',''),(75,5,'friendlink',''),(76,5,'db_backup',''),(77,5,'db_renew','db_backup'),(86,4,'agency_manage',''),(87,3,'account_manage',''),(88,5,'flash_manage',''),(89,5,'navigator',''),(90,7,'auction',''),(91,7,'group_by',''),(92,7,'favourable',''),(93,7,'whole_sale',''),(94,1,'goods_auto',''),(95,2,'article_auto',''),(96,5,'cron',''),(97,5,'affiliate',''),(98,5,'affiliate_ck',''),(99,8,'attention_list',''),(100,8,'email_list',''),(101,8,'magazine_list',''),(102,8,'view_sendlist',''),(103,1,'virualcard',''),(104,7,'package_manage',''),(105,1,'picture_batch',''),(106,1,'goods_export',''),(107,1,'goods_batch',''),(108,1,'gen_goods_script',''),(109,5,'sitemap',''),(110,5,'file_priv',''),(111,5,'file_check',''),(112,9,'template_select',''),(113,9,'template_setup',''),(114,9,'library_manage',''),(115,9,'lang_edit',''),(116,9,'backup_setting',''),(117,9,'mail_template',''),(118,10,'db_backup',''),(119,10,'db_renew',''),(120,10,'db_optimize',''),(121,10,'sql_query',''),(122,10,'convert',''),(124,11,'sms_send',''),(128,7,'exchange_goods',''),(129,6,'delivery_view',''),(130,6,'back_view',''),(131,5,'reg_fields',''),(132,5,'shop_authorized',''),(133,5,'webcollect_manage',''),(134,4,'suppliers_manage',''),(135,4,'role_manage',''),(136,5,'website',''),(12,0,'wechat',''),(137,12,'wx_api',''),(138,12,'wx_menu',''),(139,12,'wx_config',''),(140,12,'wx_bonus',''),(141,12,'wx_regmsg',''),(142,12,'wx_lang',''),(143,12,'wx_keywords',''),(144,12,'wx_point',''),(145,12,'wx_prize',''),(146,12,'wx_zjd',''),(147,12,'wx_dzp',''),(148,12,'wx_qr',''),(149,12,'wx_order',''),(150,12,'wx_pay',''),(151,12,'wx_reorder',''),(152,12,'wx_list',''),(153,12,'wx_oauth',''),(154,12,'wx_tuijian',''),(155,12,'wx_fans',''),(156,12,'wx_fun',''),(157,12,'wx_autoreg','');

/*Table structure for table `ecs_admin_log` */

DROP TABLE IF EXISTS `ecs_admin_log`;

CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2154 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_admin_log` */

insert  into `ecs_admin_log`(`log_id`,`log_time`,`user_id`,`log_info`,`ip_address`) values (2153,1523191895,1,'编辑商品: 德国爱他美aptamil白金版婴儿配方奶粉Pre段 0-6个月 ','0.0.0.0'),(2152,1523190629,1,'编辑商品: 德国爱他美aptamil白金版婴儿配方奶粉Pre段 0-6个月 ','0.0.0.0'),(2151,1523185696,1,'删除操作日志: ','0.0.0.0');

/*Table structure for table `ecs_admin_message` */

DROP TABLE IF EXISTS `ecs_admin_message`;

CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_admin_message` */

/*Table structure for table `ecs_admin_user` */

DROP TABLE IF EXISTS `ecs_admin_user`;

CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_admin_user` */

insert  into `ecs_admin_user`(`user_id`,`user_name`,`email`,`password`,`ec_salt`,`add_time`,`last_login`,`last_ip`,`action_list`,`nav_list`,`lang_type`,`agency_id`,`suppliers_id`,`todolist`,`role_id`) values (1,'admin','xi.chen@ccc-global.com','dacce39b799d426974a37d584ae29822','9868',1447698148,1523229080,'0.0.0.0','all','会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,0,'MyCCCShop',0),(4,'yichen','yi.chen@ccc-global.com','c45895be824daf6fe9719c2adb18fa36','1088',1521991469,1522016087,'58.100.77.235','goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg','会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,0,NULL,0),(5,'yangchaoliu','yangchao.liu@ccc-global.com','3b62d8d0610b7a54ded0cd69432d56d3','9788',1521991549,1522110403,'217.227.39.39','goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,db_backup,db_renew,db_optimize,sql_query,convert,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg','会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,0,NULL,0),(6,'huima','hui.ma@ccc-global.com','761ca2abe7cd7f37bb24fce62145a2aa','4725',1521991607,1522029284,'217.227.39.158','goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg','会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,0,NULL,0),(7,'bodong','bo.domg@ccc-global.com','98718c07e87fed9b38835f881452f550','7415',1521991684,1522113225,'217.227.39.39','goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,db_renew,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg','会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,0,NULL,0),(8,'yaqixu','yaqi.xu@ccc-global.com','22d4f478b3aa722cd353ccd1ef7fe729','3467',1521991751,1522049495,'217.227.39.158','goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg','会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,0,NULL,0);

/*Table structure for table `ecs_adsense` */

DROP TABLE IF EXISTS `ecs_adsense`;

CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_adsense` */

insert  into `ecs_adsense`(`from_ad`,`referer`,`clicks`) values (5,'本站',1),(6,'本站',2),(9,'本站',1),(8,'本站',1),(16,'本站',1),(7,'wap站',1),(5,'wap站',4),(11,'wap站',3),(8,'pc站',4),(9,'pc站',2),(3,'pc站',3),(16,'wap站',2),(1,'pc站',4),(2,'pc站',3),(7,'pc站',3),(9,'wap站',3),(15,'wap站',4),(14,'wap站',2),(10,'wap站',1),(8,'wap站',1),(11,'pc站',2),(12,'pc站',2),(6,'wap站',2),(2,'wap站',1),(1,'wap站',3),(4,'pc站',2),(15,'pc站',5),(10,'pc站',2),(4,'wap站',2),(17,'pc站',3),(56,'pc站',2),(34,'pc站',2),(24,'pc站',1),(16,'pc站',1),(13,'pc站',1),(14,'pc站',2),(6,'pc站',1),(5,'pc站',1),(13,'wap站',3);

/*Table structure for table `ecs_affiliate_log` */

DROP TABLE IF EXISTS `ecs_affiliate_log`;

CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_affiliate_log` */

insert  into `ecs_affiliate_log`(`log_id`,`order_id`,`time`,`user_id`,`user_name`,`money`,`point`,`separate_type`) values (1,102,1456207215,5,'aaaaa','8.80',9,0);

/*Table structure for table `ecs_agency` */

DROP TABLE IF EXISTS `ecs_agency`;

CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_agency` */

/*Table structure for table `ecs_area_region` */

DROP TABLE IF EXISTS `ecs_area_region`;

CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_area_region` */

insert  into `ecs_area_region`(`shipping_area_id`,`region_id`) values (1,1),(2,1),(3,1),(4,1);

/*Table structure for table `ecs_article` */

DROP TABLE IF EXISTS `ecs_article`;

CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `click_count` int(10) DEFAULT '0',
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`),
  KEY `keywords` (`keywords`),
  KEY `keywords_2` (`keywords`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_article` */

insert  into `ecs_article`(`article_id`,`cat_id`,`title`,`content`,`author`,`author_email`,`keywords`,`article_type`,`is_open`,`add_time`,`file_url`,`open_type`,`link`,`description`,`seo_title`,`click_count`) values (1,2,'免责条款','','','','',0,1,1465524805,'',0,'',NULL,NULL,9),(2,2,'隐私保护','<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;\">一、MyCCCShop将对您所提供的资料会进行严格的管理及保护，并将使用相应的技术，防止您个人资料的丢失、被盗用或被篡改。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;\">二、<span style=\"color:#333333;font-family:&quot;background-color:#FFFFFF;font-size:14px;\">MyCCCShop</span>在必要时将会由专业技术人员代为对该类信息资料进行电脑处理，以用来符合专业分工的要求。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;\">三、<span style=\"color:#333333;font-family:&quot;background-color:#FFFFFF;font-size:14px;\">MyCCCShop</span>将对您在商城所购商品信息进行严格保密。</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;\">四、<span style=\"color:#333333;font-family:&quot;background-color:#FFFFFF;font-size:14px;\">MyCCCShop</span>非常重视对用户隐私权的保护，承诺不会在未获得用户许可的情况下擅自将用户的个人资料信息泄露给任何第三方，但以下情况除外：</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;font-size:14px;\">&nbsp;1、政府部</span><a href=\"http://www.meilele.com/category-men/\">门</a><span style=\"color:#333333;font-size:14px;\">、司法机关等依照法定程序要求本网站披露个人资料时，本网站将根据执法单位之要求或为公共安全之目的提供个人资料；<br />\r\n&nbsp;2、由于用户将个人密码告知他人或与他人共享注册账户，由此导致的任何个人资料泄露；<br />\r\n&nbsp;3、任何由于</span><a href=\"http://zx.meilele.com/diannao/\">计算机</a><span style=\"color:#333333;font-size:14px;\">问题、黑客攻击、计算机病毒侵入或发作、因政府管制而造成的暂时性关闭等影响网络正常经营的不可抗力而造成的个人资料泄露、丢失、被盗用或被窜改等；<br />\r\n&nbsp;4、由于与<span style=\"color:#333333;font-family:&quot;background-color:#FFFFFF;font-size:14px;\">MyCCCShop</span>链接的其他网站所造成之个人资料泄露及由此而导致的任何法律争议和后果。</span>\r\n</p>','','','',0,1,1465524805,'',0,'http://','',NULL,7),(3,2,'咨询热点','','','','',0,1,1465524805,'',0,'',NULL,NULL,4),(4,2,'联系我们','','','','',0,1,1465524805,'',0,'',NULL,NULL,5),(5,2,'公司简介','','','','',0,1,1465524805,'',0,'',NULL,NULL,5),(6,-1,'用户协议','','','','',0,1,1465524805,'',0,'',NULL,NULL,0),(7,4,'利桑开音茶有效调理慢性咽喉','<p>\r\n	<br />\r\n</p>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	薄荷蜜桃酸奶的做法是什么？炎热的夏季，我们更喜欢吃水果饮品，水蜜桃富含维生素，养血美颜；酸奶开胃健脾，助消化；薄荷清凉对人体有帮助，三者碰撞组合做成薄荷蜜桃酸奶不仅脆甜可口，口感细腻、爽滑，还略带酸奶的奶香，很适合夏季饮用，下面，我们就来一起学习薄荷蜜桃酸奶的做法吧。\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"/lizi/images/upload/image/20160911/20160911210059_33280.jpg\" alt=\"\" /><br />\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　<b>　【薄荷蜜桃酸奶的做法】</b> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　<b>【主料】</b>水蜜桃1个、酸奶25克、纯牛奶500克\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　<b>【配料】</b>薄荷适量、蜂蜜4茶匙\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<b>　　【做法】</b> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　1、先将部分的牛奶导入到酸奶容器中，然后加白糖，搅拌均匀；\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　2、随后加入酸奶和剩下的全部纯牛奶，盖上盖 ，放到酸奶机中；\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　3、接通电源，约6-8小时候，取出酸奶容器；\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　4、将水蜜桃洗干净，去皮切成小块，加入到酸奶中；\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　5、将薄荷叶洗净后切碎，加入蜂蜜淋在酸奶中即可食用。\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"/lizi/images/upload/image/20160911/20160911210118_87846.jpg\" alt=\"\" /><br />\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　<b>【薄荷蜜桃酸奶的做法小贴士】</b> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　1、制做酸奶的时间随环境温度而定，温度高，时间就短。\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	　　2、加入的水果除了是水蜜桃以外，也可换成其他的水果。\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<b>食材推荐&gt;&gt;</b> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.gdcct.com/product/28974.htm\" target=\"_blank\">【世果汇】 预售无锡阳山水蜜桃12个 约4两/个新鲜水果 顺丰包邮</a> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.gdcct.com/product/28676.htm\" target=\"_blank\">【世果汇】北京水蜜桃12个 新鲜水果桃子 顺丰包邮&nbsp;</a> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<b>更多推荐&gt;&gt;</b> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.gdcct.com/infoDetail.jspx?id=8550\" target=\"_blank\">猕猴桃炒肉</a> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.gdcct.com/infoDetail.jspx?id=6756\" target=\"_blank\">“裤子蜜桃”网络爆红 水蜜桃怎么保存？</a> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>','','','',0,1,1241426864,'data/article/1473570081881916105.jpg',2,'http://','',NULL,2),(8,4,'四款花草茶让你充满青春，活力四射','<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	茶叶已经成为人们生活中不可或缺的饮品。早在4700多年前的神农时代，人们就发现新鲜茶叶可以解毒。此后，随着茶叶的广泛饮用，人们发现它不仅有益心血管健康，还能预防癌症，延缓衰老。不过，喝茶的好处远不止这些。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"/lizi/images/upload/image/20160911/20160911144116_66247.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<span>1、提高肌肉耐力。研究发现，茶叶中含有一种名为“儿茶素”的抗氧化剂，可以增加身体燃烧脂肪的能力，改善肌肉耐力，有助于对抗疲劳，增加体育锻炼的时间。常喝绿茶，效果最为显著。</span> \r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	2、抵抗紫外线。茶多酚是水溶性物质，用茶水洗脸能清除面部油腻，收敛毛孔，具有消毒、灭菌、抗皮肤老化的作用，还有助于减少日光中紫外线对皮肤的损伤，是天然的“防晒霜”。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	3、保持身材。唐代《本草拾遗》中关于茶的论述就曾提到“久食令人瘦”，现代科学研究证实了这一点。茶叶中的咖啡碱能促进胃液分泌，帮助消化，增强人体对脂肪的分解能力。国外研究也表明，定期饮茶可以缩减腰围，降低身体质量指数(BMI)，从而有助于预防糖尿病和心脑血管疾病。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	4、抵御辐射。国外研究表明，茶多酚及其氧化物可以吸收一些放射性物质，保护细胞不受辐射伤害，对于修复受损细胞也有帮助。临床研究显示，茶叶提取物可治疗肿瘤患者在放射治疗过程中引起的轻度放射病，治疗辐射导致的血细胞、白血球减少，效果很好。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	5、改善记忆力。茶多酚有助于大脑进行局部调节，改善记忆力，提高学习效率。国外研究证实，喝茶可以预防和治疗神经系统疾病，尤其是老年认知障碍症。此外，咖啡碱能促使中枢神经兴奋，有提神、益思、清心的效果。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	6、提高骨密度。虽然茶叶中含有咖啡因成分，会促进钙随排尿流失，但含量极低。即便是咖啡因含量颇高的红茶，每杯也只有30~45毫克。其实，茶叶中含量更多的是有助于减少钙流失的物质，包括氟元素、植物雌激素类物质和钾元素。台湾研究发现，常喝茶的人骨密度较高，髋关节骨折机率更低。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp;食材推荐》\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp;【精选茗茶】<a href=\"http://www.gdcct.com/product/31801.htm\" target=\"_self\">大红袍</a> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','','','',0,1,1241427051,'data/article/1473547349453649480.jpg',2,'http://','',NULL,1),(9,5,'合同方式','<p>\r\n	<br />\r\n</p>\r\n<h3 style=\"font-family:微软雅黑;font-weight:500;color:#333333;font-size:16px;background-color:#FFFFFF;\">\r\n	我方与贵司之间设立的采购协议，依法成立，受法律保护\r\n</h3>\r\n<div class=\"attention\" style=\"margin:0px;padding:0px 50px 30px 40px;font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		注意事项\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1.所有通过询价确认的采购，均使用合同下单\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2.对于合同内容有异议，可以通过客服联系我们\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3.合同签订之后，具备法律效力，合同内容不可再进行任何修改\r\n	</h6>\r\n</div>\r\n<br />','','','',0,1,1242576660,'',0,'http://','','',0),(10,5,'订购方式','<h3 style=\"font-family:微软雅黑;font-weight:500;color:#333333;font-size:16px;background-color:#FFFFFF;\">\r\n	您需要大批量采购？没找到您需要的商品？没关系，您可以通过本站的询价功能，填写所需商品的信息，专业采购人员会帮您寻找优质货源并在第一时间以邮件或电话的形式通知您\r\n</h3>\r\n<div class=\"attention\" style=\"margin:0px;padding:0px 50px 30px 40px;font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		注意事项\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1.询价功能仅限本站注册用户使用\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2.询价的商品只支持以托盘为单位计算运费，体积不足一托盘的按一托盘计算，海运以20尺或40尺集装箱计算运费，不足一集装箱按一集装箱计算\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3.对于询价商品数量过少的，我们会提供给您一个最小采购量，您可以按照最小采购量进行采购\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		4.如果您对询价结果有任何不满意，可以直接联系我们的客服进行沟通\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		5.因为海外商品受货源及汇率等影响，价格会时有波动，我们所给的询价结果存在有效期限，超过有效期的询价，需要重新提交商品信息询价\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		6.经过最终确认，您对询价结果满意时，可直接在“个人中心”签署系统生成合同\r\n	</h6>\r\n</div>','','','',0,1,1242576717,'',0,'http://','',NULL,0),(11,5,'定金方式','<h3 style=\"font-family:微软雅黑;font-weight:500;color:#333333;font-size:16px;background-color:#FFFFFF;\">\r\n	对于支持定金购买的商品，您可以选择预支付货款的一部分作为定金，我们将以当前条件下的价格为您锁定该批次库存，并把货物加入您的微仓。在您需要从微仓发货时，补足该商品的尾款和运费即可发货\r\n</h3>\r\n<div class=\"attention\" style=\"margin:0px;padding:0px 50px 30px 40px;font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		注意事项\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1.仅限支持定金模式的商品才可以使用定金付款，一旦选用定金付款即视为您定下该商品，我们为您锁定该商品库存，定金不能以任何理由退还。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2.定金付款的商品只能选择进入微仓，不可直接发货\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3.定金付款产品从微仓发货时需支付尾款和运费\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		4.定金购买的商品以支付定金时的价格为准，不受后期商品价格波动影响\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		5.通过定金购买的商品库存锁定期为2个月。即，您需在2个月内陆续发货完毕，到期后未发货的剩余商品需一次性补足尾款。我们的客服会在到期前通过邮件或电话提醒您支付尾款完成购买，逾期未支付尾款该商品会失效，无法发货，定金不予退还\r\n	</h6>\r\n</div>','','','',0,1,1242576727,'',0,'http://','',NULL,0),(12,6,'治疗感冒 和茶小编有茶方','<p>\r\n	<span>一般在购买时主要是依靠观察外观特征的方法来鉴别电池，而原装电池一般应具有以下一些特征：&nbsp;<br />\r\n<br />\r\n1、 电池外观整齐，外表面有一定的粗糙度且手感舒适，内表面手感光滑，灯光下能看见细密的纵向划痕&nbsp;<br />\r\n<br />\r\n2、 生产厂家字样应该轮廓清晰，且防伪标志亮度高，看上去有立体感，电池标贴 字迹清晰，有与电池类型相一致的电池件号<br />\r\n3、 电池标贴采用二次印刷技术，在一定光线下从斜面看，条形码部分的颜色比其他部分要黑，且用手触摸有凹凸感<br />\r\n<br />\r\n4、 原装电池电极与手机电池片宽度相等，电池电极下方标有“ + ”、“ - ”标志，电池电极片之间的隔离材料与外壳材料一致，但不是一体<br />\r\n<br />\r\n5、 原装电池装入手机时手感舒适，安装自如，电池按压部分卡位适当而且牢固<br />\r\n<br />\r\n6、 原装电池的金属触点采用优质的铜片，只有在正面看时才会有反光，而从其它角度看的话，都是比较暗淡的</span> \r\n</p>','','','吃',0,1,1242576826,'data/article/1473569843051840686.jpg',2,'http://','感冒是我们日常生活当中最常见且发病率最多的一种病。治疗感冒和茶小编有茶方，肯定会有人疑惑感冒不是不能喝茶么?其实茶叶只是其中...详细',NULL,21),(16,7,'物流配送方式','<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n	<span><span style=\"font-size:24px;\">海外自提交货</span></span>\r\n</p>\r\n<p style=\"font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#4E92DF;font-size:24px;\">海外仓商品配送</span>\r\n</p>\r\n<p style=\"font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#4E92DF;font-size:24px;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#4E92DF;font-size:24px;\"><img class=\"crossBorder-img\" src=\"https://www.aurorascm.com/static/assets/img/crossBorder02.jpg\" style=\"width:678px;height:173px;\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#4E92DF;font-size:24px;\"><br />\r\n</span>\r\n</p>\r\n<hr />\r\n<div class=\"attention\" style=\"margin:0px;padding:0px 50px 30px 40px;font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		税费计算\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1.根据国家法律相关规定，跨境电子商务零售进口商品的单次交易限值为人民币2000元，个人年度交易限值为人民币20000元。个人年度已使用额度、可用额度官方查询地址：http://ceb2pub.chinaport.gov.cn\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2.跨境电商综合税率 = （消费税率+增值税率）/（1-消费税率）×0.7 （高档化妆品与奢侈品除外）本站所售直邮商品均为包税价格，不用再额外缴纳税费。\r\n	</h6>\r\n</div>\r\n<div>\r\n	<br />\r\n</div>','','','',0,1,1242577032,'',0,'http://','',NULL,0),(17,7,'支付方式','<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">MyCCCShop为您提供两种支付方式：</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">第三方支付平台支付：</span></strong>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp;&nbsp;<img src=\"http://www.barbago.com/images/image/20160618/1466181431122528.jpg\" title=\"1466181431122528.jpg\" alt=\"支付宝副本.jpg\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp;&nbsp;<img src=\"http://www.barbago.com/images/image/20160618/1466181446583769.jpg\" title=\"1466181446583769.jpg\" alt=\"首信副本.jpg\" /></span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">网银支付：</span></strong><span style=\"font-family:微软雅黑, sans-serif;\"></span>\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;<img src=\"http://www.barbago.com/images/image/20160618/1466181455383198.jpg\" title=\"1466181455383198.jpg\" alt=\"网银支付.jpg\" />\r\n</p>','','','',0,1,1242577041,'',0,'http://','',NULL,0),(47,8,'退款政策','<div style=\"margin:0px auto;padding:0px;background-color:#FFFFFF;font-family:Arial, Verdana, sans-serif;\">\r\n	<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; 退款根据以下2种情况进行处理：</span> \r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（1）国际支付宝规定，跨国转账需要收取3％的手续费，如果您使用支付宝成功下单，但因个人原因，需要退款，国际支付宝方收取您订单的3％的手续费，需由您个人承担手续费；</span> \r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（2）如果因MyCCCShop（如长时间未发货、缺货、发错货、漏发货、包裹破损等）的原因导致的退款，将全额退款。</span> \r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\"><br />\r\n</span> \r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;退款说明：</span> \r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;因产品质量问题、运输问题出现破损、漏液、爆罐等情况经过提交相关照片证明核实通过符合退货要求的，按照商品购买时的货值金额退还货款。退款金额将退还到网站客户个人中心账户中，客户可以根据自己需要提请提现。</span> \r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;注：因运费是按照整体包裹实际重量收取的，税费是按照国家法律法规代为收取的，所以退款不退运费和税费。</span> \r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\"><br />\r\n</span> \r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;退款时间：</span> \r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（1）退货商品、拒收商品，自收到您的退回商品之日起，3-5个工作日内完成退款；</span> \r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（2）因订单取消产生的退款，自订单成功取消后，3-5个工作日内完成退款；</span> \r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（3）质量问题退货，运费由巴巴购承担，运费承担标准，以快递公司具体收取费用为准，并提供相应的收据。</span> \r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\"><br />\r\n</span> \r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;line-height:2em;\">&nbsp; &nbsp;&nbsp;</span> \r\n	</p>\r\n</div>\r\n<span style=\"background-color:#FFFFFF;\"> \r\n<p class=\"MsoNormal\" style=\"font-family:Arial, Verdana, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:Arial, Verdana, sans-serif;text-indent:-18pt;\">\r\n	<span class=\"Apple-converted-space\"></span><span style=\"font-family:宋体;font-size:14px;\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:Arial, Verdana, sans-serif;text-indent:-18pt;\">\r\n	<span style=\"font-size:medium;\"><span style=\"font-size:14px;\"></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:Arial, Verdana, sans-serif;\">\r\n	<span style=\"font-size:14px;\"><span style=\"font-family:宋体;\"></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-family:Arial, Verdana, sans-serif;\">\r\n	<span style=\"font-family:宋体;font-size:14px;\"></span><span style=\"font-family:宋体;font-size:14px;\"></span> \r\n</p>\r\n<span style=\"font-size:14px;\"></span></span><span></span>','','','售后',0,1,1522045540,'',0,'http://','',NULL,0),(19,10,'购物流程','<p style=\"color:#222222;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;\">1.</span><span style=\"font-family:微软雅黑, sans-serif;\">基本信息录入：点击网站右上角\"注册\"，填写个人与公司信息。</span> \r\n	</p>\r\n<p style=\"color:#222222;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;\">2.</span><span style=\"font-family:微软雅黑, sans-serif;\">验证开通：您的注册邮箱将会收到一封验证邮件，登录邮箱，点击链接进行验证。</span> \r\n</p>\r\n<p style=\"color:#222222;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;\">3.</span><span style=\"font-family:微软雅黑, sans-serif;\">登录账户：验证开通后即可以使用网站所有功能，查看产品列表，获取产品详情。</span><span style=\"font-family:微软雅黑, sans-serif;\"><br />\r\n</span> \r\n	</p>\r\n<p style=\"color:#222222;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;\">4.产品上架</span><span style=\"font-family:微软雅黑, sans-serif;\">：商家可以将挑选出的产品上架到商家的销售平台，进行推广和销售。</span> \r\n</p>\r\n<p style=\"color:#222222;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;\">5.推送订单：当商家准备采购时，可以通过网站手动下单或者上传Excel进行下单。</span> \r\n	</p>\r\n<p style=\"color:#222222;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;\"><span></span><span><span style=\"line-height:14.98px;font-family:微软雅黑,;\">6.订单发货：接收到商家推送的订单后，我们将通过国际快递，尽快发货。</span></span></span> \r\n</p>','','','',0,1,1242577178,'',0,'','',NULL,0),(20,10,'用户协议','<h3 style=\"font-family:微软雅黑;font-weight:500;color:#333333;font-size:16px;background-color:#FFFFFF;\">\r\n	本网站是由在德国注册CCC-Global GmbH/或其关联公司所运营。本公司在此特别提醒用户认真阅读、充分理解本协议各条款，特别是其中所涉及的免除、限制本公司责任的条款、对用户权利限制条款、争议解决和法律适用等。请用户审慎阅读并选择接受或不接受本协议（未成年人应在监护人陪同下阅读）。除非用户接受本协议所有条款，否则用户无权使用本公司于本协议下所提供的服务。用户在本网站注册、登录或使用本网站服务，即表示用户完全接受本协议的全部条款，并同意接受其约束。本协议适用于网站的用户（以下简称\"用户\"、\"您\"），若您使用网站（包括但不限于以任何形式接通、进入、浏览网站，或者使用网站的各项服务、功能等），您的使用行为将被视为对本用户协议全部内容的知晓、认可并同意遵守。\r\n</h3>\r\n<div class=\"attention\" style=\"margin:0px;padding:0px 50px 30px 40px;font-family:微软雅黑;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		一、接受\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、当用户您使用网站时，您已经完全知晓、认可并同意遵守本协议中的条款选择访问或使用本网站有关服务，将视为同意接受本协议全部条款的约束。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、网站有权在必要时更新本协议。网站保留对网站结构、服务、功能等进行调整的权利。除非特别声明，新功能、新服务将适用本协议。无论本协议的每次更新还是服务内容调整，都会在网站即刻发布，无需另行通知您并立即生效。如果您拒绝接受新的协议或者服务，您必须立即放弃使用网站；若您继续使用网站，则表明您已经完全知晓、认可并同意遵守新的协议或者服务除非另有明确规定，本网站所推出的新产品、新功能和新服务，均无条件的适用本协议。本网站保留在任何时候修改本协议条款的权利，且无需另行通知。用户在使用服务时应关注并遵守\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		二、用户\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、符合下列条件之一的个人、组织才能成为本网站的用户：\r\n		<p style=\"text-indent:1em;\">\r\n			1.1、是在世界范围内依法设立、有效存续且产品合法的自然人、法人及其他组织。若您不具备此资格，请不要使用网站。用户应当具备使用本网站和/或在本购物网购买商品、享受服务的完全民事行为能力，并承诺对相关行为承担相应的法律责任。\r\n		</p>\r\n		<p style=\"text-indent:1em;\">\r\n			2.2、不具备上述资格的人不得成为本网站用户。本公司一经发现，有权立即注销该用户并网站有权禁止被注销取消用户资格的自然人、法人及其他组织再次使用网站。\r\n		</p>\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		三、注册条款\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、若您在使用网站的过程中注册成为会员，您必须同意用户可以通过在本网站免费注册帐号使用本网站提供的各项服务，注册时应根据：申请会员时，根据网站的要求，提供真实、准确、即时、完整的个人信息，包括但不限于您的姓名或名称、联系地址、联系电话、电子邮箱地址等；如因注册信息不真实而引起的问题由用户本人承担，本网站不负任何责任并有权暂停或终止用户的帐号。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、注册成功后，用户将获得帐号及其密码，作为您在本网站交易及享受服务时的唯一凭证\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		四、使用条款\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、使用本网站时，用户须遵守国家的法律法规和规章制度，遵守网站有关协议、规定、规则、程序和惯例，不得利用网站从事任何非法或不正当活动。 用户不得在本网站发布各类违法或违规信息，包括但不限于商品信息、交易信息、社区帖子、商品留言，店铺留言，评价内容等\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、用户确提供的注册信息等资料系真实、准确、完整、合法，该资料包括但不限于真实姓名或名称、身份证号、联系电话、地址、邮政编码等；用户保证本网站及其他第三方可以通过上述联系方式与自己进行联系；用户也应在相关资料实际变更时，予以及时更新。 本公司对用户提供的信息予以保密。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3、用户有权根据本协议的规定以及网站发布的相关规则在本网站上查询商品信息、发表使用体验、参与商品讨论、邀请关注好友、上传商品图片、参加各类活动，以及享受本提供的其它服务。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		4、用户有义务在注册及享受服务、购买商品时提供真实、详尽、准确的资料/信息（包括但不限于电子邮件地址、联系电话、联系地址、邮政编码等），并保证资料/信息的及时、有效更新，使得网站可以通过上述联系方式与用户本人进行联系。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		5、网站的任何通知都将以电子邮件形式发送至用户的电子邮箱（您同意，如您修改原注册时提交的电子邮箱地址、并通过网站审核的，以新电子邮箱地址为准）。该电子邮件进入前述电子邮箱接收系统时，视为送达。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		6、网站有权审核、发布或删除会员提交的信息。网站将尽力核查会员提交的信息，但并不能完全保证信息的真实性、准确性和合法性，同时也不承担由此引至的任何法律责任。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		7、网站含有与其他网站的链接。但并不能控制这些网站及其所提供的资源，对链接网站上的内容、广告、服务、产品信息的真实、准确、即时、完整性不做任何承诺，并且对链接网站不承担任何法律责任。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		8、用户同意，对于其上传到本网站的任何内容（包括但不限于文字、图片、视频），网站具有免费的、永久的、不可撤销的、非独家的和完全的许可和再许可的权利，以使用、复制、修改、改编、出版、翻译、据以创作衍生作品，传播、表演和展示前述 内容（整体或部分），和/或将前述内容编入其他任何形式的作品、媒体、或技术中，不论是当前已知的或以后开发的。同时，用户同意网站在未改变其提供信息的实质内容的情况下免于承担因该信息引起的任何法律责任。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		9、若用户违反本协议规定，或有违反国家及地方法律法规之行为，北极光供应链网站有权停止传输并删除相关信息，屏蔽/禁止用户的发表、使用，注销账户，如有必要可依法向相关主管部门进行披露。\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		五、商品交易流程及相关\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、用户同意遵守本网站实行的“购物指南”约定。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、本网站有权在发现其网站上显现的商品和/或订单有明显错误或缺货的情况下，单方面撤回或修改该等信息。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3、本网站保留对商品订购的数量的限制权，包括但不限于有权对每一账户最高购买数量及商品总数量进行限制与修改。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		4、本网站对商品自主定价（价目表并不构成要约），并将尽力保证您所购商品与网站上公布的价格一致。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		5、本网站已明示了商品产品的价格（含税、含包装，特殊情况除外）、可获性和相关信息。这类信息将随时更改而无须发送任何通知。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		6、配送：\r\n		<p style=\"text-indent:1em;\">\r\n			6.1、商品配送产生的配送费用将根据用户选择的送货方式不同而另行结算。\r\n		</p>\r\n		<p style=\"text-indent:1em;\">\r\n			6.2、本网站根据用户指定的贸易方式和地址决定是否进行商品配送；网站上列出的送货时间系根据库存状况、正常处理流程和收货地址范围等信息估算，仅供用户参考，不作为对用户的到货时间承诺。\r\n		</p>\r\n		<p style=\"text-indent:1em;\">\r\n			6.3、本网站确认了用户订单后，由于供应商提价，税额变化，网站系统错误等意外情况而造成了价格变化，用户有权取消订单，并应及时通过电子邮件或电话通知网站的客户服务部。\r\n		</p>\r\n		<p style=\"text-indent:1em;\">\r\n			6.4、用户所订购的商品发生缺货，用户有权取消订单。\r\n		</p>\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		六、退换货及退款规则\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、用户同意遵守本网站实行的“售后服务”约定。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、本网站保留对商品退换货的解释权和限制权。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3、换货商品缺货或退货时产生的现金款项，退回方式根据支付方式。\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		七、纠纷、争议及投诉处理\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、用户在使用网站的过程中，发现可能有侵害自己权利的事实时，应及时通知网站并提供相应的证明材料。因投诉不实给网站或第三方造成损失的，应承担法律责任。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、网站有权接受并处理用户间因使用网站而产生的纠纷、争议及投诉，有权通过电子邮件等联系方式了解情况、并将所了解的情况通过电子邮件等方式通知对方。用户有义务在收到网站通知后，在指定的时间内提供相应的资料，配合纠纷、争议及投诉的情况了解与处理。对网站的处理结果不满意的，用户可以依法向有管辖权的法院起诉。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3、经生效法律文书确认用户存在违法或违反本协议行为或者网站自行判断会员涉嫌存在违法或违反本协议行为的，网站有权公布用户的违法行为并做出相应处理，包括但不限于终止服务、永久禁止使用网站等。\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		八、中止与终止\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		对于用户的以下行为，网站有权在未告知的情况下中止或终止其相关服务或者拒绝其以任何形式使用网站，并保留追究您法律责任的权利：\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、用户同意，本网站有权随时对网站、政策和/或本协议作出变更；任何修改或补充在其被张贴在网站时立即生效，对双方都有约束力。重大变更将在网站首页页面提示。用户继续使用网站、购买商品、享受服务的，即视为对该等变更之确认。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、如发生下列任何一种情形，网站有权无需通知而随时停止向用户提供服务：\r\n		<p style=\"text-indent:1em;\">\r\n			①用户提供的个人资料不真实；\r\n		</p>\r\n		<p style=\"text-indent:1em;\">\r\n			②用户违反本协议规定；\r\n		</p>\r\n		<p style=\"text-indent:1em;\">\r\n			③按照行政机关和/或授权职能部门的要求；\r\n		</p>\r\n		<p style=\"text-indent:1em;\">\r\n			④其他本网站认为需终止服务的情况。\r\n		</p>\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3、利用网站滥发重复信息，发布国家法律法规等禁止或限制发布的信息，发布不属于会员经营范围的信息，或与网站服务无关的信息；\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		4、未经请求或授权向网站会员发送大量与业务不相关的信息；\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		5、冒用其他企业的名义发布商业信息，进行商业活动；\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		6、计划破坏、攻击网站网站电脑系统、网络的完整性，或者试图擅自进入网站网站电脑系统、网络；\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		7、使用或提供含有毁坏、干扰、截取或侵占任何系统、数据或个人资料的任何电脑病毒、伪装破坏程序、电脑蠕虫、定时程序炸弹或其他破坏性程序；\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		8、盗用他人在网站上的登录名和/或密码；未经网站同意的帐号出售或授权使用行为；通过或从事涉及网站的欺诈活动；通过或从事涉及网站的知识产权侵权行为；\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		9、违反国家法律法规、规章制度、网站有关协议、规定、规则、程序和惯例的其他行为。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		10、本协议终止或更新时，用户未确认新的协议的。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		11、其它本公司认为需终止服务的情况。\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		九、责任声明\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、鉴于网络服务的特殊性，网站不对除基本安全、稳定以外的其他外部干扰、黑客攻击等因素造成的用户与网站服务器之间的连接受阻而无法访问负责。用户同意自己承担因网站意外中断、操作或传输的迟延、电脑病毒、网络连接故障、未经授权的进入等引起的损失。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、因不可抗力或者其他意外事件，使得本协议的履行不可能、不必要或者无意义的，双方均不承担责任。本合同所称之不可抗力意指不能预见、不能避免并不能克服的客观情况，包括但不限于战争、台风、水灾、火灾、雷击或地震、罢工、暴动、法定疾病、黑客攻击、网络病毒、电信部门技术管制、政府行为或任何其它自然或人为造成的灾难等客观情况\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3、本网站无法保证网络信息服务的准确性，对用户因使用网站而造成的损失不负法律责任。用户可通过本网站有关服务获得第三方的某些内容或通往第三方网站的链接，但不表示本网站与这些第三方有任何关系。第三方的网站均由各经营者自行负责，不属于本网站控制及负责范围之内。对于存在或来源于此类网站或资源的任何内容、广告、产品或其它资料，本网站对此不作保证、不承担任何责任、也不负有任何义务。用户对此自行加以判断，并承担因使用该等内容而引起的所有风险，包括但不限于因对内容的正确性、完整性或实用性的依赖而产生的风险 。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		4、用户明确同意其使用本网站服务所存在的风险及其后果将完全由其自己承担，网站对用户不承担任何责任。如因用户违反有关法律、法规或本协议项下的任何条款而给网站或任何其他第三人造成损失，用户同意承担由此造成的损害赔偿责任。\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		十、知识产权\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、本网站及本网站所有内容的选材、整理、编排、排版、汇编，以及由网站创作的文字、图片等作品的著作权，无论是否明示，均属网站所有。任何自然人、法人及其他组织未经网站书面授权或许可，不得修改、出版、传播、参与传播、销售、制作衍生作品，或以其他任何方式使用整体或部分的网站上的内容，包括但不限于公司信息、产品信息，网站将保留追究其法律责任的权利。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、未经网站授权，任何人不得使用网站任何商标、服务标记、标识、域名和其他显著品牌特征的权利。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3、用户不得以他人资料/信息在本网站进行注册和购买商品。不应当将账号、密码转让或出借予他人使用。若发现用户账号遭他人非法使用，应立即通知网站。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		4、用户同意接受本网站通过电子邮件、网页或其他合法方式向用户发送商品促销或其他相关商业信息。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		5、本网站及本网站所有内容均受《中华人民共和国著作权法》、《中华人民共和国商标法》等的法律保护。用户在本网站上发布的信息不得侵犯任何第三人的知识产权，未经相关权利人之事先书面同意，用户不得以任何方式上传、发布、修改、传播或复制任何受著作权保护的材料、商标或属于其他人的专有信息。\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		十一、法律适用及管辖\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、本协议的订立、变更、执行和解释及争议的解决，均应适用中华人民共和国法律。如与本协议有关的某一特定事项缺乏明确法律规定，则应参照通用的国际商业惯例和行业惯例。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、因本协议内容或其执行发生争议，双方应友好协商解决；协商不成时，任何一方均可向公司经营所在地的人民法院提起诉讼。\r\n	</h6>\r\n	<h4 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:20px;\">\r\n		十二、其他\r\n	</h4>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		1、用户使用网站相关服务时，亦应知晓、认可并同意遵守相关服务的额外条款及条件。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		2、如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。\r\n	</h6>\r\n	<h6 style=\"font-family:inherit;font-weight:500;color:inherit;font-size:16px;\">\r\n		3、本协议之条款是可分割的，任何协议条款被认定为无效或不可执行时，不影响其他条款之效力。\r\n	</h6>\r\n</div>','','','',0,1,1242577199,'',0,'','',NULL,0),(21,8,'验货签收','<p style=\"color:#333333;background-color:#FFFFFF;font-family:arial, tahoma, 宋体;\">\r\n	<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; 1. 包裹送达时，建议务必由本人签收，签收前请务必当着快递人员的面查验以下几点：</span>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（1） 商品配送是否准确；</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（2） 包装是否完好；</span>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（3） 商品有无破损；</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（4） 数量是否准确。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;\"><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（5） 如商品需要由您的家人、同事、同学、朋友、物业等代为签收，请您务必告知他们验货注意事项，代为签收后，我们将视同为您本人签收。</span></span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;\"><span style=\"font-family:微软雅黑, sans-serif;\"><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;2. 如在签收时，检查发现：&nbsp;包裹发生严重破损、商品发生损坏、收到商品与实际购买商品不符、商品已过保质期等问题，请不要拒签，务必要求中国邮政出具书面证明材料（CN24正式表格，绿色表格，中英文对照），并拍下清晰完整的照片/视频，并在签收后24小时内联系在线客服，我们会在第一时间为您处理。为保证照片/视频信息完整、有效，请您务必在开箱前进行拍照/录像。</span></span>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;\"><span style=\"font-family:微软雅黑, sans-serif;color:red;\">&nbsp; &nbsp; &nbsp; &nbsp;对于已经购买货损保险的订单，在保险理赔材料齐全的情况下，我们将协助您申请保险理赔，货损情况属实、资料齐全的保险理赔将百分之百理赔成功。如未购买货损保险，我们将协助您直接联系运输方索赔，但是此索赔方式获得赔偿的机率相当低，因此建议您提交订单时购买货损保险。</span></span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;\"><span style=\"font-family:微软雅黑, sans-serif;color:red;\"><br />\r\n</span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;3. 因所有商品均从海外厂家直购，从欧洲发往中国，该过程为国际运输，环绕大半个地球，多重运输、多道关卡，过程颠簸难免，有很多我们无法控制的因素可能导致部分商品会出现外包装轻微破损的情况，如罐装奶粉在运输过程中有可能会出现罐盖掉扣、瘪罐等问题，但是内包装完好，并不会影响品质和使用，此种情况不在保险索赔及退换货范围。</span></span>\r\n</p>\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>','','','质量',0,1,1242577293,'',0,'http://','',NULL,0),(22,8,'退换货原则','<div style=\"margin:0px auto;padding:0px;background-color:#FFFFFF;font-family:Arial, Verdana, sans-serif;\">\r\n	<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp;&nbsp; &nbsp;退款根据以下2种情况进行处理：</span> \r\n		</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（1）国际支付宝规定，跨国转账需要收取3％的手续费，如果您使用支付宝成功下单，但因个人原因，需要退款，国际支付宝方收取您订单的3％的手续费，需由您个人承担手续费；</span> \r\n	</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（2）如果因MyCCCShop（如长时间未发货、缺货、发错货、漏发货、包裹破损等）的原因导致的退款，将全额退款。</span> \r\n		</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\"><br />\r\n</span> \r\n	</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;退款说明：</span> \r\n		</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;因产品质量问题、运输问题出现破损、漏液、爆罐等情况经过提交相关照片证明核实通过符合退货要求的，按照商品购买时的货值金额退还货款。退款金额将退还到网站客户个人中心账户中，客户可以根据自己需要提请提现。</span> \r\n	</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;注：因运费是按照整体包裹实际重量收取的，税费是按照国家法律法规代为收取的，所以退款不退运费和税费。</span> \r\n		</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\"><br />\r\n</span> \r\n	</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;退款时间：</span> \r\n		</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（1）退货商品、拒收商品，自收到您的退回商品之日起，3-5个工作日内完成退款；</span> \r\n	</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（2）因订单取消产生的退款，自订单成功取消后，3-5个工作日内完成退款；</span> \r\n		</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;（3）质量问题退货，运费由巴巴购承担，运费承担标准，以快递公司具体收取费用为准，并提供相应的收据。</span> \r\n	</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\"><br />\r\n</span> \r\n		</p>\r\n<p style=\"color:#666666;font-family:\" background-color:#ffffff;\"=\"\"> <span style=\"font-family:微软雅黑, sans-serif;font-size:14px;line-height:2em;\">&nbsp; &nbsp;&nbsp;</span> \r\n	</p>\r\n</div>\r\n<span style=\"background-color:#FFFFFF;\"><span> \r\n<p class=\"MsoNormal\" style=\"color:#000000;font-size:12px;font-family:Arial, Verdana, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"color:#000000;font-size:12px;font-family:Arial, Verdana, sans-serif;text-indent:-18pt;\">\r\n	<span><span><span><span class=\"Apple-converted-space\"></span></span><span></span></span></span><span style=\"font-family:宋体;font-size:14px;\"><span style=\"font-size:14px;\"></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"color:#000000;font-size:12px;font-family:Arial, Verdana, sans-serif;text-indent:-18pt;\">\r\n	<span style=\"font-size:medium;\"><span><span style=\"font-size:14px;\"></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"background-color:#FFFFFF;font-family:Arial, Verdana, sans-serif;\">\r\n	<span style=\"font-size:14px;\"><span style=\"font-family:宋体;font-size:14px;\"></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"background-color:#FFFFFF;font-family:Arial, Verdana, sans-serif;\">\r\n	<span><span style=\"font-family:宋体;font-size:14px;\"></span><span style=\"font-family:宋体;font-size:14px;\"></span></span> \r\n</p>\r\n<span style=\"font-size:14px;\"></span></span></span> \r\n<p>\r\n	<br />\r\n</p>\r\n<div class=\"__kindeditor_paste__\">\r\n	<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp;MyCCCShop承诺客户实际签收日7天内可以办理退换货。</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;1.&nbsp;</span><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">办理退换货条件如下：<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;（1）收到的商品发生损坏；</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（2）收到商品与实际购买商品不符；</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（3）收到的商品已过保质期。</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\"><br />\r\n</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;2.&nbsp;</span><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">退货流程：</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（1）联系客服，填写“提交退货/退款申请表”，并提供中国邮政开具的开箱证明（CN24，绿色表格，中英文对照）及开箱照片/视频；</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（2）将填写完整的“提交退货/退款申请表”发送至客服；</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（3）<span style=\"background-color:#FFFFFF;\">MyCCCShop</span>审核；</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（4）审核完毕，客服将在1-3个工作日内告知是否可以退货；</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（5）确认可以退货后，需按照指定退货地址将商品退回；</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（6）在确认商品已寄回到指定地址并签收后，客服在签收后的3-5个工作日内办理退款。</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\"><br />\r\n</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;3.&nbsp;</span><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">换货流程：</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（1）联系客服，填写“提交换货申请表”，并提供中国邮政开具的开箱证明（CN24，绿色表格，中英文对照）及开箱照片/视频；</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（2）将填写完整的“提交换货申请表”发送至客服；</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（3）<span style=\"background-color:#FFFFFF;\">MyCCCShop</span>审核；</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（4）审核完毕，客服将在1-3个工作日内告知是否可以换货；</span>\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（5）确认可以换货后，需按照指定退货地址将商品退回；</span>\r\n		</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; color: rgb(102, 102, 102);\"><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;（6）在确认商品已寄回到指定地址并签收后，我们会将更换的产品邮寄给您。</span>\r\n	</p>\r\n	<div>\r\n		<span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\"><br />\r\n</span>\r\n	</div>\r\n</div>','','','服务',0,1,1242577308,'',0,'http://','',NULL,1),(24,9,'网站故障报告','<ul style=\"color:#666666;font-family:Arial, Helvetica, sans-serif;font-size:11px;\">\r\n	<li>\r\n		<span style=\"font-size:16px;\">邮件联系：</span><br />\r\n<br />\r\n	</li>\r\n	<li>\r\n		<span style=\"font-size:16px;\">电话联系：</span><br />\r\n<br />\r\n	</li>\r\n</ul>','','','',0,1,1242577432,'',0,'http://','',NULL,0),(25,9,'选机咨询 ','','','','',0,1,1242577448,'',0,'http://',NULL,NULL,0),(26,9,'投诉与建议 ','<p style=\"vertical-align:baseline;font-family:&quot;color:#424243;\">\r\n	<span style=\"vertical-align:baseline;font-family:MicrosoftYaHei, &quot;\">&nbsp; 尊敬的用户：</span>\r\n</p>\r\n<p style=\"vertical-align:baseline;font-family:&quot;color:#424243;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果您对我们网站的商品及服务有任何的投诉与建议，请您联系我们的客服人员，我们将竭诚为您服务，为此给您带来的不便请您原谅。\r\n</p>\r\n<p style=\"vertical-align:baseline;font-family:&quot;color:#424243;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"vertical-align:baseline;font-family:&quot;color:#424243;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"vertical-align:baseline;font-family:MicrosoftYaHei, &quot;\">• 客服热线：</span>\r\n</p>\r\n<p style=\"vertical-align:baseline;font-family:&quot;color:#424243;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"vertical-align:baseline;font-family:MicrosoftYaHei, &quot;\">• 客服邮箱：</span><span style=\"font-size:14px;\"><span style=\"font-family:微软雅黑, sans-serif;color:red;\"></span></span>\r\n</p>','','','',0,1,1242577459,'',0,'http://','',NULL,0),(27,4,'茶叶中的儿茶素具有美容祛斑作用','<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	柚子营养价值很高，含有非常丰富的蛋白质、有机酸及钙、磷、镁、钠等人体必需的元素，这是其他水果难以比拟的。柚肉中还富含维生素C以及类胰岛素等成分，有降血糖、降血脂、减肥、美肤养颜等功效。经常食用，对高血压、糖尿病、血管硬化等疾病有辅助治疗作用，对肥胖者有健体养颜功能。此外，柚子含有生理活性物质皮甙，可降低血黏度，减少血栓的形成，因此对脑血管疾病也有预防作用。中医认为，柚子味甘酸、性寒，具有理气化痰、润肺清肠、补血健脾等功效，是秋冬季养肺和缓解感冒后咳嗽的良好水果。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"/lizi/images/upload/image/20160911/20160911143938_99291.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	吃柚子也有禁忌：\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	1.柚子不能与某些药品同服\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	临床发现，高脂血症病人用一杯柚子汁送服一片美降脂药片，结果相当于用一杯水送服12～l5片同类药的降血脂作用，病人会因此出现肌肉痛，甚至肾脏病变。一些病人在服用抗过敏药特非那定期间，若吃了柚子或饮了柚子汁，轻则出现头昏、心悸、心律失常等，严重的可能猝死。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	柚子性寒，脾虚泄泻的人吃了柚子会腹泻\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	寒性的食物对于肠胃不好，脾胃虚弱的人来说，无疑是一禁忌。如果特别喜欢柚子的那种味道，建议可以试试将柚子肉煮着吃，或者稍微蒸热食用。冬季吃一些热热的水果，效果不比直接食用差哦。\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 食材推荐》\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 【生鲜食品】红心柚子&nbsp;\r\n</p>','','','',0,1,1242577702,'data/article/1473547337155397249.jpg',2,'http://news.imobile.com.cn/index-a-view-id-66790.html','',NULL,0),(28,11,'品味西湖龙井茶艺的正确方式介绍','<p>\r\n	<br />\r\n</p>\r\n<div class=\"boxCenterList RelaArticle\" id=\"com_v\">\r\n	<p align=\"left\">\r\n		作为一款性价比极高的入门级<span><strong>商务手机</strong></span>，飞利浦<a href=\"mailto:9@9v\">Xenium&nbsp; 9@9v</a>三围大小为105×44×15.8mm，机身重量仅为<strong><span>75g</span></strong>，装配了一块低规格1.75英寸128×160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<span><strong><span>别</span><span>致</span></strong></span>，中部导航键区采用钛金色的“腰带”彰显出浓郁的商务气息。\r\n	</p>\r\n	<p align=\"left\">\r\n		<br />\r\n	</p>\r\n	<p align=\"left\">\r\n		此款手机采用<strong><span>触摸屏</span></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><span>记事提醒</span></strong>，让商务应用更加随意。\r\n	</p>\r\n	<p align=\"left\">\r\n		<br />\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;作为入门级为数不多支持<strong><span>双卡功能</span></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href=\"mailto:9@9V\">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。\r\n	</p>\r\n	<p align=\"left\">\r\n		<br />\r\n	</p>\r\n	<p align=\"left\">\r\n		<br />\r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>','','','',0,1,1242578199,'data/article/1473569803513824442.jpg',2,'http://','作为一款性价比极高的入门级商务手机，飞利浦Xenium  9@9v三围大小为105×44×15.8mm，机身重量仅为75g，装配了一块低规格1.75英寸128×160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为别致，中部导航键区采用钛金色的“腰带”彰显出浓郁的商务气息。',NULL,6),(13,6,'水晶粽怎么做','<p>\r\n	<strong>1、&nbsp;什么是水货？</strong>\r\n</p>\r\n<div class=\"artibody\">\r\n	<p>\r\n		<span> 提及水货手机，按照行业内的说法，可以将水货手机分成三类：A类、B类和C类。 </span> \r\n	</p>\r\n	<p>\r\n		<span>A类水货手机是指由国外、港澳台等地区在没有经过正常海关渠道的情况下进入国内市场的产品，就是我们常说的走私货， 与行货的主要差异是在输入法上，这类手机都是英文输入法或者是港澳台地区的繁体中文输入法。这类手机其最主要的目的是为了逃避国家关税或者因为该种产品曾 经过不正当改装而不能够通过正常渠道入关，质量一般没有大的问题。但由于逃避关税本身就是违法的，所以购买这类手机的用户根本得不到任何售后保障服务； </span> \r\n	</p>\r\n	<p>\r\n		<span>B类水货手机就是走私者将手机的系统软件由英文版升级至中文版后，偷运到内地，然后贴上非法渠道购买的入网标志，作为行货手机充数。 </span> \r\n	</p>\r\n	<p>\r\n		<span>C类水货手机则是那些由其他型号机改装、更换芯片等等方法做假“生产”出来的，或者就是从各地购买手机的部件，自己组装然后再贴上非法购买的入网标志。 </span> \r\n	</p>\r\n	<p>\r\n		<span>水货手机虽然不排除它是原厂正货的可能，但通过市场调研发现，绝大多数水货手机都是改版的次货，而且产品基本没有受国内厂商的保修许可。</span> \r\n	</p>\r\n	<p>\r\n		<span><strong>2、水货有哪些？</strong>水货有两种，一种俗称港行，也称作水行，这种产品原本是在香港 及周边地区销售的，但是经过非法途径进入大陆地区销售。另一种是欧版水改机，也称作欧版，水改等，此种产品以英文改版机为主，通过刷改机内软件达到英文改 中文的目的，原来这类产品是销往欧美地区的，由于和大陆地区有相当大的价格差，所以通过走私进入中国市场。</span> \r\n	</p>\r\n	<p>\r\n		<span><strong>3、水货手机的危害</strong><br />\r\n1、售后服务无保障 <br />\r\n手机作为精密类电子产品，软件、硬件方面都有可能产生不同的问题。购买正规渠道的手机，一旦出现问题，只要将问题反映给厂商客户服务中心并静候佳音就 可以了。大多数走私手机的贩卖点规模较小，根本没有资金和技术能力建立起自己的维修网点，因此他们往往制定非常苛刻的保修条件，将国家明令的一年保修期缩 短为三个月，并加入完全对走私手机经销商有利的诸如“认为摔打”等概念难以界定的排除条件(众所周知，手机很有可能发生摔撞事件)，是确确实实的霸王条 款。规定时间内手机出了故障，走私手机经销商会通过曲解条款尽可能地开脱保修责任。即使他们愿意承担保修服务，也需将手机发往广州、深圳等地，委托他人维 修。一来路途漫长，二来经手人繁多，小问题“修”成了大问题。最终走私手机经销商会以无法维修为由劝客户自行去当地正规客服维修。至于维修费用，他们自然 也不愿意出了。<br />\r\n<br />\r\n2、产品本身质量不过关<br />\r\n&nbsp;&nbsp;&nbsp; 现在很多奸商为了谋取暴利，经常使用C类的翻修或者组装手机冒充A类水货手机进行销售。作为消费者来说面对和正规行货之间巨大的价格差异，他们无法分辨想要购买的手机是否象销售商说的那样质量过硬，在销售商的巧舌如簧下只能眼看自己的钱包“减肥”。 </span> \r\n	</p>\r\n	<p>\r\n		<span>但是这类翻修或者组装的水货手机往往为了降低成本，其采用的配件往往也是不合格产品，甚至也是伪劣产品，可以想象由这样产品组装起来的手机的质量究竟可以好到那里去。目前在经常看到手机电池爆炸伤人的事件的报道，究其原因也是消费者购买了这些组装的水货手机。</span> \r\n	</p>\r\n	<p>\r\n		<span>而且不光这类手机硬件存在问题，包括手机使用的软件。由于组装的水货硬件规格根本无法保证和原场产品一致，手机使用的软件也会造成和手机硬件的冲突。频繁死机就是家常便饭，更有甚者会造成经常性的电话本丢失，无法联系到好友。</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n<span><strong>4、如何分辨行、水货手机？</strong><br />\r\n1、看手机上是否贴有信息产业部“进网许可”标志。水货与正品的入网标志稍微有一点不同：真的入网标志一般都是针式打印机打印的，数字清晰，颜色较浅，仔细看有针打的凹痕；假的入网标志一般是普通喷墨打印机打印的，数字不很清晰，颜色较深，没有凹痕。 </span> \r\n	</p>\r\n	<p>\r\n		<span>2、检查手机的配置，包括中文说明书、电池、充电器等，如果是厂家原配，一般均贴有厂家的激光防伪标志。原厂配置的 中文说明书通常印刷精美，并与其他语言的说明书及相关产品资料的印刷质量、格式、风格等保持一致。不是原厂家配置的中文说明书通常印刷质量低劣，常出现错 别字，甚至字迹模糊。正品手机的包装盒中均附带有原厂合格证、原厂条码卡、原厂保修卡，而水货则没有。 </span> \r\n	</p>\r\n	<p>\r\n		<span>3、确认经销商的保修条例是否与厂家一致，在购买手机时应索要发票和保修卡。 </span> \r\n	</p>\r\n	<p>\r\n		<span>4、电子串号是否一致也是验证是否水货手机的重要途径。首先在手机上按“*#06#”，一般会在手机上显示15个数 字，这就是本手机的IMEI码。然后打开手机的电池盖，在手机里有一张贴纸，上面也有一个IMEI码，这个码应该同手机上显示的IMEI码完全一致。然后 再检查手机的外包装盒上的贴纸，上面也应该有一个IMEI码，这个码也应该同手机上显示的IMEI码完全一致。如果此三个码有不一致的地方，这个手机就有 问题。</span> \r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','','','',0,1,1242576911,'data/article/1476596773867633994.eBjSsphXXcJOXXa_!!0-dgshop.jpg',2,'http://','',NULL,17),(14,6,'哈密瓜西米露','<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"line-height:1.5;\">炎热的夏季正是喝冷饮的好时节，小编今天科普一下哈密瓜西米露的做法，</span><span style=\"line-height:1.5;\">赶紧来get新技能吧~</span> \r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<span style=\"line-height:1.5;\"><img src=\"/lizi/images/upload/image/20160911/20160911144445_14801.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 哈密瓜西米露做法步骤如下：\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<img src=\"/lizi/images/upload/image/20160911/20160911144502_25474.jpg\" alt=\"\" /><br />\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 1、准备好哈密瓜、牛奶、西米、白糖、煮锅等原料和器具；\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 2、锅里装适量水烧开，倒入洗干净的西米；\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 3、一边煮一边搅拌西米，防止粘锅底；\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 4、煮的过程中西米会由白色慢慢变得透明，在白色剩下三分之一左右的时<span style=\"line-height:1.5;\">候，关火将西米沥出，用冷水冲洗一遍；</span> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 5、冷水冲洗的西米再次用开水煮一会，直至完全变透明，沥出，用冷开水<span style=\"line-height:1.5;\">冲洗一遍；</span> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 6、在汤锅内倒入牛奶，放一定量的白糖加热，待白糖完全融化，放凉后加<span style=\"line-height:1.5;\">入煮好的西米；</span> \r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 7、哈密瓜用挖球器挖成一颗颗小球；\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"line-height:1.5;\">&nbsp; &nbsp; 8、将哈密瓜球放进牛奶西米里，美味的哈密瓜西米露就做好了，冰冻一下</span><span style=\"line-height:1.5;\">再吃味道更好哦~</span> \r\n</div>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 食材推荐&gt;&gt;\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp;&nbsp;新疆西州蜜甜瓜\r\n</p>','','','',0,1,1242576927,'data/article/1473549171836957742.jpg',2,'http://','炎热的夏季正是喝冷饮的好时节，小编今天科普一下哈密瓜西米露的做法，赶紧来get新技能吧~',NULL,3),(31,12,'诺基亚6681手机广告欣赏','<object>\n<param value=\"always\" name=\"allowScriptAccess\" />\n<param value=\"transparent\" name=\"wmode\" />\n<param value=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" name=\"movie\" /><embed width=\"480\" height=\"385\" src=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" allowscriptaccess=\"always\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></object>','','','',0,1,1242579069,'',0,'http://',NULL,NULL,0),(34,12,'3G知识普及','<p>&nbsp;</p>\r\n<h2>3G知识普及</h2>\r\n<div class=\"t_msgfont\" id=\"postmessage_8792145\"><font color=\"black\">3G，全称为3rd Generation，中文含义就是指第三代数字通信。<br />\r\n</font><br />\r\n<font color=\"black\">　　1995年问世的第一代<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A3%C4%E2\">模拟</span>制式<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CA%D6%BB%FA\">手机</span>（1G）只能进行<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D3%EF%D2%F4\">语音</span>通话；<br />\r\n</font><br />\r\n<font color=\"black\">　　1996到1997年出现的第二代GSM、TDMA等数字制式手机（2G）便增加了接收数据的功能，如接收电子邮件或网页；<br />\r\n</font><br />\r\n<font color=\"black\">　　3G不是2009年诞生的，它是上个世纪的产物，而早在2007年国外就已经产生4G了，而<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>也于2008年成功开发出<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>4G，其网络传输的速度可达到每秒钟2G，也就相当于下一部电影只要一秒钟。在上世纪90年末的日韩电影如《我的野蛮女友》中，女主角使用的可以让对方看见自己的视频<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%B5%E7%BB%B0\">电话</span>，就是属于3G技术的重要运用之一。日韩等国3G的运用是上世纪末期的事。而目前国外有些地区已经试运行3.5G甚至4G网络。<br />\r\n</font><br />\r\n<font color=\"black\">　 </font><font color=\"black\">（以下为误导）2009年问世的第三代（3G）与 前两代的主要区别是在传输声音和数据的速度上的提升，它能够在全球范围内更好地实现无缝漫游，并处理图像、音乐、视频流等多种媒体形式，提供包括网页浏 览、电话会议、电子商务等多种信息服务，同时也要考虑与已有第二代系统的良好兼容性。为了提供这种服务，无线网络必须能够支持不同的数据传输速度，也就是 说在室内、室外和行车的环境中能够分别支持至少2Mbps（兆比特／每秒）、384kbps（千比特／每秒）以及144kbps的传输速度。（此数值根据 网络环境会发生变化)。<br />\r\n</font><br />\r\n<font color=\"black\">　　3G标准，国际电信联盟(ITU)目前一共确定了全球四大3G标准，它们分别是WCDMA、CDMA2000和TD-SCDMA和WiMAX。</font><br />\r\n<br />\r\n<font color=\"black\">3G标准　　国际电信联盟（ITU）在2000年5月确定W-CDMA、CDMA2000、TD-SCDMA以 及WiMAX四大主流无线接口标准，写入3G技术指导性文件《2000年国际移动通讯计划》（简称IMT&mdash;2000）。 CDMA是Code Division Multiple Access (码分多址)的缩写，是第三代移动通信系统的技术基础。第一代移动通信系统采用频分多址(FDMA)的模拟调制方式，这种系统的主要缺点是频谱利用率低， 信令干扰话音业务。第二代移动通信系统主要采用时分多址(TDMA)的数字调制方式，提高了系统容量，并采用独立信道传送信令，使系统性能大大改善，但 TDMA的系统容量仍然有限，越区切换性能仍不完善。CDMA系统以其频率规划简单、系统容量大、频率复用系数高、抗多径能力强、通信质量好、软容量、软 切换等特点显示出巨大的发展潜力。下面分别介绍一下3G的几种标准：<br />\r\n</font><br />\r\n<br />\r\n<font color=\"black\">　　 </font><br />\r\n<font color=\"black\">(1) W-CDMA</font><font color=\"black\"><br />\r\n</font><br />\r\n<br />\r\n<font color=\"black\">　　也称为WCDMA，全称为Wideband CDMA，也称为CDMA Direct Spread，意为宽频分码多重存取，这是基于GSM网发展出来的3G技术规范，是欧洲提出的宽带CDMA技术，它与日本提出的宽带CDMA技术基本相 同，目前正在进一步融合。W-CDMA的支持者主要是以GSM系统为主的欧洲厂商，日本公司也或多或少参与其中，包括欧美的爱立信、阿尔卡特、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C5%B5%BB%F9%D1%C7\">诺基亚</span>、 朗讯、北电，以及日本的NTT、富士通、夏普等厂商。 该标准提出了GSM(2G)-GPRS-EDGE-WCDMA(3G)的演进策略。这套系统能够架设在现有的GSM网络上，对于系统提供商而言可以较轻易 地过渡，但是GSM系统相当普及的亚洲对这套新技术的接受度预料会相当高。因此W-CDMA具有先天的市场优势。<br />\r\n</font><br />\r\n<br />\r\n<font color=\"black\">　　 </font><br />\r\n<font color=\"black\">(2)CDMA2000</font><font color=\"black\"><br />\r\n</font><br />\r\n<br />\r\n<font color=\"black\">　　CDMA2000是由窄带CDMA(CDMA IS95)技术发展而来的宽带CDMA技术，也称为CDMA Multi-Carrier，它是由美国高通北美公司为主导提出，<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A6%CD%D0%C2%DE%C0%AD\">摩托罗拉</span>、Lucent 和后来加入的韩国三星都有参与，韩国现在成为该标准的主导者。这套系统是从窄频CDMAOne数字标准衍生出来的，可以从原有的CDMAOne结构直接升 级到3G，建设成本低廉。但目前使用CDMA的地区只有日、韩和北美，所以CDMA2000的支持者不如W-CDMA多。不过CDMA2000的研发技术 却是目前各标准中进度最快的，许多3G手机已经率先面世。该标准提出了从CDMA IS95(2G)-CDMA20001x-CDMA20003x(3G)的演进策略。CDMA20001x被称为2.5代移动通信技术。 CDMA20003x与CDMA20001x的主要区别在于应用了多路载波技术，通过采用三载波使带宽提高。目前<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA%B5%E7%D0%C5\">中国电信</span>正在采用这一方案向3G过渡，并已建成了CDMA IS95网络。<br />\r\n</font><br />\r\n<br />\r\n<font color=\"black\">　　 </font><br />\r\n<font color=\"black\">(3)TD-SCDMA</font><font color=\"black\"><br />\r\n</font><br />\r\n<br />\r\n<font color=\"black\">　　全称为Time Division - Synchronous CDMA(时分<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA)，该标准是由中国大陆独自制定的3G标准，1999年6月29日，中国原邮电部电信科学技术研究院（大唐电信）向ITU提出。该标准将智能无线、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA和<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C8%ED%BC%FE\">软件</span>无 线电等当今国际领先技术融于其中，在频谱利用率、对业务支持具有灵活性、频率灵活性及成本等方面的独特优势。另外，由于中国内的庞大的市场，该标准受到各 大主要电信设备厂商的重视，全球一半以上的设备厂商都宣布可以支持TD&mdash;SCDMA标准。 该标准提出不经过2.5代的中间环节，直接向3G过渡，非常适用于GSM系统向3G升级。<br />\r\n</font><br />\r\n<br />\r\n<font color=\"black\">　　 </font><br />\r\n<font color=\"black\">(4)WiMAX</font><font color=\"black\"><br />\r\n</font><br />\r\n<br />\r\n<font color=\"black\">　　WiMAX 的全名是微波存取全球互通(Worldwide Interoperability for Microwave Access)，又称为802&middot;16无线城域网，是又一种为企业和家庭用户提供&ldquo;最后一英里&rdquo;的宽带无线连接方案。将此技术与需要授权或免授权的微波设备 相结合之后，由于成本较低，将扩大宽带无线市场，改善企业与服务供应商的认知度。2007年10月19日，国际电信联盟在日内瓦举行的无线通信全体会议 上，经过多数国家投票通过，WiMAX正式被批准成为继WCDMA、CDMA2000和TD-SCDMA之后的第四个全球3G标准。</font></div>\r\n<p>&nbsp;</p>','','','',0,1,1465578360,'',0,'http://','','自定义TITLE',0),(35,4,'常喝普洱茶可避免脂肪堆积','<p>\r\n	<strong> </strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>中秋节月饼可是主角是必不可少的食物哦，你知道月饼怎么吃最养生吗？今天小编带来健康小常识教你怎么吃月饼最养生!</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<strong><img src=\"/lizi/images/upload/image/20160911/20160911143813_64239.jpg\" alt=\"\" /> </strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>品清茶 尝月饼</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>吃甜味月饼饮花茶最好，有香甜兼收之妙;吃咸味月饼饮乌龙茶或绿茶为佳，有清香爽口之感。浓茶和咖啡中含较高的咖啡因，汽水、可乐或果汁等含有大量热量和糖份，与月饼搭配吃无助于健康，而且更油腻。</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>酸味水果配月饼</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>月饼搭配时令水果食用也是有讲究的。可多选择橙色、酸味、富含维生素C的品种，如奇异果、番石榴、橙子、西瓜和香蕉等。这些水果能对高脂肪、高蛋白物质的代谢起到抗氧化作用，从而保护心脑血管。</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>但像桃、李、杏、梨和苹果等水果含糖分太高，榴莲含高蛋白和高热量，应节制食用。</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>柚子配月饼口腔爽</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>柚子是中秋节的必备品之一，因为“柚”与“佑”谐音，也是希望月亮保佑的意思。吃了甜月饼，再吃点甜酸的柚子，既开胃，又解油腻，让口腔有清爽感。</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>在中秋节吃柚子的时候，将柚子的绿色外皮削掉，然后将柚子的白色内膜取下，可煮肉做菜吃;而晒干，就是一种天然的蚊香了!使用方法和一般蚊香一样，但是是天然的。</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>菱角煮粥解油腻</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>中秋节吃菱角，据说能让孩子长得聪明伶利。菱角的大多数吃法是将菱角用清水(或盐水)煮熟，然后剥壳当零食吃;也可以将剥了壳的菱角加米煮成咸味的白稀粥，在吃了甜腻的月饼后，喝上一碗菱角粥，胃中的油腻当场去除不少。</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>先咸后甜</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>吃月饼还应注意：先咸后甜。如同时有甜咸两种月饼，要先吃咸的后吃甜的，否则就品尝不出月饼的味道来。</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>&nbsp; &nbsp;食材推荐》</strong>\r\n</p>\r\n<p style=\"text-indent:2em;color:#424242;font-family:\'Microsoft YaHei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<strong>&nbsp; &nbsp; 【糕点】五仁月饼</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n<strong><br />\r\n</strong> \r\n</p>','','','',0,1,1242974613,'data/article/1473547324395830399.jpg',2,'http://','',NULL,1),(36,6,'猪皮，竟然有如此神效！真是吓死本宝宝了~的做法','','','','',0,1,1473547606,'',0,'http://','',NULL,2),(37,6,'洋葱菜谱：新洋葱吃法--凉拌洋葱的做法','','','','吃',0,1,1473547636,'',0,'http://','',NULL,5),(38,11,'大红袍是什么茶系的茶','','','','吃',0,1,1473547926,'',0,'http://','',NULL,1),(39,11,'茶艺师的普洱茶茶艺解说词','','','','吃',0,1,1473547946,'',0,'http://','',NULL,1),(41,4,'苹果醒酒茶缓解酒后肠胃不适','','','','',0,1,1476766064,'',0,'http://','',NULL,1),(42,4,'常喝茶 摆脱肝病不再是难题','','','','',0,1,1476766082,'',0,'http://','',NULL,1),(43,4,'关于治咽喉炎中药茶的介绍','','','','',0,1,1476766095,'',0,'http://','',NULL,1),(44,11,'如何冲泡一杯香气浓郁的龙井茶','','','','',0,1,1476766168,'',0,'http://','',NULL,1),(45,11,'茶艺表演的历史发展','','','','',0,1,1476766196,'',0,'http://','',NULL,1);

/*Table structure for table `ecs_article_cat` */

DROP TABLE IF EXISTS `ecs_article_cat`;

CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `page_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_article_cat` */

insert  into `ecs_article_cat`(`cat_id`,`cat_name`,`cat_type`,`keywords`,`cat_desc`,`sort_order`,`show_in_nav`,`parent_id`,`page_title`) values (1,'系统分类',2,'','系统保留分类',50,0,0,''),(2,'网店信息',3,'','网店信息分类',50,0,1,''),(3,'网店帮助分类',4,'','网店帮助分类',50,0,1,''),(4,'攻略',1,'','',50,0,11,'自定义TITLE'),(5,'交易方式',5,'','',50,0,3,''),(6,'玩具课堂',1,'','手机常识 ',50,0,11,''),(7,'支付与物流 ',5,'','配送与支付 ',51,0,3,''),(8,'服务保证 ',5,'','',52,0,3,''),(9,'联系我们 ',5,'','联系我们 ',54,0,3,''),(10,'会员中心',5,'','',53,0,3,''),(11,'研究院',1,'','',50,0,0,''),(12,'达人评测',1,'','',50,0,11,'');

/*Table structure for table `ecs_attribute` */

DROP TABLE IF EXISTS `ecs_attribute`;

CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_attribute` */

insert  into `ecs_attribute`(`attr_id`,`cat_id`,`attr_name`,`attr_input_type`,`attr_type`,`attr_values`,`attr_index`,`sort_order`,`is_linked`,`attr_group`) values (8,1,'段数',1,1,'0-6个月\r\n6-10个月\r\n10-12个月\r\n1岁以上\r\n2岁以上',1,0,1,0),(9,1,'重量',0,0,'',0,0,0,0);

/*Table structure for table `ecs_auction_log` */

DROP TABLE IF EXISTS `ecs_auction_log`;

CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_auction_log` */

/*Table structure for table `ecs_auto_manage` */

DROP TABLE IF EXISTS `ecs_auto_manage`;

CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_auto_manage` */

/*Table structure for table `ecs_back_goods` */

DROP TABLE IF EXISTS `ecs_back_goods`;

CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_back_goods` */

/*Table structure for table `ecs_back_order` */

DROP TABLE IF EXISTS `ecs_back_order`;

CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_back_order` */

/*Table structure for table `ecs_bonus_type` */

DROP TABLE IF EXISTS `ecs_bonus_type`;

CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_bonus_type` */

/*Table structure for table `ecs_booking_goods` */

DROP TABLE IF EXISTS `ecs_booking_goods`;

CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_booking_goods` */

/*Table structure for table `ecs_brand` */

DROP TABLE IF EXISTS `ecs_brand`;

CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `brand_banner` varchar(80) NOT NULL COMMENT '商品品牌banner',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_brand` */

insert  into `ecs_brand`(`brand_id`,`brand_name`,`brand_logo`,`brand_desc`,`site_url`,`sort_order`,`is_show`,`brand_banner`) values (1,'沐涩','1483844463925131378.png','','http://',1000,1,''),(14,'爱他美','','','',10001,1,'');

/*Table structure for table `ecs_card` */

DROP TABLE IF EXISTS `ecs_card`;

CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_card` */

/*Table structure for table `ecs_cart` */

DROP TABLE IF EXISTS `ecs_cart`;

CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `fencheng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_cart` */

insert  into `ecs_cart`(`rec_id`,`user_id`,`session_id`,`goods_id`,`goods_sn`,`product_id`,`group_id`,`goods_name`,`market_price`,`goods_price`,`goods_number`,`goods_attr`,`is_real`,`extension_code`,`parent_id`,`rec_type`,`is_gift`,`is_shipping`,`can_handsel`,`goods_attr_id`,`fencheng`) values (63,0,'95e09672cb0340fca91b464b82eaa431',48,'CCC000048',0,'','德国爱他美aptamil白金版婴儿配方奶粉Pre段 0-6个月 ','270.00','225.00',2,'',1,'',0,0,0,0,0,'','0');

/*Table structure for table `ecs_cart_combo` */

DROP TABLE IF EXISTS `ecs_cart_combo`;

CREATE TABLE `ecs_cart_combo` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `fencheng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_cart_combo` */

insert  into `ecs_cart_combo`(`rec_id`,`user_id`,`session_id`,`goods_id`,`goods_sn`,`product_id`,`group_id`,`goods_name`,`market_price`,`goods_price`,`goods_number`,`goods_attr`,`is_real`,`extension_code`,`parent_id`,`rec_type`,`is_gift`,`is_shipping`,`can_handsel`,`goods_attr_id`,`fencheng`) values (20,0,'4a00650a353ddfff81b89daabda697db',49,'ECS000049',0,'m_goods_0_49','1分钱支付测试商品','0.01','0.01',1,'',1,'',0,0,0,1,0,'',''),(29,0,'c3e2b99cd7bea827581fe4130b976c45',49,'ECS000049',0,'m_goods_0_49','1分钱支付测试商品','0.01','0.01',1,'',1,'',0,0,0,1,0,'','0'),(30,0,'c3e2b99cd7bea827581fe4130b976c45',1,'ECS000000',4,'m_goods_0_49','新鲜水果甜蜜香脆单果约800克','231.60','193.00',1,'重量:500克 \n外观:红色 \n款式:时尚款 \n',1,'',49,0,0,1,0,'4,7,1','');

/*Table structure for table `ecs_cat_recommend` */

DROP TABLE IF EXISTS `ecs_cat_recommend`;

CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_cat_recommend` */

/*Table structure for table `ecs_category` */

DROP TABLE IF EXISTS `ecs_category`;

CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  `is_top_style` int(3) unsigned NOT NULL DEFAULT '0',
  `is_top_show` int(3) unsigned NOT NULL DEFAULT '0',
  `cat_ico` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_category` */

insert  into `ecs_category`(`cat_id`,`cat_name`,`keywords`,`cat_desc`,`parent_id`,`sort_order`,`template_file`,`measure_unit`,`show_in_nav`,`style`,`is_show`,`grade`,`filter_attr`,`is_top_style`,`is_top_show`,`cat_ico`) values (1,'个护、美妆类','','',0,200,'','',0,'',1,0,'',0,0,''),(2,'家装、工具类','','',0,600,'','',0,'',1,0,'',0,0,''),(3,'厨具、电器、家庭清洁','','',0,400,'','',0,'',1,0,'',0,0,''),(4,'母婴、玩具类','','',0,100,'','',0,'',1,0,'',0,0,''),(5,'营养、保健类','','',0,500,'','',0,'',1,0,'',0,0,''),(67,'巧克力','','',6,310,'','',0,'',1,0,'',0,0,''),(103,'眼部护理','','',11,216,'','',0,'',1,0,'',0,0,''),(68,'饮品','','',6,330,'','',0,'',1,0,'',0,0,''),(6,'食品、饮品类','','',0,300,'','',0,'',1,0,'',0,0,''),(7,'医疗护理、器械类','','',0,700,'','',0,'',1,0,'',0,0,''),(9,'美妆','','',1,260,'','',0,'',1,0,'',0,0,''),(10,'口腔护理','','',1,240,'','',0,'',1,0,'',0,0,''),(11,'面部护肤','','',1,210,'','',0,'',1,0,'',0,0,''),(14,'洗发护发','','',1,220,'','',0,'',1,0,'',0,0,''),(15,'身体护理','','',1,230,'','',0,'',1,0,'',0,0,''),(16,'女性护理','','',1,250,'','',0,'',1,0,'',0,0,''),(31,'妈妈用品','','',4,150,'','',0,'',1,0,'',0,0,''),(33,'营养辅食','','',4,120,'','',0,'',1,0,'',0,0,''),(34,'益智玩具','','',4,140,'','',0,'',1,0,'',0,0,''),(36,'宝宝奶粉','','',4,110,'','',0,'',1,0,'',0,0,''),(37,'宝宝护理','','',4,130,'','',0,'',1,0,'',0,0,''),(38,'喂养用品','','',4,160,'','',0,'',1,0,'',0,0,''),(56,'糖果','','',6,320,'','',0,'',1,0,'',0,0,''),(57,'爱他美Aptamil','','',36,111,'','',0,'',1,0,'',0,0,''),(58,'医疗护理、器械类二级分类1','','',7,710,'','',0,'',1,0,'',0,0,''),(59,'医疗护理、器械类二级分类2','','',7,720,'','',0,'',1,0,'',0,0,''),(60,'医疗护理、器械类二级分类3','','',7,730,'','',0,'',1,0,'',0,0,''),(61,'医疗护理、器械类二级分类4','','',7,740,'','',0,'',1,0,'',0,0,''),(62,'医疗护理、器械类二级分类5','','',7,750,'','',0,'',1,0,'',0,0,''),(63,'医疗护理、器械类二级分类6','','',7,760,'','',0,'',1,0,'',0,0,''),(64,'医疗护理、器械类二级分类7','','',7,770,'','',0,'',1,0,'',0,0,''),(70,'休闲零食','','',6,350,'','',0,'',1,0,'',0,0,''),(98,'医疗护理、器械类三级分类1','','',58,711,'','',0,'',1,0,'',0,0,''),(99,'喜宝Hipp','','',36,112,'','',0,'',1,0,'',0,0,''),(73,'咖啡','','',6,340,'','',0,'',1,0,'',0,0,''),(102,'面膜','','',11,215,'','',0,'',1,0,'',0,0,''),(101,'精华','','',11,214,'','',0,'',1,0,'',0,0,''),(100,'面霜','','',11,213,'','',0,'',1,0,'',0,0,''),(77,'手动工具','','',2,620,'','',0,'',1,0,'',0,0,''),(78,'电动工具','','',2,640,'','',0,'',1,0,'',0,0,''),(79,'测量工具','','',2,660,'','',0,'',1,0,'',0,0,''),(80,'机电设备','','',2,610,'','',0,'',1,0,'',0,0,''),(81,'零件耗材','','',2,630,'','',0,'',1,0,'',0,0,''),(82,'电子物料','','',2,650,'','',0,'',1,0,'',0,0,''),(95,'调节三高','','',5,530,'','',0,'',1,0,'',0,0,''),(96,'补血补铁','','',5,540,'','',0,'',1,0,'',0,0,''),(85,'WMF福腾宝厨具','','',3,420,'','',0,'',1,0,'',0,0,''),(86,'Zwilling双立人厨具','','',3,410,'','',0,'',1,0,'',0,0,''),(87,'Fissler菲仕乐厨具','','',3,430,'','',0,'',1,0,'',0,0,''),(88,'维生素','','',5,510,'','',0,'',1,0,'',0,0,''),(89,'矿物质','','',5,520,'','',0,'',1,0,'',0,0,''),(90,'Brita碧然德','','',3,440,'','',0,'',1,0,'',0,0,''),(91,'骨骼健康','','',5,560,'','',0,'',1,0,'',0,0,''),(97,'家庭清洁','','',3,460,'','',0,'',1,0,'',0,0,''),(93,'减肥塑身','','',5,550,'','',0,'',1,0,'',0,0,''),(94,'厨房家电','','',3,450,'','',0,'',1,0,'',0,0,''),(104,'洁面','','',11,211,'','',0,'',1,0,'',0,0,''),(107,'雀巢贝巴BEBA','','',36,116,'','',0,'',1,0,'',0,0,''),(106,'爽肤水','','',11,212,'','',0,'',1,0,'',0,0,''),(108,'洗发','','',14,211,'','',0,'',1,0,'',0,0,''),(109,'护发','','',14,212,'','',0,'',1,0,'',0,0,''),(110,'泓乐Holle','','',36,114,'','',0,'',1,0,'',0,0,''),(111,'染发','','',14,213,'','',0,'',1,0,'',0,0,''),(112,'造型','','',14,214,'','',0,'',1,0,'',0,0,''),(113,'特福芬Töpfer','','',36,113,'','',0,'',1,0,'',0,0,''),(114,'美乐宝Milupa','','',36,115,'','',0,'',1,0,'',0,0,''),(115,'沐浴','','',15,231,'','',0,'',1,0,'',0,0,''),(116,'身体乳','','',15,232,'','',0,'',1,0,'',0,0,''),(117,'手部护理','','',15,233,'','',0,'',1,0,'',0,0,''),(121,'米粉米糊','','',33,123,'','',0,'',1,0,'',0,0,''),(119,'足部护理','','',15,234,'','',0,'',1,0,'',0,0,''),(120,'防晒','','',15,235,'','',0,'',1,0,'',0,0,''),(122,'牙膏','','',10,241,'','',0,'',1,0,'',0,0,''),(123,'牙刷','','',10,242,'','',0,'',1,0,'',0,0,''),(124,'有机果泥','','',33,126,'','',0,'',1,0,'',0,0,''),(125,'电动牙刷','','',10,243,'','',0,'',1,0,'',0,0,''),(126,'漱口液','','',10,244,'','',0,'',1,0,'',0,0,''),(127,'牙线','','',10,245,'','',0,'',1,0,'',0,0,''),(128,'宝宝甜点','','',33,122,'','',0,'',1,0,'',0,0,''),(129,'宝宝面条','','',33,124,'','',0,'',1,0,'',0,0,''),(130,'卫生巾','','',16,251,'','',0,'',1,0,'',0,0,''),(131,'辅食油','','',33,121,'','',0,'',1,0,'',0,0,''),(132,'卫生棉条','','',16,252,'','',0,'',1,0,'',0,0,''),(133,'吸吸乐','','',33,125,'','',0,'',1,0,'',0,0,''),(134,'私密护理','','',16,253,'','',0,'',1,0,'',0,0,''),(135,'脱毛','','',16,254,'','',0,'',1,0,'',0,0,''),(136,'底妆','','',9,261,'','',0,'',1,0,'',0,0,''),(137,'眼妆','','',9,262,'','',0,'',1,0,'',0,0,''),(138,'唇部','','',9,265,'','',0,'',1,0,'',0,0,''),(139,'腮红','','',9,263,'','',0,'',1,0,'',0,0,''),(140,'遮瑕','','',9,264,'','',0,'',1,0,'',0,0,''),(141,'美甲','','',9,266,'','',0,'',1,0,'',0,0,''),(142,'儿童护肤','','',37,133,'','',0,'',1,0,'',0,0,''),(143,'儿童防晒','','',37,135,'','',0,'',1,0,'',0,0,''),(144,'儿童牙膏牙刷','','',37,131,'','',0,'',1,0,'',0,0,''),(145,'洗澡用品','','',37,132,'','',0,'',1,0,'',0,0,''),(146,'尿不湿','','',37,134,'','',0,'',1,0,'',0,0,''),(147,'奶瓶奶嘴','','',38,162,'','',0,'',1,0,'',0,0,''),(148,'水杯水壶','','',38,164,'','',0,'',1,0,'',0,0,''),(149,'儿童餐具','','',38,165,'','',0,'',1,0,'',0,0,''),(150,'辅食料理机','','',38,161,'','',0,'',1,0,'',0,0,''),(152,'吸奶器','','',38,163,'','',0,'',1,0,'',0,0,''),(153,'孕妈专业洗护','','',31,155,'','',0,'',1,0,'',0,0,''),(154,'孕妈专用药妆','','',31,152,'','',0,'',1,0,'',0,0,''),(155,'孕妈营养品','','',31,153,'','',0,'',1,0,'',0,0,''),(156,'孕妈保健品','','',31,154,'','',0,'',1,0,'',0,0,''),(157,'妈咪包 背婴帯','','',31,151,'','',0,'',1,0,'',0,0,''),(158,'维他命A','','',88,511,'','',0,'',1,0,'',0,0,''),(159,'乐高Lego','','',34,144,'','',0,'',1,0,'',0,0,''),(160,'Playmobil','','',34,141,'','',0,'',1,0,'',0,0,''),(161,'芭比Babie','','',34,142,'','',0,'',1,0,'',0,0,''),(162,'维他命B','','',88,512,'','',0,'',1,0,'',0,0,''),(163,'维他命C','','',88,513,'','',0,'',1,0,'',0,0,''),(164,'维他命D','','',88,514,'','',0,'',1,0,'',0,0,''),(165,'儿童学步车','','',34,143,'','',0,'',1,0,'',0,0,''),(166,'维他命E','','',88,515,'','',0,'',1,0,'',0,0,''),(167,'多种维他命','','',88,516,'','',0,'',1,0,'',0,0,''),(168,'钙','','',89,521,'','',0,'',1,0,'',0,0,''),(169,'镁','','',89,522,'','',0,'',1,0,'',0,0,''),(170,'铁','','',89,523,'','',0,'',1,0,'',0,0,''),(171,'锌','','',89,524,'','',0,'',1,0,'',0,0,''),(172,'其他','','',89,525,'','',0,'',1,0,'',0,0,''),(173,'软糖','','',56,322,'','',0,'',1,0,'',0,0,''),(174,'含片','','',56,323,'','',0,'',1,0,'',0,0,''),(175,'儿童糖果','','',56,321,'','',0,'',1,0,'',0,0,''),(176,'刀具','','',86,411,'','',0,'',1,0,'',0,0,''),(177,'炒锅','','',86,412,'','',0,'',1,0,'',0,0,''),(178,'炖锅','','',86,413,'','',0,'',1,0,'',0,0,''),(179,'高压锅','','',86,415,'','',0,'',1,0,'',0,0,''),(180,'套装','','',86,414,'','',0,'',1,0,'',0,0,''),(181,'威化饼干','','',67,312,'','',0,'',1,0,'',0,0,''),(182,'其他用品','','',86,416,'','',0,'',1,0,'',0,0,''),(183,'夹心巧克力','','',67,311,'','',0,'',1,0,'',0,0,''),(184,'养生茶','','',68,336,'','',0,'',1,0,'',0,0,''),(185,'蛋白粉','','',68,332,'','',0,'',1,0,'',0,0,''),(186,'刀具','','',85,421,'','',0,'',1,0,'',0,0,''),(187,'炒锅','','',85,422,'','',0,'',1,0,'',0,0,''),(188,'炖锅','','',85,423,'','',0,'',1,0,'',0,0,''),(189,'套装','','',85,424,'','',0,'',1,0,'',0,0,''),(190,'高压锅','','',85,425,'','',0,'',1,0,'',0,0,''),(191,'其他','','',85,426,'','',0,'',1,0,'',0,0,''),(192,'脱脂有机奶粉','','',68,334,'','',0,'',1,0,'',0,0,''),(193,'功能饮料','','',68,335,'','',0,'',1,0,'',0,0,''),(194,'刀具','','',87,431,'','',0,'',1,0,'',0,0,''),(195,'养生果蔬汁','','',68,333,'','',0,'',1,0,'',0,0,''),(196,'炒锅','','',87,432,'','',0,'',1,0,'',0,0,''),(197,'冰酒','','',68,331,'','',0,'',1,0,'',0,0,''),(198,'炖锅','','',87,433,'','',0,'',1,0,'',0,0,''),(199,'套装','','',87,434,'','',0,'',1,0,'',0,0,''),(200,'饼干','','',70,352,'','',0,'',1,0,'',0,0,''),(201,'坚果','','',70,353,'','',0,'',1,0,'',0,0,''),(202,'麦片','','',70,354,'','',0,'',1,0,'',0,0,''),(203,'意面','','',70,351,'','',0,'',1,0,'',0,0,''),(204,'咖啡机','','',94,451,'','',0,'',1,0,'',0,0,''),(205,'面包机','','',94,452,'','',0,'',1,0,'',0,0,''),(206,'咖啡豆','','',73,341,'','',0,'',1,0,'',0,0,''),(207,'速溶咖啡','','',73,342,'','',0,'',1,0,'',0,0,''),(208,'空气炸锅','','',94,453,'','',0,'',1,0,'',0,0,''),(209,'榨汁机','','',94,454,'','',0,'',1,0,'',0,0,''),(210,'洗洁精','','',97,461,'','',0,'',1,0,'',0,0,''),(211,'清洁剂','','',97,462,'','',0,'',1,0,'',0,0,''),(212,'清洁布','','',97,463,'','',0,'',1,0,'',0,0,''),(213,'多功能维修工具','','',77,50,'','',0,'',1,0,'',0,0,''),(214,'洗衣液','','',97,464,'','',0,'',1,0,'',0,0,''),(215,'洗衣机清洗剂','','',97,465,'','',0,'',1,0,'',0,0,''),(216,'水平尺','','',77,50,'','',0,'',1,0,'',0,0,''),(217,'家具护理液','','',97,466,'','',0,'',1,0,'',0,0,''),(218,'润滑油','','',77,50,'','',0,'',1,0,'',0,0,''),(219,'工具箱','','',77,50,'','',0,'',1,0,'',0,0,''),(220,'刀剪','','',77,50,'','',0,'',1,0,'',0,0,''),(221,'多功能电钻','','',78,50,'','',0,'',1,0,'',0,0,''),(222,'起子机','','',78,50,'','',0,'',1,0,'',0,0,''),(223,'切割机','','',78,50,'','',0,'',1,0,'',0,0,''),(224,'抛光机','','',78,50,'','',0,'',1,0,'',0,0,''),(225,'焊接装备','','',78,50,'','',0,'',1,0,'',0,0,''),(226,'电动工具电池充电器','','',78,50,'','',0,'',1,0,'',0,0,''),(227,'红外线测量尺','','',79,50,'','',0,'',1,0,'',0,0,''),(228,'墙体探测仪','','',79,50,'','',0,'',1,0,'',0,0,''),(229,'装修内窥镜','','',79,50,'','',0,'',1,0,'',0,0,''),(230,'断路器','','',80,50,'','',0,'',1,0,'',0,0,''),(231,'开关','','',80,50,'','',0,'',1,0,'',0,0,''),(232,'配电箱','','',80,50,'','',0,'',1,0,'',0,0,''),(233,'Wogo','','',82,50,'','',0,'',1,0,'',0,0,''),(234,'B&R','','',82,50,'','',0,'',1,0,'',0,0,''),(235,'Arduino','','',82,50,'','',0,'',1,0,'',0,0,'');

/*Table structure for table `ecs_collect_goods` */

DROP TABLE IF EXISTS `ecs_collect_goods`;

CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_collect_goods` */

/*Table structure for table `ecs_comment` */

DROP TABLE IF EXISTS `ecs_comment`;

CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_comment` */

/*Table structure for table `ecs_crons` */

DROP TABLE IF EXISTS `ecs_crons`;

CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_crons` */

/*Table structure for table `ecs_delivery_goods` */

DROP TABLE IF EXISTS `ecs_delivery_goods`;

CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_delivery_goods` */

/*Table structure for table `ecs_delivery_order` */

DROP TABLE IF EXISTS `ecs_delivery_order`;

CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_delivery_order` */

/*Table structure for table `ecs_email_list` */

DROP TABLE IF EXISTS `ecs_email_list`;

CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_email_list` */

/*Table structure for table `ecs_email_sendlist` */

DROP TABLE IF EXISTS `ecs_email_sendlist`;

CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_email_sendlist` */

/*Table structure for table `ecs_error_log` */

DROP TABLE IF EXISTS `ecs_error_log`;

CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_error_log` */

/*Table structure for table `ecs_exchange_goods` */

DROP TABLE IF EXISTS `ecs_exchange_goods`;

CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_exchange_goods` */

insert  into `ecs_exchange_goods`(`goods_id`,`exchange_integral`,`is_exchange`,`is_hot`) values (9,999,1,0),(7,998,1,0),(1,998,1,0),(2,88,1,1);

/*Table structure for table `ecs_favourable_activity` */

DROP TABLE IF EXISTS `ecs_favourable_activity`;

CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_favourable_activity` */

/*Table structure for table `ecs_feedback` */

DROP TABLE IF EXISTS `ecs_feedback`;

CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_feedback` */

/*Table structure for table `ecs_friend_link` */

DROP TABLE IF EXISTS `ecs_friend_link`;

CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_friend_link` */

insert  into `ecs_friend_link`(`link_id`,`link_name`,`link_url`,`link_logo`,`show_order`) values (1,'CCC德国官网','http://www.ccc-global.de','',50),(2,'CCC中国官网','http://www.ccc-global.com','',50);

/*Table structure for table `ecs_goods` */

DROP TABLE IF EXISTS `ecs_goods`;

CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  `sales_volume` int(10) unsigned NOT NULL DEFAULT '0',
  `comments_number` int(10) unsigned NOT NULL DEFAULT '0',
  `bb_chicun` char(28) NOT NULL,
  `mobile_desc` text,
  `fencheng` varchar(255) DEFAULT NULL,
  `sales_count` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_shipai` text NOT NULL,
  `sales_volume_base` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量基数',
  `min_number` tinyint(10) DEFAULT '0',
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_goods` */

insert  into `ecs_goods`(`goods_id`,`cat_id`,`goods_sn`,`goods_name`,`goods_name_style`,`click_count`,`brand_id`,`provider_name`,`goods_number`,`goods_weight`,`market_price`,`shop_price`,`promote_price`,`promote_start_date`,`promote_end_date`,`warn_number`,`keywords`,`goods_brief`,`goods_desc`,`goods_thumb`,`goods_img`,`original_img`,`is_real`,`extension_code`,`is_on_sale`,`is_alone_sale`,`is_shipping`,`integral`,`add_time`,`sort_order`,`is_delete`,`is_best`,`is_new`,`is_hot`,`is_promote`,`bonus_type_id`,`last_update`,`goods_type`,`seller_note`,`give_integral`,`rank_integral`,`suppliers_id`,`is_check`,`sales_volume`,`comments_number`,`bb_chicun`,`mobile_desc`,`fencheng`,`sales_count`,`goods_shipai`,`sales_volume_base`,`min_number`) values (41,38,'CCC000041','test5','+',10,0,'',9996,'0.000','322.80','269.00','219.00',1483776000,1546848000,1,'','商品描述','','','','',1,'',1,1,0,2,1521967457,100,0,1,0,1,1,0,1521992491,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',2,'',0,0),(42,38,'CCC000042','test6','+',3,0,'',9999,'0.000','322.80','269.00','219.00',1483776000,1546848000,1,'','商品描述','','','','',1,'',1,1,0,2,1521967487,100,0,1,0,1,1,0,1521992473,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',0,'',0,0),(43,38,'CCC000043','dddd','+',4,0,'',9999,'0.000','322.80','269.00','219.00',1483776000,1546848000,1,'','商品描述','','','','',1,'',1,1,0,2,1521967558,100,0,1,0,1,1,0,1521992455,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',0,'',0,0),(44,38,'CCC000044','dddddd','+',0,0,'',9999,'0.000','322.80','269.00','219.00',1483776000,1546848000,1,'','双马达50频震动 智能远程互动','','','','',1,'',1,1,0,2,1521967568,100,0,1,0,1,1,0,1521967568,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',0,'',0,0),(45,38,'CCC000045','bbbbb','+',3,0,'',9999,'0.000','322.80','269.00','219.00',1483776000,1546848000,1,'','商品描述','','','','',1,'',1,1,0,2,1521967611,100,0,1,0,1,1,0,1521992437,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',0,'',0,0),(46,38,'CCC000046','ccccc','+',4,0,'',9999,'0.000','322.80','269.00','219.00',1483776000,1546848000,1,'','商品描述','','','','',1,'',1,1,0,2,1521967623,100,0,1,0,1,1,0,1521992424,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',0,'',0,0),(39,38,'CCC000039','test','+',2,0,'',9986,'0.000','322.80','269.00','219.00',1483776000,1546848000,1,'','商品描述','','','','',1,'',1,1,0,2,1521967430,100,0,1,0,1,1,0,1521992396,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',0,'',0,0),(40,38,'CCC000040','test','+',14,0,'',9998,'0.000','322.80','269.00','219.00',1483776000,1546848000,1,'','商品描述','','','','',1,'',1,1,0,2,1521967443,100,0,1,0,1,1,0,1521992521,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',0,'',0,0),(48,36,'CCC000048','德国爱他美aptamil白金版婴儿配方奶粉Pre段 0-6个月 ','+',11,14,'',100,'0.900','270.00','225.00','0.00',0,0,1,'德国 Aptamil 爱他美 婴幼儿奶粉 10-12个月','Aptamil全球顶级品牌，新鲜直达。','','images/201803/thumb_img/48_thumb_G_1522030214664.jpg','images/201803/goods_img/48_G_1522030214322.jpg','images/201803/source_img/48_G_1522030214187.png',1,'',1,1,0,2,1522028306,100,0,0,0,0,0,0,1523191895,1,'',-1,-1,0,NULL,0,0,'',NULL,'0',0,'',100,6);

/*Table structure for table `ecs_goods_activity` */

DROP TABLE IF EXISTS `ecs_goods_activity`;

CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_goods_activity` */

insert  into `ecs_goods_activity`(`act_id`,`act_name`,`act_desc`,`act_type`,`goods_id`,`product_id`,`goods_name`,`start_time`,`end_time`,`is_finished`,`ext_info`) values (1,'智灵通乳酸钙 乳酸钙冲剂(5g*40包）','',1,1,0,'智灵通乳酸钙 乳酸钙冲剂(5g*40包）',1472544000,1472889600,0,'a:4:{s:12:\"price_ladder\";a:2:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:99;}i:1;a:2:{s:6:\"amount\";i:20;s:5:\"price\";d:88;}}s:15:\"restrict_amount\";i:99;s:13:\"gift_integral\";i:9;s:7:\"deposit\";d:99;}'),(2,'尚可诗果条草莓口味22g','',1,3,0,'尚可诗果条草莓口味22g',1472544000,1472889600,0,'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:85;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:9;s:7:\"deposit\";d:88;}'),(3,'【顶峰】2016新茶 特级明前五星-致远-西湖龙井单罐50g','',1,1,0,'【顶峰】2016新茶 特级明前五星-致远-西湖龙井单罐50g',1483776000,1484121600,0,'a:4:{s:12:\"price_ladder\";a:3:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:50;}i:1;a:2:{s:6:\"amount\";i:20;s:5:\"price\";d:48;}i:2;a:2:{s:6:\"amount\";i:30;s:5:\"price\";d:45;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:99;}');

/*Table structure for table `ecs_goods_article` */

DROP TABLE IF EXISTS `ecs_goods_article`;

CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_goods_article` */

/*Table structure for table `ecs_goods_attr` */

DROP TABLE IF EXISTS `ecs_goods_attr`;

CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  `hex_color` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_goods_attr` */

insert  into `ecs_goods_attr`(`goods_attr_id`,`goods_id`,`attr_id`,`attr_value`,`attr_price`,`thumb_url`,`img_url`,`img_original`,`hex_color`) values (67,48,9,'900 g','0','','','','');

/*Table structure for table `ecs_goods_cat` */

DROP TABLE IF EXISTS `ecs_goods_cat`;

CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_goods_cat` */

/*Table structure for table `ecs_goods_gallery` */

DROP TABLE IF EXISTS `ecs_goods_gallery`;

CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_goods_gallery` */

insert  into `ecs_goods_gallery`(`img_id`,`goods_id`,`img_url`,`img_desc`,`thumb_url`,`img_original`) values (93,48,'images/201803/goods_img/48_P_1522030214396.png','','images/201803/thumb_img/48_thumb_P_1522030214379.jpg','images/201803/source_img/48_P_1522030214523.png');

/*Table structure for table `ecs_goods_type` */

DROP TABLE IF EXISTS `ecs_goods_type`;

CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_goods_type` */

insert  into `ecs_goods_type`(`cat_id`,`cat_name`,`enabled`,`attr_group`) values (1,'10001婴儿奶粉',1,''),(2,'100001test',1,'');

/*Table structure for table `ecs_group_goods` */

DROP TABLE IF EXISTS `ecs_group_goods`;

CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_group_goods` */

/*Table structure for table `ecs_ip_log` */

DROP TABLE IF EXISTS `ecs_ip_log`;

CREATE TABLE `ecs_ip_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `u_id` int(20) DEFAULT NULL,
  `state` int(2) DEFAULT '0',
  `phone_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=864 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_ip_log` */

insert  into `ecs_ip_log`(`id`,`ip`,`u_id`,`state`,`phone_state`) values (43,'112.97.37.235',42,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Coolpad 7620L Build/JLS36C) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.51_r733746.462 NetType/3gnet'),(44,'182.131.10.30',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(45,'112.64.235.252',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(46,'180.153.206.26',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(47,'171.212.222.51',53,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/WIFI'),(48,'171.213.61.155',53,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI'),(49,'112.65.193.15',53,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(50,'182.131.10.30',53,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/ctlte'),(51,'171.213.61.155',53,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/WIFI'),(52,'119.4.252.128',53,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.4 NetType/3G+'),(53,'119.4.252.232',53,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.0.1 NetType/NONWIFI'),(54,'14.17.11.196',60,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(55,'180.153.163.186',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(56,'101.226.33.239',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(57,'180.153.214.192',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(58,'163.177.69.59',60,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(59,'101.226.51.228',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(60,'14.17.37.143',60,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(61,'180.153.161.217',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(62,'163.177.82.14',60,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(63,'101.226.33.221',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(64,'112.64.235.254',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(65,'101.226.33.203',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(66,'123.151.139.156',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L00 Build/HuaweiP7-L00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.108_r1107173.543 NetType/WIFI'),(67,'101.226.89.117',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(68,'101.226.33.226',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(69,'120.210.182.130',66,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7108 Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.1.361'),(70,'59.40.208.89',68,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.1.1 NetType/WIFI'),(71,'14.17.37.143',69,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3C Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(72,'101.226.89.119',69,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(73,'101.226.102.97',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(74,'180.153.163.186',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(75,'101.226.103.62',62,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; A0001 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025410 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(76,'101.226.69.108',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(77,'101.226.66.179',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(78,'180.153.161.55',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(79,'222.73.76.253',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(80,'101.226.125.16',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0'),(81,'101.226.61.186',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0'),(82,'101.226.125.109',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0'),(83,'101.226.33.238',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(84,'101.226.125.18',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0'),(85,'180.153.81.159',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A501 Safari/8536.25 MicroMessenger/6.1.0'),(86,'123.151.139.156',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L00 Build/HuaweiP7-L00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.108_r1107173.543 NetType/3gnet'),(87,'101.226.66.180',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(88,'124.161.23.60',37,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(89,'112.64.235.245',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(90,'182.131.10.29',39,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(91,'124.161.23.61',39,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(92,'112.64.235.245',39,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(93,'112.65.193.13',39,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(94,'182.131.12.11',37,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(95,'59.59.236.81',75,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.1.1 NetType/WIFI'),(96,'180.153.205.253',39,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(97,'101.226.33.226',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(98,'101.226.61.189',77,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(99,'101.226.33.201',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(100,'182.131.12.11',39,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(101,'124.161.23.60',39,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(102,'180.153.214.198',39,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(103,'180.153.211.172',39,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(104,'180.153.214.200',39,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(105,'101.226.68.217',77,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(106,'180.153.163.206',77,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(107,'180.153.163.209',77,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(108,'180.153.206.37',77,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(109,'101.126.47.60',69,1,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.4 NetType/WIFI'),(110,'180.153.201.212',69,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(111,'111.161.57.31',70,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3C Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(112,'180.153.206.22',69,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(113,'101.226.33.239',70,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(114,'101.126.47.60',70,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.4 NetType/WIFI'),(115,'222.73.76.253',70,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(116,'123.184.17.231',94,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.4 NetType/WIFI'),(117,'58.62.254.82',111,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI'),(118,'223.104.1.248',111,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/3G+'),(119,'123.151.139.155',107,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; GT-N7108 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(120,'101.226.33.216',107,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(121,'180.153.206.20',107,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(122,'114.96.153.55',112,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.4 NetType/WIFI'),(123,'180.153.201.217',60,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(124,'101.226.89.14',109,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(125,'101.226.33.203',109,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(126,'180.153.206.19',109,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(127,'125.86.109.121',113,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI'),(128,'123.151.42.50',115,1,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(129,'180.153.205.252',115,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(130,'123.151.42.50',117,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(131,'180.153.206.22',117,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(132,'14.210.2.170',118,0,'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; GT-I9220 Build/IMM76D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(133,'123.151.12.154',119,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HM NOTE 1LTETD Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(134,'180.153.206.19',119,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(135,'183.13.180.226',121,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.5 NetType/WIFI'),(136,'14.17.37.69',124,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; MyPhone Agua Iceberg Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025410 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(137,'101.226.66.179',124,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(138,'180.153.163.208',117,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(139,'183.195.233.90',101,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(140,'101.226.125.119',101,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(141,'180.153.163.209',101,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(142,'113.108.11.50',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(143,'180.153.214.192',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(144,'101.226.33.206',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(145,'180.153.206.23',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(146,'14.150.54.35',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/cmnet'),(147,'183.232.47.144',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.3.2.559 U3/0.8.0 Mobile Safari/534.30'),(148,'36.41.141.189',129,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.4 NetType/WIFI'),(149,'117.136.50.63',129,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.4 NetType/3G+'),(150,'183.232.47.181',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.3.2.559 U3/0.8.0 Mobile Safari/534.30'),(151,'118.114.161.168',37,0,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.5.1000 Chrome/30.0.1599.101 Safari/537.36'),(152,'180.153.201.79',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(153,'36.41.141.189',130,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B466 Safari/600.1.4'),(154,'175.25.160.7',131,0,'Mozilla/5.0 (iPad; CPU OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B435 MicroMessenger/6.1.5 NetType/WIFI'),(155,'14.17.37.144',124,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; MyPhone Agua Iceberg Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(156,'112.64.235.252',124,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(157,'112.247.95.244',132,0,'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo A3800-d Build/LenovoA3800-d) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36 MicroMessenger/6.1.0.77_r1124278.543 NetType/WIFI'),(158,'101.226.103.62',132,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; A0001 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025410 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(159,'14.17.37.143',133,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(160,'180.153.214.191',133,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(161,'183.61.51.191',133,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(162,'101.226.33.201',133,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(163,'219.133.40.15',126,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G7109 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(164,'180.153.206.31',126,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(165,'180.153.206.16',126,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(166,'14.17.34.237',126,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G7109 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(167,'112.65.193.14',126,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(168,'101.226.89.122',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(169,'120.151.135.16',134,0,'Mozilla/5.0 (Linux; Android 4.4.4; SM-N910G Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/6.1.0.113_r1119855.543 NetType/WIFI'),(170,'180.153.214.152',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(171,'14.17.37.68',127,1,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(172,'101.226.33.200',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(173,'112.64.235.245',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(174,'14.145.225.73',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.3.2.559 U3/0.8.0 Mobile Safari/534.30'),(175,'101.226.33.224',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(176,'120.210.168.247',144,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 QQ/5.5.1.426 NetType/WIFI Mem/52'),(177,'223.104.1.135',142,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1 NetType/3G+'),(178,'183.232.118.13',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(179,'101.226.66.192',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(180,'123.151.12.152',150,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L02 Build/HDH60-L02) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(181,'101.226.33.216',150,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(182,'14.17.37.146',152,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; PE-CL00 Build/HuaweiPE-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(183,'180.153.201.79',152,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(184,'219.133.40.14',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(185,'180.153.201.217',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(186,'183.232.90.37',153,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI G750-T00 Build/HuaweiG750-T00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(187,'180.153.163.189',153,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(188,'180.153.211.172',153,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(189,'180.153.206.20',115,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(190,'1.63.107.176',158,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Nibiru H1 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(191,'180.153.163.186',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(192,'14.158.224.11',159,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/6.0.0.56_r856074.501 NetType/WIFI'),(193,'118.114.160.118',37,0,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.5.1000 Chrome/30.0.1599.101 Safari/537.36'),(194,'101.226.66.193',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(195,'118.114.160.118',37,0,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0'),(196,'101.226.65.108',152,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(197,'182.145.92.52',160,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(198,'183.246.72.39',161,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; vivo X1St Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(199,'180.153.201.35',161,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; N1T Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.77_r1124278.543 NetType/WIFI'),(200,'180.153.214.191',161,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(201,'180.153.201.35',162,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; N1T Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.77_r1124278.543 NetType/WIFI'),(202,'183.246.72.39',162,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; vivo X1St Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(203,'180.153.114.197',161,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(204,'180.153.211.172',162,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(205,'180.153.205.253',161,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(206,'123.151.139.155',107,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; GT-N7108 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(207,'183.61.51.196',163,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; A820t Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(208,'180.153.201.217',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(209,'180.153.214.178',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(210,'180.153.206.13',163,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(211,'180.153.206.34',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(212,'180.153.163.189',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(213,'114.225.191.248',168,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_6 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11B651 MicroMessenger/6.1.1 NetType/WIFI'),(214,'183.7.98.106',170,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI'),(215,'183.18.254.98',169,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36'),(216,'14.17.37.144',163,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; A820t Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(217,'101.226.65.104',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(218,'101.226.33.204',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(219,'112.64.235.251',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(220,'182.145.126.124',160,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(221,'180.153.206.36',107,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(222,'219.133.40.15',174,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Coolpad 8675-FHD Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(223,'101.226.51.227',174,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(224,'180.153.206.24',174,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(225,'112.64.235.252',174,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(226,'111.161.57.49',175,0,'Mozilla/5.0 (Linux; U; Android 4.0.8; zh-cn; xiaomi2 Build/GRK39F) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.115_r1125081.543 NetType/WIFI'),(227,'101.226.89.116',175,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(228,'118.113.216.44',37,0,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0'),(229,'101.226.66.179',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(230,'123.151.42.49',178,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Lenovo A788t Build/S104) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/cmnet'),(231,'101.226.51.228',178,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(232,'101.226.33.224',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(233,'222.73.76.253',37,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(234,'180.153.206.16',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(235,'180.153.161.55',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(236,'180.153.163.186',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(237,'112.65.193.14',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(238,'118.113.216.44',37,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; YL-Coolpad_9150/4.1.034.130514.9150; 540*960; CTC/2.0) CoolpadWebkit/534.30'),(239,'121.11.102.84',181,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/WIFI'),(240,'124.161.23.61',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(241,'101.226.65.105',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(242,'180.153.206.26',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(243,'112.90.138.78',163,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; A820t Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(244,'101.226.65.108',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(245,'180.153.201.15',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(246,'183.10.191.111',182,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B436 MicroMessenger/6.1.5 NetType/WIFI'),(247,'118.113.216.44',37,0,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.5.1000 Chrome/30.0.1599.101 Safari/537.36'),(248,'101.226.89.120',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(249,'111.161.57.31',70,1,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3C Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(250,'115.173.52.192',70,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(251,'180.153.163.208',70,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(252,'120.87.202.205',187,0,'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; JY-G2 Build/IMM76D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(253,'180.153.163.189',187,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(254,'125.46.53.150',190,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36'),(255,'116.23.222.246',193,0,'Mozilla/5.0 (Linux; Android 5.0; SM-N9008V Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(256,'116.1.90.143',195,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(257,'183.10.184.49',182,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B436 MicroMessenger/6.1.5 NetType/WIFI'),(258,'111.161.57.31',200,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G610-T11 Build/HuaweiG610-T11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(259,'112.65.193.15',200,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(260,'101.226.33.226',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(261,'101.226.33.221',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(262,'113.67.156.197',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI G7-TL00 Build/HuaweiG7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(263,'112.65.193.15',127,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(264,'180.153.206.18',208,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(265,'219.133.40.16',208,1,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; U51GT-W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.57_r1024329.540 NetType/WIFI'),(266,'14.17.37.43',208,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(267,'163.177.82.14',208,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; U51GT-W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.57_r1024329.540 NetType/WIFI'),(268,'163.177.82.14',209,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; U51GT-W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.57_r1024329.540 NetType/WIFI'),(269,'163.177.82.13',208,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(270,'101.226.33.226',208,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(271,'112.90.138.78',208,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; G621-TL00 Build/HonorG621-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.76_r1119377.543 NetType/WIFI'),(272,'180.153.201.214',208,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(273,'61.151.218.118',209,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(274,'124.14.163.231',210,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(275,'124.14.163.231',210,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.0 NetType/WIFI'),(276,'124.161.23.11',213,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(277,'112.64.235.248',213,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(278,'58.16.196.55',213,0,'Mozilla/5.0 (Linux; Android 4.4.4; MI 4W Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI'),(279,'180.153.163.186',213,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(280,'180.153.201.15',213,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(281,'180.153.206.17',145,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(282,'14.120.87.24',145,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Che1-CL20 Build/Che1-CL20) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(283,'180.153.206.21',145,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(284,'14.17.37.68',145,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Che1-CL20 Build/Che1-CL20) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(285,'112.64.235.89',145,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(286,'111.161.57.31',212,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Coolpad Y76 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(287,'101.226.66.192',212,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(288,'180.153.206.33',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(289,'112.83.162.141',216,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(290,'101.226.125.15',217,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Coolpad T1 Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.77_r1124278.543 NetType/WIFI'),(291,'180.153.214.152',217,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(292,'106.84.36.220',218,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(293,'58.67.151.49',219,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(294,'112.12.41.82',220,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI P6-C00 Build/HuaweiP6-C00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(295,'117.78.186.90',219,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(296,'180.153.201.64',219,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(297,'112.64.235.249',219,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(298,'221.226.46.130',222,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.1.5 NetType/WIFI'),(299,'121.225.122.237',222,0,'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2376.0 Safari/537.36'),(300,'121.225.122.237',222,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(301,'111.17.188.73',226,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HM NOTE 1W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(302,'123.151.153.35',224,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9502 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(303,'101.226.51.228',224,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(304,'111.161.52.28',224,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9502 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(305,'112.65.193.13',224,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(306,'101.226.89.193',85,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI G620-L72 Build/HuaweiG620-L72) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(307,'101.226.33.205',85,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(308,'101.226.125.19',232,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; HTC T329d Build/JRO03C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(309,'101.226.89.121',232,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(310,'101.226.33.204',232,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(311,'61.130.246.72',232,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; HTC T329d Build/JRO03C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/ctwap'),(312,'123.151.42.47',235,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Coolpad 7620L Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(313,'180.153.161.217',235,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(314,'101.226.66.187',235,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(315,'101.226.51.228',235,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(316,'58.61.208.46',237,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN'),(317,'222.240.7.96',239,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN'),(318,'14.17.37.161',240,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; OBEE V10 Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(319,'180.153.201.216',240,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(320,'58.243.254.207',247,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN'),(321,'101.226.125.14',249,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-TL10 Build/HuaweiMT7-TL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.1.0.74_r1098891.543 NetType/WIFI'),(322,'180.153.214.180',249,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(323,'218.28.223.186',253,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN'),(324,'117.24.80.33',256,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2 NetType/WIFI Language/zh_CN'),(325,'117.24.80.33',256,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12A405 MicroMessenger/6.0.2 NetType/WIFI'),(326,'116.27.128.14',257,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI'),(327,'123.151.64.142',261,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.1.0.76_r1119377.543 NetType/WIFI'),(328,'180.153.212.13',261,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(329,'182.140.184.88',262,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Coolpad 7620L Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.53_r1166628.561 NetType/WIFI Language/zh_CN'),(330,'180.153.214.176',262,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(331,'183.60.52.5',229,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; SM-G9200 Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025437 Mobile Safari/533.1 MicroMessenger/6.1.0.75_r1101790.543 NetType/WIFI'),(332,'123.151.139.155',262,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; U9180 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.76_r1119377.543 NetType/cmnet'),(333,'101.226.33.203',262,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(334,'182.131.12.36',213,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/3gnet Language/zh_CN'),(335,'221.13.63.114',213,0,'Mozilla/5.0 (Linux; Android 4.4.4; MI 4W Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/3gnet'),(336,'101.226.33.205',213,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(337,'182.131.12.12',266,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM-N9009 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(338,'112.64.235.246',266,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(339,'111.40.2.115',267,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN'),(340,'219.133.40.13',268,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.1.0.66_r1062275.542 NetType/WIFI'),(341,'112.64.235.251',268,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(342,'101.226.68.141',271,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; HTC 801e Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN'),(343,'180.153.206.26',271,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(344,'222.88.66.29',271,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; HTC 801e Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN'),(345,'222.88.66.29',271,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN'),(346,'222.88.66.29',273,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HM 1SW Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025410 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(347,'118.113.217.222',37,0,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.5.3000 Chrome/30.0.1599.101 Safari/537.36'),(348,'180.153.212.13',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(349,'117.136.11.132',124,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.2 NetType/3G+ Language/zh_CN'),(350,'101.226.125.122',298,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; C2 Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/3gnet Language/zh_CN'),(351,'101.226.33.206',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(352,'180.153.206.17',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(353,'183.195.232.37',298,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; C2 Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/3gnet Language/zh_CN'),(354,'180.153.206.13',298,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(355,'180.153.214.152',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(356,'180.170.233.167',314,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN'),(357,'123.151.42.57',294,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; vivo X3t Build/JOP40D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.53_r1166628.561 NetType/WIFI Language/zh_CN'),(358,'180.153.211.190',294,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(359,'101.226.66.191',294,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(360,'112.64.235.246',294,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(361,'101.226.68.217',294,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+'),(362,'116.21.210.166',324,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.5 NetType/WIFI'),(363,'115.214.143.136',325,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; Lenovo A936 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.4.2.585 U3/0.8.0 Mobile Safari/534.30'),(364,'163.177.82.14',331,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2SC Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN'),(365,'219.133.40.13',331,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2SC Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN'),(366,'101.226.66.178',331,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(367,'112.64.235.245',331,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(368,'61.151.218.118',331,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(369,'101.226.61.184',354,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; NX503A Build/LMY48B) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN'),(370,'180.153.206.33',354,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(371,'112.231.125.118',354,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; NX503A Build/LMY48B) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN'),(372,'180.153.214.198',354,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(373,'119.115.82.100',357,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B436 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(374,'119.115.82.100',357,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/WIFI'),(375,'101.226.61.186',358,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/WIFI Language/zh_CN'),(376,'112.65.193.15',358,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(377,'112.64.235.250',358,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(378,'183.195.232.17',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(379,'180.153.201.15',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(380,'101.226.125.109',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(381,'101.226.33.201',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(382,'113.132.21.86',361,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(383,'118.113.217.248',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; CHM-CL00 Build/CHM-CL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.5.1.597 U3/0.8.0 Mobile Safari/534.30'),(384,'14.17.37.161',362,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI B199 Build/HuaweiB199) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(385,'163.177.69.107',362,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI B199 Build/HuaweiB199) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025436 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(386,'101.226.65.104',362,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(387,'182.131.10.30',366,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; X9180 Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/WIFI Language/zh_CN'),(388,'116.238.183.52',351,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(389,'123.151.42.50',364,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MX4 Pro Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/cmnet Language/zh_CN'),(390,'223.104.20.75',364,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MX4 Pro Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/cmnet Language/zh_CN'),(391,'61.130.246.71',369,0,'Mozilla/5.0 (Linux; Android 4.4.4; 2014821 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/6.2.0.52_r1162382.561 NetType/ctwap Language/zh_CN'),(392,'101.226.65.105',369,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(393,'220.181.132.220',369,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(394,'101.199.112.51',369,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(395,'101.199.108.52',369,0,'Mozilla/5.0 (Linux; U; Android 4.0.3; zh-cn; M032 Build/IML74K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(396,'111.10.225.165',372,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_5 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11B601 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(397,'110.88.132.23',373,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(398,'180.153.161.55',369,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(399,'180.153.214.178',369,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(400,'101.226.65.104',369,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(401,'39.190.57.137',374,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Coolpad 8675 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/WIFI Language/zh_CN'),(402,'175.155.112.40',376,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 5891Q Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(403,'180.153.214.189',376,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(404,'112.64.235.252',376,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(405,'175.155.112.40',376,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 5891Q Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(406,'123.166.20.34',378,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(407,'101.226.125.109',379,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-I8552 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(408,'180.153.163.206',379,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(409,'61.130.246.76',369,0,'Mozilla/5.0 (Linux; Android 4.4.4; 2014821 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/6.2.0.52_r1162382.561 NetType/ctwap Language/zh_CN'),(410,'180.153.206.37',369,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(411,'182.140.184.85',371,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Che1-CL10 Build/Che1-CL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.50_raae3e65.580 NetType/ctlte Language/zh_CN'),(412,'101.226.89.116',371,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(413,'183.60.52.5',229,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; SM-G9200 Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025439 Mobile Safari/533.1 MicroMessenger/6.1.0.75_r1101790.543 NetType/cmnet'),(414,'180.153.214.176',229,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(415,'182.131.12.11',380,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Coolpad 9190L Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025411 Mobile Safari/533.1 MicroMessenger/6.1.0.73_r1097298.543 NetType/WIFI'),(416,'180.153.206.36',380,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(417,'210.22.52.85',31,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(418,'222.90.196.165',361,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(419,'222.90.196.165',361,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4'),(420,'223.95.92.46',382,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(421,'42.236.167.252',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SCH-I959 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(422,'101.226.89.14',298,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SCH-I959 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(423,'113.143.205.64',361,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4'),(424,'182.140.184.85',390,0,'Mozilla/5.0 (Linux; U; Android 5.0; zh-cn; PLK-AL10 Build/HONORPLK-AL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(425,'112.64.235.89',390,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(426,'101.226.125.119',384,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/3gnet Language/zh_CN'),(427,'180.153.206.26',384,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(428,'101.226.33.216',384,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(429,'140.207.55.80',384,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/3gnet Language/zh_CN'),(430,'101.226.89.121',384,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(431,'123.151.42.50',395,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(432,'180.153.214.152',395,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(433,'180.153.206.26',395,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(434,'112.64.235.249',395,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(435,'180.153.205.254',395,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(436,'180.153.214.197',395,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(437,'112.65.193.13',395,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(438,'42.88.67.184',398,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN'),(439,'171.214.151.171',37,0,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.6.2000 Chrome/30.0.1599.101 Safari/537.36'),(440,'101.226.66.178',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(441,'101.226.125.118',384,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/3gnet Language/zh_CN'),(442,'14.17.37.144',394,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; vivo Xplay3S Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(443,'180.153.206.25',394,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(444,'123.151.42.46',401,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G730-U00 Build/HuaweiG730-U00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(445,'1.85.32.130',401,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G730-U00 Build/HuaweiG730-U00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(446,'121.227.18.67',397,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.1.1 NetType/WIFI'),(447,'180.153.163.189',401,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(448,'113.108.137.234',381,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN'),(449,'182.131.10.30',408,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-T10 Build/HuaweiH30-T10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(450,'180.153.201.15',408,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(451,'182.131.10.29',39,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(452,'101.226.33.226',39,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(453,'180.153.214.176',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(454,'14.17.37.43',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(455,'111.73.49.13',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.8 Mobile Safari/537.36'),(456,'112.64.235.249',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(457,'101.226.65.106',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(458,'180.153.214.200',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(459,'163.177.82.14',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(460,'112.64.235.253',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(461,'180.153.205.252',47,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(462,'14.17.37.162',413,0,'Mozilla/5.0 (Linux; U; Android 5.0; zh-cn; HUAWEI GRA-TL00 Build/HUAWEIGRA-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(463,'180.153.212.13',413,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(464,'180.153.214.176',413,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(465,'101.226.33.220',413,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(466,'14.17.37.162',413,0,'Mozilla/5.0 (Linux; U; Android 5.0; zh-cn; HUAWEI GRA-TL00 Build/HUAWEIGRA-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/cmnet Language/zh_CN'),(467,'113.47.27.174',415,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN'),(468,'113.44.166.183',415,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN'),(469,'180.153.206.22',394,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(470,'1.90.144.131',417,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN'),(471,'123.151.42.52',417,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Coolpad 8675 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.0.54_r1169949.561 NetType/WIFI Language/zh_CN'),(472,'112.64.235.246',417,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(473,'101.226.102.97',417,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(474,'123.151.42.46',419,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2S Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(475,'121.29.242.217',419,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2S Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(476,'180.153.206.35',419,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(477,'113.200.156.211',421,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; vivo Xplay3S Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(478,'101.226.102.237',423,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; TCL P301M Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025438 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/WIFI Language/zh_CN'),(479,'180.153.161.55',423,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(480,'180.153.206.21',423,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(481,'101.226.61.189',423,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(482,'101.226.33.206',423,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(483,'101.226.66.175',423,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(484,'218.19.126.182',324,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN'),(485,'182.140.184.85',426,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; SCH-R530U Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(486,'220.181.132.220',426,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(487,'220.181.132.196',426,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(488,'101.199.108.56',426,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(489,'101.226.33.228',426,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(490,'123.151.42.47',427,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; PE-TL10 Build/HuaweiPE-TL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(491,'101.226.89.119',427,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(492,'101.226.125.115',272,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HM 1SW Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/3gnet Language/zh_CN'),(493,'180.153.214.198',272,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(494,'183.61.51.191',394,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; vivo Xplay3S Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(495,'14.17.37.69',394,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; vivo Xplay3S Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(496,'123.151.42.48',403,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MX4 Pro Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(497,'61.51.102.144',403,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MX4 Pro Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(498,'115.206.240.135',434,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN'),(499,'101.226.61.186',249,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-TL10 Build/HuaweiMT7-TL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(500,'117.136.46.29',435,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.3 NetType/3G+ Language/zh_CN'),(501,'61.166.243.148',436,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN'),(502,'101.70.122.219',437,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/WIFI'),(503,'114.252.88.234',439,1,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.2.3 NetType/WIFI Language/zh_CN'),(504,'183.60.52.227',441,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; HTC 802t 16GB Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.49_r8d971a2.600 NetType/WIFI Language/zh_CN'),(505,'180.153.214.190',441,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(506,'101.226.69.112',442,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI NOTE LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.49_r8d971a2.600 NetType/WIFI Language/zh_CN'),(507,'123.151.12.154',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L00 Build/HuaweiP7-L00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(508,'180.153.163.211',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(509,'123.151.176.198',444,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; MediaPad X1 7.0 Build/HuaweiMediaPad) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(510,'101.226.33.224',444,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(511,'123.151.153.35',337,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.2.54_rec1912d.581 NetType/WIFI Language/zh_CN'),(512,'101.226.51.227',337,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(513,'180.153.214.191',337,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(514,'119.147.146.194',337,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95  Safari/537.36'),(515,'182.131.10.29',262,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; CHM-TL00H Build/HonorCHM-TL00H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/cmnet Language/zh_CN'),(516,'117.136.70.28',262,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; CHM-TL00H Build/HonorCHM-TL00H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.0.52_r1162382.561 NetType/cmnet Language/zh_CN'),(517,'180.153.212.13',262,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(518,'101.226.125.114',446,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI C8818 Build/HuaweiC8818) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN'),(519,'101.226.33.238',446,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(520,'123.160.200.89',447,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.4 NetType/WIFI Language/zh_CN'),(521,'112.17.241.55',437,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/2G'),(522,'223.198.105.224',450,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; PE-CL00 Build/HuaweiPE-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN'),(523,'180.153.205.254',450,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(524,'113.63.52.97',452,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.1 NetType/WIFI'),(525,'182.140.184.88',453,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN'),(526,'101.226.33.208',453,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(527,'101.226.125.108',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN'),(528,'101.226.102.97',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(529,'101.226.125.108',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/cmnet Language/zh_CN'),(530,'112.64.235.251',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(531,'223.104.5.207',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/cmnet Language/zh_CN'),(532,'180.153.163.187',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(533,'112.64.235.249',457,0,'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; HS-EG906 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.67_r745169.462'),(534,'180.153.205.253',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(535,'180.153.214.200',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(536,'123.151.139.156',62,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Nexus 7 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(537,'101.226.33.227',62,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(538,'119.147.146.189',62,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95  Safari/537.36'),(539,'220.181.132.220',62,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(540,'101.199.112.51',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(541,'101.199.108.51',62,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(542,'101.199.108.59',62,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(543,'101.199.112.51',62,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(544,'113.44.146.208',472,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7100 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(545,'220.181.132.220',472,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(546,'101.199.108.58',472,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(547,'101.199.108.118',472,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(548,'14.17.37.143',482,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2SC Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(549,'101.226.89.115',482,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(550,'182.131.12.12',485,0,'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; LT26i Build/6.1.A.0.452) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(551,'112.65.193.15',485,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(552,'180.153.206.33',485,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(553,'124.161.23.61',485,0,'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; LT26i Build/6.1.A.0.452) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(554,'14.17.37.145',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L01 Build/HDH60-L01) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(555,'101.226.33.201',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(556,'101.226.33.221',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(557,'101.226.33.216',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(558,'101.226.33.240',163,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(559,'221.4.200.18',489,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2C Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(560,'219.133.40.13',489,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; MI 2C Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(561,'113.108.11.50',487,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; SCH-P709 Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(562,'14.17.37.43',487,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; SCH-P709 Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(563,'180.153.201.214',487,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(564,'119.147.3.188',487,0,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(565,'61.151.186.144',487,0,'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(566,'180.140.145.100',487,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36 SE 2.X MetaSr 1.0'),(567,'101.226.33.238',489,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(568,'222.184.137.18',435,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.4 NetType/WIFI Language/zh_CN'),(569,'182.140.184.85',492,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(570,'180.153.214.178',492,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(571,'101.226.125.108',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(572,'180.153.201.15',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(573,'118.182.43.121',494,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.4 NetType/WIFI Language/zh_CN'),(574,'101.226.125.108',457,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; H60-L11 Build/HDH60-L11) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN'),(575,'101.71.215.101',437,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/WIFI'),(576,'123.158.52.249',437,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/WIFI'),(577,'101.226.125.19',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; SM-N9109W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN'),(578,'101.226.89.122',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(579,'101.226.33.240',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(580,'180.153.206.23',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(581,'120.209.36.85',496,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 MicroMessenger/6.5.2.501 NetType/WIFI WindowsWechat'),(582,'112.65.193.14',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(583,'101.226.103.63',496,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML; like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(584,'180.153.206.26',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(585,'120.209.36.85',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; SM-N9109W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN'),(586,'180.153.163.189',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(587,'101.226.93.234',496,0,'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; HS-EG906 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.67_r745169.462'),(588,'112.64.235.251',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(589,'110.81.237.6',498,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2S Build/JRO03L) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.51_r733746.462 NetType/WIFI'),(590,'14.17.37.69',498,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2S Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN'),(591,'14.217.165.160',500,0,'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z00ADA Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN'),(592,'180.153.206.19',498,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(593,'123.151.42.46',501,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; Coolpad 8675-W00 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.51_rdf8da56.600 NetType/WIFI Language/zh_CN'),(594,'101.226.33.227',501,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(595,'112.64.235.247',501,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(596,'123.158.53.134',437,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.0.2 NetType/WIFI'),(597,'101.226.125.109',437,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; SM-G5309W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(598,'180.153.214.176',485,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(599,'182.131.10.29',503,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G3588V Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(600,'120.135.24.94',503,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G3588V Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/WIFI Language/zh_CN'),(601,'120.135.24.94',503,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 MicroMessenger/6.5.2.501 NetType/WIFI WindowsWechat'),(602,'120.135.24.94',503,0,'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17 SE 2.X MetaSr 1.0'),(603,'101.226.33.227',503,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(604,'112.64.235.251',503,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(605,'180.153.163.211',503,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(606,'223.104.9.12',503,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SM-G3588V Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.54_r266a9ba.601 NetType/cmnet Language/zh_CN'),(607,'123.151.139.156',503,1,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HM NOTE 1TD Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/cmnet Language/zh_CN'),(608,'112.64.235.252',503,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(609,'123.151.139.156',504,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HM NOTE 1TD Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/cmnet Language/zh_CN'),(610,'112.64.235.252',504,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(611,'125.39.210.27',506,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN'),(612,'122.156.219.195',506,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN'),(613,'123.151.64.143',506,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN'),(614,'101.226.51.227',506,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(615,'123.151.38.94',506,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN'),(616,'101.226.51.226',506,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(617,'42.103.114.115',506,0,'Mozilla/5.0 (Linux; U; Android 4.1.1; zh-cn; MI 2SC Build/JRO03L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/ctnet Language/zh_CN'),(618,'124.161.23.61',37,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(619,'101.226.102.97',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(620,'180.153.214.180',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(621,'124.161.23.61',508,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; MI 1S Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(622,'180.153.214.178',508,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(623,'101.226.33.216',508,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(624,'116.7.150.84',509,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.4 NetType/WIFI Language/zh_CN'),(625,'14.17.37.145',517,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT2-L01 Build/HuaweiMT2-L01) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(626,'101.229.97.17',523,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-U10 Build/HuaweiH30-U10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(627,'58.52.50.72',524,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A344 MicroMessenger/6.2.6 NetType/WIFI Language/zh_CN'),(628,'101.226.125.108',525,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN'),(629,'122.194.51.182',525,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN'),(630,'183.195.232.39',525,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; SM705 Build/SANFRANCISCO) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_r0e62591.621 NetType/WIFI Language/zh_CN'),(631,'101.226.89.116',525,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(632,'182.131.12.12',485,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; LT26i Build/6.2.B.1.96) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(633,'101.226.33.216',485,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(634,'106.91.250.182',526,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13A344 Safari/601.1'),(635,'106.91.250.182',527,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A344 MicroMessenger/6.2.6 NetType/3G+ Language/zh_CN'),(636,'182.200.133.22',530,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(637,'123.151.64.143',530,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.4.53_r843fb8e.600 NetType/WIFI Language/zh_CN'),(638,'180.153.214.180',530,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(639,'182.200.133.22',530,1,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12A405 MicroMessenger/6.0.1 NetType/WIFI'),(640,'113.63.42.59',452,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.5 NetType/WIFI Language/zh_CN'),(641,'123.151.64.142',534,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; LTE 4G Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/WIFI Language/zh_CN'),(642,'101.226.89.120',534,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(643,'114.246.156.196',535,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.6 NetType/WIFI Language/zh_CN'),(644,'101.226.61.142',536,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/WIFI Language/zh_CN'),(645,'112.64.235.247',536,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(646,'218.2.38.173',536,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; HUAWEI C8816 Build/HuaweiC8816) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/WIFI Language/zh_CN'),(647,'36.45.35.78',537,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 V1_AND_SQ_5.5.0_228_YYB_D QQ/5.5.0.2415 NetType/4G WebP/0.3.0'),(648,'180.153.214.152',536,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(649,'180.153.214.180',536,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(650,'180.153.206.33',536,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(651,'101.226.114.166',536,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI SC-CL00 Build/HUAWEISC-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/ctwap Language/zh_CN'),(652,'101.226.114.166',536,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HUAWEI SC-CL00 Build/HUAWEISC-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.53_r2565f18.621 NetType/WIFI Language/zh_CN'),(653,'180.153.201.217',536,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(654,'14.17.37.43',487,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; SCH-P709 Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025440 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(655,'101.226.125.109',546,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Coolpad 8690 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.50_rbb77fd6.621 NetType/WIFI Language/zh_CN'),(656,'180.153.206.36',546,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(657,'101.226.33.219',546,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(658,'112.64.235.246',546,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(659,'101.226.125.120',547,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; vivo X5S L Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.49_r7ead8bf.620 NetType/WIFI Language/zh_CN'),(660,'101.226.51.228',547,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(661,'180.153.206.25',547,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(662,'218.108.128.159',548,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; 4G Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(663,'220.181.132.220',548,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(664,'101.199.108.51',548,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(665,'220.181.132.198',548,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(666,'101.47.18.107',437,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 MicroMessenger/6.2.7 NetType/WIFI Language/zh_CN'),(667,'101.226.114.166',551,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; R7Plusm Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(668,'180.153.206.16',551,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(669,'223.67.190.137',551,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; R7Plusm Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(670,'180.153.206.23',551,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(671,'14.17.37.143',554,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(672,'183.12.157.197',554,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(673,'183.12.157.197',554,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/6.1 Mobile Safari/537.36'),(674,'14.17.37.143',554,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/ctlte Language/zh_CN'),(675,'192.168.1.88',37,0,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0'),(676,'183.61.126.47',559,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4W Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/3gnet Language/zh_CN'),(677,'182.140.184.88',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(678,'101.226.33.218',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(679,'171.214.147.211',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(680,'118.113.32.192',566,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A452 MicroMessenger/6.2.7 NetType/WIFI Language/zh_CN'),(681,'14.17.34.237',567,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(682,'219.133.40.13',567,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(683,'14.211.53.115',567,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(684,'116.224.62.88',570,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H321 MicroMessenger/6.3.1 NetType/WIFI Language/zh_CN'),(685,'101.226.61.186',570,1,'Mozilla/5.0 (Linux; U; Android 5.0.1; zh-cn; SM-N9109W Build/LRX22C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/ctlte Language/zh_CN'),(686,'180.153.201.215',570,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(687,'220.181.132.220',570,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(688,'101.199.108.120',570,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(689,'101.199.108.58',570,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(690,'101.199.108.51',570,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(691,'101.106.141.228',571,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A452 MicroMessenger/6.3.1 NetType/WIFI Language/zh_CN'),(692,'101.226.61.186',496,0,'Mozilla/5.0 (Linux; U; Android 5.0.1; zh-cn; SM-N9109W Build/LRX22C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/ctlte Language/zh_CN'),(693,'101.226.33.223',496,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(694,'220.181.132.220',496,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(695,'101.199.108.58',496,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(696,'101.199.108.119',496,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(697,'123.151.42.57',570,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-I9082i Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.1.0.57_r1024329.540 NetType/cmnet'),(698,'180.153.206.16',570,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(699,'101.226.93.234',570,0,'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; HS-EG906 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.67_r745169.462'),(700,'101.226.125.122',570,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; SM-N9200 Build/LMY47X) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/cmnet Language/zh_CN'),(701,'219.133.40.15',570,0,'Mozilla/5.0 (Linux; U; Android 5.0.1; zh-cn; SM-N9109W Build/LRX22C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/ctlte Language/zh_CN'),(702,'123.151.12.154',573,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; LA6-L Build/YUSUNLA6-L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(703,'101.226.33.237',573,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(704,'117.172.26.212',573,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; LA6-L Build/YUSUNLA6-L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(705,'140.207.54.180',574,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(706,'101.226.33.205',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(707,'112.64.235.86',575,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(708,'140.207.54.180',575,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(709,'219.156.100.91',575,0,'Mozilla/5.0 (Linux; Android 4.4.2; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI'),(710,'219.156.100.91',576,0,'Mozilla/5.0 (Linux; Android 4.4.2; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI'),(711,'101.226.61.190',574,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(712,'112.65.193.13',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(713,'219.156.100.91',575,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(714,'101.226.61.190',575,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; SCH-N719 Build/JSS15J) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(715,'180.153.201.214',575,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(716,'101.226.66.178',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(717,'101.226.33.228',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(718,'101.226.65.102',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(719,'101.226.33.224',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(720,'180.153.201.212',574,0,'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; HS-EG906 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.1.67_r745169.462'),(721,'180.153.214.192',575,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(722,'140.207.54.187',575,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(723,'140.207.54.187',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(724,'180.153.163.206',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(725,'219.133.40.15',577,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; SM-A7000 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(726,'171.15.158.237',575,0,'Mozilla/5.0 (Linux; Android 4.4.2; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI'),(727,'221.178.200.211',579,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; OPPO R7 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(728,'1.193.55.253',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-CL00 Build/HuaweiMT7-CL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(729,'180.153.206.36',579,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(730,'117.136.45.151',579,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-TL00 Build/HuaweiMT7-TL00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/cmnet Language/zh_CN'),(731,'180.110.66.200',579,0,'Mozilla/5.0 (Linux; Android 4.4.4; OPPO R7 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(732,'180.153.81.159',579,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; OPPO R7 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/cmnet Language/zh_CN'),(733,'153.119.237.139',582,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.3.5 NetType/3G+ Language/zh_CN'),(734,'101.226.125.19',583,1,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; K-Touch L820 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(735,'101.226.33.206',583,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(736,'101.226.65.106',583,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(737,'180.153.163.186',583,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(738,'101.226.33.219',583,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(739,'183.204.242.19',583,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; K-Touch L820 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(740,'101.226.33.204',574,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(741,'101.81.49.202',584,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN'),(742,'182.131.12.36',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(743,'175.9.150.167',585,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.2.6 NetType/WIFI Language/zh_CN'),(744,'123.151.139.156',249,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT7-TL10 Build/HuaweiMT7-TL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/3gnet Language/zh_CN'),(745,'180.153.214.192',249,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(746,'101.226.66.178',249,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(747,'59.108.32.210',586,0,'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(748,'182.131.12.36',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(749,'182.131.12.36',508,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(750,'14.17.37.69',588,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; Mi-4c Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(751,'219.133.40.14',588,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; Mi-4c Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(752,'58.23.3.19',588,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; Mi-4c Build/LMY47V) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.2.5.54_re87237d.622 NetType/WIFI Language/zh_CN'),(753,'182.131.12.36',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/ctlte Language/zh_CN'),(754,'113.108.11.52',567,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(755,'14.211.54.81',567,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI P7-L09 Build/HuaweiP7-L09) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(756,'171.214.148.10',37,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(757,'101.226.125.19',594,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; K-Touch L820 Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(758,'101.226.65.104',594,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(759,'101.226.103.62',594,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML; like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI'),(760,'180.153.201.215',594,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(761,'123.151.139.156',594,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(762,'112.22.234.103',594,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H321 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN'),(763,'182.131.12.11',596,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; Coolpad 8297W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/3gnet Language/zh_CN'),(764,'175.155.112.40',596,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; Coolpad 8297W Build/JDQ39) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/3gnet Language/zh_CN'),(765,'122.235.199.126',598,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN'),(766,'101.226.61.190',599,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(767,'180.153.206.25',599,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(768,'115.192.170.95',599,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(769,'61.141.165.55',600,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN'),(770,'101.130.60.92',602,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.1 NetType/WIFI Language/zh_CN'),(771,'123.151.64.143',604,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7102 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(772,'101.226.102.97',604,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(773,'180.153.163.209',604,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(774,'120.193.236.99',604,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7102 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(775,'101.226.66.193',604,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(776,'182.131.12.12',37,1,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(777,'171.214.145.167',591,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; Coolpad 9150 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(778,'117.172.27.137',566,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN'),(779,'180.153.211.172',604,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(780,'120.193.236.71',604,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; GT-N7102 Build/JZO54K) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(781,'101.226.51.228',604,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(782,'219.133.40.16',606,0,'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-cn; HUAWEI C8813Q Build/HuaweiC8813Q) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(783,'163.177.69.106',33,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; 2014501 Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025469 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(784,'183.16.9.168',609,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN'),(785,'60.222.128.209',611,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; 2013022 Build/HM2013022_NewBee_V4.1) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(786,'171.214.146.249',37,0,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0'),(787,'180.153.206.36',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(788,'116.231.127.218',616,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25'),(789,'116.231.127.218',617,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25'),(790,'125.45.150.70',618,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; m1 note Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(791,'101.226.89.117',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(792,'183.184.105.90',620,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI NOTE LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(793,'171.214.146.249',37,0,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),(794,'101.226.33.226',423,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(795,'101.226.125.14',423,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; C8817D Build/HuaweiC8817D) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(796,'60.180.30.103',625,0,'HUAWEI_MT2-L01_TD/5.0 Android/4.4.2 (Linux; U; Android 4.4.2; zh-cn) Release/03.20.2013 Browser/WAP2.0 (AppleWebKit/534.30) Mobile Safari/534.30'),(797,'180.153.206.21',625,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(798,'101.226.125.117',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(799,'101.226.125.117',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/ctnet Language/zh_CN'),(800,'101.226.125.117',627,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/ctnet Language/zh_CN'),(801,'101.226.89.117',627,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(802,'113.242.190.17',629,0,'Mozilla/5.0 (Linux; U; Android 4.3; zh-cn; Lenovo A788t Build/S104) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(803,'101.226.33.228',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(804,'101.226.125.117',627,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(805,'180.153.206.25',627,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(806,'180.153.205.253',627,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(807,'183.195.232.37',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(808,'182.201.11.3',634,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN'),(809,'183.61.51.208',635,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HTC M8St Build/KOT49H) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(810,'14.153.251.83',638,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN'),(811,'171.214.148.7',37,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; CHM-CL00 Build/CHM-CL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.8.0.654 U3/0.8.0 Mobile Safari/534.30'),(812,'101.226.61.142',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT2-L01 Build/HuaweiMT2-L01) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.49_r55a68be.640 NetType/WIFI Language/zh_CN'),(813,'180.153.206.23',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(814,'101.226.125.116',643,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; SM-G9280 Build/LMY47X) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.5.50_r1573191.640 NetType/WIFI Language/zh_CN'),(815,'101.226.65.102',643,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36'),(816,'220.181.132.220',643,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(817,'101.199.108.53',643,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(818,'101.199.112.53',643,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(819,'183.57.152.28',643,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(820,'112.97.63.190',638,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A452 MicroMessenger/6.3.6 NetType/3G+ Language/zh_CN'),(821,'113.86.77.150',648,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN'),(822,'113.86.77.150',649,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.154 Safari/537.36 LBBROWSER'),(823,'113.86.77.150',649,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X; zh-CN) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/12F70 UCBrowser/10.7.11.672 Mobile'),(824,'101.226.33.199',648,0,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(825,'113.132.75.140',361,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.5 NetType/WIFI Language/zh_CN'),(826,'14.17.37.145',638,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; Lenovo S860e Build/KVT49L) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.2.5.51_rfe7d7c5.621 NetType/WIFI Language/zh_CN'),(827,'112.228.167.53',653,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; Redmi Note 2 Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(828,'101.226.61.184',653,0,'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; Redmi Note 2 Build/LRX22G) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(829,'180.153.163.187',653,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(830,'180.153.163.191',653,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(831,'101.226.61.142',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; HUAWEI MT2-L01 Build/HuaweiMT2-L01) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(832,'220.181.132.220',626,0,'Mozilla/5.0 (Linux; U; Android 4.2.1; zh-cn; HUAWEI G700-U00 Build/HuaweiG700-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(833,'101.199.108.118',626,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(834,'101.199.108.53',626,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(835,'101.199.112.50',626,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(836,'101.199.112.51',626,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(837,'112.64.235.90',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(838,'180.153.214.197',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(839,'180.153.161.55',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(840,'220.181.132.198',643,0,'Mozilla/5.0 (Linux; U; Android 4.0; en-us; GT-I9300 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'),(841,'101.199.112.54',643,0,'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4'),(842,'61.151.218.118',643,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(843,'111.161.57.31',651,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 4LTE Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(844,'112.64.235.90',651,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(845,'101.226.33.204',651,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(846,'180.153.201.214',651,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(847,'14.17.37.43',654,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; PLK-AL10 Build/HONORPLK-AL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(848,'112.95.241.183',654,0,'Mozilla/5.0 (Linux; U; Android 5.1.1; zh-cn; PLK-AL10 Build/HONORPLK-AL10) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(849,'112.64.235.86',654,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(850,'180.153.201.212',654,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(851,'123.151.12.154',401,0,'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G730-U00 Build/HuaweiG730-U00) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(852,'101.226.125.117',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(853,'180.153.201.216',626,0,'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36'),(854,'101.226.125.117',627,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; HM NOTE 1S Build/KTU84P) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.4 TBS/025478 Mobile Safari/533.1 MicroMessenger/6.3.7.51_rbb7fa12.660 NetType/WIFI Language/zh_CN'),(855,'192.168.1.88',5,1,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),(856,'192.168.1.5',5,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; CHM-CL00 Build/CHM-CL00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.8.5.689 U3/0.8.0 Mobile Safari/534.30'),(857,'192.168.1.2',5,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; CHM-CL00 Build/CHM-CL00) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/6.1 Mobile Safari/537.36'),(858,'182.131.10.29',5,0,'Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; CHM-CL00 Build/CHM-CL00) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/6.1 Mobile Safari/537.36'),(859,'124.156.73.88',11,0,'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(860,'::1',1,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36'),(861,'117.136.64.86',4,0,'Mozilla/5.0 (Linux; Android 6.0.1; ATH-AL00 Build/HONORATH-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036869 Safari/537.36 V1_AND_SQ_6.5.8_422_YYB_D QQ/6.5.8.2910 NetType/4G WebP/0.3.0 Pixel/1080'),(862,'112.90.82.218',4,0,'ozilla/5.0 (iPhone; CPU iPhone OS 9_3_4 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13G35 QQ/6.5.3.410 V1_IPH_SQ_6.5.3_1_APP_A Pixel/750 Core/UIWebView NetType/2G Mem/117'),(863,'180.153.206.17',4,0,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)');

/*Table structure for table `ecs_keywords` */

DROP TABLE IF EXISTS `ecs_keywords`;

CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_keywords` */

insert  into `ecs_keywords`(`date`,`searchengine`,`keyword`,`count`) values ('2016-09-06','ecshop','悦诗风吟',1),('2017-01-09','ecshop','123',1),('2017-01-09','ecshop','杜蕾斯',5),('2017-01-09','ecshop','杜勒斯',1),('2017-01-09','ecshop','安全套',4),('2017-01-09','ecshop','111',1),('2017-01-09','ecshop','金骏眉',1),('2017-01-09','ecshop','震动环',1),('2017-01-09','ecshop','12',1),('2017-01-09','ecshop','烈',1),('2017-01-09','ecshop','大码',1),('2017-01-09','ecshop','飞机杯',1),('2018-03-26','ecshop','爱他美',4),('2018-03-27','ecshop','爱他美',1);

/*Table structure for table `ecs_link_goods` */

DROP TABLE IF EXISTS `ecs_link_goods`;

CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_link_goods` */

/*Table structure for table `ecs_mail_templates` */

DROP TABLE IF EXISTS `ecs_mail_templates`;

CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_mail_templates` */

insert  into `ecs_mail_templates`(`template_id`,`template_code`,`is_html`,`template_subject`,`template_content`,`last_modify`,`last_send`,`type`) values (1,'send_password',1,'密码找回','{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}',1194824789,0,'template'),(2,'order_confirm',0,'订单确认通知','亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n',1158226370,0,'template'),(3,'deliver_notice',1,'发货通知','亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}',1194823291,0,'template'),(4,'order_cancel',0,'订单取消','亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}',1156491130,0,'template'),(5,'order_invalid',0,'订单无效','亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}',1156491164,0,'template'),(6,'send_bonus',0,'发红包','亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n',1156491184,0,'template'),(7,'group_buy',1,'团购商品','亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}',1194824668,0,'template'),(8,'register_validate',1,'邮件验证','{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}',1162201031,0,'template'),(9,'virtual_card',0,'虚拟卡片','亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}',1162201031,0,'template'),(10,'attention_list',0,'关注商品','亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}',1183851073,0,'template'),(11,'remind_of_new_order',0,'新订单通知','亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}',1196239170,0,'template'),(12,'goods_booking',1,'缺货回复','亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}',0,0,'template'),(13,'user_message',1,'留言回复','亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}',0,0,'template'),(14,'recomment',1,'用户评论回复','亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}',0,0,'template');

/*Table structure for table `ecs_member_price` */

DROP TABLE IF EXISTS `ecs_member_price`;

CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_member_price` */

/*Table structure for table `ecs_nav` */

DROP TABLE IF EXISTS `ecs_nav`;

CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_nav` */

insert  into `ecs_nav`(`id`,`ctype`,`cid`,`name`,`ifshow`,`vieworder`,`opennew`,`url`,`type`) values (1,'',0,'团购商品',1,3,1,'group_buy.php','middle'),(2,'',0,'积分兑换',1,4,1,'exchange.php','middle'),(12,'c',1,'个护、美妆类',0,1,1,'category.php?id=1','middle'),(5,'',0,'免责条款',1,1,0,'article.php?id=1','bottom'),(6,'',0,'隐私保护',1,2,0,'article.php?id=2','bottom'),(7,'',0,'咨询热点',1,3,0,'article.php?id=3','bottom'),(8,'',0,'联系我们',1,4,0,'article.php?id=4','bottom'),(9,'',0,'公司简介',1,5,0,'article.php?id=5','bottom'),(10,'',0,'批发方案',1,6,0,'wholesale.php','bottom'),(11,'',0,'配送方式',1,7,0,'myship.php','bottom'),(13,'c',2,'家装、工具类',0,2,1,'category.php?id=2','middle'),(14,NULL,NULL,'我的订单',1,1,1,'user.php?act=order_list','top'),(15,'',0,'帮助中心',1,5,1,'help.php?id=9','middle'),(16,'',0,'移动端',1,3,1,'../mobile','top'),(17,'c',36,'宝宝奶粉',0,7,0,'category.php?id=36','middle'),(18,'c',4,'母婴、玩具类',0,9,0,'category.php?id=4','middle'),(19,'c',33,'营养辅食',0,11,0,'category.php?id=33','middle'),(20,'c',37,'宝宝护理',0,13,0,'category.php?id=37','middle'),(21,'c',34,'益智玩具',0,15,0,'category.php?id=34','middle'),(22,'c',31,'妈妈用品',0,17,0,'category.php?id=31','middle'),(23,'c',38,'喂养用品',0,19,0,'category.php?id=38','middle'),(24,'c',56,'糖果',0,21,0,'category.php?id=56','middle');

/*Table structure for table `ecs_order_action` */

DROP TABLE IF EXISTS `ecs_order_action`;

CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_order_action` */

insert  into `ecs_order_action`(`action_id`,`order_id`,`action_user`,`order_status`,`shipping_status`,`pay_status`,`action_place`,`action_note`,`log_time`) values (5,9,'yichen',1,0,2,0,'测试',1522016881),(6,9,'admin',1,3,2,0,'',1522040694);

/*Table structure for table `ecs_order_goods` */

DROP TABLE IF EXISTS `ecs_order_goods`;

CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_order_goods` */

insert  into `ecs_order_goods`(`rec_id`,`order_id`,`goods_id`,`goods_name`,`goods_sn`,`product_id`,`goods_number`,`market_price`,`goods_price`,`goods_attr`,`send_number`,`is_real`,`extension_code`,`parent_id`,`is_gift`,`goods_attr_id`) values (8,8,41,'test5','CCC000041',0,2,'322.80','219.00','',0,1,'',0,0,''),(9,9,40,'test','CCC000040',0,1,'322.80','219.00','',0,1,'',0,0,''),(10,10,39,'test','CCC000039',0,13,'322.80','219.00','',0,1,'',0,0,''),(11,11,48,'德国爱他美aptamil白金版婴儿配方奶粉Pre段 0-6个月 ','CCC000048',0,4,'270.00','225.00','',0,1,'',0,0,''),(12,12,41,'test5','CCC000041',0,3,'322.80','219.00','',0,1,'',0,0,'');

/*Table structure for table `ecs_order_info` */

DROP TABLE IF EXISTS `ecs_order_info`;

CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  `supplier_id` int(10) NOT NULL DEFAULT '0',
  `froms` char(10) NOT NULL DEFAULT 'pc' COMMENT 'pc:电脑,mobile:手机,app:应用',
  `fencheng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_order_info` */

insert  into `ecs_order_info`(`order_id`,`order_sn`,`user_id`,`order_status`,`shipping_status`,`pay_status`,`consignee`,`country`,`province`,`city`,`district`,`address`,`zipcode`,`tel`,`mobile`,`email`,`best_time`,`sign_building`,`postscript`,`shipping_id`,`shipping_name`,`pay_id`,`pay_name`,`how_oos`,`how_surplus`,`pack_name`,`card_name`,`card_message`,`inv_payee`,`inv_content`,`goods_amount`,`shipping_fee`,`insure_fee`,`pay_fee`,`pack_fee`,`card_fee`,`money_paid`,`surplus`,`integral`,`integral_money`,`bonus`,`order_amount`,`from_ad`,`referer`,`add_time`,`confirm_time`,`pay_time`,`shipping_time`,`pack_id`,`card_id`,`bonus_id`,`invoice_no`,`extension_code`,`extension_id`,`to_buyer`,`pay_note`,`agency_id`,`inv_type`,`tax`,`is_separate`,`parent_id`,`discount`,`supplier_id`,`froms`,`fencheng`) values (8,'2018032662351',0,0,0,0,'dddd',1,4,56,551,'sssss','','15116926830','','','','','',1,'顺丰速运',9,'新版本微信支付','等待所有商品备齐后再发','','','','','','','438.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00',0,'0.00','0.00','453.00',0,'微信',1521984284,0,0,0,0,0,0,'','',0,'','',0,'','0.00',0,0,'0.00',0,'pc','438'),(9,'2018032669803',6,1,3,2,'陈一',1,31,383,3232,'浙江省杭州市拱墅区宜家时代1幢206室','','18668202815','13875955227','chenyioo@sina.com','','','',1,'顺丰速运',1,'<font color=\"#FF0000\">支付宝</font>','等待所有商品备齐后再发','','','','','','','219.00','15.00','0.00','0.00','0.00','0.00','234.00','0.00',0,'0.00','0.00','0.00',0,'pc站',1522016823,1522016881,1522016881,0,0,0,0,'','',0,'','',0,'','0.00',0,0,'0.00',0,'pc','219'),(10,'2018032684988',6,0,0,0,'陈一',1,31,383,3232,'浙江省杭州市拱墅区宜家时代1幢206室','','18668202815','13875955227','chenyioo@sina.com','','','',1,'顺丰速运',1,'<font color=\"#FF0000\">支付宝</font>','等待所有商品备齐后再发','','','','','','','2847.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00',0,'0.00','0.00','2862.00',0,'pc站',1522017103,0,0,0,0,0,0,'','',0,'','',0,'','0.00',0,0,'0.00',0,'pc','2847'),(11,'2018032636918',5,0,0,0,'hhhh',1,2,52,503,'jkjkjkj','','','15116926830','info@ccc-global.com','','','',1,'顺丰速运',5,'国际汇款/Vorkasse','等待所有商品备齐后再发','','','','','','','900.00','21.00','0.00','0.00','0.00','0.00','0.00','0.00',0,'0.00','0.00','921.00',0,'pc站',1522040614,0,0,0,0,0,0,'','',0,'','',0,'','0.00',0,0,'0.00',0,'pc','900'),(12,'2018032793540',0,0,0,0,'yangchao liu',1,18,244,2064,'Raiffeisenstraße, 3a','','','13889221326','lycrxsy@gmail.com','','','',1,'顺丰速运',1,'<font color=\"#FF0000\">支付宝</font>','等待所有商品备齐后再发','','','','','','','657.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00',0,'0.00','0.00','672.00',0,'pc站',1522112564,0,0,0,0,0,0,'','',0,'','',0,'','0.00',0,0,'0.00',0,'pc','657');

/*Table structure for table `ecs_pack` */

DROP TABLE IF EXISTS `ecs_pack`;

CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_pack` */

/*Table structure for table `ecs_package_goods` */

DROP TABLE IF EXISTS `ecs_package_goods`;

CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_package_goods` */

/*Table structure for table `ecs_pay_log` */

DROP TABLE IF EXISTS `ecs_pay_log`;

CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_account_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_pay_log` */

insert  into `ecs_pay_log`(`log_id`,`order_id`,`order_amount`,`order_type`,`is_paid`,`user_account_id`) values (1,1,'87.00',0,0,0),(2,2,'157.00',0,0,0),(3,3,'73.00',0,0,0),(4,4,'287.00',0,0,0),(5,5,'0.00',0,0,0),(6,6,'28.00',0,0,0),(7,7,'28.00',0,0,0),(8,8,'453.00',0,0,0),(9,9,'234.00',0,0,0),(10,10,'2862.00',0,0,0),(11,11,'921.00',0,0,0),(12,12,'672.00',0,0,0);

/*Table structure for table `ecs_payment` */

DROP TABLE IF EXISTS `ecs_payment`;

CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_payment` */

insert  into `ecs_payment`(`pay_id`,`pay_code`,`pay_name`,`pay_fee`,`pay_desc`,`pay_order`,`pay_config`,`enabled`,`is_cod`,`is_online`) values (1,'alipay','<font color=\"#FF0000\">支付宝</font>','0','支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color=\"red\"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=alipay\" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>',0,'a:4:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:3:{s:4:\"name\";s:17:\"alipay_pay_method\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:1:\"0\";}}',1,0,1),(2,'balance','余额支付','0','使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。',0,'a:0:{}',1,0,1),(3,'cod','货到付款','0','开通城市：×××\r\n货到付款区域：×××',0,'a:0:{}',1,1,0),(4,'bank','银行汇款/转帐','0','银行名称\r\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\r\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。',0,'a:0:{}',0,0,0),(5,'post','国际汇款/Vorkasse','0','收款人信息：姓名 ××× ；地址 ××× ；邮编 ××× 。\r\n注意事项： 请在汇款单背面的附言中注明您的订单号，只填写后6位即可。',0,'a:0:{}',1,0,0),(6,'paypal','paypal','1.5%','PayPal（www.paypal.com） 是在线付款解决方案的全球领导者，在全世界有超过七千一百六十万个帐户用户。PayPal 可在 56 个市场以 7 种货币（加元、欧元、英镑、美元、日元、澳元、港元）使用。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=paypal\" target=\"_blank\">立即在线申请</a>',0,'a:2:{i:0;a:3:{s:4:\"name\";s:14:\"paypal_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:19:\"mail@ccc-global.com\";}i:1;a:3:{s:4:\"name\";s:15:\"paypal_currency\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:3:\"EUR\";}}',1,0,1);

/*Table structure for table `ecs_plugins` */

DROP TABLE IF EXISTS `ecs_plugins`;

CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_plugins` */

/*Table structure for table `ecs_products` */

DROP TABLE IF EXISTS `ecs_products`;

CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_products` */

/*Table structure for table `ecs_reg_extend_info` */

DROP TABLE IF EXISTS `ecs_reg_extend_info`;

CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_reg_extend_info` */

/*Table structure for table `ecs_reg_fields` */

DROP TABLE IF EXISTS `ecs_reg_fields`;

CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_reg_fields` */

insert  into `ecs_reg_fields`(`id`,`reg_field_name`,`dis_order`,`display`,`type`,`is_need`) values (1,'MSN',0,0,1,0),(2,'QQ',0,0,1,0),(3,'办公电话',0,0,1,0),(4,'家庭电话',0,0,1,0),(5,'手机',0,1,1,0),(6,'密码找回问题',0,0,1,0);

/*Table structure for table `ecs_region` */

DROP TABLE IF EXISTS `ecs_region`;

CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3410 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_region` */

insert  into `ecs_region`(`region_id`,`parent_id`,`region_name`,`region_type`,`agency_id`) values (1,0,'中国',0,0),(2,1,'北京',1,0),(3,1,'安徽',1,0),(4,1,'福建',1,0),(5,1,'甘肃',1,0),(6,1,'广东',1,0),(7,1,'广西',1,0),(8,1,'贵州',1,0),(9,1,'海南',1,0),(10,1,'河北',1,0),(11,1,'河南',1,0),(12,1,'黑龙江',1,0),(13,1,'湖北',1,0),(14,1,'湖南',1,0),(15,1,'吉林',1,0),(16,1,'江苏',1,0),(17,1,'江西',1,0),(18,1,'辽宁',1,0),(19,1,'内蒙古',1,0),(20,1,'宁夏',1,0),(21,1,'青海',1,0),(22,1,'山东',1,0),(23,1,'山西',1,0),(24,1,'陕西',1,0),(25,1,'上海',1,0),(26,1,'四川',1,0),(27,1,'天津',1,0),(28,1,'西藏',1,0),(29,1,'新疆',1,0),(30,1,'云南',1,0),(31,1,'浙江',1,0),(32,1,'重庆',1,0),(33,1,'香港',1,0),(34,1,'澳门',1,0),(35,1,'台湾',1,0),(36,3,'安庆',2,0),(37,3,'蚌埠',2,0),(38,3,'巢湖',2,0),(39,3,'池州',2,0),(40,3,'滁州',2,0),(41,3,'阜阳',2,0),(42,3,'淮北',2,0),(43,3,'淮南',2,0),(44,3,'黄山',2,0),(45,3,'六安',2,0),(46,3,'马鞍山',2,0),(47,3,'宿州',2,0),(48,3,'铜陵',2,0),(49,3,'芜湖',2,0),(50,3,'宣城',2,0),(51,3,'亳州',2,0),(52,2,'北京',2,0),(53,4,'福州',2,0),(54,4,'龙岩',2,0),(55,4,'南平',2,0),(56,4,'宁德',2,0),(57,4,'莆田',2,0),(58,4,'泉州',2,0),(59,4,'三明',2,0),(60,4,'厦门',2,0),(61,4,'漳州',2,0),(62,5,'兰州',2,0),(63,5,'白银',2,0),(64,5,'定西',2,0),(65,5,'甘南',2,0),(66,5,'嘉峪关',2,0),(67,5,'金昌',2,0),(68,5,'酒泉',2,0),(69,5,'临夏',2,0),(70,5,'陇南',2,0),(71,5,'平凉',2,0),(72,5,'庆阳',2,0),(73,5,'天水',2,0),(74,5,'武威',2,0),(75,5,'张掖',2,0),(76,6,'广州',2,0),(77,6,'深圳',2,0),(78,6,'潮州',2,0),(79,6,'东莞',2,0),(80,6,'佛山',2,0),(81,6,'河源',2,0),(82,6,'惠州',2,0),(83,6,'江门',2,0),(84,6,'揭阳',2,0),(85,6,'茂名',2,0),(86,6,'梅州',2,0),(87,6,'清远',2,0),(88,6,'汕头',2,0),(89,6,'汕尾',2,0),(90,6,'韶关',2,0),(91,6,'阳江',2,0),(92,6,'云浮',2,0),(93,6,'湛江',2,0),(94,6,'肇庆',2,0),(95,6,'中山',2,0),(96,6,'珠海',2,0),(97,7,'南宁',2,0),(98,7,'桂林',2,0),(99,7,'百色',2,0),(100,7,'北海',2,0),(101,7,'崇左',2,0),(102,7,'防城港',2,0),(103,7,'贵港',2,0),(104,7,'河池',2,0),(105,7,'贺州',2,0),(106,7,'来宾',2,0),(107,7,'柳州',2,0),(108,7,'钦州',2,0),(109,7,'梧州',2,0),(110,7,'玉林',2,0),(111,8,'贵阳',2,0),(112,8,'安顺',2,0),(113,8,'毕节',2,0),(114,8,'六盘水',2,0),(115,8,'黔东南',2,0),(116,8,'黔南',2,0),(117,8,'黔西南',2,0),(118,8,'铜仁',2,0),(119,8,'遵义',2,0),(120,9,'海口',2,0),(121,9,'三亚',2,0),(122,9,'白沙',2,0),(123,9,'保亭',2,0),(124,9,'昌江',2,0),(125,9,'澄迈县',2,0),(126,9,'定安县',2,0),(127,9,'东方',2,0),(128,9,'乐东',2,0),(129,9,'临高县',2,0),(130,9,'陵水',2,0),(131,9,'琼海',2,0),(132,9,'琼中',2,0),(133,9,'屯昌县',2,0),(134,9,'万宁',2,0),(135,9,'文昌',2,0),(136,9,'五指山',2,0),(137,9,'儋州',2,0),(138,10,'石家庄',2,0),(139,10,'保定',2,0),(140,10,'沧州',2,0),(141,10,'承德',2,0),(142,10,'邯郸',2,0),(143,10,'衡水',2,0),(144,10,'廊坊',2,0),(145,10,'秦皇岛',2,0),(146,10,'唐山',2,0),(147,10,'邢台',2,0),(148,10,'张家口',2,0),(149,11,'郑州',2,0),(150,11,'洛阳',2,0),(151,11,'开封',2,0),(152,11,'安阳',2,0),(153,11,'鹤壁',2,0),(154,11,'济源',2,0),(155,11,'焦作',2,0),(156,11,'南阳',2,0),(157,11,'平顶山',2,0),(158,11,'三门峡',2,0),(159,11,'商丘',2,0),(160,11,'新乡',2,0),(161,11,'信阳',2,0),(162,11,'许昌',2,0),(163,11,'周口',2,0),(164,11,'驻马店',2,0),(165,11,'漯河',2,0),(166,11,'濮阳',2,0),(167,12,'哈尔滨',2,0),(168,12,'大庆',2,0),(169,12,'大兴安岭',2,0),(170,12,'鹤岗',2,0),(171,12,'黑河',2,0),(172,12,'鸡西',2,0),(173,12,'佳木斯',2,0),(174,12,'牡丹江',2,0),(175,12,'七台河',2,0),(176,12,'齐齐哈尔',2,0),(177,12,'双鸭山',2,0),(178,12,'绥化',2,0),(179,12,'伊春',2,0),(180,13,'武汉',2,0),(181,13,'仙桃',2,0),(182,13,'鄂州',2,0),(183,13,'黄冈',2,0),(184,13,'黄石',2,0),(185,13,'荆门',2,0),(186,13,'荆州',2,0),(187,13,'潜江',2,0),(188,13,'神农架林区',2,0),(189,13,'十堰',2,0),(190,13,'随州',2,0),(191,13,'天门',2,0),(192,13,'咸宁',2,0),(193,13,'襄樊',2,0),(194,13,'孝感',2,0),(195,13,'宜昌',2,0),(196,13,'恩施',2,0),(197,14,'长沙',2,0),(198,14,'张家界',2,0),(199,14,'常德',2,0),(200,14,'郴州',2,0),(201,14,'衡阳',2,0),(202,14,'怀化',2,0),(203,14,'娄底',2,0),(204,14,'邵阳',2,0),(205,14,'湘潭',2,0),(206,14,'湘西',2,0),(207,14,'益阳',2,0),(208,14,'永州',2,0),(209,14,'岳阳',2,0),(210,14,'株洲',2,0),(211,15,'长春',2,0),(212,15,'吉林',2,0),(213,15,'白城',2,0),(214,15,'白山',2,0),(215,15,'辽源',2,0),(216,15,'四平',2,0),(217,15,'松原',2,0),(218,15,'通化',2,0),(219,15,'延边',2,0),(220,16,'南京',2,0),(221,16,'苏州',2,0),(222,16,'无锡',2,0),(223,16,'常州',2,0),(224,16,'淮安',2,0),(225,16,'连云港',2,0),(226,16,'南通',2,0),(227,16,'宿迁',2,0),(228,16,'泰州',2,0),(229,16,'徐州',2,0),(230,16,'盐城',2,0),(231,16,'扬州',2,0),(232,16,'镇江',2,0),(233,17,'南昌',2,0),(234,17,'抚州',2,0),(235,17,'赣州',2,0),(236,17,'吉安',2,0),(237,17,'景德镇',2,0),(238,17,'九江',2,0),(239,17,'萍乡',2,0),(240,17,'上饶',2,0),(241,17,'新余',2,0),(242,17,'宜春',2,0),(243,17,'鹰潭',2,0),(244,18,'沈阳',2,0),(245,18,'大连',2,0),(246,18,'鞍山',2,0),(247,18,'本溪',2,0),(248,18,'朝阳',2,0),(249,18,'丹东',2,0),(250,18,'抚顺',2,0),(251,18,'阜新',2,0),(252,18,'葫芦岛',2,0),(253,18,'锦州',2,0),(254,18,'辽阳',2,0),(255,18,'盘锦',2,0),(256,18,'铁岭',2,0),(257,18,'营口',2,0),(258,19,'呼和浩特',2,0),(259,19,'阿拉善盟',2,0),(260,19,'巴彦淖尔盟',2,0),(261,19,'包头',2,0),(262,19,'赤峰',2,0),(263,19,'鄂尔多斯',2,0),(264,19,'呼伦贝尔',2,0),(265,19,'通辽',2,0),(266,19,'乌海',2,0),(267,19,'乌兰察布市',2,0),(268,19,'锡林郭勒盟',2,0),(269,19,'兴安盟',2,0),(270,20,'银川',2,0),(271,20,'固原',2,0),(272,20,'石嘴山',2,0),(273,20,'吴忠',2,0),(274,20,'中卫',2,0),(275,21,'西宁',2,0),(276,21,'果洛',2,0),(277,21,'海北',2,0),(278,21,'海东',2,0),(279,21,'海南',2,0),(280,21,'海西',2,0),(281,21,'黄南',2,0),(282,21,'玉树',2,0),(283,22,'济南',2,0),(284,22,'青岛',2,0),(285,22,'滨州',2,0),(286,22,'德州',2,0),(287,22,'东营',2,0),(288,22,'菏泽',2,0),(289,22,'济宁',2,0),(290,22,'莱芜',2,0),(291,22,'聊城',2,0),(292,22,'临沂',2,0),(293,22,'日照',2,0),(294,22,'泰安',2,0),(295,22,'威海',2,0),(296,22,'潍坊',2,0),(297,22,'烟台',2,0),(298,22,'枣庄',2,0),(299,22,'淄博',2,0),(300,23,'太原',2,0),(301,23,'长治',2,0),(302,23,'大同',2,0),(303,23,'晋城',2,0),(304,23,'晋中',2,0),(305,23,'临汾',2,0),(306,23,'吕梁',2,0),(307,23,'朔州',2,0),(308,23,'忻州',2,0),(309,23,'阳泉',2,0),(310,23,'运城',2,0),(311,24,'西安',2,0),(312,24,'安康',2,0),(313,24,'宝鸡',2,0),(314,24,'汉中',2,0),(315,24,'商洛',2,0),(316,24,'铜川',2,0),(317,24,'渭南',2,0),(318,24,'咸阳',2,0),(319,24,'延安',2,0),(320,24,'榆林',2,0),(321,25,'上海',2,0),(322,26,'成都',2,0),(323,26,'绵阳',2,0),(324,26,'阿坝',2,0),(325,26,'巴中',2,0),(326,26,'达州',2,0),(327,26,'德阳',2,0),(328,26,'甘孜',2,0),(329,26,'广安',2,0),(330,26,'广元',2,0),(331,26,'乐山',2,0),(332,26,'凉山',2,0),(333,26,'眉山',2,0),(334,26,'南充',2,0),(335,26,'内江',2,0),(336,26,'攀枝花',2,0),(337,26,'遂宁',2,0),(338,26,'雅安',2,0),(339,26,'宜宾',2,0),(340,26,'资阳',2,0),(341,26,'自贡',2,0),(342,26,'泸州',2,0),(343,27,'天津',2,0),(344,28,'拉萨',2,0),(345,28,'阿里',2,0),(346,28,'昌都',2,0),(347,28,'林芝',2,0),(348,28,'那曲',2,0),(349,28,'日喀则',2,0),(350,28,'山南',2,0),(351,29,'乌鲁木齐',2,0),(352,29,'阿克苏',2,0),(353,29,'阿拉尔',2,0),(354,29,'巴音郭楞',2,0),(355,29,'博尔塔拉',2,0),(356,29,'昌吉',2,0),(357,29,'哈密',2,0),(358,29,'和田',2,0),(359,29,'喀什',2,0),(360,29,'克拉玛依',2,0),(361,29,'克孜勒苏',2,0),(362,29,'石河子',2,0),(363,29,'图木舒克',2,0),(364,29,'吐鲁番',2,0),(365,29,'五家渠',2,0),(366,29,'伊犁',2,0),(367,30,'昆明',2,0),(368,30,'怒江',2,0),(369,30,'普洱',2,0),(370,30,'丽江',2,0),(371,30,'保山',2,0),(372,30,'楚雄',2,0),(373,30,'大理',2,0),(374,30,'德宏',2,0),(375,30,'迪庆',2,0),(376,30,'红河',2,0),(377,30,'临沧',2,0),(378,30,'曲靖',2,0),(379,30,'文山',2,0),(380,30,'西双版纳',2,0),(381,30,'玉溪',2,0),(382,30,'昭通',2,0),(383,31,'杭州',2,0),(384,31,'湖州',2,0),(385,31,'嘉兴',2,0),(386,31,'金华',2,0),(387,31,'丽水',2,0),(388,31,'宁波',2,0),(389,31,'绍兴',2,0),(390,31,'台州',2,0),(391,31,'温州',2,0),(392,31,'舟山',2,0),(393,31,'衢州',2,0),(394,32,'重庆',2,0),(395,33,'香港',2,0),(396,34,'澳门',2,0),(397,35,'台湾',2,0),(398,36,'迎江区',3,0),(399,36,'大观区',3,0),(400,36,'宜秀区',3,0),(401,36,'桐城市',3,0),(402,36,'怀宁县',3,0),(403,36,'枞阳县',3,0),(404,36,'潜山县',3,0),(405,36,'太湖县',3,0),(406,36,'宿松县',3,0),(407,36,'望江县',3,0),(408,36,'岳西县',3,0),(409,37,'中市区',3,0),(410,37,'东市区',3,0),(411,37,'西市区',3,0),(412,37,'郊区',3,0),(413,37,'怀远县',3,0),(414,37,'五河县',3,0),(415,37,'固镇县',3,0),(416,38,'居巢区',3,0),(417,38,'庐江县',3,0),(418,38,'无为县',3,0),(419,38,'含山县',3,0),(420,38,'和县',3,0),(421,39,'贵池区',3,0),(422,39,'东至县',3,0),(423,39,'石台县',3,0),(424,39,'青阳县',3,0),(425,40,'琅琊区',3,0),(426,40,'南谯区',3,0),(427,40,'天长市',3,0),(428,40,'明光市',3,0),(429,40,'来安县',3,0),(430,40,'全椒县',3,0),(431,40,'定远县',3,0),(432,40,'凤阳县',3,0),(433,41,'蚌山区',3,0),(434,41,'龙子湖区',3,0),(435,41,'禹会区',3,0),(436,41,'淮上区',3,0),(437,41,'颍州区',3,0),(438,41,'颍东区',3,0),(439,41,'颍泉区',3,0),(440,41,'界首市',3,0),(441,41,'临泉县',3,0),(442,41,'太和县',3,0),(443,41,'阜南县',3,0),(444,41,'颖上县',3,0),(445,42,'相山区',3,0),(446,42,'杜集区',3,0),(447,42,'烈山区',3,0),(448,42,'濉溪县',3,0),(449,43,'田家庵区',3,0),(450,43,'大通区',3,0),(451,43,'谢家集区',3,0),(452,43,'八公山区',3,0),(453,43,'潘集区',3,0),(454,43,'凤台县',3,0),(455,44,'屯溪区',3,0),(456,44,'黄山区',3,0),(457,44,'徽州区',3,0),(458,44,'歙县',3,0),(459,44,'休宁县',3,0),(460,44,'黟县',3,0),(461,44,'祁门县',3,0),(462,45,'金安区',3,0),(463,45,'裕安区',3,0),(464,45,'寿县',3,0),(465,45,'霍邱县',3,0),(466,45,'舒城县',3,0),(467,45,'金寨县',3,0),(468,45,'霍山县',3,0),(469,46,'雨山区',3,0),(470,46,'花山区',3,0),(471,46,'金家庄区',3,0),(472,46,'当涂县',3,0),(473,47,'埇桥区',3,0),(474,47,'砀山县',3,0),(475,47,'萧县',3,0),(476,47,'灵璧县',3,0),(477,47,'泗县',3,0),(478,48,'铜官山区',3,0),(479,48,'狮子山区',3,0),(480,48,'郊区',3,0),(481,48,'铜陵县',3,0),(482,49,'镜湖区',3,0),(483,49,'弋江区',3,0),(484,49,'鸠江区',3,0),(485,49,'三山区',3,0),(486,49,'芜湖县',3,0),(487,49,'繁昌县',3,0),(488,49,'南陵县',3,0),(489,50,'宣州区',3,0),(490,50,'宁国市',3,0),(491,50,'郎溪县',3,0),(492,50,'广德县',3,0),(493,50,'泾县',3,0),(494,50,'绩溪县',3,0),(495,50,'旌德县',3,0),(496,51,'涡阳县',3,0),(497,51,'蒙城县',3,0),(498,51,'利辛县',3,0),(499,51,'谯城区',3,0),(500,52,'东城区',3,0),(501,52,'西城区',3,0),(502,52,'海淀区',3,0),(503,52,'朝阳区',3,0),(504,52,'崇文区',3,0),(505,52,'宣武区',3,0),(506,52,'丰台区',3,0),(507,52,'石景山区',3,0),(508,52,'房山区',3,0),(509,52,'门头沟区',3,0),(510,52,'通州区',3,0),(511,52,'顺义区',3,0),(512,52,'昌平区',3,0),(513,52,'怀柔区',3,0),(514,52,'平谷区',3,0),(515,52,'大兴区',3,0),(516,52,'密云县',3,0),(517,52,'延庆县',3,0),(518,53,'鼓楼区',3,0),(519,53,'台江区',3,0),(520,53,'仓山区',3,0),(521,53,'马尾区',3,0),(522,53,'晋安区',3,0),(523,53,'福清市',3,0),(524,53,'长乐市',3,0),(525,53,'闽侯县',3,0),(526,53,'连江县',3,0),(527,53,'罗源县',3,0),(528,53,'闽清县',3,0),(529,53,'永泰县',3,0),(530,53,'平潭县',3,0),(531,54,'新罗区',3,0),(532,54,'漳平市',3,0),(533,54,'长汀县',3,0),(534,54,'永定县',3,0),(535,54,'上杭县',3,0),(536,54,'武平县',3,0),(537,54,'连城县',3,0),(538,55,'延平区',3,0),(539,55,'邵武市',3,0),(540,55,'武夷山市',3,0),(541,55,'建瓯市',3,0),(542,55,'建阳市',3,0),(543,55,'顺昌县',3,0),(544,55,'浦城县',3,0),(545,55,'光泽县',3,0),(546,55,'松溪县',3,0),(547,55,'政和县',3,0),(548,56,'蕉城区',3,0),(549,56,'福安市',3,0),(550,56,'福鼎市',3,0),(551,56,'霞浦县',3,0),(552,56,'古田县',3,0),(553,56,'屏南县',3,0),(554,56,'寿宁县',3,0),(555,56,'周宁县',3,0),(556,56,'柘荣县',3,0),(557,57,'城厢区',3,0),(558,57,'涵江区',3,0),(559,57,'荔城区',3,0),(560,57,'秀屿区',3,0),(561,57,'仙游县',3,0),(562,58,'鲤城区',3,0),(563,58,'丰泽区',3,0),(564,58,'洛江区',3,0),(565,58,'清濛开发区',3,0),(566,58,'泉港区',3,0),(567,58,'石狮市',3,0),(568,58,'晋江市',3,0),(569,58,'南安市',3,0),(570,58,'惠安县',3,0),(571,58,'安溪县',3,0),(572,58,'永春县',3,0),(573,58,'德化县',3,0),(574,58,'金门县',3,0),(575,59,'梅列区',3,0),(576,59,'三元区',3,0),(577,59,'永安市',3,0),(578,59,'明溪县',3,0),(579,59,'清流县',3,0),(580,59,'宁化县',3,0),(581,59,'大田县',3,0),(582,59,'尤溪县',3,0),(583,59,'沙县',3,0),(584,59,'将乐县',3,0),(585,59,'泰宁县',3,0),(586,59,'建宁县',3,0),(587,60,'思明区',3,0),(588,60,'海沧区',3,0),(589,60,'湖里区',3,0),(590,60,'集美区',3,0),(591,60,'同安区',3,0),(592,60,'翔安区',3,0),(593,61,'芗城区',3,0),(594,61,'龙文区',3,0),(595,61,'龙海市',3,0),(596,61,'云霄县',3,0),(597,61,'漳浦县',3,0),(598,61,'诏安县',3,0),(599,61,'长泰县',3,0),(600,61,'东山县',3,0),(601,61,'南靖县',3,0),(602,61,'平和县',3,0),(603,61,'华安县',3,0),(604,62,'皋兰县',3,0),(605,62,'城关区',3,0),(606,62,'七里河区',3,0),(607,62,'西固区',3,0),(608,62,'安宁区',3,0),(609,62,'红古区',3,0),(610,62,'永登县',3,0),(611,62,'榆中县',3,0),(612,63,'白银区',3,0),(613,63,'平川区',3,0),(614,63,'会宁县',3,0),(615,63,'景泰县',3,0),(616,63,'靖远县',3,0),(617,64,'临洮县',3,0),(618,64,'陇西县',3,0),(619,64,'通渭县',3,0),(620,64,'渭源县',3,0),(621,64,'漳县',3,0),(622,64,'岷县',3,0),(623,64,'安定区',3,0),(624,64,'安定区',3,0),(625,65,'合作市',3,0),(626,65,'临潭县',3,0),(627,65,'卓尼县',3,0),(628,65,'舟曲县',3,0),(629,65,'迭部县',3,0),(630,65,'玛曲县',3,0),(631,65,'碌曲县',3,0),(632,65,'夏河县',3,0),(633,66,'嘉峪关市',3,0),(634,67,'金川区',3,0),(635,67,'永昌县',3,0),(636,68,'肃州区',3,0),(637,68,'玉门市',3,0),(638,68,'敦煌市',3,0),(639,68,'金塔县',3,0),(640,68,'瓜州县',3,0),(641,68,'肃北',3,0),(642,68,'阿克塞',3,0),(643,69,'临夏市',3,0),(644,69,'临夏县',3,0),(645,69,'康乐县',3,0),(646,69,'永靖县',3,0),(647,69,'广河县',3,0),(648,69,'和政县',3,0),(649,69,'东乡族自治县',3,0),(650,69,'积石山',3,0),(651,70,'成县',3,0),(652,70,'徽县',3,0),(653,70,'康县',3,0),(654,70,'礼县',3,0),(655,70,'两当县',3,0),(656,70,'文县',3,0),(657,70,'西和县',3,0),(658,70,'宕昌县',3,0),(659,70,'武都区',3,0),(660,71,'崇信县',3,0),(661,71,'华亭县',3,0),(662,71,'静宁县',3,0),(663,71,'灵台县',3,0),(664,71,'崆峒区',3,0),(665,71,'庄浪县',3,0),(666,71,'泾川县',3,0),(667,72,'合水县',3,0),(668,72,'华池县',3,0),(669,72,'环县',3,0),(670,72,'宁县',3,0),(671,72,'庆城县',3,0),(672,72,'西峰区',3,0),(673,72,'镇原县',3,0),(674,72,'正宁县',3,0),(675,73,'甘谷县',3,0),(676,73,'秦安县',3,0),(677,73,'清水县',3,0),(678,73,'秦州区',3,0),(679,73,'麦积区',3,0),(680,73,'武山县',3,0),(681,73,'张家川',3,0),(682,74,'古浪县',3,0),(683,74,'民勤县',3,0),(684,74,'天祝',3,0),(685,74,'凉州区',3,0),(686,75,'高台县',3,0),(687,75,'临泽县',3,0),(688,75,'民乐县',3,0),(689,75,'山丹县',3,0),(690,75,'肃南',3,0),(691,75,'甘州区',3,0),(692,76,'从化市',3,0),(693,76,'天河区',3,0),(694,76,'东山区',3,0),(695,76,'白云区',3,0),(696,76,'海珠区',3,0),(697,76,'荔湾区',3,0),(698,76,'越秀区',3,0),(699,76,'黄埔区',3,0),(700,76,'番禺区',3,0),(701,76,'花都区',3,0),(702,76,'增城区',3,0),(703,76,'从化区',3,0),(704,76,'市郊',3,0),(705,77,'福田区',3,0),(706,77,'罗湖区',3,0),(707,77,'南山区',3,0),(708,77,'宝安区',3,0),(709,77,'龙岗区',3,0),(710,77,'盐田区',3,0),(711,78,'湘桥区',3,0),(712,78,'潮安县',3,0),(713,78,'饶平县',3,0),(714,79,'南城区',3,0),(715,79,'东城区',3,0),(716,79,'万江区',3,0),(717,79,'莞城区',3,0),(718,79,'石龙镇',3,0),(719,79,'虎门镇',3,0),(720,79,'麻涌镇',3,0),(721,79,'道滘镇',3,0),(722,79,'石碣镇',3,0),(723,79,'沙田镇',3,0),(724,79,'望牛墩镇',3,0),(725,79,'洪梅镇',3,0),(726,79,'茶山镇',3,0),(727,79,'寮步镇',3,0),(728,79,'大岭山镇',3,0),(729,79,'大朗镇',3,0),(730,79,'黄江镇',3,0),(731,79,'樟木头',3,0),(732,79,'凤岗镇',3,0),(733,79,'塘厦镇',3,0),(734,79,'谢岗镇',3,0),(735,79,'厚街镇',3,0),(736,79,'清溪镇',3,0),(737,79,'常平镇',3,0),(738,79,'桥头镇',3,0),(739,79,'横沥镇',3,0),(740,79,'东坑镇',3,0),(741,79,'企石镇',3,0),(742,79,'石排镇',3,0),(743,79,'长安镇',3,0),(744,79,'中堂镇',3,0),(745,79,'高埗镇',3,0),(746,80,'禅城区',3,0),(747,80,'南海区',3,0),(748,80,'顺德区',3,0),(749,80,'三水区',3,0),(750,80,'高明区',3,0),(751,81,'东源县',3,0),(752,81,'和平县',3,0),(753,81,'源城区',3,0),(754,81,'连平县',3,0),(755,81,'龙川县',3,0),(756,81,'紫金县',3,0),(757,82,'惠阳区',3,0),(758,82,'惠城区',3,0),(759,82,'大亚湾',3,0),(760,82,'博罗县',3,0),(761,82,'惠东县',3,0),(762,82,'龙门县',3,0),(763,83,'江海区',3,0),(764,83,'蓬江区',3,0),(765,83,'新会区',3,0),(766,83,'台山市',3,0),(767,83,'开平市',3,0),(768,83,'鹤山市',3,0),(769,83,'恩平市',3,0),(770,84,'榕城区',3,0),(771,84,'普宁市',3,0),(772,84,'揭东县',3,0),(773,84,'揭西县',3,0),(774,84,'惠来县',3,0),(775,85,'茂南区',3,0),(776,85,'茂港区',3,0),(777,85,'高州市',3,0),(778,85,'化州市',3,0),(779,85,'信宜市',3,0),(780,85,'电白县',3,0),(781,86,'梅县',3,0),(782,86,'梅江区',3,0),(783,86,'兴宁市',3,0),(784,86,'大埔县',3,0),(785,86,'丰顺县',3,0),(786,86,'五华县',3,0),(787,86,'平远县',3,0),(788,86,'蕉岭县',3,0),(789,87,'清城区',3,0),(790,87,'英德市',3,0),(791,87,'连州市',3,0),(792,87,'佛冈县',3,0),(793,87,'阳山县',3,0),(794,87,'清新县',3,0),(795,87,'连山',3,0),(796,87,'连南',3,0),(797,88,'南澳县',3,0),(798,88,'潮阳区',3,0),(799,88,'澄海区',3,0),(800,88,'龙湖区',3,0),(801,88,'金平区',3,0),(802,88,'濠江区',3,0),(803,88,'潮南区',3,0),(804,89,'城区',3,0),(805,89,'陆丰市',3,0),(806,89,'海丰县',3,0),(807,89,'陆河县',3,0),(808,90,'曲江县',3,0),(809,90,'浈江区',3,0),(810,90,'武江区',3,0),(811,90,'曲江区',3,0),(812,90,'乐昌市',3,0),(813,90,'南雄市',3,0),(814,90,'始兴县',3,0),(815,90,'仁化县',3,0),(816,90,'翁源县',3,0),(817,90,'新丰县',3,0),(818,90,'乳源',3,0),(819,91,'江城区',3,0),(820,91,'阳春市',3,0),(821,91,'阳西县',3,0),(822,91,'阳东县',3,0),(823,92,'云城区',3,0),(824,92,'罗定市',3,0),(825,92,'新兴县',3,0),(826,92,'郁南县',3,0),(827,92,'云安县',3,0),(828,93,'赤坎区',3,0),(829,93,'霞山区',3,0),(830,93,'坡头区',3,0),(831,93,'麻章区',3,0),(832,93,'廉江市',3,0),(833,93,'雷州市',3,0),(834,93,'吴川市',3,0),(835,93,'遂溪县',3,0),(836,93,'徐闻县',3,0),(837,94,'肇庆市',3,0),(838,94,'高要市',3,0),(839,94,'四会市',3,0),(840,94,'广宁县',3,0),(841,94,'怀集县',3,0),(842,94,'封开县',3,0),(843,94,'德庆县',3,0),(844,95,'石岐街道',3,0),(845,95,'东区街道',3,0),(846,95,'西区街道',3,0),(847,95,'环城街道',3,0),(848,95,'中山港街道',3,0),(849,95,'五桂山街道',3,0),(850,96,'香洲区',3,0),(851,96,'斗门区',3,0),(852,96,'金湾区',3,0),(853,97,'邕宁区',3,0),(854,97,'青秀区',3,0),(855,97,'兴宁区',3,0),(856,97,'良庆区',3,0),(857,97,'西乡塘区',3,0),(858,97,'江南区',3,0),(859,97,'武鸣县',3,0),(860,97,'隆安县',3,0),(861,97,'马山县',3,0),(862,97,'上林县',3,0),(863,97,'宾阳县',3,0),(864,97,'横县',3,0),(865,98,'秀峰区',3,0),(866,98,'叠彩区',3,0),(867,98,'象山区',3,0),(868,98,'七星区',3,0),(869,98,'雁山区',3,0),(870,98,'阳朔县',3,0),(871,98,'临桂县',3,0),(872,98,'灵川县',3,0),(873,98,'全州县',3,0),(874,98,'平乐县',3,0),(875,98,'兴安县',3,0),(876,98,'灌阳县',3,0),(877,98,'荔浦县',3,0),(878,98,'资源县',3,0),(879,98,'永福县',3,0),(880,98,'龙胜',3,0),(881,98,'恭城',3,0),(882,99,'右江区',3,0),(883,99,'凌云县',3,0),(884,99,'平果县',3,0),(885,99,'西林县',3,0),(886,99,'乐业县',3,0),(887,99,'德保县',3,0),(888,99,'田林县',3,0),(889,99,'田阳县',3,0),(890,99,'靖西县',3,0),(891,99,'田东县',3,0),(892,99,'那坡县',3,0),(893,99,'隆林',3,0),(894,100,'海城区',3,0),(895,100,'银海区',3,0),(896,100,'铁山港区',3,0),(897,100,'合浦县',3,0),(898,101,'江州区',3,0),(899,101,'凭祥市',3,0),(900,101,'宁明县',3,0),(901,101,'扶绥县',3,0),(902,101,'龙州县',3,0),(903,101,'大新县',3,0),(904,101,'天等县',3,0),(905,102,'港口区',3,0),(906,102,'防城区',3,0),(907,102,'东兴市',3,0),(908,102,'上思县',3,0),(909,103,'港北区',3,0),(910,103,'港南区',3,0),(911,103,'覃塘区',3,0),(912,103,'桂平市',3,0),(913,103,'平南县',3,0),(914,104,'金城江区',3,0),(915,104,'宜州市',3,0),(916,104,'天峨县',3,0),(917,104,'凤山县',3,0),(918,104,'南丹县',3,0),(919,104,'东兰县',3,0),(920,104,'都安',3,0),(921,104,'罗城',3,0),(922,104,'巴马',3,0),(923,104,'环江',3,0),(924,104,'大化',3,0),(925,105,'八步区',3,0),(926,105,'钟山县',3,0),(927,105,'昭平县',3,0),(928,105,'富川',3,0),(929,106,'兴宾区',3,0),(930,106,'合山市',3,0),(931,106,'象州县',3,0),(932,106,'武宣县',3,0),(933,106,'忻城县',3,0),(934,106,'金秀',3,0),(935,107,'城中区',3,0),(936,107,'鱼峰区',3,0),(937,107,'柳北区',3,0),(938,107,'柳南区',3,0),(939,107,'柳江县',3,0),(940,107,'柳城县',3,0),(941,107,'鹿寨县',3,0),(942,107,'融安县',3,0),(943,107,'融水',3,0),(944,107,'三江',3,0),(945,108,'钦南区',3,0),(946,108,'钦北区',3,0),(947,108,'灵山县',3,0),(948,108,'浦北县',3,0),(949,109,'万秀区',3,0),(950,109,'蝶山区',3,0),(951,109,'长洲区',3,0),(952,109,'岑溪市',3,0),(953,109,'苍梧县',3,0),(954,109,'藤县',3,0),(955,109,'蒙山县',3,0),(956,110,'玉州区',3,0),(957,110,'北流市',3,0),(958,110,'容县',3,0),(959,110,'陆川县',3,0),(960,110,'博白县',3,0),(961,110,'兴业县',3,0),(962,111,'南明区',3,0),(963,111,'云岩区',3,0),(964,111,'花溪区',3,0),(965,111,'乌当区',3,0),(966,111,'白云区',3,0),(967,111,'小河区',3,0),(968,111,'金阳新区',3,0),(969,111,'新天园区',3,0),(970,111,'清镇市',3,0),(971,111,'开阳县',3,0),(972,111,'修文县',3,0),(973,111,'息烽县',3,0),(974,112,'西秀区',3,0),(975,112,'关岭',3,0),(976,112,'镇宁',3,0),(977,112,'紫云',3,0),(978,112,'平坝县',3,0),(979,112,'普定县',3,0),(980,113,'毕节市',3,0),(981,113,'大方县',3,0),(982,113,'黔西县',3,0),(983,113,'金沙县',3,0),(984,113,'织金县',3,0),(985,113,'纳雍县',3,0),(986,113,'赫章县',3,0),(987,113,'威宁',3,0),(988,114,'钟山区',3,0),(989,114,'六枝特区',3,0),(990,114,'水城县',3,0),(991,114,'盘县',3,0),(992,115,'凯里市',3,0),(993,115,'黄平县',3,0),(994,115,'施秉县',3,0),(995,115,'三穗县',3,0),(996,115,'镇远县',3,0),(997,115,'岑巩县',3,0),(998,115,'天柱县',3,0),(999,115,'锦屏县',3,0),(1000,115,'剑河县',3,0),(1001,115,'台江县',3,0),(1002,115,'黎平县',3,0),(1003,115,'榕江县',3,0),(1004,115,'从江县',3,0),(1005,115,'雷山县',3,0),(1006,115,'麻江县',3,0),(1007,115,'丹寨县',3,0),(1008,116,'都匀市',3,0),(1009,116,'福泉市',3,0),(1010,116,'荔波县',3,0),(1011,116,'贵定县',3,0),(1012,116,'瓮安县',3,0),(1013,116,'独山县',3,0),(1014,116,'平塘县',3,0),(1015,116,'罗甸县',3,0),(1016,116,'长顺县',3,0),(1017,116,'龙里县',3,0),(1018,116,'惠水县',3,0),(1019,116,'三都',3,0),(1020,117,'兴义市',3,0),(1021,117,'兴仁县',3,0),(1022,117,'普安县',3,0),(1023,117,'晴隆县',3,0),(1024,117,'贞丰县',3,0),(1025,117,'望谟县',3,0),(1026,117,'册亨县',3,0),(1027,117,'安龙县',3,0),(1028,118,'铜仁市',3,0),(1029,118,'江口县',3,0),(1030,118,'石阡县',3,0),(1031,118,'思南县',3,0),(1032,118,'德江县',3,0),(1033,118,'玉屏',3,0),(1034,118,'印江',3,0),(1035,118,'沿河',3,0),(1036,118,'松桃',3,0),(1037,118,'万山特区',3,0),(1038,119,'红花岗区',3,0),(1039,119,'务川县',3,0),(1040,119,'道真县',3,0),(1041,119,'汇川区',3,0),(1042,119,'赤水市',3,0),(1043,119,'仁怀市',3,0),(1044,119,'遵义县',3,0),(1045,119,'桐梓县',3,0),(1046,119,'绥阳县',3,0),(1047,119,'正安县',3,0),(1048,119,'凤冈县',3,0),(1049,119,'湄潭县',3,0),(1050,119,'余庆县',3,0),(1051,119,'习水县',3,0),(1052,119,'道真',3,0),(1053,119,'务川',3,0),(1054,120,'秀英区',3,0),(1055,120,'龙华区',3,0),(1056,120,'琼山区',3,0),(1057,120,'美兰区',3,0),(1058,137,'市区',3,0),(1059,137,'洋浦开发区',3,0),(1060,137,'那大镇',3,0),(1061,137,'王五镇',3,0),(1062,137,'雅星镇',3,0),(1063,137,'大成镇',3,0),(1064,137,'中和镇',3,0),(1065,137,'峨蔓镇',3,0),(1066,137,'南丰镇',3,0),(1067,137,'白马井镇',3,0),(1068,137,'兰洋镇',3,0),(1069,137,'和庆镇',3,0),(1070,137,'海头镇',3,0),(1071,137,'排浦镇',3,0),(1072,137,'东成镇',3,0),(1073,137,'光村镇',3,0),(1074,137,'木棠镇',3,0),(1075,137,'新州镇',3,0),(1076,137,'三都镇',3,0),(1077,137,'其他',3,0),(1078,138,'长安区',3,0),(1079,138,'桥东区',3,0),(1080,138,'桥西区',3,0),(1081,138,'新华区',3,0),(1082,138,'裕华区',3,0),(1083,138,'井陉矿区',3,0),(1084,138,'高新区',3,0),(1085,138,'辛集市',3,0),(1086,138,'藁城市',3,0),(1087,138,'晋州市',3,0),(1088,138,'新乐市',3,0),(1089,138,'鹿泉市',3,0),(1090,138,'井陉县',3,0),(1091,138,'正定县',3,0),(1092,138,'栾城县',3,0),(1093,138,'行唐县',3,0),(1094,138,'灵寿县',3,0),(1095,138,'高邑县',3,0),(1096,138,'深泽县',3,0),(1097,138,'赞皇县',3,0),(1098,138,'无极县',3,0),(1099,138,'平山县',3,0),(1100,138,'元氏县',3,0),(1101,138,'赵县',3,0),(1102,139,'新市区',3,0),(1103,139,'南市区',3,0),(1104,139,'北市区',3,0),(1105,139,'涿州市',3,0),(1106,139,'定州市',3,0),(1107,139,'安国市',3,0),(1108,139,'高碑店市',3,0),(1109,139,'满城县',3,0),(1110,139,'清苑县',3,0),(1111,139,'涞水县',3,0),(1112,139,'阜平县',3,0),(1113,139,'徐水县',3,0),(1114,139,'定兴县',3,0),(1115,139,'唐县',3,0),(1116,139,'高阳县',3,0),(1117,139,'容城县',3,0),(1118,139,'涞源县',3,0),(1119,139,'望都县',3,0),(1120,139,'安新县',3,0),(1121,139,'易县',3,0),(1122,139,'曲阳县',3,0),(1123,139,'蠡县',3,0),(1124,139,'顺平县',3,0),(1125,139,'博野县',3,0),(1126,139,'雄县',3,0),(1127,140,'运河区',3,0),(1128,140,'新华区',3,0),(1129,140,'泊头市',3,0),(1130,140,'任丘市',3,0),(1131,140,'黄骅市',3,0),(1132,140,'河间市',3,0),(1133,140,'沧县',3,0),(1134,140,'青县',3,0),(1135,140,'东光县',3,0),(1136,140,'海兴县',3,0),(1137,140,'盐山县',3,0),(1138,140,'肃宁县',3,0),(1139,140,'南皮县',3,0),(1140,140,'吴桥县',3,0),(1141,140,'献县',3,0),(1142,140,'孟村',3,0),(1143,141,'双桥区',3,0),(1144,141,'双滦区',3,0),(1145,141,'鹰手营子矿区',3,0),(1146,141,'承德县',3,0),(1147,141,'兴隆县',3,0),(1148,141,'平泉县',3,0),(1149,141,'滦平县',3,0),(1150,141,'隆化县',3,0),(1151,141,'丰宁',3,0),(1152,141,'宽城',3,0),(1153,141,'围场',3,0),(1154,142,'从台区',3,0),(1155,142,'复兴区',3,0),(1156,142,'邯山区',3,0),(1157,142,'峰峰矿区',3,0),(1158,142,'武安市',3,0),(1159,142,'邯郸县',3,0),(1160,142,'临漳县',3,0),(1161,142,'成安县',3,0),(1162,142,'大名县',3,0),(1163,142,'涉县',3,0),(1164,142,'磁县',3,0),(1165,142,'肥乡县',3,0),(1166,142,'永年县',3,0),(1167,142,'邱县',3,0),(1168,142,'鸡泽县',3,0),(1169,142,'广平县',3,0),(1170,142,'馆陶县',3,0),(1171,142,'魏县',3,0),(1172,142,'曲周县',3,0),(1173,143,'桃城区',3,0),(1174,143,'冀州市',3,0),(1175,143,'深州市',3,0),(1176,143,'枣强县',3,0),(1177,143,'武邑县',3,0),(1178,143,'武强县',3,0),(1179,143,'饶阳县',3,0),(1180,143,'安平县',3,0),(1181,143,'故城县',3,0),(1182,143,'景县',3,0),(1183,143,'阜城县',3,0),(1184,144,'安次区',3,0),(1185,144,'广阳区',3,0),(1186,144,'霸州市',3,0),(1187,144,'三河市',3,0),(1188,144,'固安县',3,0),(1189,144,'永清县',3,0),(1190,144,'香河县',3,0),(1191,144,'大城县',3,0),(1192,144,'文安县',3,0),(1193,144,'大厂',3,0),(1194,145,'海港区',3,0),(1195,145,'山海关区',3,0),(1196,145,'北戴河区',3,0),(1197,145,'昌黎县',3,0),(1198,145,'抚宁县',3,0),(1199,145,'卢龙县',3,0),(1200,145,'青龙',3,0),(1201,146,'路北区',3,0),(1202,146,'路南区',3,0),(1203,146,'古冶区',3,0),(1204,146,'开平区',3,0),(1205,146,'丰南区',3,0),(1206,146,'丰润区',3,0),(1207,146,'遵化市',3,0),(1208,146,'迁安市',3,0),(1209,146,'滦县',3,0),(1210,146,'滦南县',3,0),(1211,146,'乐亭县',3,0),(1212,146,'迁西县',3,0),(1213,146,'玉田县',3,0),(1214,146,'唐海县',3,0),(1215,147,'桥东区',3,0),(1216,147,'桥西区',3,0),(1217,147,'南宫市',3,0),(1218,147,'沙河市',3,0),(1219,147,'邢台县',3,0),(1220,147,'临城县',3,0),(1221,147,'内丘县',3,0),(1222,147,'柏乡县',3,0),(1223,147,'隆尧县',3,0),(1224,147,'任县',3,0),(1225,147,'南和县',3,0),(1226,147,'宁晋县',3,0),(1227,147,'巨鹿县',3,0),(1228,147,'新河县',3,0),(1229,147,'广宗县',3,0),(1230,147,'平乡县',3,0),(1231,147,'威县',3,0),(1232,147,'清河县',3,0),(1233,147,'临西县',3,0),(1234,148,'桥西区',3,0),(1235,148,'桥东区',3,0),(1236,148,'宣化区',3,0),(1237,148,'下花园区',3,0),(1238,148,'宣化县',3,0),(1239,148,'张北县',3,0),(1240,148,'康保县',3,0),(1241,148,'沽源县',3,0),(1242,148,'尚义县',3,0),(1243,148,'蔚县',3,0),(1244,148,'阳原县',3,0),(1245,148,'怀安县',3,0),(1246,148,'万全县',3,0),(1247,148,'怀来县',3,0),(1248,148,'涿鹿县',3,0),(1249,148,'赤城县',3,0),(1250,148,'崇礼县',3,0),(1251,149,'金水区',3,0),(1252,149,'邙山区',3,0),(1253,149,'二七区',3,0),(1254,149,'管城区',3,0),(1255,149,'中原区',3,0),(1256,149,'上街区',3,0),(1257,149,'惠济区',3,0),(1258,149,'郑东新区',3,0),(1259,149,'经济技术开发区',3,0),(1260,149,'高新开发区',3,0),(1261,149,'出口加工区',3,0),(1262,149,'巩义市',3,0),(1263,149,'荥阳市',3,0),(1264,149,'新密市',3,0),(1265,149,'新郑市',3,0),(1266,149,'登封市',3,0),(1267,149,'中牟县',3,0),(1268,150,'西工区',3,0),(1269,150,'老城区',3,0),(1270,150,'涧西区',3,0),(1271,150,'瀍河回族区',3,0),(1272,150,'洛龙区',3,0),(1273,150,'吉利区',3,0),(1274,150,'偃师市',3,0),(1275,150,'孟津县',3,0),(1276,150,'新安县',3,0),(1277,150,'栾川县',3,0),(1278,150,'嵩县',3,0),(1279,150,'汝阳县',3,0),(1280,150,'宜阳县',3,0),(1281,150,'洛宁县',3,0),(1282,150,'伊川县',3,0),(1283,151,'鼓楼区',3,0),(1284,151,'龙亭区',3,0),(1285,151,'顺河回族区',3,0),(1286,151,'金明区',3,0),(1287,151,'禹王台区',3,0),(1288,151,'杞县',3,0),(1289,151,'通许县',3,0),(1290,151,'尉氏县',3,0),(1291,151,'开封县',3,0),(1292,151,'兰考县',3,0),(1293,152,'北关区',3,0),(1294,152,'文峰区',3,0),(1295,152,'殷都区',3,0),(1296,152,'龙安区',3,0),(1297,152,'林州市',3,0),(1298,152,'安阳县',3,0),(1299,152,'汤阴县',3,0),(1300,152,'滑县',3,0),(1301,152,'内黄县',3,0),(1302,153,'淇滨区',3,0),(1303,153,'山城区',3,0),(1304,153,'鹤山区',3,0),(1305,153,'浚县',3,0),(1306,153,'淇县',3,0),(1307,154,'济源市',3,0),(1308,155,'解放区',3,0),(1309,155,'中站区',3,0),(1310,155,'马村区',3,0),(1311,155,'山阳区',3,0),(1312,155,'沁阳市',3,0),(1313,155,'孟州市',3,0),(1314,155,'修武县',3,0),(1315,155,'博爱县',3,0),(1316,155,'武陟县',3,0),(1317,155,'温县',3,0),(1318,156,'卧龙区',3,0),(1319,156,'宛城区',3,0),(1320,156,'邓州市',3,0),(1321,156,'南召县',3,0),(1322,156,'方城县',3,0),(1323,156,'西峡县',3,0),(1324,156,'镇平县',3,0),(1325,156,'内乡县',3,0),(1326,156,'淅川县',3,0),(1327,156,'社旗县',3,0),(1328,156,'唐河县',3,0),(1329,156,'新野县',3,0),(1330,156,'桐柏县',3,0),(1331,157,'新华区',3,0),(1332,157,'卫东区',3,0),(1333,157,'湛河区',3,0),(1334,157,'石龙区',3,0),(1335,157,'舞钢市',3,0),(1336,157,'汝州市',3,0),(1337,157,'宝丰县',3,0),(1338,157,'叶县',3,0),(1339,157,'鲁山县',3,0),(1340,157,'郏县',3,0),(1341,158,'湖滨区',3,0),(1342,158,'义马市',3,0),(1343,158,'灵宝市',3,0),(1344,158,'渑池县',3,0),(1345,158,'陕县',3,0),(1346,158,'卢氏县',3,0),(1347,159,'梁园区',3,0),(1348,159,'睢阳区',3,0),(1349,159,'永城市',3,0),(1350,159,'民权县',3,0),(1351,159,'睢县',3,0),(1352,159,'宁陵县',3,0),(1353,159,'虞城县',3,0),(1354,159,'柘城县',3,0),(1355,159,'夏邑县',3,0),(1356,160,'卫滨区',3,0),(1357,160,'红旗区',3,0),(1358,160,'凤泉区',3,0),(1359,160,'牧野区',3,0),(1360,160,'卫辉市',3,0),(1361,160,'辉县市',3,0),(1362,160,'新乡县',3,0),(1363,160,'获嘉县',3,0),(1364,160,'原阳县',3,0),(1365,160,'延津县',3,0),(1366,160,'封丘县',3,0),(1367,160,'长垣县',3,0),(1368,161,'浉河区',3,0),(1369,161,'平桥区',3,0),(1370,161,'罗山县',3,0),(1371,161,'光山县',3,0),(1372,161,'新县',3,0),(1373,161,'商城县',3,0),(1374,161,'固始县',3,0),(1375,161,'潢川县',3,0),(1376,161,'淮滨县',3,0),(1377,161,'息县',3,0),(1378,162,'魏都区',3,0),(1379,162,'禹州市',3,0),(1380,162,'长葛市',3,0),(1381,162,'许昌县',3,0),(1382,162,'鄢陵县',3,0),(1383,162,'襄城县',3,0),(1384,163,'川汇区',3,0),(1385,163,'项城市',3,0),(1386,163,'扶沟县',3,0),(1387,163,'西华县',3,0),(1388,163,'商水县',3,0),(1389,163,'沈丘县',3,0),(1390,163,'郸城县',3,0),(1391,163,'淮阳县',3,0),(1392,163,'太康县',3,0),(1393,163,'鹿邑县',3,0),(1394,164,'驿城区',3,0),(1395,164,'西平县',3,0),(1396,164,'上蔡县',3,0),(1397,164,'平舆县',3,0),(1398,164,'正阳县',3,0),(1399,164,'确山县',3,0),(1400,164,'泌阳县',3,0),(1401,164,'汝南县',3,0),(1402,164,'遂平县',3,0),(1403,164,'新蔡县',3,0),(1404,165,'郾城区',3,0),(1405,165,'源汇区',3,0),(1406,165,'召陵区',3,0),(1407,165,'舞阳县',3,0),(1408,165,'临颍县',3,0),(1409,166,'华龙区',3,0),(1410,166,'清丰县',3,0),(1411,166,'南乐县',3,0),(1412,166,'范县',3,0),(1413,166,'台前县',3,0),(1414,166,'濮阳县',3,0),(1415,167,'道里区',3,0),(1416,167,'南岗区',3,0),(1417,167,'动力区',3,0),(1418,167,'平房区',3,0),(1419,167,'香坊区',3,0),(1420,167,'太平区',3,0),(1421,167,'道外区',3,0),(1422,167,'阿城区',3,0),(1423,167,'呼兰区',3,0),(1424,167,'松北区',3,0),(1425,167,'尚志市',3,0),(1426,167,'双城市',3,0),(1427,167,'五常市',3,0),(1428,167,'方正县',3,0),(1429,167,'宾县',3,0),(1430,167,'依兰县',3,0),(1431,167,'巴彦县',3,0),(1432,167,'通河县',3,0),(1433,167,'木兰县',3,0),(1434,167,'延寿县',3,0),(1435,168,'萨尔图区',3,0),(1436,168,'红岗区',3,0),(1437,168,'龙凤区',3,0),(1438,168,'让胡路区',3,0),(1439,168,'大同区',3,0),(1440,168,'肇州县',3,0),(1441,168,'肇源县',3,0),(1442,168,'林甸县',3,0),(1443,168,'杜尔伯特',3,0),(1444,169,'呼玛县',3,0),(1445,169,'漠河县',3,0),(1446,169,'塔河县',3,0),(1447,170,'兴山区',3,0),(1448,170,'工农区',3,0),(1449,170,'南山区',3,0),(1450,170,'兴安区',3,0),(1451,170,'向阳区',3,0),(1452,170,'东山区',3,0),(1453,170,'萝北县',3,0),(1454,170,'绥滨县',3,0),(1455,171,'爱辉区',3,0),(1456,171,'五大连池市',3,0),(1457,171,'北安市',3,0),(1458,171,'嫩江县',3,0),(1459,171,'逊克县',3,0),(1460,171,'孙吴县',3,0),(1461,172,'鸡冠区',3,0),(1462,172,'恒山区',3,0),(1463,172,'城子河区',3,0),(1464,172,'滴道区',3,0),(1465,172,'梨树区',3,0),(1466,172,'虎林市',3,0),(1467,172,'密山市',3,0),(1468,172,'鸡东县',3,0),(1469,173,'前进区',3,0),(1470,173,'郊区',3,0),(1471,173,'向阳区',3,0),(1472,173,'东风区',3,0),(1473,173,'同江市',3,0),(1474,173,'富锦市',3,0),(1475,173,'桦南县',3,0),(1476,173,'桦川县',3,0),(1477,173,'汤原县',3,0),(1478,173,'抚远县',3,0),(1479,174,'爱民区',3,0),(1480,174,'东安区',3,0),(1481,174,'阳明区',3,0),(1482,174,'西安区',3,0),(1483,174,'绥芬河市',3,0),(1484,174,'海林市',3,0),(1485,174,'宁安市',3,0),(1486,174,'穆棱市',3,0),(1487,174,'东宁县',3,0),(1488,174,'林口县',3,0),(1489,175,'桃山区',3,0),(1490,175,'新兴区',3,0),(1491,175,'茄子河区',3,0),(1492,175,'勃利县',3,0),(1493,176,'龙沙区',3,0),(1494,176,'昂昂溪区',3,0),(1495,176,'铁峰区',3,0),(1496,176,'建华区',3,0),(1497,176,'富拉尔基区',3,0),(1498,176,'碾子山区',3,0),(1499,176,'梅里斯达斡尔区',3,0),(1500,176,'讷河市',3,0),(1501,176,'龙江县',3,0),(1502,176,'依安县',3,0),(1503,176,'泰来县',3,0),(1504,176,'甘南县',3,0),(1505,176,'富裕县',3,0),(1506,176,'克山县',3,0),(1507,176,'克东县',3,0),(1508,176,'拜泉县',3,0),(1509,177,'尖山区',3,0),(1510,177,'岭东区',3,0),(1511,177,'四方台区',3,0),(1512,177,'宝山区',3,0),(1513,177,'集贤县',3,0),(1514,177,'友谊县',3,0),(1515,177,'宝清县',3,0),(1516,177,'饶河县',3,0),(1517,178,'北林区',3,0),(1518,178,'安达市',3,0),(1519,178,'肇东市',3,0),(1520,178,'海伦市',3,0),(1521,178,'望奎县',3,0),(1522,178,'兰西县',3,0),(1523,178,'青冈县',3,0),(1524,178,'庆安县',3,0),(1525,178,'明水县',3,0),(1526,178,'绥棱县',3,0),(1527,179,'伊春区',3,0),(1528,179,'带岭区',3,0),(1529,179,'南岔区',3,0),(1530,179,'金山屯区',3,0),(1531,179,'西林区',3,0),(1532,179,'美溪区',3,0),(1533,179,'乌马河区',3,0),(1534,179,'翠峦区',3,0),(1535,179,'友好区',3,0),(1536,179,'上甘岭区',3,0),(1537,179,'五营区',3,0),(1538,179,'红星区',3,0),(1539,179,'新青区',3,0),(1540,179,'汤旺河区',3,0),(1541,179,'乌伊岭区',3,0),(1542,179,'铁力市',3,0),(1543,179,'嘉荫县',3,0),(1544,180,'江岸区',3,0),(1545,180,'武昌区',3,0),(1546,180,'江汉区',3,0),(1547,180,'硚口区',3,0),(1548,180,'汉阳区',3,0),(1549,180,'青山区',3,0),(1550,180,'洪山区',3,0),(1551,180,'东西湖区',3,0),(1552,180,'汉南区',3,0),(1553,180,'蔡甸区',3,0),(1554,180,'江夏区',3,0),(1555,180,'黄陂区',3,0),(1556,180,'新洲区',3,0),(1557,180,'经济开发区',3,0),(1558,181,'仙桃市',3,0),(1559,182,'鄂城区',3,0),(1560,182,'华容区',3,0),(1561,182,'梁子湖区',3,0),(1562,183,'黄州区',3,0),(1563,183,'麻城市',3,0),(1564,183,'武穴市',3,0),(1565,183,'团风县',3,0),(1566,183,'红安县',3,0),(1567,183,'罗田县',3,0),(1568,183,'英山县',3,0),(1569,183,'浠水县',3,0),(1570,183,'蕲春县',3,0),(1571,183,'黄梅县',3,0),(1572,184,'黄石港区',3,0),(1573,184,'西塞山区',3,0),(1574,184,'下陆区',3,0),(1575,184,'铁山区',3,0),(1576,184,'大冶市',3,0),(1577,184,'阳新县',3,0),(1578,185,'东宝区',3,0),(1579,185,'掇刀区',3,0),(1580,185,'钟祥市',3,0),(1581,185,'京山县',3,0),(1582,185,'沙洋县',3,0),(1583,186,'沙市区',3,0),(1584,186,'荆州区',3,0),(1585,186,'石首市',3,0),(1586,186,'洪湖市',3,0),(1587,186,'松滋市',3,0),(1588,186,'公安县',3,0),(1589,186,'监利县',3,0),(1590,186,'江陵县',3,0),(1591,187,'潜江市',3,0),(1592,188,'神农架林区',3,0),(1593,189,'张湾区',3,0),(1594,189,'茅箭区',3,0),(1595,189,'丹江口市',3,0),(1596,189,'郧县',3,0),(1597,189,'郧西县',3,0),(1598,189,'竹山县',3,0),(1599,189,'竹溪县',3,0),(1600,189,'房县',3,0),(1601,190,'曾都区',3,0),(1602,190,'广水市',3,0),(1603,191,'天门市',3,0),(1604,192,'咸安区',3,0),(1605,192,'赤壁市',3,0),(1606,192,'嘉鱼县',3,0),(1607,192,'通城县',3,0),(1608,192,'崇阳县',3,0),(1609,192,'通山县',3,0),(1610,193,'襄城区',3,0),(1611,193,'樊城区',3,0),(1612,193,'襄阳区',3,0),(1613,193,'老河口市',3,0),(1614,193,'枣阳市',3,0),(1615,193,'宜城市',3,0),(1616,193,'南漳县',3,0),(1617,193,'谷城县',3,0),(1618,193,'保康县',3,0),(1619,194,'孝南区',3,0),(1620,194,'应城市',3,0),(1621,194,'安陆市',3,0),(1622,194,'汉川市',3,0),(1623,194,'孝昌县',3,0),(1624,194,'大悟县',3,0),(1625,194,'云梦县',3,0),(1626,195,'长阳',3,0),(1627,195,'五峰',3,0),(1628,195,'西陵区',3,0),(1629,195,'伍家岗区',3,0),(1630,195,'点军区',3,0),(1631,195,'猇亭区',3,0),(1632,195,'夷陵区',3,0),(1633,195,'宜都市',3,0),(1634,195,'当阳市',3,0),(1635,195,'枝江市',3,0),(1636,195,'远安县',3,0),(1637,195,'兴山县',3,0),(1638,195,'秭归县',3,0),(1639,196,'恩施市',3,0),(1640,196,'利川市',3,0),(1641,196,'建始县',3,0),(1642,196,'巴东县',3,0),(1643,196,'宣恩县',3,0),(1644,196,'咸丰县',3,0),(1645,196,'来凤县',3,0),(1646,196,'鹤峰县',3,0),(1647,197,'岳麓区',3,0),(1648,197,'芙蓉区',3,0),(1649,197,'天心区',3,0),(1650,197,'开福区',3,0),(1651,197,'雨花区',3,0),(1652,197,'开发区',3,0),(1653,197,'浏阳市',3,0),(1654,197,'长沙县',3,0),(1655,197,'望城县',3,0),(1656,197,'宁乡县',3,0),(1657,198,'永定区',3,0),(1658,198,'武陵源区',3,0),(1659,198,'慈利县',3,0),(1660,198,'桑植县',3,0),(1661,199,'武陵区',3,0),(1662,199,'鼎城区',3,0),(1663,199,'津市市',3,0),(1664,199,'安乡县',3,0),(1665,199,'汉寿县',3,0),(1666,199,'澧县',3,0),(1667,199,'临澧县',3,0),(1668,199,'桃源县',3,0),(1669,199,'石门县',3,0),(1670,200,'北湖区',3,0),(1671,200,'苏仙区',3,0),(1672,200,'资兴市',3,0),(1673,200,'桂阳县',3,0),(1674,200,'宜章县',3,0),(1675,200,'永兴县',3,0),(1676,200,'嘉禾县',3,0),(1677,200,'临武县',3,0),(1678,200,'汝城县',3,0),(1679,200,'桂东县',3,0),(1680,200,'安仁县',3,0),(1681,201,'雁峰区',3,0),(1682,201,'珠晖区',3,0),(1683,201,'石鼓区',3,0),(1684,201,'蒸湘区',3,0),(1685,201,'南岳区',3,0),(1686,201,'耒阳市',3,0),(1687,201,'常宁市',3,0),(1688,201,'衡阳县',3,0),(1689,201,'衡南县',3,0),(1690,201,'衡山县',3,0),(1691,201,'衡东县',3,0),(1692,201,'祁东县',3,0),(1693,202,'鹤城区',3,0),(1694,202,'靖州',3,0),(1695,202,'麻阳',3,0),(1696,202,'通道',3,0),(1697,202,'新晃',3,0),(1698,202,'芷江',3,0),(1699,202,'沅陵县',3,0),(1700,202,'辰溪县',3,0),(1701,202,'溆浦县',3,0),(1702,202,'中方县',3,0),(1703,202,'会同县',3,0),(1704,202,'洪江市',3,0),(1705,203,'娄星区',3,0),(1706,203,'冷水江市',3,0),(1707,203,'涟源市',3,0),(1708,203,'双峰县',3,0),(1709,203,'新化县',3,0),(1710,204,'城步',3,0),(1711,204,'双清区',3,0),(1712,204,'大祥区',3,0),(1713,204,'北塔区',3,0),(1714,204,'武冈市',3,0),(1715,204,'邵东县',3,0),(1716,204,'新邵县',3,0),(1717,204,'邵阳县',3,0),(1718,204,'隆回县',3,0),(1719,204,'洞口县',3,0),(1720,204,'绥宁县',3,0),(1721,204,'新宁县',3,0),(1722,205,'岳塘区',3,0),(1723,205,'雨湖区',3,0),(1724,205,'湘乡市',3,0),(1725,205,'韶山市',3,0),(1726,205,'湘潭县',3,0),(1727,206,'吉首市',3,0),(1728,206,'泸溪县',3,0),(1729,206,'凤凰县',3,0),(1730,206,'花垣县',3,0),(1731,206,'保靖县',3,0),(1732,206,'古丈县',3,0),(1733,206,'永顺县',3,0),(1734,206,'龙山县',3,0),(1735,207,'赫山区',3,0),(1736,207,'资阳区',3,0),(1737,207,'沅江市',3,0),(1738,207,'南县',3,0),(1739,207,'桃江县',3,0),(1740,207,'安化县',3,0),(1741,208,'江华',3,0),(1742,208,'冷水滩区',3,0),(1743,208,'零陵区',3,0),(1744,208,'祁阳县',3,0),(1745,208,'东安县',3,0),(1746,208,'双牌县',3,0),(1747,208,'道县',3,0),(1748,208,'江永县',3,0),(1749,208,'宁远县',3,0),(1750,208,'蓝山县',3,0),(1751,208,'新田县',3,0),(1752,209,'岳阳楼区',3,0),(1753,209,'君山区',3,0),(1754,209,'云溪区',3,0),(1755,209,'汨罗市',3,0),(1756,209,'临湘市',3,0),(1757,209,'岳阳县',3,0),(1758,209,'华容县',3,0),(1759,209,'湘阴县',3,0),(1760,209,'平江县',3,0),(1761,210,'天元区',3,0),(1762,210,'荷塘区',3,0),(1763,210,'芦淞区',3,0),(1764,210,'石峰区',3,0),(1765,210,'醴陵市',3,0),(1766,210,'株洲县',3,0),(1767,210,'攸县',3,0),(1768,210,'茶陵县',3,0),(1769,210,'炎陵县',3,0),(1770,211,'朝阳区',3,0),(1771,211,'宽城区',3,0),(1772,211,'二道区',3,0),(1773,211,'南关区',3,0),(1774,211,'绿园区',3,0),(1775,211,'双阳区',3,0),(1776,211,'净月潭开发区',3,0),(1777,211,'高新技术开发区',3,0),(1778,211,'经济技术开发区',3,0),(1779,211,'汽车产业开发区',3,0),(1780,211,'德惠市',3,0),(1781,211,'九台市',3,0),(1782,211,'榆树市',3,0),(1783,211,'农安县',3,0),(1784,212,'船营区',3,0),(1785,212,'昌邑区',3,0),(1786,212,'龙潭区',3,0),(1787,212,'丰满区',3,0),(1788,212,'蛟河市',3,0),(1789,212,'桦甸市',3,0),(1790,212,'舒兰市',3,0),(1791,212,'磐石市',3,0),(1792,212,'永吉县',3,0),(1793,213,'洮北区',3,0),(1794,213,'洮南市',3,0),(1795,213,'大安市',3,0),(1796,213,'镇赉县',3,0),(1797,213,'通榆县',3,0),(1798,214,'江源区',3,0),(1799,214,'八道江区',3,0),(1800,214,'长白',3,0),(1801,214,'临江市',3,0),(1802,214,'抚松县',3,0),(1803,214,'靖宇县',3,0),(1804,215,'龙山区',3,0),(1805,215,'西安区',3,0),(1806,215,'东丰县',3,0),(1807,215,'东辽县',3,0),(1808,216,'铁西区',3,0),(1809,216,'铁东区',3,0),(1810,216,'伊通',3,0),(1811,216,'公主岭市',3,0),(1812,216,'双辽市',3,0),(1813,216,'梨树县',3,0),(1814,217,'前郭尔罗斯',3,0),(1815,217,'宁江区',3,0),(1816,217,'长岭县',3,0),(1817,217,'乾安县',3,0),(1818,217,'扶余县',3,0),(1819,218,'东昌区',3,0),(1820,218,'二道江区',3,0),(1821,218,'梅河口市',3,0),(1822,218,'集安市',3,0),(1823,218,'通化县',3,0),(1824,218,'辉南县',3,0),(1825,218,'柳河县',3,0),(1826,219,'延吉市',3,0),(1827,219,'图们市',3,0),(1828,219,'敦化市',3,0),(1829,219,'珲春市',3,0),(1830,219,'龙井市',3,0),(1831,219,'和龙市',3,0),(1832,219,'安图县',3,0),(1833,219,'汪清县',3,0),(1834,220,'玄武区',3,0),(1835,220,'鼓楼区',3,0),(1836,220,'白下区',3,0),(1837,220,'建邺区',3,0),(1838,220,'秦淮区',3,0),(1839,220,'雨花台区',3,0),(1840,220,'下关区',3,0),(1841,220,'栖霞区',3,0),(1842,220,'浦口区',3,0),(1843,220,'江宁区',3,0),(1844,220,'六合区',3,0),(1845,220,'溧水县',3,0),(1846,220,'高淳县',3,0),(1847,221,'沧浪区',3,0),(1848,221,'金阊区',3,0),(1849,221,'平江区',3,0),(1850,221,'虎丘区',3,0),(1851,221,'吴中区',3,0),(1852,221,'相城区',3,0),(1853,221,'园区',3,0),(1854,221,'新区',3,0),(1855,221,'常熟市',3,0),(1856,221,'张家港市',3,0),(1857,221,'玉山镇',3,0),(1858,221,'巴城镇',3,0),(1859,221,'周市镇',3,0),(1860,221,'陆家镇',3,0),(1861,221,'花桥镇',3,0),(1862,221,'淀山湖镇',3,0),(1863,221,'张浦镇',3,0),(1864,221,'周庄镇',3,0),(1865,221,'千灯镇',3,0),(1866,221,'锦溪镇',3,0),(1867,221,'开发区',3,0),(1868,221,'吴江市',3,0),(1869,221,'太仓市',3,0),(1870,222,'崇安区',3,0),(1871,222,'北塘区',3,0),(1872,222,'南长区',3,0),(1873,222,'锡山区',3,0),(1874,222,'惠山区',3,0),(1875,222,'滨湖区',3,0),(1876,222,'新区',3,0),(1877,222,'江阴市',3,0),(1878,222,'宜兴市',3,0),(1879,223,'天宁区',3,0),(1880,223,'钟楼区',3,0),(1881,223,'戚墅堰区',3,0),(1882,223,'郊区',3,0),(1883,223,'新北区',3,0),(1884,223,'武进区',3,0),(1885,223,'溧阳市',3,0),(1886,223,'金坛市',3,0),(1887,224,'清河区',3,0),(1888,224,'清浦区',3,0),(1889,224,'楚州区',3,0),(1890,224,'淮阴区',3,0),(1891,224,'涟水县',3,0),(1892,224,'洪泽县',3,0),(1893,224,'盱眙县',3,0),(1894,224,'金湖县',3,0),(1895,225,'新浦区',3,0),(1896,225,'连云区',3,0),(1897,225,'海州区',3,0),(1898,225,'赣榆县',3,0),(1899,225,'东海县',3,0),(1900,225,'灌云县',3,0),(1901,225,'灌南县',3,0),(1902,226,'崇川区',3,0),(1903,226,'港闸区',3,0),(1904,226,'经济开发区',3,0),(1905,226,'启东市',3,0),(1906,226,'如皋市',3,0),(1907,226,'通州市',3,0),(1908,226,'海门市',3,0),(1909,226,'海安县',3,0),(1910,226,'如东县',3,0),(1911,227,'宿城区',3,0),(1912,227,'宿豫区',3,0),(1913,227,'宿豫县',3,0),(1914,227,'沭阳县',3,0),(1915,227,'泗阳县',3,0),(1916,227,'泗洪县',3,0),(1917,228,'海陵区',3,0),(1918,228,'高港区',3,0),(1919,228,'兴化市',3,0),(1920,228,'靖江市',3,0),(1921,228,'泰兴市',3,0),(1922,228,'姜堰市',3,0),(1923,229,'云龙区',3,0),(1924,229,'鼓楼区',3,0),(1925,229,'九里区',3,0),(1926,229,'贾汪区',3,0),(1927,229,'泉山区',3,0),(1928,229,'新沂市',3,0),(1929,229,'邳州市',3,0),(1930,229,'丰县',3,0),(1931,229,'沛县',3,0),(1932,229,'铜山县',3,0),(1933,229,'睢宁县',3,0),(1934,230,'城区',3,0),(1935,230,'亭湖区',3,0),(1936,230,'盐都区',3,0),(1937,230,'盐都县',3,0),(1938,230,'东台市',3,0),(1939,230,'大丰市',3,0),(1940,230,'响水县',3,0),(1941,230,'滨海县',3,0),(1942,230,'阜宁县',3,0),(1943,230,'射阳县',3,0),(1944,230,'建湖县',3,0),(1945,231,'广陵区',3,0),(1946,231,'维扬区',3,0),(1947,231,'邗江区',3,0),(1948,231,'仪征市',3,0),(1949,231,'高邮市',3,0),(1950,231,'江都市',3,0),(1951,231,'宝应县',3,0),(1952,232,'京口区',3,0),(1953,232,'润州区',3,0),(1954,232,'丹徒区',3,0),(1955,232,'丹阳市',3,0),(1956,232,'扬中市',3,0),(1957,232,'句容市',3,0),(1958,233,'东湖区',3,0),(1959,233,'西湖区',3,0),(1960,233,'青云谱区',3,0),(1961,233,'湾里区',3,0),(1962,233,'青山湖区',3,0),(1963,233,'红谷滩新区',3,0),(1964,233,'昌北区',3,0),(1965,233,'高新区',3,0),(1966,233,'南昌县',3,0),(1967,233,'新建县',3,0),(1968,233,'安义县',3,0),(1969,233,'进贤县',3,0),(1970,234,'临川区',3,0),(1971,234,'南城县',3,0),(1972,234,'黎川县',3,0),(1973,234,'南丰县',3,0),(1974,234,'崇仁县',3,0),(1975,234,'乐安县',3,0),(1976,234,'宜黄县',3,0),(1977,234,'金溪县',3,0),(1978,234,'资溪县',3,0),(1979,234,'东乡县',3,0),(1980,234,'广昌县',3,0),(1981,235,'章贡区',3,0),(1982,235,'于都县',3,0),(1983,235,'瑞金市',3,0),(1984,235,'南康市',3,0),(1985,235,'赣县',3,0),(1986,235,'信丰县',3,0),(1987,235,'大余县',3,0),(1988,235,'上犹县',3,0),(1989,235,'崇义县',3,0),(1990,235,'安远县',3,0),(1991,235,'龙南县',3,0),(1992,235,'定南县',3,0),(1993,235,'全南县',3,0),(1994,235,'宁都县',3,0),(1995,235,'兴国县',3,0),(1996,235,'会昌县',3,0),(1997,235,'寻乌县',3,0),(1998,235,'石城县',3,0),(1999,236,'安福县',3,0),(2000,236,'吉州区',3,0),(2001,236,'青原区',3,0),(2002,236,'井冈山市',3,0),(2003,236,'吉安县',3,0),(2004,236,'吉水县',3,0),(2005,236,'峡江县',3,0),(2006,236,'新干县',3,0),(2007,236,'永丰县',3,0),(2008,236,'泰和县',3,0),(2009,236,'遂川县',3,0),(2010,236,'万安县',3,0),(2011,236,'永新县',3,0),(2012,237,'珠山区',3,0),(2013,237,'昌江区',3,0),(2014,237,'乐平市',3,0),(2015,237,'浮梁县',3,0),(2016,238,'浔阳区',3,0),(2017,238,'庐山区',3,0),(2018,238,'瑞昌市',3,0),(2019,238,'九江县',3,0),(2020,238,'武宁县',3,0),(2021,238,'修水县',3,0),(2022,238,'永修县',3,0),(2023,238,'德安县',3,0),(2024,238,'星子县',3,0),(2025,238,'都昌县',3,0),(2026,238,'湖口县',3,0),(2027,238,'彭泽县',3,0),(2028,239,'安源区',3,0),(2029,239,'湘东区',3,0),(2030,239,'莲花县',3,0),(2031,239,'芦溪县',3,0),(2032,239,'上栗县',3,0),(2033,240,'信州区',3,0),(2034,240,'德兴市',3,0),(2035,240,'上饶县',3,0),(2036,240,'广丰县',3,0),(2037,240,'玉山县',3,0),(2038,240,'铅山县',3,0),(2039,240,'横峰县',3,0),(2040,240,'弋阳县',3,0),(2041,240,'余干县',3,0),(2042,240,'波阳县',3,0),(2043,240,'万年县',3,0),(2044,240,'婺源县',3,0),(2045,241,'渝水区',3,0),(2046,241,'分宜县',3,0),(2047,242,'袁州区',3,0),(2048,242,'丰城市',3,0),(2049,242,'樟树市',3,0),(2050,242,'高安市',3,0),(2051,242,'奉新县',3,0),(2052,242,'万载县',3,0),(2053,242,'上高县',3,0),(2054,242,'宜丰县',3,0),(2055,242,'靖安县',3,0),(2056,242,'铜鼓县',3,0),(2057,243,'月湖区',3,0),(2058,243,'贵溪市',3,0),(2059,243,'余江县',3,0),(2060,244,'沈河区',3,0),(2061,244,'皇姑区',3,0),(2062,244,'和平区',3,0),(2063,244,'大东区',3,0),(2064,244,'铁西区',3,0),(2065,244,'苏家屯区',3,0),(2066,244,'东陵区',3,0),(2067,244,'沈北新区',3,0),(2068,244,'于洪区',3,0),(2069,244,'浑南新区',3,0),(2070,244,'新民市',3,0),(2071,244,'辽中县',3,0),(2072,244,'康平县',3,0),(2073,244,'法库县',3,0),(2074,245,'西岗区',3,0),(2075,245,'中山区',3,0),(2076,245,'沙河口区',3,0),(2077,245,'甘井子区',3,0),(2078,245,'旅顺口区',3,0),(2079,245,'金州区',3,0),(2080,245,'开发区',3,0),(2081,245,'瓦房店市',3,0),(2082,245,'普兰店市',3,0),(2083,245,'庄河市',3,0),(2084,245,'长海县',3,0),(2085,246,'铁东区',3,0),(2086,246,'铁西区',3,0),(2087,246,'立山区',3,0),(2088,246,'千山区',3,0),(2089,246,'岫岩',3,0),(2090,246,'海城市',3,0),(2091,246,'台安县',3,0),(2092,247,'本溪',3,0),(2093,247,'平山区',3,0),(2094,247,'明山区',3,0),(2095,247,'溪湖区',3,0),(2096,247,'南芬区',3,0),(2097,247,'桓仁',3,0),(2098,248,'双塔区',3,0),(2099,248,'龙城区',3,0),(2100,248,'喀喇沁左翼蒙古族自治县',3,0),(2101,248,'北票市',3,0),(2102,248,'凌源市',3,0),(2103,248,'朝阳县',3,0),(2104,248,'建平县',3,0),(2105,249,'振兴区',3,0),(2106,249,'元宝区',3,0),(2107,249,'振安区',3,0),(2108,249,'宽甸',3,0),(2109,249,'东港市',3,0),(2110,249,'凤城市',3,0),(2111,250,'顺城区',3,0),(2112,250,'新抚区',3,0),(2113,250,'东洲区',3,0),(2114,250,'望花区',3,0),(2115,250,'清原',3,0),(2116,250,'新宾',3,0),(2117,250,'抚顺县',3,0),(2118,251,'阜新',3,0),(2119,251,'海州区',3,0),(2120,251,'新邱区',3,0),(2121,251,'太平区',3,0),(2122,251,'清河门区',3,0),(2123,251,'细河区',3,0),(2124,251,'彰武县',3,0),(2125,252,'龙港区',3,0),(2126,252,'南票区',3,0),(2127,252,'连山区',3,0),(2128,252,'兴城市',3,0),(2129,252,'绥中县',3,0),(2130,252,'建昌县',3,0),(2131,253,'太和区',3,0),(2132,253,'古塔区',3,0),(2133,253,'凌河区',3,0),(2134,253,'凌海市',3,0),(2135,253,'北镇市',3,0),(2136,253,'黑山县',3,0),(2137,253,'义县',3,0),(2138,254,'白塔区',3,0),(2139,254,'文圣区',3,0),(2140,254,'宏伟区',3,0),(2141,254,'太子河区',3,0),(2142,254,'弓长岭区',3,0),(2143,254,'灯塔市',3,0),(2144,254,'辽阳县',3,0),(2145,255,'双台子区',3,0),(2146,255,'兴隆台区',3,0),(2147,255,'大洼县',3,0),(2148,255,'盘山县',3,0),(2149,256,'银州区',3,0),(2150,256,'清河区',3,0),(2151,256,'调兵山市',3,0),(2152,256,'开原市',3,0),(2153,256,'铁岭县',3,0),(2154,256,'西丰县',3,0),(2155,256,'昌图县',3,0),(2156,257,'站前区',3,0),(2157,257,'西市区',3,0),(2158,257,'鲅鱼圈区',3,0),(2159,257,'老边区',3,0),(2160,257,'盖州市',3,0),(2161,257,'大石桥市',3,0),(2162,258,'回民区',3,0),(2163,258,'玉泉区',3,0),(2164,258,'新城区',3,0),(2165,258,'赛罕区',3,0),(2166,258,'清水河县',3,0),(2167,258,'土默特左旗',3,0),(2168,258,'托克托县',3,0),(2169,258,'和林格尔县',3,0),(2170,258,'武川县',3,0),(2171,259,'阿拉善左旗',3,0),(2172,259,'阿拉善右旗',3,0),(2173,259,'额济纳旗',3,0),(2174,260,'临河区',3,0),(2175,260,'五原县',3,0),(2176,260,'磴口县',3,0),(2177,260,'乌拉特前旗',3,0),(2178,260,'乌拉特中旗',3,0),(2179,260,'乌拉特后旗',3,0),(2180,260,'杭锦后旗',3,0),(2181,261,'昆都仑区',3,0),(2182,261,'青山区',3,0),(2183,261,'东河区',3,0),(2184,261,'九原区',3,0),(2185,261,'石拐区',3,0),(2186,261,'白云矿区',3,0),(2187,261,'土默特右旗',3,0),(2188,261,'固阳县',3,0),(2189,261,'达尔罕茂明安联合旗',3,0),(2190,262,'红山区',3,0),(2191,262,'元宝山区',3,0),(2192,262,'松山区',3,0),(2193,262,'阿鲁科尔沁旗',3,0),(2194,262,'巴林左旗',3,0),(2195,262,'巴林右旗',3,0),(2196,262,'林西县',3,0),(2197,262,'克什克腾旗',3,0),(2198,262,'翁牛特旗',3,0),(2199,262,'喀喇沁旗',3,0),(2200,262,'宁城县',3,0),(2201,262,'敖汉旗',3,0),(2202,263,'东胜区',3,0),(2203,263,'达拉特旗',3,0),(2204,263,'准格尔旗',3,0),(2205,263,'鄂托克前旗',3,0),(2206,263,'鄂托克旗',3,0),(2207,263,'杭锦旗',3,0),(2208,263,'乌审旗',3,0),(2209,263,'伊金霍洛旗',3,0),(2210,264,'海拉尔区',3,0),(2211,264,'莫力达瓦',3,0),(2212,264,'满洲里市',3,0),(2213,264,'牙克石市',3,0),(2214,264,'扎兰屯市',3,0),(2215,264,'额尔古纳市',3,0),(2216,264,'根河市',3,0),(2217,264,'阿荣旗',3,0),(2218,264,'鄂伦春自治旗',3,0),(2219,264,'鄂温克族自治旗',3,0),(2220,264,'陈巴尔虎旗',3,0),(2221,264,'新巴尔虎左旗',3,0),(2222,264,'新巴尔虎右旗',3,0),(2223,265,'科尔沁区',3,0),(2224,265,'霍林郭勒市',3,0),(2225,265,'科尔沁左翼中旗',3,0),(2226,265,'科尔沁左翼后旗',3,0),(2227,265,'开鲁县',3,0),(2228,265,'库伦旗',3,0),(2229,265,'奈曼旗',3,0),(2230,265,'扎鲁特旗',3,0),(2231,266,'海勃湾区',3,0),(2232,266,'乌达区',3,0),(2233,266,'海南区',3,0),(2234,267,'化德县',3,0),(2235,267,'集宁区',3,0),(2236,267,'丰镇市',3,0),(2237,267,'卓资县',3,0),(2238,267,'商都县',3,0),(2239,267,'兴和县',3,0),(2240,267,'凉城县',3,0),(2241,267,'察哈尔右翼前旗',3,0),(2242,267,'察哈尔右翼中旗',3,0),(2243,267,'察哈尔右翼后旗',3,0),(2244,267,'四子王旗',3,0),(2245,268,'二连浩特市',3,0),(2246,268,'锡林浩特市',3,0),(2247,268,'阿巴嘎旗',3,0),(2248,268,'苏尼特左旗',3,0),(2249,268,'苏尼特右旗',3,0),(2250,268,'东乌珠穆沁旗',3,0),(2251,268,'西乌珠穆沁旗',3,0),(2252,268,'太仆寺旗',3,0),(2253,268,'镶黄旗',3,0),(2254,268,'正镶白旗',3,0),(2255,268,'正蓝旗',3,0),(2256,268,'多伦县',3,0),(2257,269,'乌兰浩特市',3,0),(2258,269,'阿尔山市',3,0),(2259,269,'科尔沁右翼前旗',3,0),(2260,269,'科尔沁右翼中旗',3,0),(2261,269,'扎赉特旗',3,0),(2262,269,'突泉县',3,0),(2263,270,'西夏区',3,0),(2264,270,'金凤区',3,0),(2265,270,'兴庆区',3,0),(2266,270,'灵武市',3,0),(2267,270,'永宁县',3,0),(2268,270,'贺兰县',3,0),(2269,271,'原州区',3,0),(2270,271,'海原县',3,0),(2271,271,'西吉县',3,0),(2272,271,'隆德县',3,0),(2273,271,'泾源县',3,0),(2274,271,'彭阳县',3,0),(2275,272,'惠农县',3,0),(2276,272,'大武口区',3,0),(2277,272,'惠农区',3,0),(2278,272,'陶乐县',3,0),(2279,272,'平罗县',3,0),(2280,273,'利通区',3,0),(2281,273,'中卫县',3,0),(2282,273,'青铜峡市',3,0),(2283,273,'中宁县',3,0),(2284,273,'盐池县',3,0),(2285,273,'同心县',3,0),(2286,274,'沙坡头区',3,0),(2287,274,'海原县',3,0),(2288,274,'中宁县',3,0),(2289,275,'城中区',3,0),(2290,275,'城东区',3,0),(2291,275,'城西区',3,0),(2292,275,'城北区',3,0),(2293,275,'湟中县',3,0),(2294,275,'湟源县',3,0),(2295,275,'大通',3,0),(2296,276,'玛沁县',3,0),(2297,276,'班玛县',3,0),(2298,276,'甘德县',3,0),(2299,276,'达日县',3,0),(2300,276,'久治县',3,0),(2301,276,'玛多县',3,0),(2302,277,'海晏县',3,0),(2303,277,'祁连县',3,0),(2304,277,'刚察县',3,0),(2305,277,'门源',3,0),(2306,278,'平安县',3,0),(2307,278,'乐都县',3,0),(2308,278,'民和',3,0),(2309,278,'互助',3,0),(2310,278,'化隆',3,0),(2311,278,'循化',3,0),(2312,279,'共和县',3,0),(2313,279,'同德县',3,0),(2314,279,'贵德县',3,0),(2315,279,'兴海县',3,0),(2316,279,'贵南县',3,0),(2317,280,'德令哈市',3,0),(2318,280,'格尔木市',3,0),(2319,280,'乌兰县',3,0),(2320,280,'都兰县',3,0),(2321,280,'天峻县',3,0),(2322,281,'同仁县',3,0),(2323,281,'尖扎县',3,0),(2324,281,'泽库县',3,0),(2325,281,'河南蒙古族自治县',3,0),(2326,282,'玉树县',3,0),(2327,282,'杂多县',3,0),(2328,282,'称多县',3,0),(2329,282,'治多县',3,0),(2330,282,'囊谦县',3,0),(2331,282,'曲麻莱县',3,0),(2332,283,'市中区',3,0),(2333,283,'历下区',3,0),(2334,283,'天桥区',3,0),(2335,283,'槐荫区',3,0),(2336,283,'历城区',3,0),(2337,283,'长清区',3,0),(2338,283,'章丘市',3,0),(2339,283,'平阴县',3,0),(2340,283,'济阳县',3,0),(2341,283,'商河县',3,0),(2342,284,'市南区',3,0),(2343,284,'市北区',3,0),(2344,284,'城阳区',3,0),(2345,284,'四方区',3,0),(2346,284,'李沧区',3,0),(2347,284,'黄岛区',3,0),(2348,284,'崂山区',3,0),(2349,284,'胶州市',3,0),(2350,284,'即墨市',3,0),(2351,284,'平度市',3,0),(2352,284,'胶南市',3,0),(2353,284,'莱西市',3,0),(2354,285,'滨城区',3,0),(2355,285,'惠民县',3,0),(2356,285,'阳信县',3,0),(2357,285,'无棣县',3,0),(2358,285,'沾化县',3,0),(2359,285,'博兴县',3,0),(2360,285,'邹平县',3,0),(2361,286,'德城区',3,0),(2362,286,'陵县',3,0),(2363,286,'乐陵市',3,0),(2364,286,'禹城市',3,0),(2365,286,'宁津县',3,0),(2366,286,'庆云县',3,0),(2367,286,'临邑县',3,0),(2368,286,'齐河县',3,0),(2369,286,'平原县',3,0),(2370,286,'夏津县',3,0),(2371,286,'武城县',3,0),(2372,287,'东营区',3,0),(2373,287,'河口区',3,0),(2374,287,'垦利县',3,0),(2375,287,'利津县',3,0),(2376,287,'广饶县',3,0),(2377,288,'牡丹区',3,0),(2378,288,'曹县',3,0),(2379,288,'单县',3,0),(2380,288,'成武县',3,0),(2381,288,'巨野县',3,0),(2382,288,'郓城县',3,0),(2383,288,'鄄城县',3,0),(2384,288,'定陶县',3,0),(2385,288,'东明县',3,0),(2386,289,'市中区',3,0),(2387,289,'任城区',3,0),(2388,289,'曲阜市',3,0),(2389,289,'兖州市',3,0),(2390,289,'邹城市',3,0),(2391,289,'微山县',3,0),(2392,289,'鱼台县',3,0),(2393,289,'金乡县',3,0),(2394,289,'嘉祥县',3,0),(2395,289,'汶上县',3,0),(2396,289,'泗水县',3,0),(2397,289,'梁山县',3,0),(2398,290,'莱城区',3,0),(2399,290,'钢城区',3,0),(2400,291,'东昌府区',3,0),(2401,291,'临清市',3,0),(2402,291,'阳谷县',3,0),(2403,291,'莘县',3,0),(2404,291,'茌平县',3,0),(2405,291,'东阿县',3,0),(2406,291,'冠县',3,0),(2407,291,'高唐县',3,0),(2408,292,'兰山区',3,0),(2409,292,'罗庄区',3,0),(2410,292,'河东区',3,0),(2411,292,'沂南县',3,0),(2412,292,'郯城县',3,0),(2413,292,'沂水县',3,0),(2414,292,'苍山县',3,0),(2415,292,'费县',3,0),(2416,292,'平邑县',3,0),(2417,292,'莒南县',3,0),(2418,292,'蒙阴县',3,0),(2419,292,'临沭县',3,0),(2420,293,'东港区',3,0),(2421,293,'岚山区',3,0),(2422,293,'五莲县',3,0),(2423,293,'莒县',3,0),(2424,294,'泰山区',3,0),(2425,294,'岱岳区',3,0),(2426,294,'新泰市',3,0),(2427,294,'肥城市',3,0),(2428,294,'宁阳县',3,0),(2429,294,'东平县',3,0),(2430,295,'荣成市',3,0),(2431,295,'乳山市',3,0),(2432,295,'环翠区',3,0),(2433,295,'文登市',3,0),(2434,296,'潍城区',3,0),(2435,296,'寒亭区',3,0),(2436,296,'坊子区',3,0),(2437,296,'奎文区',3,0),(2438,296,'青州市',3,0),(2439,296,'诸城市',3,0),(2440,296,'寿光市',3,0),(2441,296,'安丘市',3,0),(2442,296,'高密市',3,0),(2443,296,'昌邑市',3,0),(2444,296,'临朐县',3,0),(2445,296,'昌乐县',3,0),(2446,297,'芝罘区',3,0),(2447,297,'福山区',3,0),(2448,297,'牟平区',3,0),(2449,297,'莱山区',3,0),(2450,297,'开发区',3,0),(2451,297,'龙口市',3,0),(2452,297,'莱阳市',3,0),(2453,297,'莱州市',3,0),(2454,297,'蓬莱市',3,0),(2455,297,'招远市',3,0),(2456,297,'栖霞市',3,0),(2457,297,'海阳市',3,0),(2458,297,'长岛县',3,0),(2459,298,'市中区',3,0),(2460,298,'山亭区',3,0),(2461,298,'峄城区',3,0),(2462,298,'台儿庄区',3,0),(2463,298,'薛城区',3,0),(2464,298,'滕州市',3,0),(2465,299,'张店区',3,0),(2466,299,'临淄区',3,0),(2467,299,'淄川区',3,0),(2468,299,'博山区',3,0),(2469,299,'周村区',3,0),(2470,299,'桓台县',3,0),(2471,299,'高青县',3,0),(2472,299,'沂源县',3,0),(2473,300,'杏花岭区',3,0),(2474,300,'小店区',3,0),(2475,300,'迎泽区',3,0),(2476,300,'尖草坪区',3,0),(2477,300,'万柏林区',3,0),(2478,300,'晋源区',3,0),(2479,300,'高新开发区',3,0),(2480,300,'民营经济开发区',3,0),(2481,300,'经济技术开发区',3,0),(2482,300,'清徐县',3,0),(2483,300,'阳曲县',3,0),(2484,300,'娄烦县',3,0),(2485,300,'古交市',3,0),(2486,301,'城区',3,0),(2487,301,'郊区',3,0),(2488,301,'沁县',3,0),(2489,301,'潞城市',3,0),(2490,301,'长治县',3,0),(2491,301,'襄垣县',3,0),(2492,301,'屯留县',3,0),(2493,301,'平顺县',3,0),(2494,301,'黎城县',3,0),(2495,301,'壶关县',3,0),(2496,301,'长子县',3,0),(2497,301,'武乡县',3,0),(2498,301,'沁源县',3,0),(2499,302,'城区',3,0),(2500,302,'矿区',3,0),(2501,302,'南郊区',3,0),(2502,302,'新荣区',3,0),(2503,302,'阳高县',3,0),(2504,302,'天镇县',3,0),(2505,302,'广灵县',3,0),(2506,302,'灵丘县',3,0),(2507,302,'浑源县',3,0),(2508,302,'左云县',3,0),(2509,302,'大同县',3,0),(2510,303,'城区',3,0),(2511,303,'高平市',3,0),(2512,303,'沁水县',3,0),(2513,303,'阳城县',3,0),(2514,303,'陵川县',3,0),(2515,303,'泽州县',3,0),(2516,304,'榆次区',3,0),(2517,304,'介休市',3,0),(2518,304,'榆社县',3,0),(2519,304,'左权县',3,0),(2520,304,'和顺县',3,0),(2521,304,'昔阳县',3,0),(2522,304,'寿阳县',3,0),(2523,304,'太谷县',3,0),(2524,304,'祁县',3,0),(2525,304,'平遥县',3,0),(2526,304,'灵石县',3,0),(2527,305,'尧都区',3,0),(2528,305,'侯马市',3,0),(2529,305,'霍州市',3,0),(2530,305,'曲沃县',3,0),(2531,305,'翼城县',3,0),(2532,305,'襄汾县',3,0),(2533,305,'洪洞县',3,0),(2534,305,'吉县',3,0),(2535,305,'安泽县',3,0),(2536,305,'浮山县',3,0),(2537,305,'古县',3,0),(2538,305,'乡宁县',3,0),(2539,305,'大宁县',3,0),(2540,305,'隰县',3,0),(2541,305,'永和县',3,0),(2542,305,'蒲县',3,0),(2543,305,'汾西县',3,0),(2544,306,'离石市',3,0),(2545,306,'离石区',3,0),(2546,306,'孝义市',3,0),(2547,306,'汾阳市',3,0),(2548,306,'文水县',3,0),(2549,306,'交城县',3,0),(2550,306,'兴县',3,0),(2551,306,'临县',3,0),(2552,306,'柳林县',3,0),(2553,306,'石楼县',3,0),(2554,306,'岚县',3,0),(2555,306,'方山县',3,0),(2556,306,'中阳县',3,0),(2557,306,'交口县',3,0),(2558,307,'朔城区',3,0),(2559,307,'平鲁区',3,0),(2560,307,'山阴县',3,0),(2561,307,'应县',3,0),(2562,307,'右玉县',3,0),(2563,307,'怀仁县',3,0),(2564,308,'忻府区',3,0),(2565,308,'原平市',3,0),(2566,308,'定襄县',3,0),(2567,308,'五台县',3,0),(2568,308,'代县',3,0),(2569,308,'繁峙县',3,0),(2570,308,'宁武县',3,0),(2571,308,'静乐县',3,0),(2572,308,'神池县',3,0),(2573,308,'五寨县',3,0),(2574,308,'岢岚县',3,0),(2575,308,'河曲县',3,0),(2576,308,'保德县',3,0),(2577,308,'偏关县',3,0),(2578,309,'城区',3,0),(2579,309,'矿区',3,0),(2580,309,'郊区',3,0),(2581,309,'平定县',3,0),(2582,309,'盂县',3,0),(2583,310,'盐湖区',3,0),(2584,310,'永济市',3,0),(2585,310,'河津市',3,0),(2586,310,'临猗县',3,0),(2587,310,'万荣县',3,0),(2588,310,'闻喜县',3,0),(2589,310,'稷山县',3,0),(2590,310,'新绛县',3,0),(2591,310,'绛县',3,0),(2592,310,'垣曲县',3,0),(2593,310,'夏县',3,0),(2594,310,'平陆县',3,0),(2595,310,'芮城县',3,0),(2596,311,'莲湖区',3,0),(2597,311,'新城区',3,0),(2598,311,'碑林区',3,0),(2599,311,'雁塔区',3,0),(2600,311,'灞桥区',3,0),(2601,311,'未央区',3,0),(2602,311,'阎良区',3,0),(2603,311,'临潼区',3,0),(2604,311,'长安区',3,0),(2605,311,'蓝田县',3,0),(2606,311,'周至县',3,0),(2607,311,'户县',3,0),(2608,311,'高陵县',3,0),(2609,312,'汉滨区',3,0),(2610,312,'汉阴县',3,0),(2611,312,'石泉县',3,0),(2612,312,'宁陕县',3,0),(2613,312,'紫阳县',3,0),(2614,312,'岚皋县',3,0),(2615,312,'平利县',3,0),(2616,312,'镇坪县',3,0),(2617,312,'旬阳县',3,0),(2618,312,'白河县',3,0),(2619,313,'陈仓区',3,0),(2620,313,'渭滨区',3,0),(2621,313,'金台区',3,0),(2622,313,'凤翔县',3,0),(2623,313,'岐山县',3,0),(2624,313,'扶风县',3,0),(2625,313,'眉县',3,0),(2626,313,'陇县',3,0),(2627,313,'千阳县',3,0),(2628,313,'麟游县',3,0),(2629,313,'凤县',3,0),(2630,313,'太白县',3,0),(2631,314,'汉台区',3,0),(2632,314,'南郑县',3,0),(2633,314,'城固县',3,0),(2634,314,'洋县',3,0),(2635,314,'西乡县',3,0),(2636,314,'勉县',3,0),(2637,314,'宁强县',3,0),(2638,314,'略阳县',3,0),(2639,314,'镇巴县',3,0),(2640,314,'留坝县',3,0),(2641,314,'佛坪县',3,0),(2642,315,'商州区',3,0),(2643,315,'洛南县',3,0),(2644,315,'丹凤县',3,0),(2645,315,'商南县',3,0),(2646,315,'山阳县',3,0),(2647,315,'镇安县',3,0),(2648,315,'柞水县',3,0),(2649,316,'耀州区',3,0),(2650,316,'王益区',3,0),(2651,316,'印台区',3,0),(2652,316,'宜君县',3,0),(2653,317,'临渭区',3,0),(2654,317,'韩城市',3,0),(2655,317,'华阴市',3,0),(2656,317,'华县',3,0),(2657,317,'潼关县',3,0),(2658,317,'大荔县',3,0),(2659,317,'合阳县',3,0),(2660,317,'澄城县',3,0),(2661,317,'蒲城县',3,0),(2662,317,'白水县',3,0),(2663,317,'富平县',3,0),(2664,318,'秦都区',3,0),(2665,318,'渭城区',3,0),(2666,318,'杨陵区',3,0),(2667,318,'兴平市',3,0),(2668,318,'三原县',3,0),(2669,318,'泾阳县',3,0),(2670,318,'乾县',3,0),(2671,318,'礼泉县',3,0),(2672,318,'永寿县',3,0),(2673,318,'彬县',3,0),(2674,318,'长武县',3,0),(2675,318,'旬邑县',3,0),(2676,318,'淳化县',3,0),(2677,318,'武功县',3,0),(2678,319,'吴起县',3,0),(2679,319,'宝塔区',3,0),(2680,319,'延长县',3,0),(2681,319,'延川县',3,0),(2682,319,'子长县',3,0),(2683,319,'安塞县',3,0),(2684,319,'志丹县',3,0),(2685,319,'甘泉县',3,0),(2686,319,'富县',3,0),(2687,319,'洛川县',3,0),(2688,319,'宜川县',3,0),(2689,319,'黄龙县',3,0),(2690,319,'黄陵县',3,0),(2691,320,'榆阳区',3,0),(2692,320,'神木县',3,0),(2693,320,'府谷县',3,0),(2694,320,'横山县',3,0),(2695,320,'靖边县',3,0),(2696,320,'定边县',3,0),(2697,320,'绥德县',3,0),(2698,320,'米脂县',3,0),(2699,320,'佳县',3,0),(2700,320,'吴堡县',3,0),(2701,320,'清涧县',3,0),(2702,320,'子洲县',3,0),(2703,321,'长宁区',3,0),(2704,321,'闸北区',3,0),(2705,321,'闵行区',3,0),(2706,321,'徐汇区',3,0),(2707,321,'浦东新区',3,0),(2708,321,'杨浦区',3,0),(2709,321,'普陀区',3,0),(2710,321,'静安区',3,0),(2711,321,'卢湾区',3,0),(2712,321,'虹口区',3,0),(2713,321,'黄浦区',3,0),(2714,321,'南汇区',3,0),(2715,321,'松江区',3,0),(2716,321,'嘉定区',3,0),(2717,321,'宝山区',3,0),(2718,321,'青浦区',3,0),(2719,321,'金山区',3,0),(2720,321,'奉贤区',3,0),(2721,321,'崇明县',3,0),(2722,322,'青羊区',3,0),(2723,322,'锦江区',3,0),(2724,322,'金牛区',3,0),(2725,322,'武侯区',3,0),(2726,322,'成华区',3,0),(2727,322,'龙泉驿区',3,0),(2728,322,'青白江区',3,0),(2729,322,'新都区',3,0),(2730,322,'温江区',3,0),(2731,322,'高新区',3,0),(2732,322,'高新西区',3,0),(2733,322,'都江堰市',3,0),(2734,322,'彭州市',3,0),(2735,322,'邛崃市',3,0),(2736,322,'崇州市',3,0),(2737,322,'金堂县',3,0),(2738,322,'双流县',3,0),(2739,322,'郫县',3,0),(2740,322,'大邑县',3,0),(2741,322,'蒲江县',3,0),(2742,322,'新津县',3,0),(2743,322,'都江堰市',3,0),(2744,322,'彭州市',3,0),(2745,322,'邛崃市',3,0),(2746,322,'崇州市',3,0),(2747,322,'金堂县',3,0),(2748,322,'双流县',3,0),(2749,322,'郫县',3,0),(2750,322,'大邑县',3,0),(2751,322,'蒲江县',3,0),(2752,322,'新津县',3,0),(2753,323,'涪城区',3,0),(2754,323,'游仙区',3,0),(2755,323,'江油市',3,0),(2756,323,'盐亭县',3,0),(2757,323,'三台县',3,0),(2758,323,'平武县',3,0),(2759,323,'安县',3,0),(2760,323,'梓潼县',3,0),(2761,323,'北川县',3,0),(2762,324,'马尔康县',3,0),(2763,324,'汶川县',3,0),(2764,324,'理县',3,0),(2765,324,'茂县',3,0),(2766,324,'松潘县',3,0),(2767,324,'九寨沟县',3,0),(2768,324,'金川县',3,0),(2769,324,'小金县',3,0),(2770,324,'黑水县',3,0),(2771,324,'壤塘县',3,0),(2772,324,'阿坝县',3,0),(2773,324,'若尔盖县',3,0),(2774,324,'红原县',3,0),(2775,325,'巴州区',3,0),(2776,325,'通江县',3,0),(2777,325,'南江县',3,0),(2778,325,'平昌县',3,0),(2779,326,'通川区',3,0),(2780,326,'万源市',3,0),(2781,326,'达县',3,0),(2782,326,'宣汉县',3,0),(2783,326,'开江县',3,0),(2784,326,'大竹县',3,0),(2785,326,'渠县',3,0),(2786,327,'旌阳区',3,0),(2787,327,'广汉市',3,0),(2788,327,'什邡市',3,0),(2789,327,'绵竹市',3,0),(2790,327,'罗江县',3,0),(2791,327,'中江县',3,0),(2792,328,'康定县',3,0),(2793,328,'丹巴县',3,0),(2794,328,'泸定县',3,0),(2795,328,'炉霍县',3,0),(2796,328,'九龙县',3,0),(2797,328,'甘孜县',3,0),(2798,328,'雅江县',3,0),(2799,328,'新龙县',3,0),(2800,328,'道孚县',3,0),(2801,328,'白玉县',3,0),(2802,328,'理塘县',3,0),(2803,328,'德格县',3,0),(2804,328,'乡城县',3,0),(2805,328,'石渠县',3,0),(2806,328,'稻城县',3,0),(2807,328,'色达县',3,0),(2808,328,'巴塘县',3,0),(2809,328,'得荣县',3,0),(2810,329,'广安区',3,0),(2811,329,'华蓥市',3,0),(2812,329,'岳池县',3,0),(2813,329,'武胜县',3,0),(2814,329,'邻水县',3,0),(2815,330,'利州区',3,0),(2816,330,'元坝区',3,0),(2817,330,'朝天区',3,0),(2818,330,'旺苍县',3,0),(2819,330,'青川县',3,0),(2820,330,'剑阁县',3,0),(2821,330,'苍溪县',3,0),(2822,331,'峨眉山市',3,0),(2823,331,'乐山市',3,0),(2824,331,'犍为县',3,0),(2825,331,'井研县',3,0),(2826,331,'夹江县',3,0),(2827,331,'沐川县',3,0),(2828,331,'峨边',3,0),(2829,331,'马边',3,0),(2830,332,'西昌市',3,0),(2831,332,'盐源县',3,0),(2832,332,'德昌县',3,0),(2833,332,'会理县',3,0),(2834,332,'会东县',3,0),(2835,332,'宁南县',3,0),(2836,332,'普格县',3,0),(2837,332,'布拖县',3,0),(2838,332,'金阳县',3,0),(2839,332,'昭觉县',3,0),(2840,332,'喜德县',3,0),(2841,332,'冕宁县',3,0),(2842,332,'越西县',3,0),(2843,332,'甘洛县',3,0),(2844,332,'美姑县',3,0),(2845,332,'雷波县',3,0),(2846,332,'木里',3,0),(2847,333,'东坡区',3,0),(2848,333,'仁寿县',3,0),(2849,333,'彭山县',3,0),(2850,333,'洪雅县',3,0),(2851,333,'丹棱县',3,0),(2852,333,'青神县',3,0),(2853,334,'阆中市',3,0),(2854,334,'南部县',3,0),(2855,334,'营山县',3,0),(2856,334,'蓬安县',3,0),(2857,334,'仪陇县',3,0),(2858,334,'顺庆区',3,0),(2859,334,'高坪区',3,0),(2860,334,'嘉陵区',3,0),(2861,334,'西充县',3,0),(2862,335,'市中区',3,0),(2863,335,'东兴区',3,0),(2864,335,'威远县',3,0),(2865,335,'资中县',3,0),(2866,335,'隆昌县',3,0),(2867,336,'东  区',3,0),(2868,336,'西  区',3,0),(2869,336,'仁和区',3,0),(2870,336,'米易县',3,0),(2871,336,'盐边县',3,0),(2872,337,'船山区',3,0),(2873,337,'安居区',3,0),(2874,337,'蓬溪县',3,0),(2875,337,'射洪县',3,0),(2876,337,'大英县',3,0),(2877,338,'雨城区',3,0),(2878,338,'名山县',3,0),(2879,338,'荥经县',3,0),(2880,338,'汉源县',3,0),(2881,338,'石棉县',3,0),(2882,338,'天全县',3,0),(2883,338,'芦山县',3,0),(2884,338,'宝兴县',3,0),(2885,339,'翠屏区',3,0),(2886,339,'宜宾县',3,0),(2887,339,'南溪县',3,0),(2888,339,'江安县',3,0),(2889,339,'长宁县',3,0),(2890,339,'高县',3,0),(2891,339,'珙县',3,0),(2892,339,'筠连县',3,0),(2893,339,'兴文县',3,0),(2894,339,'屏山县',3,0),(2895,340,'雁江区',3,0),(2896,340,'简阳市',3,0),(2897,340,'安岳县',3,0),(2898,340,'乐至县',3,0),(2899,341,'大安区',3,0),(2900,341,'自流井区',3,0),(2901,341,'贡井区',3,0),(2902,341,'沿滩区',3,0),(2903,341,'荣县',3,0),(2904,341,'富顺县',3,0),(2905,342,'江阳区',3,0),(2906,342,'纳溪区',3,0),(2907,342,'龙马潭区',3,0),(2908,342,'泸县',3,0),(2909,342,'合江县',3,0),(2910,342,'叙永县',3,0),(2911,342,'古蔺县',3,0),(2912,343,'和平区',3,0),(2913,343,'河西区',3,0),(2914,343,'南开区',3,0),(2915,343,'河北区',3,0),(2916,343,'河东区',3,0),(2917,343,'红桥区',3,0),(2918,343,'东丽区',3,0),(2919,343,'津南区',3,0),(2920,343,'西青区',3,0),(2921,343,'北辰区',3,0),(2922,343,'塘沽区',3,0),(2923,343,'汉沽区',3,0),(2924,343,'大港区',3,0),(2925,343,'武清区',3,0),(2926,343,'宝坻区',3,0),(2927,343,'经济开发区',3,0),(2928,343,'宁河县',3,0),(2929,343,'静海县',3,0),(2930,343,'蓟县',3,0),(2931,344,'城关区',3,0),(2932,344,'林周县',3,0),(2933,344,'当雄县',3,0),(2934,344,'尼木县',3,0),(2935,344,'曲水县',3,0),(2936,344,'堆龙德庆县',3,0),(2937,344,'达孜县',3,0),(2938,344,'墨竹工卡县',3,0),(2939,345,'噶尔县',3,0),(2940,345,'普兰县',3,0),(2941,345,'札达县',3,0),(2942,345,'日土县',3,0),(2943,345,'革吉县',3,0),(2944,345,'改则县',3,0),(2945,345,'措勤县',3,0),(2946,346,'昌都县',3,0),(2947,346,'江达县',3,0),(2948,346,'贡觉县',3,0),(2949,346,'类乌齐县',3,0),(2950,346,'丁青县',3,0),(2951,346,'察雅县',3,0),(2952,346,'八宿县',3,0),(2953,346,'左贡县',3,0),(2954,346,'芒康县',3,0),(2955,346,'洛隆县',3,0),(2956,346,'边坝县',3,0),(2957,347,'林芝县',3,0),(2958,347,'工布江达县',3,0),(2959,347,'米林县',3,0),(2960,347,'墨脱县',3,0),(2961,347,'波密县',3,0),(2962,347,'察隅县',3,0),(2963,347,'朗县',3,0),(2964,348,'那曲县',3,0),(2965,348,'嘉黎县',3,0),(2966,348,'比如县',3,0),(2967,348,'聂荣县',3,0),(2968,348,'安多县',3,0),(2969,348,'申扎县',3,0),(2970,348,'索县',3,0),(2971,348,'班戈县',3,0),(2972,348,'巴青县',3,0),(2973,348,'尼玛县',3,0),(2974,349,'日喀则市',3,0),(2975,349,'南木林县',3,0),(2976,349,'江孜县',3,0),(2977,349,'定日县',3,0),(2978,349,'萨迦县',3,0),(2979,349,'拉孜县',3,0),(2980,349,'昂仁县',3,0),(2981,349,'谢通门县',3,0),(2982,349,'白朗县',3,0),(2983,349,'仁布县',3,0),(2984,349,'康马县',3,0),(2985,349,'定结县',3,0),(2986,349,'仲巴县',3,0),(2987,349,'亚东县',3,0),(2988,349,'吉隆县',3,0),(2989,349,'聂拉木县',3,0),(2990,349,'萨嘎县',3,0),(2991,349,'岗巴县',3,0),(2992,350,'乃东县',3,0),(2993,350,'扎囊县',3,0),(2994,350,'贡嘎县',3,0),(2995,350,'桑日县',3,0),(2996,350,'琼结县',3,0),(2997,350,'曲松县',3,0),(2998,350,'措美县',3,0),(2999,350,'洛扎县',3,0),(3000,350,'加查县',3,0),(3001,350,'隆子县',3,0),(3002,350,'错那县',3,0),(3003,350,'浪卡子县',3,0),(3004,351,'天山区',3,0),(3005,351,'沙依巴克区',3,0),(3006,351,'新市区',3,0),(3007,351,'水磨沟区',3,0),(3008,351,'头屯河区',3,0),(3009,351,'达坂城区',3,0),(3010,351,'米东区',3,0),(3011,351,'乌鲁木齐县',3,0),(3012,352,'阿克苏市',3,0),(3013,352,'温宿县',3,0),(3014,352,'库车县',3,0),(3015,352,'沙雅县',3,0),(3016,352,'新和县',3,0),(3017,352,'拜城县',3,0),(3018,352,'乌什县',3,0),(3019,352,'阿瓦提县',3,0),(3020,352,'柯坪县',3,0),(3021,353,'阿拉尔市',3,0),(3022,354,'库尔勒市',3,0),(3023,354,'轮台县',3,0),(3024,354,'尉犁县',3,0),(3025,354,'若羌县',3,0),(3026,354,'且末县',3,0),(3027,354,'焉耆',3,0),(3028,354,'和静县',3,0),(3029,354,'和硕县',3,0),(3030,354,'博湖县',3,0),(3031,355,'博乐市',3,0),(3032,355,'精河县',3,0),(3033,355,'温泉县',3,0),(3034,356,'呼图壁县',3,0),(3035,356,'米泉市',3,0),(3036,356,'昌吉市',3,0),(3037,356,'阜康市',3,0),(3038,356,'玛纳斯县',3,0),(3039,356,'奇台县',3,0),(3040,356,'吉木萨尔县',3,0),(3041,356,'木垒',3,0),(3042,357,'哈密市',3,0),(3043,357,'伊吾县',3,0),(3044,357,'巴里坤',3,0),(3045,358,'和田市',3,0),(3046,358,'和田县',3,0),(3047,358,'墨玉县',3,0),(3048,358,'皮山县',3,0),(3049,358,'洛浦县',3,0),(3050,358,'策勒县',3,0),(3051,358,'于田县',3,0),(3052,358,'民丰县',3,0),(3053,359,'喀什市',3,0),(3054,359,'疏附县',3,0),(3055,359,'疏勒县',3,0),(3056,359,'英吉沙县',3,0),(3057,359,'泽普县',3,0),(3058,359,'莎车县',3,0),(3059,359,'叶城县',3,0),(3060,359,'麦盖提县',3,0),(3061,359,'岳普湖县',3,0),(3062,359,'伽师县',3,0),(3063,359,'巴楚县',3,0),(3064,359,'塔什库尔干',3,0),(3065,360,'克拉玛依市',3,0),(3066,361,'阿图什市',3,0),(3067,361,'阿克陶县',3,0),(3068,361,'阿合奇县',3,0),(3069,361,'乌恰县',3,0),(3070,362,'石河子市',3,0),(3071,363,'图木舒克市',3,0),(3072,364,'吐鲁番市',3,0),(3073,364,'鄯善县',3,0),(3074,364,'托克逊县',3,0),(3075,365,'五家渠市',3,0),(3076,366,'阿勒泰市',3,0),(3077,366,'布克赛尔',3,0),(3078,366,'伊宁市',3,0),(3079,366,'布尔津县',3,0),(3080,366,'奎屯市',3,0),(3081,366,'乌苏市',3,0),(3082,366,'额敏县',3,0),(3083,366,'富蕴县',3,0),(3084,366,'伊宁县',3,0),(3085,366,'福海县',3,0),(3086,366,'霍城县',3,0),(3087,366,'沙湾县',3,0),(3088,366,'巩留县',3,0),(3089,366,'哈巴河县',3,0),(3090,366,'托里县',3,0),(3091,366,'青河县',3,0),(3092,366,'新源县',3,0),(3093,366,'裕民县',3,0),(3094,366,'和布克赛尔',3,0),(3095,366,'吉木乃县',3,0),(3096,366,'昭苏县',3,0),(3097,366,'特克斯县',3,0),(3098,366,'尼勒克县',3,0),(3099,366,'察布查尔',3,0),(3100,367,'盘龙区',3,0),(3101,367,'五华区',3,0),(3102,367,'官渡区',3,0),(3103,367,'西山区',3,0),(3104,367,'东川区',3,0),(3105,367,'安宁市',3,0),(3106,367,'呈贡县',3,0),(3107,367,'晋宁县',3,0),(3108,367,'富民县',3,0),(3109,367,'宜良县',3,0),(3110,367,'嵩明县',3,0),(3111,367,'石林县',3,0),(3112,367,'禄劝',3,0),(3113,367,'寻甸',3,0),(3114,368,'兰坪',3,0),(3115,368,'泸水县',3,0),(3116,368,'福贡县',3,0),(3117,368,'贡山',3,0),(3118,369,'宁洱',3,0),(3119,369,'思茅区',3,0),(3120,369,'墨江',3,0),(3121,369,'景东',3,0),(3122,369,'景谷',3,0),(3123,369,'镇沅',3,0),(3124,369,'江城',3,0),(3125,369,'孟连',3,0),(3126,369,'澜沧',3,0),(3127,369,'西盟',3,0),(3128,370,'古城区',3,0),(3129,370,'宁蒗',3,0),(3130,370,'玉龙',3,0),(3131,370,'永胜县',3,0),(3132,370,'华坪县',3,0),(3133,371,'隆阳区',3,0),(3134,371,'施甸县',3,0),(3135,371,'腾冲县',3,0),(3136,371,'龙陵县',3,0),(3137,371,'昌宁县',3,0),(3138,372,'楚雄市',3,0),(3139,372,'双柏县',3,0),(3140,372,'牟定县',3,0),(3141,372,'南华县',3,0),(3142,372,'姚安县',3,0),(3143,372,'大姚县',3,0),(3144,372,'永仁县',3,0),(3145,372,'元谋县',3,0),(3146,372,'武定县',3,0),(3147,372,'禄丰县',3,0),(3148,373,'大理市',3,0),(3149,373,'祥云县',3,0),(3150,373,'宾川县',3,0),(3151,373,'弥渡县',3,0),(3152,373,'永平县',3,0),(3153,373,'云龙县',3,0),(3154,373,'洱源县',3,0),(3155,373,'剑川县',3,0),(3156,373,'鹤庆县',3,0),(3157,373,'漾濞',3,0),(3158,373,'南涧',3,0),(3159,373,'巍山',3,0),(3160,374,'潞西市',3,0),(3161,374,'瑞丽市',3,0),(3162,374,'梁河县',3,0),(3163,374,'盈江县',3,0),(3164,374,'陇川县',3,0),(3165,375,'香格里拉县',3,0),(3166,375,'德钦县',3,0),(3167,375,'维西',3,0),(3168,376,'泸西县',3,0),(3169,376,'蒙自县',3,0),(3170,376,'个旧市',3,0),(3171,376,'开远市',3,0),(3172,376,'绿春县',3,0),(3173,376,'建水县',3,0),(3174,376,'石屏县',3,0),(3175,376,'弥勒县',3,0),(3176,376,'元阳县',3,0),(3177,376,'红河县',3,0),(3178,376,'金平',3,0),(3179,376,'河口',3,0),(3180,376,'屏边',3,0),(3181,377,'临翔区',3,0),(3182,377,'凤庆县',3,0),(3183,377,'云县',3,0),(3184,377,'永德县',3,0),(3185,377,'镇康县',3,0),(3186,377,'双江',3,0),(3187,377,'耿马',3,0),(3188,377,'沧源',3,0),(3189,378,'麒麟区',3,0),(3190,378,'宣威市',3,0),(3191,378,'马龙县',3,0),(3192,378,'陆良县',3,0),(3193,378,'师宗县',3,0),(3194,378,'罗平县',3,0),(3195,378,'富源县',3,0),(3196,378,'会泽县',3,0),(3197,378,'沾益县',3,0),(3198,379,'文山县',3,0),(3199,379,'砚山县',3,0),(3200,379,'西畴县',3,0),(3201,379,'麻栗坡县',3,0),(3202,379,'马关县',3,0),(3203,379,'丘北县',3,0),(3204,379,'广南县',3,0),(3205,379,'富宁县',3,0),(3206,380,'景洪市',3,0),(3207,380,'勐海县',3,0),(3208,380,'勐腊县',3,0),(3209,381,'红塔区',3,0),(3210,381,'江川县',3,0),(3211,381,'澄江县',3,0),(3212,381,'通海县',3,0),(3213,381,'华宁县',3,0),(3214,381,'易门县',3,0),(3215,381,'峨山',3,0),(3216,381,'新平',3,0),(3217,381,'元江',3,0),(3218,382,'昭阳区',3,0),(3219,382,'鲁甸县',3,0),(3220,382,'巧家县',3,0),(3221,382,'盐津县',3,0),(3222,382,'大关县',3,0),(3223,382,'永善县',3,0),(3224,382,'绥江县',3,0),(3225,382,'镇雄县',3,0),(3226,382,'彝良县',3,0),(3227,382,'威信县',3,0),(3228,382,'水富县',3,0),(3229,383,'西湖区',3,0),(3230,383,'上城区',3,0),(3231,383,'下城区',3,0),(3232,383,'拱墅区',3,0),(3233,383,'滨江区',3,0),(3234,383,'江干区',3,0),(3235,383,'萧山区',3,0),(3236,383,'余杭区',3,0),(3237,383,'市郊',3,0),(3238,383,'建德市',3,0),(3239,383,'富阳市',3,0),(3240,383,'临安市',3,0),(3241,383,'桐庐县',3,0),(3242,383,'淳安县',3,0),(3243,384,'吴兴区',3,0),(3244,384,'南浔区',3,0),(3245,384,'德清县',3,0),(3246,384,'长兴县',3,0),(3247,384,'安吉县',3,0),(3248,385,'南湖区',3,0),(3249,385,'秀洲区',3,0),(3250,385,'海宁市',3,0),(3251,385,'嘉善县',3,0),(3252,385,'平湖市',3,0),(3253,385,'桐乡市',3,0),(3254,385,'海盐县',3,0),(3255,386,'婺城区',3,0),(3256,386,'金东区',3,0),(3257,386,'兰溪市',3,0),(3258,386,'市区',3,0),(3259,386,'佛堂镇',3,0),(3260,386,'上溪镇',3,0),(3261,386,'义亭镇',3,0),(3262,386,'大陈镇',3,0),(3263,386,'苏溪镇',3,0),(3264,386,'赤岸镇',3,0),(3265,386,'东阳市',3,0),(3266,386,'永康市',3,0),(3267,386,'武义县',3,0),(3268,386,'浦江县',3,0),(3269,386,'磐安县',3,0),(3270,387,'莲都区',3,0),(3271,387,'龙泉市',3,0),(3272,387,'青田县',3,0),(3273,387,'缙云县',3,0),(3274,387,'遂昌县',3,0),(3275,387,'松阳县',3,0),(3276,387,'云和县',3,0),(3277,387,'庆元县',3,0),(3278,387,'景宁',3,0),(3279,388,'海曙区',3,0),(3280,388,'江东区',3,0),(3281,388,'江北区',3,0),(3282,388,'镇海区',3,0),(3283,388,'北仑区',3,0),(3284,388,'鄞州区',3,0),(3285,388,'余姚市',3,0),(3286,388,'慈溪市',3,0),(3287,388,'奉化市',3,0),(3288,388,'象山县',3,0),(3289,388,'宁海县',3,0),(3290,389,'越城区',3,0),(3291,389,'上虞市',3,0),(3292,389,'嵊州市',3,0),(3293,389,'绍兴县',3,0),(3294,389,'新昌县',3,0),(3295,389,'诸暨市',3,0),(3296,390,'椒江区',3,0),(3297,390,'黄岩区',3,0),(3298,390,'路桥区',3,0),(3299,390,'温岭市',3,0),(3300,390,'临海市',3,0),(3301,390,'玉环县',3,0),(3302,390,'三门县',3,0),(3303,390,'天台县',3,0),(3304,390,'仙居县',3,0),(3305,391,'鹿城区',3,0),(3306,391,'龙湾区',3,0),(3307,391,'瓯海区',3,0),(3308,391,'瑞安市',3,0),(3309,391,'乐清市',3,0),(3310,391,'洞头县',3,0),(3311,391,'永嘉县',3,0),(3312,391,'平阳县',3,0),(3313,391,'苍南县',3,0),(3314,391,'文成县',3,0),(3315,391,'泰顺县',3,0),(3316,392,'定海区',3,0),(3317,392,'普陀区',3,0),(3318,392,'岱山县',3,0),(3319,392,'嵊泗县',3,0),(3320,393,'衢州市',3,0),(3321,393,'江山市',3,0),(3322,393,'常山县',3,0),(3323,393,'开化县',3,0),(3324,393,'龙游县',3,0),(3325,394,'合川区',3,0),(3326,394,'江津区',3,0),(3327,394,'南川区',3,0),(3328,394,'永川区',3,0),(3329,394,'南岸区',3,0),(3330,394,'渝北区',3,0),(3331,394,'万盛区',3,0),(3332,394,'大渡口区',3,0),(3333,394,'万州区',3,0),(3334,394,'北碚区',3,0),(3335,394,'沙坪坝区',3,0),(3336,394,'巴南区',3,0),(3337,394,'涪陵区',3,0),(3338,394,'江北区',3,0),(3339,394,'九龙坡区',3,0),(3340,394,'渝中区',3,0),(3341,394,'黔江开发区',3,0),(3342,394,'长寿区',3,0),(3343,394,'双桥区',3,0),(3344,394,'綦江县',3,0),(3345,394,'潼南县',3,0),(3346,394,'铜梁县',3,0),(3347,394,'大足县',3,0),(3348,394,'荣昌县',3,0),(3349,394,'璧山县',3,0),(3350,394,'垫江县',3,0),(3351,394,'武隆县',3,0),(3352,394,'丰都县',3,0),(3353,394,'城口县',3,0),(3354,394,'梁平县',3,0),(3355,394,'开县',3,0),(3356,394,'巫溪县',3,0),(3357,394,'巫山县',3,0),(3358,394,'奉节县',3,0),(3359,394,'云阳县',3,0),(3360,394,'忠县',3,0),(3361,394,'石柱',3,0),(3362,394,'彭水',3,0),(3363,394,'酉阳',3,0),(3364,394,'秀山',3,0),(3365,395,'沙田区',3,0),(3366,395,'东区',3,0),(3367,395,'观塘区',3,0),(3368,395,'黄大仙区',3,0),(3369,395,'九龙城区',3,0),(3370,395,'屯门区',3,0),(3371,395,'葵青区',3,0),(3372,395,'元朗区',3,0),(3373,395,'深水埗区',3,0),(3374,395,'西贡区',3,0),(3375,395,'大埔区',3,0),(3376,395,'湾仔区',3,0),(3377,395,'油尖旺区',3,0),(3378,395,'北区',3,0),(3379,395,'南区',3,0),(3380,395,'荃湾区',3,0),(3381,395,'中西区',3,0),(3382,395,'离岛区',3,0),(3383,396,'澳门',3,0),(3384,397,'台北',3,0),(3385,397,'高雄',3,0),(3386,397,'基隆',3,0),(3387,397,'台中',3,0),(3388,397,'台南',3,0),(3389,397,'新竹',3,0),(3390,397,'嘉义',3,0),(3391,397,'宜兰县',3,0),(3392,397,'桃园县',3,0),(3393,397,'苗栗县',3,0),(3394,397,'彰化县',3,0),(3395,397,'南投县',3,0),(3396,397,'云林县',3,0),(3397,397,'屏东县',3,0),(3398,397,'台东县',3,0),(3399,397,'花莲县',3,0),(3400,397,'澎湖县',3,0),(3401,3,'合肥',2,0),(3402,3401,'庐阳区',3,0),(3403,3401,'瑶海区',3,0),(3404,3401,'蜀山区',3,0),(3405,3401,'包河区',3,0),(3406,3401,'长丰县',3,0),(3407,3401,'肥东县',3,0),(3408,3401,'肥西县',3,0),(3409,0,'德国',0,0);

/*Table structure for table `ecs_role` */

DROP TABLE IF EXISTS `ecs_role`;

CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_role` */

/*Table structure for table `ecs_searchengine` */

DROP TABLE IF EXISTS `ecs_searchengine`;

CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_searchengine` */

/*Table structure for table `ecs_sessions` */

DROP TABLE IF EXISTS `ecs_sessions`;

CREATE TABLE `ecs_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

/*Data for the table `ecs_sessions` */

insert  into `ecs_sessions`(`sesskey`,`expiry`,`userid`,`adminid`,`ip`,`user_name`,`user_rank`,`discount`,`email`,`data`) values ('95e09672cb0340fca91b464b82eaa431',1523258120,0,0,'0.0.0.0','0',0,'1.00','0','a:4:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZGU0ODMyMjE3Zg==\";}'),('14508ead792c702b8227bfbe43e0427f',1523258841,0,1,'0.0.0.0','0',0,'0.00','0','a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1523230041;s:12:\"suppliers_id\";s:1:\"0\";}'),('ddd4eba061b99d69bb4e9c99993931ff',1523257858,0,0,'0.0.0.0','0',0,'0.00','0','a:0:{}');

/*Table structure for table `ecs_sessions_data` */

DROP TABLE IF EXISTS `ecs_sessions_data`;

CREATE TABLE `ecs_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_sessions_data` */

insert  into `ecs_sessions_data`(`sesskey`,`expiry`,`data`) values ('7ace62909ae2a0b0d1da2ebe83c58f7a',4294967295,'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:9:\"dhdhhdihs\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"3\";s:4:\"city\";s:2:\"36\";s:8:\"district\";s:3:\"398\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:8:\"xhdhkdhd\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"13486769976\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('11c4cb91cddb6bc2f26b6c465e204d6d',4294967295,'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:4;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:4;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:6:\"测试\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"6\";s:4:\"city\";s:2:\"77\";s:8:\"district\";s:3:\"705\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:3:\"123\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"12345678901\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('fc310647c8b4b84180272255409c35d2',4294967295,'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:4;s:6:\"pay_id\";i:4;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:6:\"测试\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"6\";s:4:\"city\";s:2:\"77\";s:8:\"district\";s:3:\"705\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:3:\"123\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"12345678901\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('d02ac93c212b29e96f0664d01a8b4b91',4294967295,'a:4:{s:10:\"admin_name\";s:4:\"test\";s:11:\"action_list\";s:1217:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send\";s:10:\"last_check\";i:1460755436;s:12:\"suppliers_id\";s:1:\"0\";}'),('48ee104f12ecc92653ad21bb601b6480',2921564290,'a:4:{s:10:\"admin_name\";s:4:\"test\";s:11:\"action_list\";s:940:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,sms_send\";s:10:\"last_check\";i:1460753346;s:12:\"suppliers_id\";s:1:\"0\";}'),('e0d229c6ff406eae1db596741dbe5725',2921567932,'a:4:{s:10:\"admin_name\";s:4:\"test\";s:11:\"action_list\";s:1217:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send\";s:10:\"last_check\";i:1460755167;s:12:\"suppliers_id\";s:1:\"0\";}'),('92d6b345ab3859329653f5ef3e8d249f',4294967295,'a:7:{s:7:\"from_ad\";i:11;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:4;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:18:\"打算打算打算\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"501\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:14:\"dsad1e21321dqw\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"17896547852\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('0fa7d56c5213a25d2ff148281a7c44bd',4294967295,'a:4:{s:10:\"admin_name\";s:4:\"test\";s:11:\"action_list\";s:1390:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send,wx_api,wx_menu,wxt_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun\";s:10:\"last_check\";i:1460780357;s:12:\"suppliers_id\";s:1:\"0\";}'),('75018ae7700281009162bb1c673d1cef',4294967295,'a:5:{s:10:\"admin_name\";s:4:\"test\";s:11:\"action_list\";s:1400:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:10:\"last_check\";i:1460781719;s:12:\"suppliers_id\";s:1:\"0\";s:7:\"act_uri\";s:7:\"tuijian\";}'),('99c900f1d339334b36fd81528fc4c1ea',4294967295,'a:4:{s:10:\"admin_name\";s:4:\"test\";s:11:\"action_list\";s:1400:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:10:\"last_check\";i:1460782321;s:12:\"suppliers_id\";s:1:\"0\";}'),('2f111e7ebcb08b3ddd166a61b2a46962',4294967295,'a:4:{s:10:\"admin_name\";s:4:\"test\";s:11:\"action_list\";s:1400:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:10:\"last_check\";i:1460782952;s:12:\"suppliers_id\";s:1:\"0\";}'),('21dd3b312cf3f1cf33cdb63206968cd6',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:14:\"display_search\";s:4:\"grid\";s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:4;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:12:\"超级卖家\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:9:\"天安门\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"13418931407\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:1:\"1\";}}'),('de01d0628ffa992c2b1e056a7fc772a3',2944975571,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:12:\"captcha_word\";s:16:\"MGRjYjAzM2ZmMg==\";s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:11:\"13418931407\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:5:\"email\";s:10:\"123@qq.com\";s:7:\"address\";s:3:\"123\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:0:\"\";s:6:\"mobile\";s:11:\"13418931407\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('caf13b3ade9b1294c5fc3af8ad390561',4294967295,'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"flow_type\";i:0;s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:7:\"测试1\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"6\";s:4:\"city\";s:2:\"87\";s:8:\"district\";s:3:\"789\";s:5:\"email\";s:10:\"123@qq.com\";s:7:\"address\";s:3:\"123\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"13418931407\";s:6:\"mobile\";s:11:\"13418931407\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('bf867655fc6066153848643393675278',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZmQxMGFhNzI0ZQ==\";s:9:\"flow_type\";i:0;s:9:\"last_time\";s:10:\"1473572944\";s:7:\"last_ip\";s:7:\"0.0.0.0\";s:14:\"user_rank_name\";s:6:\"普通\";}'),('ca7ca8a20680ab8051f4095b6d260fb6',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"OWMwYTg5MWUwZQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:4;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:3:\"123\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:5:\"email\";s:10:\"123@qq.com\";s:7:\"address\";s:3:\"123\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:0:\"\";s:6:\"mobile\";s:11:\"13418931407\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('8704c9c2c6a5357f6b23862bc3935336',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MDI4ZTM3Njc4ZA==\";s:9:\"flow_type\";i:0;s:9:\"last_time\";s:10:\"1475291778\";s:7:\"last_ip\";s:7:\"0.0.0.0\";s:14:\"user_rank_name\";s:6:\"普通\";}'),('123718462f82ed852b2ded671b964369',4294967295,'a:4:{s:10:\"admin_name\";s:6:\"ld-web\";s:11:\"action_list\";s:1400:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:10:\"last_check\";i:1477552395;s:12:\"suppliers_id\";s:1:\"0\";}'),('8361cf6e5eb34707e87422793dcd74ae',4294967295,'a:4:{s:10:\"admin_name\";s:6:\"ld-web\";s:11:\"action_list\";s:1400:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:10:\"last_check\";i:1477531644;s:12:\"suppliers_id\";s:1:\"0\";}'),('8fdf17c2328a05f67faca15b433fa986',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"wap站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:9:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:4;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:1;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:8:\"bonus_id\";i:0;}s:9:\"last_time\";s:10:\"1483818716\";s:7:\"last_ip\";s:7:\"0.0.0.0\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"1\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:1:\"1\";s:9:\"consignee\";s:12:\"超级卖家\";s:5:\"email\";s:10:\"123@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:7:\"address\";s:9:\"天安门\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"13418931407\";s:6:\"mobile\";s:11:\"13418931407\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('7281d2401d7d37b20a004c4d9ce95c65',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:12:\"captcha_word\";s:16:\"MjE0YTU2MGQ0Mg==\";s:9:\"last_time\";s:10:\"1521895776\";s:7:\"last_ip\";s:7:\"0.0.0.0\";s:14:\"user_rank_name\";s:6:\"普通\";}'),('eb44f8ff39896e6c11f6761f2b25b04f',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:9:\"last_time\";s:10:\"1521894624\";s:7:\"last_ip\";s:7:\"0.0.0.0\";s:14:\"user_rank_name\";s:6:\"普通\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:12:\"captcha_word\";s:16:\"OWVhOGQ2M2FkNg==\";}'),('bd0bd4829730b8ae8cb4ec908eff7289',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"微信\";s:10:\"login_fail\";i:0;s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:9;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:4:\"dddd\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"4\";s:4:\"city\";s:2:\"56\";s:8:\"district\";s:3:\"551\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:5:\"sssss\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15116926830\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('ce76a3164cf9187b9ee3815be49a607a',4294967295,'a:4:{s:10:\"admin_name\";s:6:\"yichen\";s:11:\"action_list\";s:1131:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:10:\"last_check\";i:1522027997;s:12:\"suppliers_id\";s:1:\"0\";}'),('10a9aa1fcdaf6cfa903f3adc412f71e2',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:12:\"captcha_word\";s:16:\"NzA2MDc2Y2FmYQ==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:14:\"user_rank_name\";s:6:\"普通\";s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";s:1:\"1\";s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"3\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:1:\"6\";s:9:\"consignee\";s:6:\"陈一\";s:5:\"email\";s:17:\"chenyioo@sina.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"31\";s:4:\"city\";s:3:\"383\";s:8:\"district\";s:4:\"3232\";s:7:\"address\";s:49:\"浙江省杭州市拱墅区宜家时代1幢206室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"18668202815\";s:6:\"mobile\";s:11:\"13875955227\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('e0f50205b0911facc753e817a229afe6',4294967295,'a:3:{s:10:\"admin_name\";s:6:\"yaqixu\";s:11:\"action_list\";s:1131:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:10:\"last_check\";i:1522056344;}'),('1a771f301084de5749f04f700b577a09',4294967295,'a:4:{s:10:\"admin_name\";s:6:\"bodong\";s:11:\"action_list\";s:1150:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,db_renew,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:10:\"last_check\";i:1522113227;s:12:\"suppliers_id\";s:1:\"0\";}'),('fc54c2395dcc3001703cf01305bd2912',4294967295,'a:4:{s:10:\"last_check\";i:1522113219;s:10:\"admin_name\";s:11:\"yangchaoliu\";s:11:\"action_list\";s:1199:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,db_backup,db_renew,db_optimize,sql_query,convert,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:12:\"suppliers_id\";s:1:\"0\";}'),('2b9dd708b7dd648561f011c081a71803',4294967295,'a:4:{s:10:\"last_check\";i:1522047318;s:10:\"admin_name\";s:5:\"huima\";s:11:\"action_list\";s:1131:\"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,sms_send,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_list,wx_oauth,wx_tuijian,wx_fans,wx_fun,wx_autoreg\";s:12:\"suppliers_id\";s:1:\"0\";}'),('7f1a523e7abfd97b87f9a3ff5b25e58a',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MjRlOTQ1Zjk4MQ==\";s:9:\"flow_type\";i:0;s:9:\"last_time\";s:10:\"1522030328\";s:7:\"last_ip\";s:12:\"89.14.222.47\";s:14:\"user_rank_name\";s:6:\"普通\";}'),('f2fba0cb7a7a29145798a2904869926a',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:1;s:12:\"captcha_word\";s:16:\"YjMyMTBjZGFmZg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:12:\"yangchao liu\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"18\";s:4:\"city\";s:3:\"244\";s:8:\"district\";s:4:\"2064\";s:5:\"email\";s:17:\"lycrxsy@gmail.com\";s:7:\"address\";s:21:\"Raiffeisenstraße, 3a\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:0:\"\";s:6:\"mobile\";s:11:\"13889221326\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}'),('95e09672cb0340fca91b464b82eaa431',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:5:\"pc站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MjdmMzBkZDc1NA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";s:1:\"1\";s:6:\"pay_id\";s:1:\"5\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"last_time\";s:10:\"1522040478\";s:7:\"last_ip\";s:12:\"89.14.222.47\";s:14:\"user_rank_name\";s:6:\"普通\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"2\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:1:\"5\";s:9:\"consignee\";s:4:\"hhhh\";s:5:\"email\";s:19:\"info@ccc-global.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"503\";s:7:\"address\";s:7:\"jkjkjkj\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:0:\"\";s:6:\"mobile\";s:11:\"15116926830\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');

/*Table structure for table `ecs_shipping` */

DROP TABLE IF EXISTS `ecs_shipping`;

CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_shipping` */

insert  into `ecs_shipping`(`shipping_id`,`shipping_code`,`shipping_name`,`shipping_desc`,`insure`,`support_cod`,`enabled`,`shipping_print`,`print_bg`,`config_lable`,`print_model`,`shipping_order`) values (1,'sf_express','顺丰速运','江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG','0',0,1,'','/images/receipt/dly_sf_express.jpg','t_shop_name,网店-名称,150,29,112,137,b_shop_name||,||t_shop_address,网店-地址,268,55,105,168,b_shop_address||,||t_shop_tel,网店-联系电话,55,25,177,224,b_shop_tel||,||t_customer_name,收件人-姓名,78,23,299,265,b_customer_name||,||t_customer_address,收件人-详细地址,271,94,104,293,b_customer_address||,||',2,0),(2,'sto_express','申通快递','江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元','0',0,1,'','/images/receipt/dly_sto_express.jpg','t_shop_address,网店-地址,235,48,131,152,b_shop_address||,||t_shop_name,网店-名称,237,26,131,200,b_shop_name||,||t_shop_tel,网店-联系电话,96,36,144,257,b_shop_tel||,||t_customer_post,收件人-邮编,86,23,578,268,b_customer_post||,||t_customer_address,收件人-详细地址,232,49,434,149,b_customer_address||,||t_customer_name,收件人-姓名,151,27,449,231,b_customer_name||,||t_customer_tel,收件人-电话,90,32,452,261,b_customer_tel||,||',2,0),(3,'yto','圆通速递','上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务','0',1,1,'','/images/receipt/dly_yto.jpg','t_shop_province,网店-省份,132,24,279.6,105.7,b_shop_province||,||t_shop_name,网店-名称,268,29,142.95,133.85,b_shop_name||,||t_shop_address,网店-地址,346,40,67.3,199.95,b_shop_address||,||t_shop_city,网店-城市,64,35,223.8,163.95,b_shop_city||,||t_shop_district,网店-区/县,56,35,314.9,164.25,b_shop_district||,||t_pigeon,√-对号,21,21,143.1,263.2,b_pigeon||,||t_customer_name,收件人-姓名,89,25,488.65,121.05,b_customer_name||,||t_customer_tel,收件人-电话,136,21,656,110.6,b_customer_tel||,||t_customer_mobel,收件人-手机,137,21,655.6,132.8,b_customer_mobel||,||t_customer_province,收件人-省份,115,24,480.2,173.5,b_customer_province||,||t_customer_city,收件人-城市,60,27,609.3,172.5,b_customer_city||,||t_customer_district,收件人-区/县,58,28,696.8,173.25,b_customer_district||,||t_customer_post,收件人-邮编,93,21,701.1,240.25,b_customer_post||,||',2,0);

/*Table structure for table `ecs_shipping_area` */

DROP TABLE IF EXISTS `ecs_shipping_area`;

CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_shipping_area` */

insert  into `ecs_shipping_area`(`shipping_area_id`,`shipping_area_name`,`shipping_id`,`configure`) values (1,'全国',1,'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"20\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"2\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}'),(2,'全国',2,'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}'),(3,'全国',3,'a:6:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"10\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:1:\"5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}i:5;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:0:\"\";}}');

/*Table structure for table `ecs_shop_config` */

DROP TABLE IF EXISTS `ecs_shop_config`;

CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9039 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_shop_config` */

insert  into `ecs_shop_config`(`id`,`parent_id`,`code`,`type`,`store_range`,`store_dir`,`value`,`sort_order`) values (1,0,'shop_info','group','','','',1),(2,0,'basic','group','','','',1),(3,0,'display','group','','','',1),(4,0,'shopping_flow','group','','','',1),(5,0,'smtp','group','','','',1),(6,0,'hidden','hidden','','','',1),(7,0,'goods','group','','','',1),(9,0,'wap','group','','','',1),(101,1,'shop_name','text','','','MyCCCShop',1),(102,1,'shop_title','text','','','MyCCCShop',1),(103,1,'shop_desc','text','','','您的德国供货商',1),(104,1,'shop_keywords','text','','','您的德国供货商',1),(105,1,'shop_country','manual','','','1',1),(106,1,'shop_province','manual','','','2',1),(107,1,'shop_city','manual','','','',1),(108,1,'shop_address','text','','','',1),(109,1,'qq','text','','','172890617',1),(110,1,'ww','text','','','',1),(111,1,'skype','text','','','',1),(112,1,'ym','text','','','',1),(113,1,'msn','text','','','',1),(114,1,'service_email','text','','','info@ccc-global.com',1),(115,1,'service_phone','text','','','+49 (0)361-2279-8838',1),(116,1,'shop_closed','select','0,1','','0',1),(117,1,'close_comment','textarea','','','',1),(118,1,'shop_logo','file','','../themes/{$template}/images/','../themes/chengren/images/logo.gif',1),(119,1,'licensed','select','0,1','','0',1),(120,1,'user_notice','textarea','','','用户中心公告！',1),(121,1,'shop_notice','textarea','','','',1),(122,1,'shop_reg_closed','select','1,0','','0',1),(201,2,'lang','manual','','','zh_cn',1),(202,2,'icp_number','text','','','浙ICP备18002525号-1',1),(203,2,'icp_file','file','','../cert/','',1),(204,2,'watermark','file','','../images/','',1),(205,2,'watermark_place','select','0,1,2,3,4,5','','1',1),(206,2,'watermark_alpha','text','','','65',1),(207,2,'use_storage','select','1,0','','1',1),(208,2,'market_price_rate','text','','','1.2',1),(209,2,'rewrite','select','0,1,2','','0',1),(210,2,'integral_name','text','','','积分',1),(211,2,'integral_scale','text','','','1',1),(212,2,'integral_percent','text','','','1',1),(213,2,'sn_prefix','text','','','CCC',1),(214,2,'comment_check','select','0,1','','1',1),(215,2,'no_picture','file','','../images/','',1),(218,2,'stats_code','textarea','','','',1),(219,2,'cache_time','text','','','3600',1),(220,2,'register_points','text','','','0',1),(221,2,'enable_gzip','select','0,1','','0',1),(222,2,'top10_time','select','0,1,2,3,4','','0',1),(223,2,'timezone','options','-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12','','8',1),(224,2,'upload_size_limit','options','-1,0,64,128,256,512,1024,2048,4096','','64',1),(226,2,'cron_method','select','0,1','','0',1),(227,2,'comment_factor','select','0,1,2,3','','0',1),(228,2,'enable_order_check','select','0,1','','1',1),(229,2,'default_storage','text','','','9999',1),(230,2,'bgcolor','text','','','#FFFFFF',1),(231,2,'visit_stats','select','on,off','','on',1),(232,2,'send_mail_on','select','on,off','','off',1),(233,2,'auto_generate_gallery','select','1,0','','1',1),(234,2,'retain_original_img','select','1,0','','1',1),(235,2,'member_email_validate','select','1,0','','1',1),(236,2,'message_board','select','1,0','','1',1),(239,2,'certificate_id','hidden','','','1089132730',1),(240,2,'token','hidden','','','1d825bf072672566d6961b48d26b44378a5aff73417223d90a4a43327b17bfdc',1),(241,2,'certi','hidden','','','http://service.shopex.cn/openapi/api.php',1),(242,2,'send_verify_email','select','1,0','','0',1),(243,2,'ent_id','hidden','','','',1),(244,2,'ent_ac','hidden','','','',1),(245,2,'ent_sign','hidden','','','',1),(246,2,'ent_email','hidden','','','',1),(301,3,'date_format','hidden','','','Y-m-d',1),(302,3,'time_format','text','','','Y-m-d H:i:s',1),(303,3,'currency_format','text','','','￥%s',1),(304,3,'thumb_width','text','','','200',1),(305,3,'thumb_height','text','','','200',1),(306,3,'image_width','text','','','230',1),(307,3,'image_height','text','','','230',1),(312,3,'top_number','text','','','10',1),(313,3,'history_number','text','','','5',1),(314,3,'comments_number','text','','','5',1),(315,3,'bought_goods','text','','','3',1),(316,3,'article_number','text','','','8',1),(317,3,'goods_name_length','text','','','30',1),(318,3,'price_format','select','0,1,2,3,4,5','','0',1),(319,3,'page_size','text','','','11',1),(320,3,'sort_order_type','select','0,1,2','','0',1),(321,3,'sort_order_method','select','0,1','','0',1),(322,3,'show_order_type','select','0,1,2','','1',1),(323,3,'attr_related_number','text','','','5',1),(324,3,'goods_gallery_number','text','','','5',1),(325,3,'article_title_length','text','','','16',1),(326,3,'name_of_region_1','text','','','国家',1),(327,3,'name_of_region_2','text','','','省',1),(328,3,'name_of_region_3','text','','','市',1),(329,3,'name_of_region_4','text','','','区',1),(330,3,'search_keywords','text','','','爱他美, 玻尿酸， 喜宝',0),(332,3,'related_goods_number','text','','','4',1),(333,3,'help_open','select','0,1','','1',1),(334,3,'article_page_size','text','','','10',1),(335,3,'page_style','select','0,1','','1',1),(336,3,'recommend_order','select','0,1','','0',1),(337,3,'index_ad','hidden','','','sys',1),(401,4,'can_invoice','select','1,0','','1',1),(402,4,'use_integral','select','1,0','','1',1),(403,4,'use_bonus','select','1,0','','1',1),(404,4,'use_surplus','select','1,0','','1',1),(405,4,'use_how_oos','select','1,0','','1',1),(406,4,'send_confirm_email','select','1,0','','0',1),(407,4,'send_ship_email','select','1,0','','0',1),(408,4,'send_cancel_email','select','1,0','','0',1),(409,4,'send_invalid_email','select','1,0','','0',1),(410,4,'order_pay_note','select','1,0','','1',1),(411,4,'order_unpay_note','select','1,0','','1',1),(412,4,'order_ship_note','select','1,0','','1',1),(413,4,'order_receive_note','select','1,0','','1',1),(414,4,'order_unship_note','select','1,0','','1',1),(415,4,'order_return_note','select','1,0','','1',1),(416,4,'order_invalid_note','select','1,0','','1',1),(417,4,'order_cancel_note','select','1,0','','1',1),(418,4,'invoice_content','textarea','','','',1),(419,4,'anonymous_buy','select','1,0','','1',1),(420,4,'min_goods_amount','text','','','0',1),(421,4,'one_step_buy','select','1,0','','0',1),(422,4,'invoice_type','manual','','','a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}',1),(423,4,'stock_dec_time','select','1,0','','1',1),(424,4,'cart_confirm','options','1,2,3,4','','4',0),(425,4,'send_service_email','select','1,0','','0',1),(426,4,'show_goods_in_cart','select','1,2,3','','3',1),(427,4,'show_attr_in_cart','select','1,0','','1',1),(501,5,'smtp_host','text','','','smtp.ym.163.com',1),(502,5,'smtp_port','text','','','25',1),(503,5,'smtp_user','text','','','info@ccc-global.com',1),(504,5,'smtp_pass','password','','','cccglobalgmbh123',1),(505,5,'smtp_mail','text','','','info@ccc-global.com',1),(506,5,'mail_charset','select','UTF8,GB2312,BIG5','','UTF8',1),(507,5,'mail_service','select','0,1','','1',0),(508,5,'smtp_ssl','select','0,1','','0',0),(601,6,'integrate_code','hidden','','','ecshop',1),(602,6,'integrate_config','hidden','','','',1),(603,6,'hash_code','hidden','','','2aab9f77cc5ab4694b2b6009f5785883',1),(604,6,'template','hidden','','','MyCCCShop201803',1),(605,6,'install_date','hidden','','','1447726949',1),(606,6,'ecs_version','hidden','','','v2.7.3',1),(607,6,'sms_user_name','hidden','','','',1),(608,6,'sms_password','hidden','','','',1),(609,6,'sms_auth_str','hidden','','','',1),(610,6,'sms_domain','hidden','','','',1),(611,6,'sms_count','hidden','','','',1),(612,6,'sms_total_money','hidden','','','',1),(613,6,'sms_balance','hidden','','','',1),(614,6,'sms_last_request','hidden','','','',1),(616,6,'affiliate','hidden','','','a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}',1),(617,6,'captcha','hidden','','','36',1),(618,6,'captcha_width','hidden','','','100',1),(619,6,'captcha_height','hidden','','','20',1),(620,6,'sitemap','hidden','','','a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}',0),(621,6,'points_rule','hidden','','','',0),(622,6,'flash_theme','hidden','','','dynfocus',1),(623,6,'stylename','hidden','','','',1),(701,7,'show_goodssn','select','1,0','','1',1),(702,7,'show_brand','select','1,0','','1',1),(703,7,'show_goodsweight','select','1,0','','1',1),(704,7,'show_goodsnumber','select','1,0','','1',1),(705,7,'show_addtime','select','1,0','','0',1),(706,7,'goodsattr_style','select','1,0','','1',1),(707,7,'show_marketprice','select','1,0','','1',1),(901,9,'wap_config','select','1,0','','1',1),(902,9,'wap_logo','file','','../images/','',1),(903,2,'message_check','select','1,0','','1',1),(90,0,'ecsdxt','group','','','',1),(9001,90,'ecsdxt_gateway','options','1,2','','1',1),(9002,90,'ecsdxt_user_name','text','','','cccglobalgmbh',1),(9003,90,'ecsdxt_pass_word','password','','','cccglobalgmbh123',1),(9004,90,'ecsdxt_shop_mobile','text','','','',1),(9005,90,'ecsdxt_smsgap','text','','','60',1),(9006,90,'ecsdxt_mobile_reg','select','1,0','','1',1),(9007,90,'ecsdxt_mobile_reg_value','textarea','','','注册验证码：{$verify_code}，一天内提交有效。感谢您的注册！',1),(9008,90,'ecsdxt_mobile_log','select','1,0','','1',1),(9009,90,'ecsdxt_mobile_pwd','select','1,0','','1',1),(9010,90,'ecsdxt_mobile_pwd_value','textarea','','','您的用户名：{$user_name}，新密码：{$new_password}。请及时登陆修改密码！',1),(9011,90,'ecsdxt_mobile_changepwd','select','1,0','','0',1),(9012,90,'ecsdxt_mobile_changepwd_value','textarea','','','您的用户名：{$user_name}，密码已修改，新密码：{$new_password}。请牢记新密码！',1),(9013,90,'ecsdxt_mobile_bind','select','1,0','','0',1),(9014,90,'ecsdxt_mobile_bind_value','textarea','','','您的手机号：{$user_mobile}，绑定验证码：{$verify_code}。一天内提交有效！',1),(9015,90,'ecsdxt_mobile_cons','select','1,0','','0',1),(9016,90,'ecsdxt_customer_registed','select','1,0','','0',1),(9017,90,'ecsdxt_customer_registed_value','textarea','','','您注册的用户名：{$user_name}，密码：{$user_pwd}。感谢您的注册！',1),(9018,90,'ecsdxt_order_placed','select','1,0','','0',1),(9019,90,'ecsdxt_order_placed_value','textarea','','','您有新的订单：{$order_sn}，收货人：{$consignee}，电话：{$tel}，请及时确认订单！',1),(9020,90,'ecsdxt_order_canceled','select','1,0','','0',1),(9021,90,'ecsdxt_order_canceled_value','textarea','','','订单号 ：{$order_sn} 买家已取消订单！',1),(9022,90,'ecsdxt_order_payed','select','1,0','','0',1),(9023,90,'ecsdxt_order_payed_value','textarea','','','订单号 ：{$order_sn} 买家付款了。收货人：{$consignee}，电话：{$tel}。请及时安排发货！',1),(9024,90,'ecsdxt_order_confirm','select','1,0','','0',1),(9025,90,'ecsdxt_order_confirm_value','textarea','','','订单号 ：{$order_sn} 买家已确认收货！',1),(9026,90,'ecsdxt_customer_placed','select','1,0','','0',1),(9027,90,'ecsdxt_customer_placed_value','textarea','','','您的订单：{$order_sn}，收货人：{$consignee} 电话：{$tel}，已经成功提交。感谢您的购买！',1),(9028,90,'ecsdxt_customer_canceled','select','1,0','','0',1),(9029,90,'ecsdxt_customer_canceled_value','textarea','','','您的订单：{$order_sn}，已取消！',1),(9030,90,'ecsdxt_customer_payed','select','1,0','','1',1),(9031,90,'ecsdxt_customer_payed_value','textarea','','','您的订单：{$order_sn}，已于{$time}付款成功。感谢您的购买！',1),(9032,90,'ecsdxt_customer_confirm','select','1,0','','0',1),(9033,90,'ecsdxt_customer_confirm_value','textarea','','','您的订单：{$order_sn}，确认收货成功。感谢您购买与支持，欢迎您下次光临！',1),(9034,90,'ecsdxt_order_picking','select','1,0','','0',1),(9035,90,'ecsdxt_order_picking_value','textarea','','','订单号：{$order_sn} 已于{$time}配货。如有问题请及时联系！',1),(9036,90,'ecsdxt_order_shipped','select','1,0','','1',1),(9037,90,'ecsdxt_order_shipped_value','textarea','','','订单号：{$order_sn} 已于{$time}发货，如有问题请及时联系！',1),(9038,3,'show_sales_type','select','1,0','','0',1),(338,3,'article_related','select','0,1','','1',1);

/*Table structure for table `ecs_snatch_log` */

DROP TABLE IF EXISTS `ecs_snatch_log`;

CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_snatch_log` */

/*Table structure for table `ecs_stats` */

DROP TABLE IF EXISTS `ecs_stats`;

CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_stats` */

insert  into `ecs_stats`(`access_time`,`ip_address`,`visit_times`,`browser`,`system`,`language`,`area`,`referer_domain`,`referer_path`,`access_url`) values (1522003597,'80.187.118.103',1,'(Internet Explorer ) Maxthon ','Linux','zh-CN,de-DE','德国','','','/syy/index.php'),(1522015969,'58.100.77.235',1,'Safari 537.36','Windows NT','zh-CN,zh','中国浙江杭州','','','/syy/index.php'),(1522017135,'2.247.252.130',1,'Safari 537.36','Linux','zh-CN,en-US','德国','','','/syy/index.php'),(1522018137,'217.227.39.158',1,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522018272,'217.227.39.158',1,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522018720,'217.227.39.158',1,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522019212,'89.14.222.47',1,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522019525,'58.100.77.235',2,'Safari 537.36','Windows NT','zh-CN,zh','中国浙江杭州','http://mycccshop.com','/syy/flow.php?step=done','/syy/user.php'),(1522019754,'89.14.222.47',2,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522025088,'89.14.222.47',3,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/','/syy/goods.php'),(1522026344,'217.227.39.158',2,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522027754,'217.227.39.158',2,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522028147,'217.227.39.158',1,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522028277,'217.227.39.158',3,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522028292,'217.227.39.158',2,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522028540,'217.227.39.158',3,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522028694,'89.14.222.47',4,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/help.php?id=9','/syy/index.php'),(1522029585,'217.227.39.158',3,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522031174,'217.227.39.158',2,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522032268,'89.14.222.47',5,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/','/syy/help.php'),(1522032703,'58.100.77.235',3,'Safari 537.36','Windows NT','zh-CN,zh','中国浙江杭州','http://mycccshop.com','/syy/flow.php?step=cart','/syy/index.php'),(1522035308,'217.227.39.158',4,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522036894,'217.227.39.158',3,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522037313,'89.14.222.47',6,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522039761,'89.14.222.47',7,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522040103,'217.227.39.158',4,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522040450,'118.31.157.59',1,'FireFox 36.0','Linux','','中国','','','/syy/search.php'),(1522045393,'217.227.39.158',3,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522046034,'217.227.39.158',5,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522046533,'217.227.39.158',8,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/help.php?id=9','/syy/help.php'),(1522048846,'217.227.39.158',9,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/myship.php','/syy/category.php'),(1522050252,'217.227.39.158',4,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522050468,'217.227.39.158',5,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522050926,'217.227.39.158',4,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522050937,'217.227.39.158',10,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522051924,'120.78.45.70',1,'FireFox 36.0','Linux','','中国浙江杭州','','','/syy/flow.php'),(1522052935,'47.92.22.210',1,'FireFox 36.0','Linux','','中国','','','/syy/flow.php'),(1522053843,'39.106.244.24',1,'FireFox 36.0','Linux','','中国香港','','','/syy/flow.php'),(1522055336,'39.106.244.4',1,'FireFox 36.0','Linux','','中国香港','','','/syy/flow.php'),(1522055451,'120.78.45.83',1,'FireFox 36.0','Linux','','中国浙江杭州','','','/syy/search.php'),(1522055506,'217.227.39.158',11,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1522092798,'121.40.70.38',1,'FireFox 22.0','Linux','','中国浙江杭州','','','/syy/goods.php'),(1522092798,'121.40.70.38',1,'FireFox 22.0','Linux','','中国浙江杭州','','','/syy/flow.php'),(1522092798,'121.40.70.38',1,'FireFox 22.0','Linux','','中国浙江杭州','','','/syy/index.php'),(1522092799,'121.40.70.38',1,'FireFox 22.0','Linux','','中国浙江杭州','','','/syy/user.php'),(1522092799,'47.94.198.141',1,'','Unknown','','中国','','','/syy/user.php'),(1522103138,'217.227.39.39',12,'Safari 537.36','Windows NT','zh-CN,zh','德国','','','/syy/index.php'),(1522110460,'217.227.39.39',5,'Safari 537.36','Windows NT','zh-CN,zh','德国','http://mycccshop.com','/syy/cccadmin/goods.php?act=list','/syy/index.php'),(1523180828,'0.0.0.0',6,'Safari 537.36','Windows NT','zh-CN,zh','保留地址','','','/mycccshopdev/index.php'),(1523184311,'0.0.0.0',7,'Safari 537.36','Windows NT','zh-CN,zh','保留地址','','','/mycccshopdev/index.php'),(1523185169,'0.0.0.0',9,'Safari 537.36','Windows NT','zh-CN,zh','保留地址','','','/mycccshopdev/index.php'),(1523190592,'0.0.0.0',14,'Safari 537.36','Windows NT','zh-CN,zh','保留地址','http://localhost','/mycccshopdev/cccadmin/goods.php?act=list','/mycccshopdev/index.php'),(1523191687,'0.0.0.0',16,'Safari 537.36','Windows NT','zh-CN,zh','保留地址','http://localhost','/mycccshopdev/category.php?id=36','/mycccshopdev/goods.php'),(1523228176,'0.0.0.0',17,'Safari 537.36','Windows NT','zh-CN,zh','保留地址','','','/mycccshopdev/index.php');

/*Table structure for table `ecs_suppliers` */

DROP TABLE IF EXISTS `ecs_suppliers`;

CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_suppliers` */

/*Table structure for table `ecs_tag` */

DROP TABLE IF EXISTS `ecs_tag`;

CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_tag` */

/*Table structure for table `ecs_template` */

DROP TABLE IF EXISTS `ecs_template`;

CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_template` */

/*Table structure for table `ecs_topic` */

DROP TABLE IF EXISTS `ecs_topic`;

CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_topic` */

/*Table structure for table `ecs_touch_action` */

DROP TABLE IF EXISTS `ecs_touch_action`;

CREATE TABLE `ecs_touch_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_touch_action` */

insert  into `ecs_touch_action`(`action_id`,`parent_id`,`action_code`,`relevance`) values (1,0,'goods',''),(3,0,'users_manage',''),(4,0,'priv_manage',''),(5,0,'sys_manage',''),(6,0,'order_manage',''),(7,0,'promotion',''),(9,0,'templates_manage',''),(10,0,'db_manage',''),(21,1,'goods_manage',''),(23,1,'cat_manage',''),(24,1,'cat_drop','cat_manage'),(25,1,'attr_manage',''),(26,1,'brand_manage',''),(30,2,'article_cat',''),(31,2,'article_manage',''),(32,2,'shopinfo_manage',''),(33,2,'shophelp_manage',''),(34,2,'vote_priv',''),(35,7,'topic_manage',''),(40,3,'users_manage',''),(41,3,'users_drop','users_manage'),(42,3,'user_rank',''),(43,4,'admin_manage',''),(44,4,'admin_drop','admin_manage'),(45,4,'allot_priv','admin_manage'),(46,4,'logs_manage',''),(47,4,'logs_drop','logs_manage'),(48,5,'shop_config',''),(49,5,'ship_manage',''),(50,5,'payment',''),(51,5,'shiparea_manage',''),(52,5,'area_manage',''),(53,6,'order_os_edit',''),(54,6,'order_ps_edit','order_os_edit'),(55,6,'order_ss_edit','order_os_edit'),(56,6,'order_edit','order_os_edit'),(57,6,'order_view',''),(58,6,'order_view_finished',''),(59,6,'repay_manage',''),(60,6,'booking',''),(61,6,'sale_order_stats',''),(62,6,'client_flow_stats',''),(70,1,'goods_type',''),(74,4,'template_manage',''),(75,5,'friendlink',''),(76,5,'db_backup',''),(77,5,'db_renew','db_backup'),(78,7,'snatch_manage',''),(79,7,'bonus_manage',''),(80,7,'gift_manage',''),(81,7,'card_manage',''),(82,7,'pack',''),(83,7,'ad_manage',''),(85,3,'surplus_manage','account_manage'),(86,4,'agency_manage',''),(87,3,'account_manage',''),(88,5,'flash_manage',''),(89,5,'navigator',''),(90,7,'auction',''),(91,7,'group_by',''),(92,7,'favourable',''),(93,7,'whole_sale',''),(95,2,'article_auto',''),(96,5,'cron',''),(97,164,'affiliate',''),(98,164,'affiliate_ck',''),(168,164,'zdy_parent',''),(104,7,'package_manage',''),(109,5,'sitemap',''),(110,5,'file_priv',''),(111,5,'file_check',''),(112,9,'template_select',''),(113,9,'template_setup',''),(114,9,'library_manage',''),(115,9,'lang_edit',''),(116,9,'backup_setting',''),(117,9,'mail_template',''),(118,10,'db_backup',''),(119,10,'db_renew',''),(120,10,'db_optimize',''),(121,10,'sql_query',''),(122,10,'convert',''),(124,11,'sms_send',''),(128,7,'exchange_goods',''),(129,6,'delivery_view',''),(130,6,'back_view',''),(131,5,'reg_fields',''),(132,5,'shop_authorized',''),(133,5,'webcollect_manage',''),(134,4,'suppliers_manage',''),(135,4,'role_manage',''),(138,0,'wechat',''),(139,138,'wx_api',''),(140,138,'wx_menu',''),(141,138,'wx_config',''),(142,138,'wx_bonus',''),(143,138,'wx_regmsg',''),(144,138,'wx_lang',''),(145,138,'wx_keywords',''),(146,138,'wx_point',''),(147,138,'wx_fun',''),(148,138,'wx_prize',''),(149,138,'wx_zjd',''),(150,138,'wx_dzp',''),(151,138,'wx_qr',''),(152,138,'wx_order',''),(153,138,'wx_pay',''),(154,138,'wx_reorder',''),(155,138,'wx_fans',''),(156,138,'wx_oauth',''),(157,138,'wx_tuijian',''),(158,138,'wx_list',''),(159,5,'website',''),(160,5,'user_card',''),(161,5,'mail_settings',''),(162,5,'category_icon',''),(163,138,'wx_autoreg',''),(164,0,'fenxiao',''),(165,164,'danpin_tuiguang',''),(166,5,'ectouch',''),(167,5,'weixintong','');

/*Table structure for table `ecs_touch_ad` */

DROP TABLE IF EXISTS `ecs_touch_ad`;

CREATE TABLE `ecs_touch_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_touch_ad` */

insert  into `ecs_touch_ad`(`ad_id`,`position_id`,`media_type`,`ad_name`,`ad_link`,`ad_code`,`start_time`,`end_time`,`link_man`,`link_email`,`link_phone`,`click_count`,`enabled`) values (1,1,0,'手机版首页Banner-1','','1474256212178867303.jpg',1396339200,1525161600,'','','',50,1),(2,1,0,'手机版首页Banner-2','','1474256224130590522.jpg',1396339200,1525161600,'','','',45,1),(4,1,0,'手机版首页Banner-3','','1474256236130136411.jpg',1444204800,1604649600,'','','',4,1),(5,2,0,'特色市场左侧2张广告图-1','','1474255386098884448.jpg',1444291200,1604736000,'','','',18,1),(6,2,0,'特色市场左侧2张广告图-2','','1474255402237961434.jpg',1444291200,1604736000,'','','',32,1),(7,3,0,'特色市场右侧1张广告图','','1474255372961595111.jpg',1444291200,1604736000,'','','',31,1),(8,4,0,'热门市场-1','','1474254774932058673.jpg',1444291200,1604736000,'','','',34,1),(9,4,0,'热门市场-2','','1474254792625125847.jpg',1444291200,1604736000,'','','',14,1),(10,4,0,'热门市场-3','','1474254811934311268.jpg',1444291200,1604736000,'','','',11,1),(11,4,0,'热门市场-4','','1474254980996618180.jpg',1444291200,1604736000,'','','',12,1),(12,4,0,'热门市场-5','','1474254997962597896.jpg',1444291200,1604736000,'','','',16,1),(13,4,0,'热门市场-6','','1474255016807363910.jpg',1444291200,1604736000,'','','',27,1),(14,4,0,'热门市场-7','','1474255661993798943.jpg',1444291200,1604736000,'','','',14,1),(15,4,0,'热门市场-8','','1474255679589056461.jpg',1444291200,1604736000,'','','',13,1),(16,4,0,'热门市场-9','','1474255692076754367.jpg',1444291200,1604736000,'','','',17,1);

/*Table structure for table `ecs_touch_ad_position` */

DROP TABLE IF EXISTS `ecs_touch_ad_position`;

CREATE TABLE `ecs_touch_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_touch_ad_position` */

insert  into `ecs_touch_ad_position`(`position_id`,`position_name`,`ad_width`,`ad_height`,`position_desc`,`position_style`) values (1,'手机版首页Banner',360,168,'','<ul>\r\n{foreach from=$ads item=ad}\r\n  <li>{$ad}</li>\r\n{/foreach}\r\n</ul>\r\n'),(2,'特色市场左侧2张广告图',360,140,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),(3,'特色市场右侧1张广告图',258,280,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}'),(4,'热门市场',345,372,'','{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');

/*Table structure for table `ecs_touch_nav` */

DROP TABLE IF EXISTS `ecs_touch_nav`;

CREATE TABLE `ecs_touch_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_touch_nav` */

insert  into `ecs_touch_nav`(`id`,`ctype`,`cid`,`name`,`ifshow`,`vieworder`,`opennew`,`url`,`pic`,`type`) values (1,'',0,'全部分类',1,0,0,'cat_all.php','1443584338752549142.png','middle'),(2,'a',3,'帮助中心',1,0,0,'article_cat.php?id=3','1448075935109557161.png','middle'),(3,'',0,'个人中心',1,0,0,'user.php','1443584373727011961.png','middle'),(4,'',0,'分销中心',1,0,0,'distribute.php','1443586488909704319.png','middle'),(5,'',0,'联系我们',1,0,0,'ectouch.php?act=contact','1443586300343329180.png','middle'),(6,'',0,'团购',1,0,0,'group_buy.php','1443585779204202237.png','middle'),(7,'',0,'积分商城',1,0,0,'exchange.php','1443586061863736586.png','middle'),(8,'',0,'购物车',1,0,0,'flow.php','1443584408064043342.png','middle');

/*Table structure for table `ecs_touch_payment` */

DROP TABLE IF EXISTS `ecs_touch_payment`;

CREATE TABLE `ecs_touch_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_touch_payment` */

insert  into `ecs_touch_payment`(`pay_id`,`pay_code`,`pay_name`,`pay_fee`,`pay_desc`,`pay_order`,`pay_config`,`enabled`,`is_cod`,`is_online`) values (4,'alipay','支付宝','0','支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color=\"red\"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=alipay\" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>',0,'a:3:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"763191200@qq.com\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:32:\"7edvbj40ze3ok3499pb385h5zyl1y7vl\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"2088102839435593\";}}',1,0,1),(6,'cod','货到付款','0','开通城市：×××\r\n货到付款区域：×××',0,'a:0:{}',1,1,0),(7,'bank','银行汇款/转帐','0','银行名称\r\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\r\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。',0,'a:0:{}',1,0,0),(8,'balance','余额支付','0','使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。',0,'a:0:{}',1,0,1),(9,'wx_new_jspay','新版本微信支付','0','本支付适用于新版本微信支付',0,'a:5:{i:0;a:3:{s:4:\"name\";s:5:\"appid\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:5:\"mchid\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:3:{s:4:\"name\";s:3:\"key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:3:{s:4:\"name\";s:9:\"appsecret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:4;a:3:{s:4:\"name\";s:4:\"logs\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}',1,0,1);

/*Table structure for table `ecs_touch_priv` */

DROP TABLE IF EXISTS `ecs_touch_priv`;

CREATE TABLE `ecs_touch_priv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action_list` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_touch_priv` */

insert  into `ecs_touch_priv`(`id`,`user_id`,`action_list`) values (3,2,'all'),(4,3,'goods_manage,cat_manage,attr_manage,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_fun,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_fans,wx_oauth,wx_tuijian,wx_list'),(5,4,'goods_manage,cat_manage,cat_drop,attr_manage,brand_manage,goods_type,users_manage,users_drop,user_rank,surplus_manage,account_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,template_manage,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,website,user_card,mail_settings,category_icon,ectouch,weixintong,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,bonus_manage,gift_manage,card_manage,pack,ad_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,wx_api,wx_menu,wx_config,wx_bonus,wx_regmsg,wx_lang,wx_keywords,wx_point,wx_fun,wx_prize,wx_zjd,wx_dzp,wx_qr,wx_order,wx_pay,wx_reorder,wx_fans,wx_oauth,wx_tuijian,wx_list,wx_autoreg,affiliate,affiliate_ck,danpin_tuiguang');

/*Table structure for table `ecs_touch_shop_config` */

DROP TABLE IF EXISTS `ecs_touch_shop_config`;

CREATE TABLE `ecs_touch_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9039 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_touch_shop_config` */

insert  into `ecs_touch_shop_config`(`id`,`parent_id`,`code`,`type`,`store_range`,`store_dir`,`value`,`sort_order`) values (1,0,'shop_info','group','','','',1),(2,0,'basic','group','','','',1),(3,0,'display','group','','','',1),(4,0,'shopping_flow','group','','','',1),(5,0,'smtp','group','','','',1),(6,0,'hidden','hidden','','','',1),(7,0,'goods','group','','','',1),(9,0,'wap','hidden','','','',1),(101,1,'shop_name','text','','','MyCCCShop',1),(102,1,'shop_title','text','','','MyCCCShop-专注于德国货源供应！',1),(103,1,'shop_desc','text','','','MyCCCShop',1),(104,1,'shop_keywords','text','','','MyCCCShop',1),(105,1,'shop_country','manual','','','1',1),(106,1,'shop_province','manual','','','6',1),(107,1,'shop_city','manual','','','77',1),(108,1,'shop_address','text','','','',1),(109,1,'qq','text','','','172890617',1),(110,1,'ww','text','','','ccc-global.com',1),(111,1,'skype','text','','','',1),(112,1,'ym','text','','','',1),(113,1,'msn','text','','','',1),(114,1,'service_email','text','','','info@ccc-global.com',1),(115,1,'service_phone','text','','','',1),(116,1,'shop_closed','select','0,1','','0',1),(117,1,'close_comment','textarea','','','',1),(118,1,'shop_logo','file','','../themes/{$template}/images/','',1),(119,1,'licensed','select','0,1','','1',1),(120,1,'user_notice','textarea','','','用户中心公告！',1),(121,1,'shop_notice','textarea','','','欢迎光临MyCCCShop手机版,我们的宗旨：诚信经营、服务客户！\n<MARQUEE onmouseover=this.stop() onmouseout=this.start() \nscrollAmount=3><U><FONT color=red>\n<P>咨询电话+4936122798838</P></FONT></U></MARQUEE>\n',1),(122,1,'shop_reg_closed','select','1,0','','0',1),(201,2,'lang','manual','','','zh_cn',1),(202,2,'icp_number','text','','','',1),(203,2,'icp_file','file','','../cert/','',1),(204,2,'watermark','file','','../images/','',1),(205,2,'watermark_place','select','0,1,2,3,4,5','','1',1),(206,2,'watermark_alpha','text','','','65',1),(207,2,'use_storage','select','1,0','','1',1),(208,2,'market_price_rate','text','','','1.2',1),(209,2,'rewrite','select','0,1,2','','0',1),(210,2,'integral_name','text','','','积分',1),(211,2,'integral_scale','text','','','1',1),(212,2,'integral_percent','text','','','1',1),(213,2,'sn_prefix','text','','','ECS',1),(214,2,'comment_check','select','0,1','','1',1),(215,2,'no_picture','file','','../images/','',1),(218,2,'stats_code','textarea','','','',1),(219,2,'cache_time','text','','','3600',1),(220,2,'register_points','text','','','0',1),(221,2,'enable_gzip','select','0,1','','0',1),(222,2,'top10_time','select','0,1,2,3,4','','0',1),(223,2,'timezone','options','-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12','','8',1),(224,2,'upload_size_limit','options','-1,0,64,128,256,512,1024,2048,4096','','64',1),(226,2,'cron_method','select','0,1','','0',1),(227,2,'comment_factor','select','0,1,2,3','','0',1),(228,2,'enable_order_check','select','0,1','','1',1),(229,2,'default_storage','text','','','1000',1),(230,2,'bgcolor','text','','','#FFFFFF',1),(231,2,'visit_stats','select','on,off','','off',1),(232,2,'send_mail_on','select','on,off','','off',1),(233,2,'auto_generate_gallery','select','1,0','','1',1),(234,2,'retain_original_img','select','1,0','','1',1),(235,2,'member_email_validate','select','1,0','','1',1),(236,2,'message_board','select','1,0','','1',1),(239,2,'certificate_id','hidden','','','1222996236',1),(240,2,'token','hidden','','','1bb759b4db9d8176af3463fdf6a33c4a362d3e71fe5bcbcc80a29d62c8d64d9c',1),(241,2,'certi','hidden','','','http://service.shopex.cn/openapi/api.php',1),(242,2,'send_verify_email','select','1,0','','0',1),(243,2,'ent_id','hidden','','','',1),(244,2,'ent_ac','hidden','','','',1),(245,2,'ent_sign','hidden','','','',1),(246,2,'ent_email','hidden','','','',1),(301,3,'date_format','hidden','','','Y-m-d',1),(302,3,'time_format','text','','','Y-m-d H:i:s',1),(303,3,'currency_format','text','','','￥<span>%s</span>',1),(304,3,'thumb_width','text','','','220',1),(305,3,'thumb_height','text','','','220',1),(306,3,'image_width','text','','','450',1),(307,3,'image_height','text','','','450',1),(312,3,'top_number','text','','','5',1),(313,3,'history_number','text','','','18',1),(314,3,'comments_number','text','','','5',1),(315,3,'bought_goods','text','','','3',1),(316,3,'article_number','text','','','8',1),(317,3,'goods_name_length','text','','','100',1),(318,3,'price_format','select','0,1,2,3,4,5','','5',1),(319,3,'page_size','text','','','20',1),(320,3,'sort_order_type','select','0,1,2','','0',1),(321,3,'sort_order_method','select','0,1','','0',1),(322,3,'show_order_type','select','0,1,2','','1',1),(323,3,'attr_related_number','text','','','5',1),(324,3,'goods_gallery_number','text','','','5',1),(325,3,'article_title_length','text','','','16',1),(326,3,'name_of_region_1','text','','','国家',1),(327,3,'name_of_region_2','text','','','省',1),(328,3,'name_of_region_3','text','','','市',1),(329,3,'name_of_region_4','text','','','区',1),(330,3,'search_keywords','text','','','',0),(332,3,'related_goods_number','text','','','5',1),(333,3,'help_open','select','0,1','','1',1),(334,3,'article_page_size','text','','','10',1),(335,3,'page_style','select','0,1','','1',1),(336,3,'recommend_order','select','0,1','','0',1),(337,3,'index_ad','hidden','','','sys',1),(401,4,'can_invoice','select','1,0','','1',1),(402,4,'use_integral','select','1,0','','1',1),(403,4,'use_bonus','select','1,0','','1',1),(404,4,'use_surplus','select','1,0','','1',1),(405,4,'use_how_oos','select','1,0','','1',1),(406,4,'send_confirm_email','select','1,0','','0',1),(407,4,'send_ship_email','select','1,0','','0',1),(408,4,'send_cancel_email','select','1,0','','0',1),(409,4,'send_invalid_email','select','1,0','','0',1),(410,4,'order_pay_note','select','1,0','','1',1),(411,4,'order_unpay_note','select','1,0','','1',1),(412,4,'order_ship_note','select','1,0','','1',1),(413,4,'order_receive_note','select','1,0','','1',1),(414,4,'order_unship_note','select','1,0','','1',1),(415,4,'order_return_note','select','1,0','','1',1),(416,4,'order_invalid_note','select','1,0','','1',1),(417,4,'order_cancel_note','select','1,0','','1',1),(418,4,'invoice_content','textarea','','','',1),(419,4,'anonymous_buy','select','1,0','','1',1),(420,4,'min_goods_amount','text','','','0',1),(421,4,'one_step_buy','select','1,0','','0',1),(422,4,'invoice_type','manual','','','a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}',1),(423,4,'stock_dec_time','select','1,0','','0',1),(424,4,'cart_confirm','options','1,2,3,4','','4',0),(425,4,'send_service_email','select','1,0','','0',1),(426,4,'show_goods_in_cart','select','1,2,3','','3',1),(427,4,'show_attr_in_cart','select','1,0','','1',1),(501,5,'smtp_host','text','','','localhost',1),(502,5,'smtp_port','text','','','25',1),(503,5,'smtp_user','text','','','',1),(504,5,'smtp_pass','password','','','',1),(505,5,'smtp_mail','text','','','',1),(506,5,'mail_charset','select','UTF8,GB2312,BIG5','','UTF8',1),(507,5,'mail_service','select','0,1','','0',0),(508,5,'smtp_ssl','select','0,1','','0',0),(601,6,'integrate_code','hidden','','','ecshop',1),(602,6,'integrate_config','hidden','','','',1),(603,6,'hash_code','hidden','','','b76989c756aab2c64cf941eb31dec09c',1),(604,6,'template','hidden','','','default',1),(605,6,'install_date','hidden','','','1379320265',1),(606,6,'ecs_version','hidden','','','v2.7.3',1),(607,6,'sms_user_name','hidden','','','',1),(608,6,'sms_password','hidden','','','',1),(609,6,'sms_auth_str','hidden','','','',1),(610,6,'sms_domain','hidden','','','',1),(611,6,'sms_count','hidden','','','',1),(612,6,'sms_total_money','hidden','','','',1),(613,6,'sms_balance','hidden','','','',1),(614,6,'sms_last_request','hidden','','','',1),(616,6,'affiliate','hidden','','','a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:0;s:11:\"expire_unit\";N;s:11:\"separate_by\";i:0;s:15:\"level_point_all\";d:0;s:15:\"level_money_all\";d:0;s:18:\"level_register_all\";i:0;s:17:\"level_register_up\";i:0;}s:4:\"item\";a:5:{i:0;a:2:{s:11:\"level_point\";s:3:\"10%\";s:11:\"level_money\";s:3:\"10%\";}i:1;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"5%\";s:11:\"level_money\";s:2:\"5%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"6%\";s:11:\"level_money\";s:2:\"5%\";}i:4;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"8%\";}}s:2:\"on\";i:1;}',1),(617,6,'captcha','hidden','','','39',1),(618,6,'captcha_width','hidden','','','100',1),(619,6,'captcha_height','hidden','','','20',1),(620,6,'sitemap','hidden','','','a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}',0),(621,6,'points_rule','hidden','','','',0),(622,6,'flash_theme','hidden','','','dynfocus',1),(623,6,'stylename','hidden','','','',1),(701,7,'show_goodssn','select','1,0','','0',1),(702,7,'show_brand','select','1,0','','0',1),(703,7,'show_goodsweight','select','1,0','','0',1),(704,7,'show_goodsnumber','select','1,0','','1',1),(705,7,'show_addtime','select','1,0','','0',1),(706,7,'goodsattr_style','select','1,0','','1',1),(707,7,'show_marketprice','select','1,0','','1',1),(801,8,'sms_shop_mobile','text','','','13566667777',1),(802,8,'sms_order_placed','select','1,0','','0',1),(803,8,'sms_order_payed','select','1,0','','0',1),(804,8,'sms_order_shipped','select','1,0','','0',1),(901,9,'wap_config','select','1,0','','1',1),(902,9,'wap_logo','file','','../images/','',1),(903,2,'message_check','select','1,0','','1',1),(904,3,'auction_ad','text','','','20',1),(90,0,'ecsdxt','group','','','',1),(9001,90,'ecsdxt_gateway','options','1,2','','1',1),(9002,90,'ecsdxt_user_name','text','','','xkfla',1),(9003,90,'ecsdxt_pass_word','password','','','',1),(9004,90,'ecsdxt_shop_mobile','text','','','13981750563',1),(9005,90,'ecsdxt_smsgap','text','','','10',1),(9006,90,'ecsdxt_mobile_reg','select','1,0','','0',1),(9007,90,'ecsdxt_mobile_reg_value','textarea','','','您的手机号：{$user_mobile}，注册验证码：{$verify_code}，一天内提交有效。感谢您的注册！',1),(9008,90,'ecsdxt_mobile_log','select','1,0','','0',1),(9009,90,'ecsdxt_mobile_pwd','select','1,0','','0',1),(9010,90,'ecsdxt_mobile_pwd_value','textarea','','','您的用户名：{$user_name}，新密码：{$new_password}。请及时登陆修改密码！',1),(9011,90,'ecsdxt_mobile_changepwd','select','1,0','','0',1),(9012,90,'ecsdxt_mobile_changepwd_value','textarea','','','您的用户名：{$user_name}，密码已修改，新密码：{$new_password}。请牢记新密码！',1),(9013,90,'ecsdxt_mobile_bind','select','1,0','','0',1),(9014,90,'ecsdxt_mobile_bind_value','textarea','','','您的手机号：{$user_mobile}，绑定验证码：{$verify_code}。一天内提交有效！',1),(9015,90,'ecsdxt_mobile_cons','select','1,0','','0',1),(9016,90,'ecsdxt_customer_registed','select','1,0','','0',1),(9017,90,'ecsdxt_customer_registed_value','textarea','','','您注册的用户名：{$user_name}，密码：{$user_pwd}。感谢您的注册！',1),(9018,90,'ecsdxt_order_placed','select','1,0','','0',1),(9019,90,'ecsdxt_order_placed_value','textarea','','','您有新的订单：{$order_sn}，收货人：{$consignee}，电话：{$tel}，请及时确认订单！',1),(9020,90,'ecsdxt_order_canceled','select','1,0','','0',1),(9021,90,'ecsdxt_order_canceled_value','textarea','','','订单号 ：{$order_sn} 买家已取消订单！',1),(9022,90,'ecsdxt_order_payed','select','1,0','','0',1),(9023,90,'ecsdxt_order_payed_value','textarea','','','订单号 ：{$order_sn} 买家付款了。收货人：{$consignee}，电话：{$tel}。请及时安排发货！',1),(9024,90,'ecsdxt_order_confirm','select','1,0','','0',1),(9025,90,'ecsdxt_order_confirm_value','textarea','','','订单号 ：{$order_sn} 买家已确认收货！',1),(9026,90,'ecsdxt_customer_placed','select','1,0','','0',1),(9027,90,'ecsdxt_customer_placed_value','textarea','','','您的订单：{$order_sn}，收货人：{$consignee} 电话：{$tel}，已经成功提交。感谢您的购买！',1),(9028,90,'ecsdxt_customer_canceled','select','1,0','','0',1),(9029,90,'ecsdxt_customer_canceled_value','textarea','','','您的订单：{$order_sn}，已取消！',1),(9030,90,'ecsdxt_customer_payed','select','1,0','','0',1),(9031,90,'ecsdxt_customer_payed_value','textarea','','','您的订单：{$order_sn}，已于{$time}付款成功。感谢您的购买！',1),(9032,90,'ecsdxt_customer_confirm','select','1,0','','0',1),(9033,90,'ecsdxt_customer_confirm_value','textarea','','','您的订单：{$order_sn}，确认收货成功。感谢您购买与支持，欢迎您下次光临！',1),(9038,3,'show_sales_type','select','1,0','','0',1);

/*Table structure for table `ecs_touch_template` */

DROP TABLE IF EXISTS `ecs_touch_template`;

CREATE TABLE `ecs_touch_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_touch_template` */

insert  into `ecs_touch_template`(`filename`,`region`,`library`,`sort_order`,`id`,`number`,`type`,`theme`,`remarks`) values ('index','特色市场左侧2张广告图','/library/ad_position.lbi',0,2,2,4,'default',''),('index','特色市场右侧1张广告图','/library/ad_position.lbi',0,3,1,4,'default',''),('index','touch首页广告区域','/library/ad_position.lbi',0,1,3,4,'default',''),('index','中部主区域','/library/cat_goods.lbi',4,3,6,1,'default',''),('index','中部主区域','/library/cat_goods.lbi',3,2,6,1,'default',''),('index','中部主区域','/library/cat_goods.lbi',2,1,6,1,'default',''),('index','','/library/group_buy.lbi',0,0,3,0,'default',''),('index','中部主区域','/library/recommend_promotion.lbi',1,0,2,0,'default',''),('index','','/library/recommend_hot.lbi',0,0,3,0,'default',''),('index','','/library/recommend_new.lbi',0,0,3,0,'default',''),('index','中部主区域','/library/recommend_best.lbi',0,0,3,0,'default',''),('index','热门市场','/library/ad_position.lbi',0,4,9,4,'default','');

/*Table structure for table `ecs_user_account` */

DROP TABLE IF EXISTS `ecs_user_account`;

CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_user_account` */

/*Table structure for table `ecs_user_address` */

DROP TABLE IF EXISTS `ecs_user_address`;

CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_user_address` */

insert  into `ecs_user_address`(`address_id`,`address_name`,`user_id`,`consignee`,`email`,`country`,`province`,`city`,`district`,`address`,`zipcode`,`tel`,`mobile`,`sign_building`,`best_time`) values (2,'',5,'hhhh','info@ccc-global.com',1,2,52,503,'jkjkjkj','','','15116926830','',''),(3,'',6,'陈一','chenyioo@sina.com',1,31,383,3232,'浙江省杭州市拱墅区宜家时代1幢206室','','18668202815','13875955227','','');

/*Table structure for table `ecs_user_bonus` */

DROP TABLE IF EXISTS `ecs_user_bonus`;

CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_user_bonus` */

/*Table structure for table `ecs_user_card` */

DROP TABLE IF EXISTS `ecs_user_card`;

CREATE TABLE `ecs_user_card` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ct_id` int(10) unsigned NOT NULL DEFAULT '0',
  `card_level` varchar(60) NOT NULL DEFAULT '',
  `card_no` varchar(60) NOT NULL DEFAULT '',
  `card_pass` varchar(60) NOT NULL DEFAULT '',
  `card_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_type` varchar(60) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `bind_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `true_name` varchar(60) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `is_show` int(1) unsigned NOT NULL DEFAULT '0',
  `des` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_no` (`card_no`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_user_card` */

/*Table structure for table `ecs_user_card_type` */

DROP TABLE IF EXISTS `ecs_user_card_type`;

CREATE TABLE `ecs_user_card_type` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ct_id`),
  UNIQUE KEY `ct_name` (`ct_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_user_card_type` */

/*Table structure for table `ecs_user_feed` */

DROP TABLE IF EXISTS `ecs_user_feed`;

CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_user_feed` */

/*Table structure for table `ecs_user_rank` */

DROP TABLE IF EXISTS `ecs_user_rank`;

CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_user_rank` */

insert  into `ecs_user_rank`(`rank_id`,`rank_name`,`min_points`,`max_points`,`discount`,`show_price`,`special_rank`) values (1,'普通',0,100,100,1,0),(2,'白银',101,200,99,1,0),(3,'白金',201,300,98,1,0),(4,'钻石',501,999,90,1,0);

/*Table structure for table `ecs_users` */

DROP TABLE IF EXISTS `ecs_users`;

CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `aite_id` text NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  `wxid` char(28) NOT NULL,
  `wxch_bd` char(2) NOT NULL,
  `nicheng` varchar(255) DEFAULT NULL,
  `password_xkfla` varchar(40) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_users` */

insert  into `ecs_users`(`user_id`,`aite_id`,`email`,`user_name`,`password`,`question`,`answer`,`sex`,`birthday`,`user_money`,`frozen_money`,`pay_points`,`rank_points`,`address_id`,`reg_time`,`last_login`,`last_time`,`last_ip`,`visit_count`,`user_rank`,`is_special`,`ec_salt`,`salt`,`parent_id`,`flag`,`alias`,`msn`,`qq`,`office_phone`,`home_phone`,`mobile_phone`,`is_validated`,`credit_line`,`passwd_question`,`passwd_answer`,`wxid`,`wxch_bd`,`nicheng`,`password_xkfla`) values (5,'','info@ccc-global.com','cccglobal01','08f55db8dba129262b342e3ec84468af','','',0,'1958-01-01','0.00','0.00',0,0,2,1521892367,1523191925,'0000-00-00 00:00:00','0.0.0.0',12,0,0,'4069','0',0,0,'','','','','','',0,'0.00',NULL,NULL,'','',NULL,''),(6,'','chenyioo@sina.com','chenyiwen521','7b220e127d0f908bda0be9c2995beaa3','','',1,'1984-07-19','0.00','0.00',0,0,3,1522016566,1522032703,'0000-00-00 00:00:00','58.100.77.235',21,0,0,'860','0',0,0,'','','','','','',0,'0.00',NULL,NULL,'','',NULL,'');

/*Table structure for table `ecs_verifycode` */

DROP TABLE IF EXISTS `ecs_verifycode`;

CREATE TABLE `ecs_verifycode` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` char(12) NOT NULL,
  `getip` char(15) NOT NULL,
  `verifycode` char(6) NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `reguid` mediumint(8) unsigned DEFAULT '0',
  `regdateline` int(10) unsigned DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `ecs_verifycode` */

insert  into `ecs_verifycode`(`id`,`mobile`,`getip`,`verifycode`,`dateline`,`reguid`,`regdateline`,`status`) values (1,'15665828993','127.0.0.1','265261',1503695920,0,0,1),(2,'15116926830','0.0.0.0','847262',1521909876,0,0,1);

/*Table structure for table `ecs_virtual_card` */

DROP TABLE IF EXISTS `ecs_virtual_card`;

CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_virtual_card` */

/*Table structure for table `ecs_volume_price` */

DROP TABLE IF EXISTS `ecs_volume_price`;

CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_volume_price` */

/*Table structure for table `ecs_vote` */

DROP TABLE IF EXISTS `ecs_vote`;

CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_vote` */

/*Table structure for table `ecs_vote_log` */

DROP TABLE IF EXISTS `ecs_vote_log`;

CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_vote_log` */

/*Table structure for table `ecs_vote_option` */

DROP TABLE IF EXISTS `ecs_vote_option`;

CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_vote_option` */

/*Table structure for table `ecs_weixin_autoreg` */

DROP TABLE IF EXISTS `ecs_weixin_autoreg`;

CREATE TABLE `ecs_weixin_autoreg` (
  `autoreg_id` tinyint(1) NOT NULL,
  `autoreg_rand` tinyint(1) unsigned NOT NULL,
  `autoreg_name` varchar(200) NOT NULL,
  `autoreg_content` text NOT NULL,
  `state` tinyint(1) NOT NULL,
  `rank_id` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`autoreg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_autoreg` */

insert  into `ecs_weixin_autoreg`(`autoreg_id`,`autoreg_rand`,`autoreg_name`,`autoreg_content`,`state`,`rank_id`) values (1,2,'ld-web','N;',1,1);

/*Table structure for table `ecs_weixin_cfg` */

DROP TABLE IF EXISTS `ecs_weixin_cfg`;

CREATE TABLE `ecs_weixin_cfg` (
  `cfg_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `cfg_name` varchar(64) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) DEFAULT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`cfg_id`),
  UNIQUE KEY `cfg_name` (`cfg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_cfg` */

insert  into `ecs_weixin_cfg`(`cfg_id`,`cfg_name`,`cfg_value`,`autoload`) values (1,'murl','mobile/','yes'),(2,'baseurl','http://ecshop1.shamuban.com','yes'),(3,'imgpath','local','yes'),(4,'plustj','true','yes'),(5,'userpwd','ld-web','yes'),(8,'oauth','true','yes'),(7,'bd','web','yes'),(9,'goods','false','yes'),(10,'article','article.php?id=','yes'),(13,'weixin_url','http://mp.weixin.qq.com/s?__biz=MzA3NjQ5MDUzNg==&mid=206468600&idx=1&sn=e5bd46e66f70ea2ecdb046e9d6fd8fd0#rd','yes');

/*Table structure for table `ecs_weixin_config` */

DROP TABLE IF EXISTS `ecs_weixin_config`;

CREATE TABLE `ecs_weixin_config` (
  `id` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `access_token` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_config` */

insert  into `ecs_weixin_config`(`id`,`token`,`appid`,`appsecret`,`access_token`,`dateline`) values (1,'weixintestsa','','','KEBNgaIdph6lv1A1ZHHClTcsKoZuZcXzPzzjBSTYho1--o_Lr_e2QWNBQkOiK13tB5Rkxt5qXBDnhFBXcLubgvt2WKcIxaS7c9_y6qPpBLMQSBiAJAJLU',1448449705);

/*Table structure for table `ecs_weixin_coupon` */

DROP TABLE IF EXISTS `ecs_weixin_coupon`;

CREATE TABLE `ecs_weixin_coupon` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `type_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_coupon` */

insert  into `ecs_weixin_coupon`(`id`,`type_id`) values (1,0);

/*Table structure for table `ecs_weixin_keywords` */

DROP TABLE IF EXISTS `ecs_weixin_keywords`;

CREATE TABLE `ecs_weixin_keywords` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_keywords` */

insert  into `ecs_weixin_keywords`(`id`,`name`,`keyword`,`type`,`contents`,`count`,`status`) values (2,'ld-web','ld-web',1,'ld-web',0,1),(4,'1111','22222',1,'333333333333333333333333333',1,1);

/*Table structure for table `ecs_weixin_keywords1` */

DROP TABLE IF EXISTS `ecs_weixin_keywords1`;

CREATE TABLE `ecs_weixin_keywords1` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `is_start` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_keywords1` */

insert  into `ecs_weixin_keywords1`(`id`,`name`,`keyword`,`type`,`contents`,`count`,`status`,`is_start`) values (14,'关注回复图文','关注回复图文',4,'',11,1,1),(27,'关注回复文本','关注回复文本',3,'欢迎关注模板之家微信公众演示平台！平台购买旺旺：xkfla。',1164,1,0);

/*Table structure for table `ecs_weixin_keywords_article` */

DROP TABLE IF EXISTS `ecs_weixin_keywords_article`;

CREATE TABLE `ecs_weixin_keywords_article` (
  `kws_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kws_id`,`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_keywords_article` */

insert  into `ecs_weixin_keywords_article`(`kws_id`,`article_id`) values (14,23);

/*Table structure for table `ecs_weixin_lang` */

DROP TABLE IF EXISTS `ecs_weixin_lang`;

CREATE TABLE `ecs_weixin_lang` (
  `lang_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(64) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_lang` */

insert  into `ecs_weixin_lang`(`lang_id`,`lang_name`,`lang_value`) values (1,'regmsg','<p>欢迎关注蓝蜘蛛科技微信公众号</p>'),(2,'help','功能说明：\r\n输入news显示新品\r\n输入hot显示热销\r\n输入best显示推荐\r\n输入bd进入绑定会员流程\r\n输入ddcx查询最后一个订单\r\n输入kdcx查询最后一个订单中的快递\r\n输入ddlb显示多个订单信息\r\n输入help显示帮助说明'),(3,'coupon','欢迎关注微信公众号,您已经领取过红包'),(4,'coupon1','欢迎关注微信公众号,活动期间关注送'),(5,'coupon2','欢迎关注微信公众号,红包已送完'),(6,'coupon3',',记得要使用哦！'),(7,'qdok','签到成功+'),(8,'qdno','签到数次已用完'),(9,'qdstop','已经关闭了签到'),(10,'bd','快速绑定会员帐号，享受我们提供给你更全面的服务'),(11,'prize_egg','砸金蛋抽奖规则'),(12,'prize_dzp','大转盘抽奖活动说明');

/*Table structure for table `ecs_weixin_menu` */

DROP TABLE IF EXISTS `ecs_weixin_menu`;

CREATE TABLE `ecs_weixin_menu` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(6) NOT NULL,
  `level` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `aid` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_menu` */

insert  into `ecs_weixin_menu`(`id`,`menu_type`,`level`,`name`,`value`,`aid`) values (1,'click',1,'商品','',0),(2,'click',1,'会员','',0),(3,'click',1,'客服','',0),(4,'click',2,'新品上市','news',1),(5,'click',2,'精品推荐','best',1),(6,'click',2,'热销商品','hot',1),(7,'view',2,'进入首页','http://ecshop1.shamuban.com/wechat/oauth/wxch_oauth.php?oid=1',1),(8,'click',2,'','',1),(9,'click',2,'绑定会员','bd',2),(10,'click',2,'我的推广','qrcode',2),(11,'view',2,'分销中心','http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=14',2),(12,'click',2,'帐户资金','jfcx',2),(13,'click',2,'订单查询','ddcx',2),(14,'click',2,'呼叫客服','kefu',3),(15,'click',2,'二维码图片','ewm',3),(16,'click',2,'大转盘','dzp',3),(17,'click',2,'砸金蛋','zjd',3),(18,'click',2,'签到','qiandao',3);

/*Table structure for table `ecs_weixin_message` */

DROP TABLE IF EXISTS `ecs_weixin_message`;

CREATE TABLE `ecs_weixin_message` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `w_message` text NOT NULL,
  `message` text NOT NULL,
  `belong` int(9) unsigned NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wxid` (`wxid`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_message` */

insert  into `ecs_weixin_message`(`id`,`wxid`,`w_message`,`message`,`belong`,`dateline`) values (1,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:',0,1448432277),(2,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',1,1448432277),(3,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:subscribe',0,1448435379),(4,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:',0,1448435402),(5,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448435402),(6,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:subscribe',0,1448435527),(7,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:member',0,1448435693),(8,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','没有搜索到\"member\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=3\'>贵宾奶糕比熊博美犬主粮2KG美毛天然粮</a>','',0,1448435693),(9,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:cxbd',0,1448435699),(10,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','没有搜索到\"cxbd\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=49\'>1分钱支付测试商品</a>','',0,1448435699),(11,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:cxbd',0,1448435708),(12,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','没有搜索到\"cxbd\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=3\'>贵宾奶糕比熊博美犬主粮2KG美毛天然粮</a>','',0,1448435708),(13,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:promote',0,1448435716),(14,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','没有搜索到\"promote\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=42\'>带包包棉夹克宠物服饰小狗衣服</a>','',0,1448435716),(15,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:',0,1448435736),(16,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448435736),(17,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:subscribe',0,1448435763),(18,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:cxbd',0,1448435769),(19,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','没有搜索到\"cxbd\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=35\'>狗狗拔毛粉泰迪贵宾犬耳朵清洁耳道消炎杀菌50g</a>','',0,1448435769),(20,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:',0,1448436009),(21,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448436009),(22,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:bd',0,1448436049),(23,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','您已经绑定会员：wshop7\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>','',0,1448436049),(24,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:news',0,1448436083),(25,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448436083),(26,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:bd',0,1448436203),(27,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','您已经绑定会员：wshop7\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>','',0,1448436203),(28,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:zjd',0,1448436222),(29,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448436222),(30,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:dzp',0,1448436228),(31,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448436228),(32,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:jfcx',0,1448436247),(33,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','余额：0.00\r\n积分：65','',0,1448436247),(34,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:ddcx',0,1448436256),(35,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','您还没有订单','',0,1448436256),(36,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:bd',0,1448436692),(37,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','您已经绑定会员：wshop7\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>','',0,1448436692),(38,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:bd',0,1448436936),(39,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','您已经绑定会员：aaaaa\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>','',0,1448436936),(40,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:qrcode',0,1448437216),(41,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448437218),(42,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1',0,1448437225),(43,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','没有搜索到\"http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=3\'>贵宾奶糕比熊博美犬主粮2KG美毛天然粮</a>','',0,1448437225),(44,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1',0,1448437237),(45,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','没有搜索到\"http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=49\'>1分钱支付测试商品</a>','',0,1448437237),(46,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:',0,1448437640),(47,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448437640),(48,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:subscribe',0,1448437674),(49,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:best',0,1448438281),(50,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448438281),(51,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:bd',0,1448438854),(52,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','您已经绑定会员：aaaaa\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>','',0,1448438854),(53,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:dzp',0,1448438889),(54,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448438889),(55,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:zjd',0,1448438919),(56,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448438919),(57,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:dzp',0,1448438951),(58,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448438951),(59,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:ddcx',0,1448439061),(60,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448439061),(61,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1',0,1448439450),(62,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','没有搜索到\"http://sp.codes5.com/wechat/oauth/wxch_oauth.php?oid=1\"的商品\r\n我们为您推荐:<a href=\'http://sp.codes5.com/wechat/oauth/wxch_oauths.php?uri=http://sp.codes5.com/mobile/goods.php?id=5\'>宝路中小型犬成犬牛肉通用犬粮7.5kg</a>','',0,1448439450),(63,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:bd',0,1448449705),(64,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','您已经绑定会员：aaaaa\r\n如需重新绑定请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=login&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击绑定会员</a>\r\n如果忘记密码请<a href=\"http://sp.codes5.com/mobile/user_wxch.php?act=reset_weixin_password&wxid=oG9l1t6rvjOCmUHiXQGvvVwpviWM\">点击重置密码</a>','',0,1448449705),(65,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:qrcode',0,1448449751),(66,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448449752),(67,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:ewm',0,1448449778),(68,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','M0Vs4XYydBgFZ2-QAMfT_dyTgryaPnP8K4n-Z2udS5lcaBPZsIuD9J0EJjOJksE5','',0,1448449780),(69,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:ewm',0,1448449783),(70,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','6c2I0KAQdQtnxnwY1c79Az-ZfCXVJyI9HYQSEY1OCktmpFmuSC2cylQWg6zuxg1b','',0,1448449784),(71,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:qrcode',0,1448449793),(72,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448449794),(73,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','','menu:',0,1448682494),(74,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','图文消息','',0,1448682494);

/*Table structure for table `ecs_weixin_msg` */

DROP TABLE IF EXISTS `ecs_weixin_msg`;

CREATE TABLE `ecs_weixin_msg` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `function` varchar(30) NOT NULL,
  `command` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_msg` */

insert  into `ecs_weixin_msg`(`id`,`name`,`function`,`command`) values (1,'新品','news','xk 新款 News'),(2,'精品','best','Best 精品'),(3,'热销','hot','Hot 热销'),(4,'绑定会员','bd','BD Bd 绑定会员'),(5,'重新绑定','cxbd','重新绑定 Cxbd'),(6,'订单列表','ddlb','订单列表 Ddlb'),(7,'订单查询','ddcx','订单查询 Ddcx'),(8,'订单快递','kdcx','订单快递 Kdcx'),(9,'帮助说明','help','帮助说明 Help 帮助'),(10,'砸金蛋','zjd','砸金蛋 Zjd'),(11,'签到','qiandao','qiandao 签到'),(12,'大转盘','dzp','大转盘 Dzp');

/*Table structure for table `ecs_weixin_oauth` */

DROP TABLE IF EXISTS `ecs_weixin_oauth`;

CREATE TABLE `ecs_weixin_oauth` (
  `oid` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_oauth` */

insert  into `ecs_weixin_oauth`(`oid`,`name`,`contents`,`count`,`status`) values (1,'手机版网站首页','http://ecshop1.shamuban.com/mobile',3942,1),(12,'推广教程','http://ecshop1.shamuban.com/mobile/article.php?id=37',2053,1),(13,'推广首页','http://sp.codes5.com/mobile/',4928,1),(14,'分销中心','http://sp.codes5.com/mobile/distribute.php',4604,1),(15,'单品推广演示','http://sp.codes5.com/mobile/ld-web.php',87,1);

/*Table structure for table `ecs_weixin_order` */

DROP TABLE IF EXISTS `ecs_weixin_order`;

CREATE TABLE `ecs_weixin_order` (
  `id` tinyint(1) NOT NULL,
  `order_name` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `autoload` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_order` */

insert  into `ecs_weixin_order`(`id`,`order_name`,`title`,`image`,`content`,`autoload`) values (1,'order','发货提醒','images/201504/1427952990857338988.jpg','<p>&nbsp;ffffff</p>','yes'),(2,'reorder','订单确认提醒','images/201504/1427952978792506840.jpg','fff','yes'),(3,'pay','成功支付','images/201504/1428653561481550531.jpg','已经成功支付','yes');

/*Table structure for table `ecs_weixin_pay` */

DROP TABLE IF EXISTS `ecs_weixin_pay`;

CREATE TABLE `ecs_weixin_pay` (
  `id` int(1) NOT NULL,
  `appid` char(18) NOT NULL,
  `paysignkey` char(128) NOT NULL,
  `partnerkey` char(32) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_pay` */

insert  into `ecs_weixin_pay`(`id`,`appid`,`paysignkey`,`partnerkey`,`appsecret`,`dateline`) values (1,'','','','',0);

/*Table structure for table `ecs_weixin_point` */

DROP TABLE IF EXISTS `ecs_weixin_point`;

CREATE TABLE `ecs_weixin_point` (
  `point_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `point_name` varchar(64) NOT NULL DEFAULT '',
  `point_value` int(3) unsigned NOT NULL,
  `point_num` int(3) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`point_id`),
  UNIQUE KEY `option_name` (`point_name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_point` */

insert  into `ecs_weixin_point`(`point_id`,`point_name`,`point_value`,`point_num`,`autoload`) values (1,'news',5,2,'yes'),(2,'best',15,1,'yes'),(3,'hot',5,1,'yes'),(4,'bd',30,1,'yes'),(5,'ddcx',5,1,'yes'),(6,'kdcx',5,1,'yes'),(7,'zjd',5,0,'no'),(8,'qiandao',10,1,'yes'),(9,'dzp',10,1,'yes'),(11,'share_fpoint',10,1,'yes'),(12,'share_dfpoint',10,1,'yes'),(13,'g_point',10,5,'yes');

/*Table structure for table `ecs_weixin_point_record` */

DROP TABLE IF EXISTS `ecs_weixin_point_record`;

CREATE TABLE `ecs_weixin_point_record` (
  `pr_id` int(7) NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_point_record` */

insert  into `ecs_weixin_point_record`(`pr_id`,`wxid`,`point_name`,`num`,`lasttime`,`datelinie`) values (1,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','g_point',4,1448437675,1448435382),(2,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','bd',1,1448436050,1448436050),(3,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','news',1,1448436084,1448436084),(4,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','zjd',1,1448436222,1448436222),(5,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','dzp',1,1448436229,1448436229),(6,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','best',1,1448438282,1448438282),(7,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','ddcx',1,1448439061,1448439061);

/*Table structure for table `ecs_weixin_prize` */

DROP TABLE IF EXISTS `ecs_weixin_prize`;

CREATE TABLE `ecs_weixin_prize` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `fun` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `num` int(2) unsigned NOT NULL,
  `count` int(8) NOT NULL,
  `loop` int(3) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  `point` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_prize` */

insert  into `ecs_weixin_prize`(`pid`,`title`,`fun`,`status`,`num`,`count`,`loop`,`starttime`,`endtime`,`dateline`,`point`) values (1,'正在测试的','egg',1,1,210,1,1394899200,1460649600,1420996251,10),(2,'大转盘','dzp',1,10,477,1,1420732800,1486742400,1429164887,3);

/*Table structure for table `ecs_weixin_prize_append` */

DROP TABLE IF EXISTS `ecs_weixin_prize_append`;

CREATE TABLE `ecs_weixin_prize_append` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `prize_id` int(4) unsigned NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_prize_append` */

insert  into `ecs_weixin_prize_append`(`id`,`prize_id`,`prize_name`,`prize_value`) values (1,2,'iphone6',10),(2,2,'iphone5',10),(3,2,'iphone4',10),(4,2,'ipad',10),(5,2,'',0),(6,2,'',0),(7,1,'100元话费',10),(8,1,'50元话费',10),(9,1,'20元话费',10),(10,1,'5元话费',10),(11,1,'',0),(12,1,'',0);

/*Table structure for table `ecs_weixin_prize_cnum` */

DROP TABLE IF EXISTS `ecs_weixin_prize_cnum`;

CREATE TABLE `ecs_weixin_prize_cnum` (
  `pcid` int(5) NOT NULL AUTO_INCREMENT,
  `paid` int(5) NOT NULL,
  `pid` int(4) NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  `user_count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`pcid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_prize_cnum` */

insert  into `ecs_weixin_prize_cnum`(`pcid`,`paid`,`pid`,`prize_name`,`prize_value`,`user_count`) values (1,0,2,'null',0,1),(2,0,1,'null',0,1),(3,0,2,'null',0,1),(4,0,2,'null',0,1),(5,0,1,'null',0,1),(6,0,2,'null',0,1),(7,3,2,'iphone4',1,10),(8,0,1,'null',0,1),(9,2,2,'iphone5',1,10),(10,0,1,'null',0,1),(11,0,1,'null',0,1),(12,4,2,'ipad',8,254),(13,0,1,'null',0,1),(14,1,2,'iphone6',1,10),(15,9,1,'20元话费',1,10),(16,10,1,'5元话费',9,119),(17,8,1,'50元话费',1,10),(18,7,1,'100元话费',1,10);

/*Table structure for table `ecs_weixin_prize_count` */

DROP TABLE IF EXISTS `ecs_weixin_prize_count`;

CREATE TABLE `ecs_weixin_prize_count` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `pid` int(5) NOT NULL,
  `wxid` char(28) NOT NULL,
  `num` int(5) NOT NULL,
  `count` int(5) unsigned NOT NULL,
  `lasttime` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_prize_count` */

insert  into `ecs_weixin_prize_count`(`cid`,`pid`,`wxid`,`num`,`count`,`lasttime`,`dateline`) values (1,2,'oG9l1t6rvjOCmUHiXQGvvVwpviWM',1,1,1448438970,1448438970);

/*Table structure for table `ecs_weixin_prize_register` */

DROP TABLE IF EXISTS `ecs_weixin_prize_register`;

CREATE TABLE `ecs_weixin_prize_register` (
  `rid` int(8) NOT NULL AUTO_INCREMENT,
  `pid` int(7) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `wxid` (`wxid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_prize_register` */

/*Table structure for table `ecs_weixin_prize_users` */

DROP TABLE IF EXISTS `ecs_weixin_prize_users`;

CREATE TABLE `ecs_weixin_prize_users` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL DEFAULT '',
  `fun` varchar(10) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `prize_id` int(5) DEFAULT NULL,
  `prize_name` varchar(64) DEFAULT NULL,
  `prize_sn` varchar(35) NOT NULL,
  `register` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `yn` varchar(3) NOT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prize_id` (`prize_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_prize_users` */

insert  into `ecs_weixin_prize_users`(`id`,`wxid`,`fun`,`nickname`,`prize_id`,`prize_name`,`prize_sn`,`register`,`status`,`yn`,`dateline`) values (1,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','dzp','徐凯',2,'ipad','268857341d3dc60babe8219b55465c3c',0,1,'no',1448438970);

/*Table structure for table `ecs_weixin_qr` */

DROP TABLE IF EXISTS `ecs_weixin_qr`;

CREATE TABLE `ecs_weixin_qr` (
  `qid` int(7) NOT NULL AUTO_INCREMENT,
  `type` varchar(2) NOT NULL,
  `expire_seconds` int(4) NOT NULL,
  `action_name` varchar(30) NOT NULL,
  `scene_id` int(7) NOT NULL,
  `ticket` varchar(120) NOT NULL,
  `scene` varchar(200) NOT NULL,
  `qr_path` varchar(200) NOT NULL,
  `subscribe` int(8) unsigned NOT NULL,
  `scan` int(8) unsigned NOT NULL,
  `function` varchar(100) NOT NULL,
  `affiliate` int(8) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_qr` */

insert  into `ecs_weixin_qr`(`qid`,`type`,`expire_seconds`,`action_name`,`scene_id`,`ticket`,`scene`,`qr_path`,`subscribe`,`scan`,`function`,`affiliate`,`endtime`,`dateline`) values (1,'tj',0,'QR_LIMIT_SCENE',5,'gQHI7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3dFeFZCbW5sYy1JS0FwbDRwMkRmAAIE4WVVVgMEAAAAAA==','aaaaa','http://sp.codes5.com/images/qrcode/qrcode_430/oG9l1t6rvjOCmUHiXQGvvVwpviWM.jpg',0,0,'',5,0,0);

/*Table structure for table `ecs_weixin_qr_xkfla2015` */

DROP TABLE IF EXISTS `ecs_weixin_qr_xkfla2015`;

CREATE TABLE `ecs_weixin_qr_xkfla2015` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `qr_path` varchar(255) DEFAULT NULL,
  `scene` varchar(255) DEFAULT NULL,
  `scene_id` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_qr_xkfla2015` */

/*Table structure for table `ecs_weixin_user` */

DROP TABLE IF EXISTS `ecs_weixin_user`;

CREATE TABLE `ecs_weixin_user` (
  `uid` int(7) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  `affiliate` int(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_user` */

insert  into `ecs_weixin_user`(`uid`,`subscribe`,`wxid`,`nickname`,`sex`,`city`,`country`,`province`,`language`,`headimgurl`,`subscribe_time`,`localimgurl`,`setp`,`uname`,`coupon`,`affiliate`,`dateline`) values (2,0,'oG9l1t6rvjOCmUHiXQGvvVwpviWM','徐凯',1,'成都','中国','四川','zh_CN','http://wx.qlogo.cn/mmopen/YUHWia7ps2muHW8unr12GxvorGm1xmeEEsXcDTHV76zYfrCOytzF7iaV1TpnT3JicHQP9O9xRCf1ThCBAvTz82L8Ow9vTiaD43Gic/0',1448437674,'',3,'aaaaa','',0,1448682494);

/*Table structure for table `ecs_weixin_ver` */

DROP TABLE IF EXISTS `ecs_weixin_ver`;

CREATE TABLE `ecs_weixin_ver` (
  `vid` tinyint(1) NOT NULL,
  `type` varchar(5) NOT NULL,
  `ver` varchar(8) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_weixin_ver` */

/*Table structure for table `ecs_wholesale` */

DROP TABLE IF EXISTS `ecs_wholesale`;

CREATE TABLE `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ecs_wholesale` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;