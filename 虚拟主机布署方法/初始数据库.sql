﻿# Host: localhost  (Version: 5.5.53)
# Date: 2019-05-12 08:20:58
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "qw_article"
#

DROP TABLE IF EXISTS `qw_article`;
CREATE TABLE `qw_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `thumbnail` varchar(255) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `t` int(10) unsigned NOT NULL COMMENT '时间',
  `n` int(10) unsigned NOT NULL COMMENT '点击',
  PRIMARY KEY (`aid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "qw_article"
#

/*!40000 ALTER TABLE `qw_article` DISABLE KEYS */;
INSERT INTO `qw_article` VALUES (1,36,'1111111','1111111111111','111111111111111111','','111111111111<a href=\"http://tp.upsir.com/qwadmin/index.php/Qwadmin/Lilynoticeview/toreadpage.html?id=88922\" target=\"_blank\">http://tp.upsir.com/qwadmin/index.php/Qwadmin/Lilynoticeview/toreadpage.html?id=88922</a>',1472624406,0);
/*!40000 ALTER TABLE `qw_article` ENABLE KEYS */;

#
# Structure for table "qw_auth_group"
#

DROP TABLE IF EXISTS `qw_auth_group`;
CREATE TABLE `qw_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "qw_auth_group"
#

/*!40000 ALTER TABLE `qw_auth_group` DISABLE KEYS */;
INSERT INTO `qw_auth_group` VALUES (1,'超级管理员',1,'1,2,58,65,59,60,61,62,3,56,4,6,5,7,8,9,10,51,52,53,57,11,54,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,63,48,49,50,55'),(2,'学院管理员',1,'71,73,74,75,99,100,72,76,77,78,79,80,81,82,95,96,105,107,106,97,98,66,67,68,69,101,102,103,104,87,88,85,86,89,114,115,116,117,118,1,108,113,109,110,111,112,13,14,15,16,17,18,19,20,21,22,23,48,49,50,55'),(3,'班干部',1,'108,113,109,110,71,73,74,75,99,100,72,76,77,78,79,80,81,82,95,96,97,98,1,48,49,50,55,119,120,123,121,125,122,124,126,127,128,129'),(6,'同学',1,'71,73,74,75,100,82,105,107,106,97,98,66,67,68,101,102,103,104,115,118,1,108,113,109,110,48,49,50,55'),(8,'教师',1,'71,73,74,75,99,100,72,76,77,78,79,80,81,82,95,96,105,107,106,97,98,66,67,68,69,101,102,103,104,87,88,85,86,89,116,118,1,108,113,109,110,48,49,50,55'),(10,'社会',1,'71,73,74,75,100,82,97,98,66,67,101,102,103,104,114,115,116,117,118,1,108,113,109,110,48,49,50,55');
/*!40000 ALTER TABLE `qw_auth_group` ENABLE KEYS */;

#
# Structure for table "qw_auth_group_access"
#

DROP TABLE IF EXISTS `qw_auth_group_access`;
CREATE TABLE `qw_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_auth_group_access"
#

/*!40000 ALTER TABLE `qw_auth_group_access` DISABLE KEYS */;
INSERT INTO `qw_auth_group_access` VALUES (0,6),(1,1),(3999,10),(4000,6),(4002,6),(4003,6),(4004,6),(4005,6),(4006,6),(4007,6),(4008,6),(4009,6),(4010,6),(4011,1),(4012,1),(4013,1),(4014,1),(4015,1),(4016,1),(4017,1),(4018,1),(4019,1),(4020,1),(4021,1),(4022,1),(4023,1),(4024,1),(4025,1),(4026,1),(4027,3),(4028,10),(4029,10);
/*!40000 ALTER TABLE `qw_auth_group_access` ENABLE KEYS */;

#
# Structure for table "qw_auth_rule"
#

DROP TABLE IF EXISTS `qw_auth_rule`;
CREATE TABLE `qw_auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

#
# Data for table "qw_auth_rule"
#

/*!40000 ALTER TABLE `qw_auth_rule` DISABLE KEYS */;
INSERT INTO `qw_auth_rule` VALUES (1,0,'Index/index','控制台','menu-icon fa fa-tachometer',1,1,'',1,1,'友情提示：经常查看操作日志，发现异常以便及时追查原因。'),(2,0,'','系统设置','menu-icon fa fa-cog',1,1,'',1,2,''),(3,2,'Setting/setting','网站设置','menu-icon fa fa-caret-right',1,1,'',1,3,'这是网站设置的提示。'),(4,2,'Menu/index','后台菜单','menu-icon fa fa-caret-right',1,1,'',1,4,''),(5,2,'Menu/add','新增菜单','menu-icon fa fa-caret-right',1,1,'',1,5,''),(6,4,'Menu/edit','编辑菜单','',1,1,'',0,6,''),(7,2,'Menu/update','保存菜单','menu-icon fa fa-caret-right',1,1,'',0,7,''),(8,2,'Menu/del','删除菜单','menu-icon fa fa-caret-right',1,1,'',0,8,''),(9,2,'Database/backup','数据库备份','menu-icon fa fa-caret-right',1,1,'',1,9,''),(10,9,'Database/recovery','数据库还原','',1,1,'',0,10,''),(11,2,'Update/update','在线升级','menu-icon fa fa-caret-right',1,1,'',1,11,''),(12,2,'Update/devlog','开发日志','menu-icon fa fa-caret-right',1,1,'',1,12,''),(13,0,'','用户及组','menu-icon fa fa-users',1,1,'',1,13,''),(14,13,'Member/index','用户管理','menu-icon fa fa-caret-right',1,1,'',1,14,''),(15,13,'Member/add','新增用户','menu-icon fa fa-caret-right',1,1,'',1,15,''),(16,13,'Member/edit','编辑用户','menu-icon fa fa-caret-right',1,1,'',0,16,''),(17,13,'Member/update','保存用户','menu-icon fa fa-caret-right',1,1,'',0,17,''),(18,13,'Member/del','删除用户','',1,1,'',0,18,''),(19,13,'Group/index','用户组管理','menu-icon fa fa-caret-right',1,1,'',1,19,''),(20,13,'Group/add','新增用户组','menu-icon fa fa-caret-right',1,1,'',1,20,''),(21,13,'Group/edit','编辑用户组','menu-icon fa fa-caret-right',1,1,'',0,21,''),(22,13,'Group/update','保存用户组','menu-icon fa fa-caret-right',1,1,'',0,22,''),(23,13,'Group/del','删除用户组','',1,1,'',0,23,''),(24,0,'','网站内容','menu-icon fa fa-desktop',1,1,'',0,24,''),(25,24,'Article/index','文章管理','menu-icon fa fa-caret-right',1,1,'',0,25,'网站虽然重要，身体更重要，出去走走吧。'),(26,24,'Article/add','新增文章','menu-icon fa fa-caret-right',1,1,'',0,26,''),(27,24,'Article/edit','编辑文章','menu-icon fa fa-caret-right',1,1,'',0,27,''),(29,24,'Article/update','保存文章','menu-icon fa fa-caret-right',1,1,'',0,29,''),(30,24,'Article/del','删除文章','',1,1,'',0,30,''),(31,24,'Category/index','分类管理','menu-icon fa fa-caret-right',1,1,'',0,31,''),(32,24,'Category/add','新增分类','menu-icon fa fa-caret-right',1,1,'',0,32,''),(33,24,'Category/edit','编辑分类','menu-icon fa fa-caret-right',1,1,'',0,33,''),(34,24,'Category/update','保存分类','menu-icon fa fa-caret-right',1,1,'',0,34,''),(36,24,'Category/del','删除分类','',1,1,'',0,36,''),(37,0,'','其它功能','menu-icon fa fa-legal',1,1,'',0,37,''),(38,37,'Link/index','友情链接','menu-icon fa fa-caret-right',1,1,'',0,38,''),(39,37,'Link/add','增加链接','',1,1,'',0,39,''),(40,37,'Link/edit','编辑链接','',1,1,'',0,40,''),(41,37,'Link/update','保存链接','',1,1,'',0,41,''),(42,37,'Link/del','删除链接','',1,1,'',0,42,''),(43,37,'Flash/index','焦点图','menu-icon fa fa-desktop',1,1,'',0,43,''),(44,37,'Flash/add','新增焦点图','',1,1,'',0,44,''),(45,37,'Flash/update','保存焦点图','',1,1,'',0,45,''),(46,37,'Flash/edit','编辑焦点图','',1,1,'',0,46,''),(47,37,'Flash/del','删除焦点图','',1,1,'',0,47,''),(48,0,'Personal/index','个人中心','menu-icon fa fa-user',1,1,'',1,48,''),(49,48,'Personal/profile','个人资料','menu-icon fa fa-user',1,1,'',1,49,''),(50,48,'Logout/index','退出','',1,1,'',1,50,''),(51,9,'Database/export','备份','',1,1,'',0,51,''),(52,9,'Database/optimize','数据优化','',1,1,'',0,52,''),(53,9,'Database/repair','修复表','',1,1,'',0,53,''),(54,11,'Update/updating','升级安装','',1,1,'',0,54,''),(55,48,'Personal/update','资料保存','',1,1,'',0,55,''),(56,3,'Setting/update','设置保存','',1,1,'',0,56,''),(57,9,'Database/del','备份删除','',1,1,'',0,57,''),(58,2,'variable/index','自定义变量','',1,1,'',1,0,''),(59,58,'variable/add','新增变量','',1,1,'',0,0,''),(60,58,'variable/edit','编辑变量','',1,1,'',0,0,''),(61,58,'variable/update','保存变量','',1,1,'',0,0,''),(62,58,'variable/del','删除变量','',1,1,'',0,0,''),(63,37,'Facebook/add','用户反馈','',1,1,'',0,63,''),(66,0,'Info/index','信息查询','menu-icon fa fa-users',1,1,'',1,1,''),(67,66,'Info/index','公开信息','',1,1,'',1,0,''),(68,66,'Student/index','学生信息','',1,1,'',0,10,''),(69,66,'Classleader/index','班干部','',1,1,'',0,20,''),(71,0,'Lilynoticeview/index','通知系统','menu-icon fa fa-desktop',1,1,'',1,1,''),(72,71,'Lilynotice/index','通知管理','',1,1,'',1,20,''),(73,71,'Lilynoticeview/index','通知首页','',1,1,'',1,10,''),(74,71,'Lilynoticeview/toreadpage','阅读通知','',1,1,'',0,15,''),(75,71,'Lilynoticeview/rec_read','记录已读','',1,1,'',0,16,''),(76,71,'Lilynotice/addedit','通知管理增改','',1,1,'',0,30,''),(77,71,'Lilynotice/del','通知管理删','',1,1,'',0,40,''),(78,71,'Lilynotice/update','通知管理更新','',1,1,'',0,50,''),(79,71,'send/index','发送界面','',1,1,'',0,70,''),(80,71,'send/allsendtemp','发送短信','',1,1,'',0,80,''),(81,71,'send/emailsend','发送邮件','',1,1,'',0,90,''),(82,71,'shortcutsend','下载快捷方式','',1,1,'',0,100,''),(85,66,'Classleader/addedit','班长增改','',1,1,'',0,310,''),(86,66,'Classleader/del','班长删除','',1,1,'',0,320,''),(87,66,'Student/addedit','学生增删','',1,1,'',0,210,''),(88,66,'Student/del','学生删除','',1,1,'',0,220,''),(89,66,'Classleader/update','班长更新','',1,1,'',0,330,''),(95,71,'Lilynotice/sendopt','发送选项','',1,1,'',1,200,''),(96,71,'Lilynotice/updatesendopt','发送选项更新','',1,1,'',0,210,''),(97,71,'Lilynotice/feedback','意见反馈','',1,1,'',1,900,''),(98,71,'Lilynotice/feedbackupdate','意见反馈更新','',1,1,'',0,910,''),(99,71,'lilynoticeview/readrecExport','导出阅读记录','',1,1,'',0,17,''),(100,71,'lilynoticeview/del','阅读记录删','',1,1,'',0,19,''),(101,66,'PInfo/index','私人信息','',1,1,'',1,100,''),(102,66,'PInfo/addedit','私人信息增删','',1,1,'',0,110,''),(103,66,'PInfo/del','私人信息删除','',1,1,'',0,120,''),(104,66,'PInfo/update','私人信息更新','',1,1,'',0,130,''),(105,71,'Lilynoticeview/mynotice','我的通知','',1,1,'',1,405,''),(106,71,'Lilynoticeview/haveread','已读通知','',1,1,'',1,410,''),(107,71,'Lilynoticeview/annonce','通知公告','',1,1,'',1,408,''),(108,0,'Show/index','信息展示','menu-icon fa fa-info-circle',1,1,'',1,1,''),(109,108,'Show/show','新增信息','',1,1,'',1,10,''),(110,108,'Show/showupdate','新增更新','',1,1,'',0,20,''),(111,108,'Show/showreview','信息审核','',1,1,'',1,100,''),(112,108,'Show/showoperate','信息审核操作','',1,1,'',0,110,''),(113,108,'Show/index','信息展示','',1,1,'',1,5,''),(114,66,'Rwxy/index','通用查询index','',1,1,'',0,400,''),(115,66,'RwxyCom/uniquerydata','通用查询','',1,1,'',1,410,''),(116,66,'RwxyCom/echoiddata','单个信息','',1,1,'',0,420,''),(117,66,'RwxyCom/getresult','通用查询getresult','',1,1,'',0,440,''),(118,66,'RwxyCom/personaldata','个人信息显示','',1,1,'',1,450,''),(119,0,'Ud/index','信息修改','menu-icon fa fa-meh-o',1,1,'',1,400,''),(120,119,'Ud/index','首页','',1,1,'',1,10,''),(121,119,'Ud/addedit','信息增更','',1,1,'',1,20,''),(122,119,'Ud/del','删除','',1,1,'',0,40,''),(123,119,'Ud/sheetindex','管理信息表','',1,1,'',1,10,''),(124,119,'Ud/mysheet','个人信息表','',1,1,'',1,100,''),(125,119,'Ud/magrecords','管理记录','',1,1,'',1,20,''),(126,119,'Ud/magmyrecords','个人记录','',1,1,'',1,120,''),(127,119,'Ud/update','update','',1,1,'',0,310,''),(128,119,'Ud/updatetoadd','updatetoadd','',1,1,'',0,320,''),(129,119,'Rwxycom/echoiddata','Rwxycom/echoiddata','',1,1,'',0,400,'');
/*!40000 ALTER TABLE `qw_auth_rule` ENABLE KEYS */;

#
# Structure for table "qw_category"
#

DROP TABLE IF EXISTS `qw_category`;
CREATE TABLE `qw_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '0正常，1单页，2外链',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `seotitle` varchar(200) NOT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `cattemplate` varchar(100) NOT NULL,
  `contemplate` varchar(100) NOT NULL,
  `o` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `fsid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

#
# Data for table "qw_category"
#

/*!40000 ALTER TABLE `qw_category` DISABLE KEYS */;
INSERT INTO `qw_category` VALUES (36,0,0,'新闻','','','','','','','',0);
/*!40000 ALTER TABLE `qw_category` ENABLE KEYS */;

#
# Structure for table "qw_classleader"
#

DROP TABLE IF EXISTS `qw_classleader`;
CREATE TABLE `qw_classleader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuclass` varchar(50) NOT NULL DEFAULT '',
  `classshort` varchar(100) DEFAULT NULL,
  `monitor` varchar(50) DEFAULT NULL,
  `monitor_stuid` varchar(50) DEFAULT NULL,
  `monitor_mphone` varchar(50) DEFAULT NULL,
  `monitor_smphone` varchar(50) DEFAULT NULL,
  `tuanzhishu` varchar(50) DEFAULT NULL,
  `tuanzhishu_stuid` varchar(50) DEFAULT NULL,
  `tuanzhishu_mphone` varchar(50) DEFAULT NULL,
  `tuanzhishu_smphone` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT '台州学院',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "qw_classleader"
#

/*!40000 ALTER TABLE `qw_classleader` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_classleader` ENABLE KEYS */;

#
# Structure for table "qw_devlog"
#

DROP TABLE IF EXISTS `qw_devlog`;
CREATE TABLE `qw_devlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` varchar(225) NOT NULL COMMENT '版本号',
  `y` int(4) NOT NULL COMMENT '年分',
  `t` int(10) NOT NULL COMMENT '发布日期',
  `log` text NOT NULL COMMENT '更新日志',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "qw_devlog"
#

/*!40000 ALTER TABLE `qw_devlog` DISABLE KEYS */;
INSERT INTO `qw_devlog` VALUES (1,'1.0.0',2016,1440259200,'QWADMIN第一个版本发布。'),(2,'1.0.1',2016,1440259200,'修改cookie过于简单的安全风险。');
/*!40000 ALTER TABLE `qw_devlog` ENABLE KEYS */;

#
# Structure for table "qw_feedback"
#

DROP TABLE IF EXISTS `qw_feedback`;
CREATE TABLE `qw_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `content` text,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "qw_feedback"
#

/*!40000 ALTER TABLE `qw_feedback` DISABLE KEYS */;
INSERT INTO `qw_feedback` VALUES (2,NULL,'admin','管理员','有B闰啊',NULL),(3,'1','admin','管理员','fdsafds',1496306584);
/*!40000 ALTER TABLE `qw_feedback` ENABLE KEYS */;

#
# Structure for table "qw_flash"
#

DROP TABLE IF EXISTS `qw_flash`;
CREATE TABLE `qw_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o` (`o`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_flash"
#

/*!40000 ALTER TABLE `qw_flash` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_flash` ENABLE KEYS */;

#
# Structure for table "qw_links"
#

DROP TABLE IF EXISTS `qw_links`;
CREATE TABLE `qw_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o` (`o`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "qw_links"
#

/*!40000 ALTER TABLE `qw_links` DISABLE KEYS */;
INSERT INTO `qw_links` VALUES (1,'fdf','fdsfdsfds','',1);
/*!40000 ALTER TABLE `qw_links` ENABLE KEYS */;

#
# Structure for table "qw_log"
#

DROP TABLE IF EXISTS `qw_log`;
CREATE TABLE `qw_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `t` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `log` varchar(2550) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=394 DEFAULT CHARSET=utf8;

#
# Data for table "qw_log"
#

/*!40000 ALTER TABLE `qw_log` DISABLE KEYS */;
INSERT INTO `qw_log` VALUES (391,'AdminUser',1557618485,'192.168.7.32','登录失败。'),(392,'AdminUser',1557618494,'192.168.7.32','登录成功。jumpurl=/index.php/Qwadmin/index/index.html$Req_URL/'),(393,'AdminUser',1557618561,'192.168.7.32','修改个人资料');
/*!40000 ALTER TABLE `qw_log` ENABLE KEYS */;

#
# Structure for table "qw_member"
#

DROP TABLE IF EXISTS `qw_member`;
CREATE TABLE `qw_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(225) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `stu_class` varchar(255) DEFAULT '班级',
  `wx_openid` varchar(255) DEFAULT NULL,
  `head` varchar(255) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) NOT NULL COMMENT '生日',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) unsigned NOT NULL COMMENT '注册时间',
  `identifier` varchar(32) NOT NULL,
  `token` varchar(32) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `department` varchar(255) DEFAULT '学院',
  `school` varchar(255) DEFAULT '台州学院',
  `ocr` varchar(255) DEFAULT NULL,
  `lastword` varchar(255) DEFAULT NULL,
  `unionid` varchar(255) DEFAULT NULL,
  `querypw` varchar(255) DEFAULT NULL,
  `querywrpw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=4030 DEFAULT CHARSET=utf8;

#
# Data for table "qw_member"
#

/*!40000 ALTER TABLE `qw_member` DISABLE KEYS */;
INSERT INTO `qw_member` VALUES (1,'admin','管理员','管理员','oAkdFwIPgXhgzKtku1NXfs4bvea4;','',1,1420128000,'','187277552','','66d6a1c8748025462128dc75bf5ae8d1',1466127714,'d6287203321e12337d0d58fe16c3fdd4','d594cbe3426b4dc8b2ac218e40b91418','bxA9rQj2ez','管理员','台州学院',NULL,NULL,NULL,'admin','admin888');
/*!40000 ALTER TABLE `qw_member` ENABLE KEYS */;

#
# Structure for table "qw_notice"
#

DROP TABLE IF EXISTS `qw_notice`;
CREATE TABLE `qw_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `creattime` int(10) DEFAULT NULL,
  `start_time` int(10) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `sendto` text,
  `canview` varchar(255) DEFAULT '',
  `IP` varchar(255) DEFAULT NULL,
  `Exp_time` int(10) DEFAULT NULL,
  `Del_time` varchar(255) DEFAULT NULL,
  `phone_send_rec` text,
  `qqgroup` varchar(255) DEFAULT NULL COMMENT '这是填的是跳转网址',
  `department` varchar(255) DEFAULT '人文学院',
  `jumpurl` varchar(255) DEFAULT NULL,
  `statistics` varchar(255) DEFAULT '是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_notice"
#

/*!40000 ALTER TABLE `qw_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_notice` ENABLE KEYS */;

#
# Structure for table "qw_notice_access"
#

DROP TABLE IF EXISTS `qw_notice_access`;
CREATE TABLE `qw_notice_access` (
  `reader` varchar(255) NOT NULL DEFAULT '',
  `notice_id` int(11) NOT NULL DEFAULT '0',
  `own` tinyint(1) DEFAULT NULL,
  `fav` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_notice_access"
#

/*!40000 ALTER TABLE `qw_notice_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_notice_access` ENABLE KEYS */;

#
# Structure for table "qw_notice_opt"
#

DROP TABLE IF EXISTS `qw_notice_opt`;
CREATE TABLE `qw_notice_opt` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `wxdelay` varchar(255) DEFAULT '0',
  `gxtdelay` varchar(255) DEFAULT '0',
  `gxtid` varchar(255) DEFAULT NULL,
  `gxtuser` varchar(255) DEFAULT NULL,
  `gxtpw` varchar(255) DEFAULT NULL,
  `smaildelay` varchar(255) DEFAULT '30',
  `smail` varchar(255) DEFAULT NULL,
  `smailuser` varchar(255) DEFAULT NULL,
  `smailsmtp` varchar(255) DEFAULT NULL,
  `smailpw` varchar(255) DEFAULT NULL,
  `qqgroup` varchar(255) DEFAULT NULL,
  `sendto` text,
  `sendto2` text,
  `sendto3` text,
  `sendtoall` text,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_notice_opt"
#

/*!40000 ALTER TABLE `qw_notice_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_notice_opt` ENABLE KEYS */;

#
# Structure for table "qw_notice_read"
#

DROP TABLE IF EXISTS `qw_notice_read`;
CREATE TABLE `qw_notice_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) DEFAULT NULL,
  `reader` varchar(20) DEFAULT NULL,
  `firstreadtime` int(10) DEFAULT NULL,
  `newestreadtime` int(10) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `replyopt` varchar(2) DEFAULT '未定',
  `replycontent` varchar(255) DEFAULT NULL,
  `sendrec` text,
  `revrec` text,
  PRIMARY KEY (`id`),
  KEY `notice_id` (`notice_id`,`reader`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_notice_read"
#

/*!40000 ALTER TABLE `qw_notice_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_notice_read` ENABLE KEYS */;

#
# Structure for table "qw_receivedmsgs"
#

DROP TABLE IF EXISTS `qw_receivedmsgs`;
CREATE TABLE `qw_receivedmsgs` (
  `msgid` int(11) NOT NULL DEFAULT '0',
  `flag` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `msgdeal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信';

#
# Data for table "qw_receivedmsgs"
#

/*!40000 ALTER TABLE `qw_receivedmsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_receivedmsgs` ENABLE KEYS */;

#
# Structure for table "qw_recivedqqmsgs"
#

DROP TABLE IF EXISTS `qw_recivedqqmsgs`;
CREATE TABLE `qw_recivedqqmsgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rs` varchar(4) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `qq` varchar(255) DEFAULT '0',
  `group` varchar(255) DEFAULT NULL,
  `msg` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='QQ消息';

#
# Data for table "qw_recivedqqmsgs"
#

/*!40000 ALTER TABLE `qw_recivedqqmsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_recivedqqmsgs` ENABLE KEYS */;

#
# Structure for table "qw_setting"
#

DROP TABLE IF EXISTS `qw_setting`;
CREATE TABLE `qw_setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(2555) NOT NULL DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`k`),
  KEY `k` (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_setting"
#

/*!40000 ALTER TABLE `qw_setting` DISABLE KEYS */;
INSERT INTO `qw_setting` VALUES ('ba','测试2',0,'测试'),('description','网站描述',0,''),('footer','2016©老黄牛之家',0,''),('keywords','关键词',0,''),('site','http://api.r34.cc/index.php/qwadmin',1,'网站网址'),('sitename','老黄牛通用查贸易系统',0,''),('test','测试',1,'测试变量'),('title','通用查询系统',0,''),('wx_followreply','\'欢迎您关注本微信平台！\'                         .',1,'微信关注自动回复');
/*!40000 ALTER TABLE `qw_setting` ENABLE KEYS */;

#
# Structure for table "qw_show"
#

DROP TABLE IF EXISTS `qw_show`;
CREATE TABLE `qw_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showtype` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `pic` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `toshow` varchar(1) DEFAULT '否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_show"
#

/*!40000 ALTER TABLE `qw_show` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_show` ENABLE KEYS */;

#
# Structure for table "qw_task"
#

DROP TABLE IF EXISTS `qw_task`;
CREATE TABLE `qw_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_run_time` int(10) unsigned DEFAULT NULL,
  `task_function` varchar(255) DEFAULT NULL,
  `task_paras` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "qw_task"
#

/*!40000 ALTER TABLE `qw_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_task` ENABLE KEYS */;

#
# Structure for table "qw_unidata"
#

DROP TABLE IF EXISTS `qw_unidata`;
CREATE TABLE `qw_unidata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sheetname` varchar(255) DEFAULT NULL,
  `ord` float DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `data1` varchar(255) DEFAULT NULL,
  `data2` varchar(255) DEFAULT NULL,
  `custom1` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `d1` text,
  `d2` text,
  `d3` text,
  `d4` text,
  `d5` text,
  `d6` text,
  `d7` text,
  `d8` text,
  `d9` text,
  `d10` text,
  `d11` text,
  `d12` text,
  `d13` text,
  `d14` text,
  `d15` text,
  `d16` text,
  `d17` text,
  `d18` text,
  `d19` text,
  `d20` text,
  `d21` text,
  `d22` text,
  `d23` text,
  `d24` text,
  `d25` text,
  `d26` text,
  `d27` text,
  `d28` text,
  `d29` text,
  `d30` text,
  `d31` text,
  `d32` text,
  `d33` text,
  `d34` text,
  `d35` text,
  `d36` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "qw_unidata"
#

/*!40000 ALTER TABLE `qw_unidata` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_unidata` ENABLE KEYS */;

#
# Structure for table "qw_unipub"
#

DROP TABLE IF EXISTS `qw_unipub`;
CREATE TABLE `qw_unipub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sheetname` varchar(255) DEFAULT NULL,
  `ord` float DEFAULT NULL,
  `wrpw` varchar(255) DEFAULT NULL,
  `rpw` varchar(255) DEFAULT '123',
  `name` varchar(15) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `custom1` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `d1` text,
  `d2` text,
  `d3` text,
  `d4` text,
  `d5` text,
  `d6` text,
  `d7` text,
  `d8` text,
  `d9` text,
  `d10` text,
  `d11` text,
  `d12` text,
  `d13` text,
  `d14` text,
  `d15` text,
  `d16` text,
  `d17` text,
  `d18` text,
  `d19` text,
  `d20` text,
  `d21` text,
  `d22` text,
  `d23` text,
  `d24` text,
  `d25` text,
  `d26` text,
  `d27` text,
  `d28` text,
  `d29` text,
  `d30` text,
  `d31` text,
  `d32` text,
  `d33` text,
  `d34` text,
  `d35` text,
  `d36` text,
  `d37` text,
  `d38` text,
  `d39` text,
  `d40` text,
  `d41` text,
  `d42` text,
  `d43` text,
  `d44` text,
  `d45` text,
  `d46` text,
  `d47` text,
  `d48` text,
  `d49` text,
  `d50` text,
  `data1` varchar(255) DEFAULT NULL,
  `data2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "qw_unipub"
#

/*!40000 ALTER TABLE `qw_unipub` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_unipub` ENABLE KEYS */;

#
# Structure for table "qw_unisecret"
#

DROP TABLE IF EXISTS `qw_unisecret`;
CREATE TABLE `qw_unisecret` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sheetname` varchar(255) DEFAULT 'sheetname',
  `ord` int(11) DEFAULT NULL,
  `wrpw` varchar(255) DEFAULT 'admin888',
  `rpw` varchar(255) DEFAULT 'admin',
  `name` varchar(15) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `d1` text,
  `d2` text,
  `d3` text,
  `d4` text,
  `d5` text,
  `d6` text,
  `d7` text,
  `d8` text,
  `d9` text,
  `d10` text,
  `d11` text,
  `d12` text,
  `d13` text,
  `d14` text,
  `d15` text,
  `d16` text,
  `d17` text,
  `d18` text,
  `d19` text,
  `d20` text,
  `d21` text,
  `d22` text,
  `d23` text,
  `d24` text,
  `d25` text,
  `d26` text,
  `d27` text,
  `d28` text,
  `d29` text,
  `d30` text,
  `d31` text,
  `d32` text,
  `d33` text,
  `d34` text,
  `d35` text,
  `d36` text,
  `d37` text,
  `d38` text,
  `d39` text,
  `d40` text,
  `d41` text,
  `d42` text,
  `d43` text,
  `d44` text,
  `d45` text,
  `d46` text,
  `d47` text,
  `d48` text,
  `d49` text,
  `d50` text,
  `data1` varchar(255) DEFAULT NULL,
  `data2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=634 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "qw_unisecret"
#

/*!40000 ALTER TABLE `qw_unisecret` DISABLE KEYS */;
INSERT INTO `qw_unisecret` VALUES (626,'学生信息测试',NULL,'admin888','admin','姓名','学号','{\"\\u67e5\\u8be2\\u7f51\\u5740\":\"http:\\/\\/192.168.7.61\",\"\\u514d\\u5bc6\\u7801\\u67e5\\u8be2\":\"http:\\/\\/192.168.7.61\\/index.php\\/Qwadmin\\/Rwxy\\/uniquerydata\\/rpw\\/admin.html\",\"replaceadd\":\"\\u662f\",\"classkey\":\"d5\"}',NULL,'序号','姓名','学号','性别','行政班','学院','学校',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(627,'学生信息测试',1,'admin888','admin','王进12','1426089308','{\"\\u67e5\\u8be2\\u7f51\\u5740\":\"http:\\/\\/192.168.7.61\",\"\\u514d\\u5bc6\\u7801\\u67e5\\u8be2\":\"http:\\/\\/192.168.7.61\\/index.php\\/Qwadmin\\/Rwxy\\/uniquerydata\\/rpw\\/admin.html\",\"replaceadd\":\"\\u662f\",\"classkey\":\"d5\"}',NULL,'1','王进12','1426089308','男','14中文教育1','人文学院','台州学院',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(628,'学生信息测试',2,'admin888','admin','王进9','1426089308','{\"\\u67e5\\u8be2\\u7f51\\u5740\":\"http:\\/\\/192.168.7.61\",\"\\u514d\\u5bc6\\u7801\\u67e5\\u8be2\":\"http:\\/\\/192.168.7.61\\/index.php\\/Qwadmin\\/Rwxy\\/uniquerydata\\/rpw\\/admin.html\",\"replaceadd\":\"\\u662f\",\"classkey\":\"d5\"}',NULL,'2','王进9','1426089308','男','14中文教育1','人文学院','台州学院',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(629,'学生信息测试',3,'admin888','admin','邵楠某3','1426011205','{\"\\u67e5\\u8be2\\u7f51\\u5740\":\"http:\\/\\/192.168.7.61\",\"\\u514d\\u5bc6\\u7801\\u67e5\\u8be2\":\"http:\\/\\/192.168.7.61\\/index.php\\/Qwadmin\\/Rwxy\\/uniquerydata\\/rpw\\/admin.html\",\"replaceadd\":\"\\u662f\",\"classkey\":\"d5\"}',NULL,'3','邵楠某3','1426011205','女','14中文教育1','人文学院','台州学院',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(630,'学生信息测试',4,'admin888','admin','邵楠4','1426011205','{\"\\u67e5\\u8be2\\u7f51\\u5740\":\"http:\\/\\/192.168.7.61\",\"\\u514d\\u5bc6\\u7801\\u67e5\\u8be2\":\"http:\\/\\/192.168.7.61\\/index.php\\/Qwadmin\\/Rwxy\\/uniquerydata\\/rpw\\/admin.html\",\"replaceadd\":\"\\u662f\",\"classkey\":\"d5\"}',NULL,'4','邵楠4','1426011205','女','14中文教育1','人文学院','台州学院',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(631,'学生信息测试',5,'admin888','admin','王霞5','1526010306','{\"\\u67e5\\u8be2\\u7f51\\u5740\":\"http:\\/\\/192.168.7.61\",\"\\u514d\\u5bc6\\u7801\\u67e5\\u8be2\":\"http:\\/\\/192.168.7.61\\/index.php\\/Qwadmin\\/Rwxy\\/uniquerydata\\/rpw\\/admin.html\",\"replaceadd\":\"\\u662f\",\"classkey\":\"d5\"}',NULL,'5','王霞5','1526010306','女','14中文教育2','人文学院','台州学院',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(632,'学生信息测试',6,'admin888','admin','王霞6','1526010306','{\"\\u67e5\\u8be2\\u7f51\\u5740\":\"http:\\/\\/192.168.7.61\",\"\\u514d\\u5bc6\\u7801\\u67e5\\u8be2\":\"http:\\/\\/192.168.7.61\\/index.php\\/Qwadmin\\/Rwxy\\/uniquerydata\\/rpw\\/admin.html\",\"replaceadd\":\"\\u662f\",\"classkey\":\"d5\"}',NULL,'6','王霞6','1526010306','女','14中文教育2','人文学院','台州学院',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(633,'学生信息测试',7,'admin888','admin','翁露7','1426011177','{\"\\u67e5\\u8be2\\u7f51\\u5740\":\"http:\\/\\/192.168.7.61\",\"\\u514d\\u5bc6\\u7801\\u67e5\\u8be2\":\"http:\\/\\/192.168.7.61\\/index.php\\/Qwadmin\\/Rwxy\\/uniquerydata\\/rpw\\/admin.html\",\"replaceadd\":\"\\u662f\",\"classkey\":\"d5\"}',NULL,'7','翁露7','1426011177','女','14中文教育2','人文学院','台州学院',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qw_unisecret` ENABLE KEYS */;
