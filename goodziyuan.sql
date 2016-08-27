/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : newweizan

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-08-23 01:53:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ims_account`
-- ----------------------------
DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `isconnect` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account
-- ----------------------------
INSERT INTO `ims_account` VALUES ('1', '1', 'uRr8qvQV', '1', '0');

-- ----------------------------
-- Table structure for `ims_account_wechats`
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `access_token` varchar(1000) NOT NULL DEFAULT '',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL DEFAULT '1',
  `jsapi_ticket` varchar(1000) NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `card_ticket` varchar(1000) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wechats
-- ----------------------------
INSERT INTO `ims_account_wechats` VALUES ('1', '1', 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', '', '0', 'weizan', '', '', '', '', '', '', '', '', '0', '', '', '1', '', '', '');

-- ----------------------------
-- Table structure for `ims_account_yixin`
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_yixin`;
CREATE TABLE `ims_account_yixin` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `access_token` varchar(1000) NOT NULL DEFAULT '',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_yixin
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity`;
CREATE TABLE `ims_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ac_pic` varchar(100) NOT NULL,
  `begintime` int(11) unsigned DEFAULT NULL,
  `endtime` int(11) unsigned DEFAULT NULL,
  `createtime` int(11) unsigned DEFAULT NULL,
  `countlimit` int(5) NOT NULL,
  `countvirtual` int(5) DEFAULT '0',
  `visitsCount` int(11) DEFAULT '0',
  `ppt1` varchar(100) DEFAULT NULL,
  `ppt2` varchar(100) DEFAULT NULL,
  `ppt3` varchar(100) DEFAULT NULL,
  `acdes` varchar(500) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL,
  `location_p` varchar(100) NOT NULL COMMENT '所在地区_省',
  `location_c` varchar(100) NOT NULL COMMENT '所在地区_市',
  `location_a` varchar(100) NOT NULL COMMENT '所在地区_区',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000',
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `zb` varchar(50) DEFAULT NULL,
  `cb` varchar(50) DEFAULT NULL,
  `xb` varchar(50) DEFAULT NULL,
  `cjdx` varchar(50) DEFAULT NULL,
  `hoteldesc` varchar(500) DEFAULT NULL,
  `costdes` varchar(500) DEFAULT NULL,
  `isrepeat` int(1) DEFAULT '0',
  `istip` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_coupon`;
CREATE TABLE `ims_activity_coupon` (
  `couponid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `couponsn` varchar(50) NOT NULL,
  `description` text,
  `discount` decimal(10,2) NOT NULL,
  `condition` decimal(10,2) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '0',
  `dosage` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(20) NOT NULL,
  `use_module` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`couponid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_coupon_allocation`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_coupon_allocation`;
CREATE TABLE `ims_activity_coupon_allocation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`couponid`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_coupon_allocation
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_coupon_modules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_coupon_modules`;
CREATE TABLE `ims_activity_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_coupon_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_coupon_password`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_coupon_password`;
CREATE TABLE `ims_activity_coupon_password` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_coupon_password
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_coupon_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_coupon_record`;
CREATE TABLE `ims_activity_coupon_record` (
  `recid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `grantmodule` varchar(50) NOT NULL DEFAULT '',
  `granttime` int(10) unsigned NOT NULL DEFAULT '0',
  `usemodule` varchar(50) NOT NULL DEFAULT '',
  `usetime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` varchar(300) NOT NULL DEFAULT '',
  `couponid` int(10) unsigned NOT NULL,
  `operator` varchar(30) NOT NULL,
  PRIMARY KEY (`recid`),
  KEY `couponid` (`uid`,`grantmodule`,`usemodule`,`status`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_day`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_day`;
CREATE TABLE `ims_activity_day` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned DEFAULT NULL,
  `daytime` int(11) unsigned DEFAULT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `ddes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_day
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_exchange`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange`;
CREATE TABLE `ims_activity_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `couponid` int(10) NOT NULL DEFAULT '0',
  `uniacid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `extra` varchar(3000) NOT NULL DEFAULT '',
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `pretotal` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_exchange_trades`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange_trades`;
CREATE TABLE `ims_activity_exchange_trades` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`,`uid`,`exid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_exchange_trades
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_exchange_trades_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange_trades_shipping`;
CREATE TABLE `ims_activity_exchange_trades_shipping` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_exchange_trades_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_guest`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_guest`;
CREATE TABLE `ims_activity_guest` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned DEFAULT NULL,
  `gname` varchar(20) NOT NULL,
  `jobtitle` varchar(20) NOT NULL,
  `gdesc` varchar(500) NOT NULL,
  `sig` varchar(20) NOT NULL,
  `headimage` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='嘉宾';

-- ----------------------------
-- Records of ims_activity_guest
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_mail`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_mail`;
CREATE TABLE `ims_activity_mail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `weid` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_mail
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_modules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_modules`;
CREATE TABLE `ims_activity_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `available` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `uniacid` (`uniacid`),
  KEY `module` (`module`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_modules_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_modules_record`;
CREATE TABLE `ims_activity_modules_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `num` tinyint(3) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_modules_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_note`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_note`;
CREATE TABLE `ims_activity_note` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `ndesc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_note
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_reply`;
CREATE TABLE `ims_activity_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL,
  `new_pic` varchar(200) NOT NULL,
  `news_content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_user`;
CREATE TABLE `ims_activity_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned DEFAULT NULL,
  `createtime` int(11) unsigned DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `jobtitle` varchar(20) NOT NULL,
  `acname` varchar(50) DEFAULT NULL,
  `openid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_album`
-- ----------------------------
DROP TABLE IF EXISTS `ims_album`;
CREATE TABLE `ims_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(1000) NOT NULL DEFAULT '',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `pcate` int(11) unsigned NOT NULL DEFAULT '0',
  `ccate` int(11) unsigned NOT NULL DEFAULT '0',
  `isview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `banner` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_album
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_album_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_album_category`;
CREATE TABLE `ims_album_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `thumb` varchar(255) NOT NULL COMMENT '分类图片',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `description` varchar(500) NOT NULL COMMENT '分类介绍',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_album_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_album_photo`
-- ----------------------------
DROP TABLE IF EXISTS `ims_album_photo`;
CREATE TABLE `ims_album_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `albumid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `ispreview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_albumid` (`albumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_album_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_album_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_album_reply`;
CREATE TABLE `ims_album_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `albumid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_album_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_house`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_house`;
CREATE TABLE `ims_amouse_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `title` varchar(25) NOT NULL COMMENT '标题',
  `price` varchar(100) NOT NULL COMMENT '租金总价',
  `square_price` varchar(100) NOT NULL COMMENT '每平方价格',
  `area` varchar(100) NOT NULL COMMENT '面积',
  `house_type` varchar(100) NOT NULL COMMENT '户型',
  `floor` varchar(100) NOT NULL COMMENT '楼层',
  `orientation` varchar(100) NOT NULL COMMENT '朝向',
  `type` varchar(2) NOT NULL COMMENT '0：出租；1：求租；2：出售/3：求购',
  `status` varchar(2) NOT NULL COMMENT '是否显示/审核',
  `recommed` int(1) NOT NULL COMMENT '推荐 0未推荐 1推荐',
  `contacts` varchar(100) NOT NULL COMMENT '联系人',
  `phone` varchar(13) NOT NULL COMMENT '联系电话',
  `introduction` text NOT NULL COMMENT '详细描述',
  `openid` varchar(25) NOT NULL COMMENT '微信OPENID',
  `thumb1` varchar(1000) NOT NULL DEFAULT '',
  `thumb2` varchar(1000) DEFAULT '',
  `thumb3` varchar(1000) DEFAULT '',
  `thumb4` varchar(1000) DEFAULT '',
  `place` varchar(1000) NOT NULL DEFAULT '',
  `lat` varchar(1000) NOT NULL DEFAULT '0.0000000000',
  `lng` varchar(1000) NOT NULL DEFAULT '0.0000000000',
  `location_p` varchar(100) NOT NULL DEFAULT '' COMMENT '省',
  `location_c` varchar(100) NOT NULL DEFAULT '' COMMENT '市',
  `location_a` varchar(100) NOT NULL DEFAULT '' COMMENT '区',
  `createtime` int(10) NOT NULL,
  `jjrmobile` varchar(13) DEFAULT '0',
  `broker` varchar(200) DEFAULT '',
  `isshow` int(10) DEFAULT '1' COMMENT '是否只显示经纪人信息',
  `defcity` varchar(1000) DEFAULT '中国',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='租房出售';

-- ----------------------------
-- Records of ims_amouse_house
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_house_slide`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_house_slide`;
CREATE TABLE `ims_amouse_house_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  `slide` varchar(200) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_house_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_newflats`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_newflats`;
CREATE TABLE `ims_amouse_newflats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `thumb` varchar(255) NOT NULL COMMENT '图片',
  `price` varchar(100) NOT NULL COMMENT '价格',
  `type` varchar(200) NOT NULL COMMENT '建筑类型',
  `years` varchar(100) NOT NULL COMMENT '产权年限',
  `wytype` varchar(100) NOT NULL COMMENT '物业类别',
  `cqtype` varchar(100) NOT NULL COMMENT '产权类型',
  `jzarea` varchar(100) NOT NULL COMMENT '建筑面积',
  `ratio` varchar(100) NOT NULL COMMENT '容积率',
  `floor_area` varchar(100) NOT NULL COMMENT '房屋面积',
  `afforestation` varchar(100) NOT NULL COMMENT '绿化率',
  `total` varchar(100) NOT NULL COMMENT '总户型',
  `door_area` varchar(100) NOT NULL COMMENT '户型面积',
  `road_transport` varchar(100) NOT NULL COMMENT '道路交通',
  `investors` varchar(100) NOT NULL COMMENT '投资商',
  `developers` varchar(100) NOT NULL COMMENT '开发商',
  `property_compay` varchar(100) NOT NULL COMMENT '物业公司',
  `propertypay` varchar(100) NOT NULL COMMENT '物业费',
  `features` varchar(100) NOT NULL COMMENT '楼盘特色',
  `sales_addres` varchar(100) NOT NULL COMMENT '售楼地址',
  `checkin_time` varchar(100) NOT NULL COMMENT '入住时间',
  `sales_status` varchar(100) NOT NULL COMMENT '销售状况',
  `average_price` varchar(100) NOT NULL COMMENT '均价',
  `discounted_costs` varchar(100) NOT NULL COMMENT '折扣价格',
  `payment` varchar(100) NOT NULL COMMENT '付款方式',
  `business` varchar(100) NOT NULL COMMENT '商业配套',
  `banks` varchar(100) NOT NULL COMMENT '银行',
  `trading_area` varchar(100) NOT NULL COMMENT '商圈',
  `park` varchar(100) NOT NULL COMMENT '公园',
  `hotel` varchar(100) NOT NULL COMMENT '酒店',
  `supermarket` varchar(100) NOT NULL COMMENT '超市',
  `humanities` varchar(100) NOT NULL COMMENT '人文自然景观',
  `supporting` varchar(100) NOT NULL COMMENT '社区内配套',
  `internal` varchar(100) NOT NULL COMMENT '内部配套',
  `parking_number` varchar(100) NOT NULL COMMENT '车位数',
  `base` varchar(100) NOT NULL COMMENT '基本参数',
  `equally` varchar(100) NOT NULL COMMENT '公摊系数',
  `surrounding` varchar(100) NOT NULL COMMENT '周边商业',
  `landscape` varchar(100) NOT NULL COMMENT '周边景观',
  `hospitals` varchar(100) NOT NULL COMMENT '周边医院',
  `school` varchar(100) NOT NULL COMMENT '周边学校',
  `traffic` varchar(100) NOT NULL COMMENT '交通',
  `construction` varchar(100) NOT NULL COMMENT '建筑施工单位',
  `design` varchar(100) NOT NULL COMMENT '规划设计单位',
  `salecom` varchar(100) NOT NULL COMMENT '销售公司',
  `address` varchar(255) NOT NULL COMMENT '销售公司所在位置图片',
  `introduction` text NOT NULL COMMENT '详细描述',
  `readcount` int(11) DEFAULT '0' COMMENT '阅读量',
  `openid` varchar(25) NOT NULL COMMENT '微信OPENID',
  `like` int(11) DEFAULT '0' COMMENT '点赞',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_newflats
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_sysset`;
CREATE TABLE `ims_amouse_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `jjrmobile` varchar(13) NOT NULL COMMENT '手机',
  `broker` varchar(200) NOT NULL COMMENT '经纪人',
  `guanzhuUrl` varchar(255) DEFAULT '1' COMMENT '引导关注',
  `copyright` varchar(255) DEFAULT '' COMMENT '版权',
  `newflat_images` varchar(255) DEFAULT '' COMMENT '楼盘图片设置',
  `isoauth` int(10) DEFAULT '1' COMMENT '是否开启高级权限',
  `isshow` int(10) DEFAULT '1' COMMENT '是否只显示经纪人信息',
  `cnzz` varchar(255) DEFAULT '' COMMENT '统计',
  `appid` varchar(255) DEFAULT '',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  `defcity` varchar(1000) DEFAULT '中国',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_bg`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_bg`;
CREATE TABLE `ims_amouse_weicard_bg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `displayorder` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_bg
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_bjyy`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_bjyy`;
CREATE TABLE `ims_amouse_weicard_bjyy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `musicid` int(10) NOT NULL,
  `from_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_bjyy
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_card`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_card`;
CREATE TABLE `ims_amouse_weicard_card` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `from_user` varchar(255) NOT NULL,
  `mid` int(10) NOT NULL COMMENT '会员表id',
  `mobile` tinyint(1) DEFAULT '0' COMMENT 'type=1;0代表全部可见，1代表互相收藏可见，2代表自己可见',
  `email` tinyint(1) DEFAULT '0' COMMENT 'type=2;0代表全部可见，1代表互相收藏可见，2代表自己可见',
  `weixin` tinyint(1) DEFAULT '0' COMMENT 'type=3;0代表全部可见，1代表互相收藏可见，2代表自己可见',
  `address` tinyint(1) DEFAULT '0' COMMENT 'type=4;0代表全部可见，1代表互相收藏可见，2代表自己可见',
  `bgimg` varchar(255) DEFAULT NULL,
  `shopName` varchar(255) DEFAULT NULL,
  `templateFile` varchar(300) DEFAULT 'qianx_index',
  `shopIcon` varchar(255) DEFAULT NULL,
  `shopUrl` varchar(255) DEFAULT NULL,
  `zan` int(10) DEFAULT '0',
  `view` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_companyinfo`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_companyinfo`;
CREATE TABLE `ims_amouse_weicard_companyinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `from_user` varchar(255) NOT NULL,
  `img` text,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_companyinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_industry`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_industry`;
CREATE TABLE `ims_amouse_weicard_industry` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `displayorder` int(10) DEFAULT NULL,
  `weid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_industry
-- ----------------------------
INSERT INTO `ims_amouse_weicard_industry` VALUES ('1', 'IT·互联网·游戏', '1', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('2', '金融业（投资·保险·证券·基金）', '2', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('3', '医疗·保健·美容', '4', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('4', '教育·培训·科研·院校', '5', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('5', '通信行业', '6', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('6', '房地产开发·建筑与工程', '7', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('7', '广告·会展·公关', '8', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('8', '电子·微电子', '9', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('9', '物业管理·商业中心', '10', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('10', '家居·室内设计·装潢', '11', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('11', '中介服务', '12', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('12', '专业服务（咨询·财会·法律等）', '13', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('13', '检验·检测·认证', '14', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('14', '贸易·进出口', '15', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('15', '媒体·出版·文化传播', '16', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('16', '印刷·包装·造纸', '17', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('17', '快速消费品', '18', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('18', '耐用消费品', '19', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('19', '玩具·工艺品·收藏品·奢侈品', '20', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('20', '家电业', '21', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('21', '办公设备·用品', '22', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('22', '批发·零售', '23', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('23', '交通·运输·物流', '24', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('24', '娱乐·运动·休闲', '25', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('25', '制药·生物工程', '26', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('26', '医疗设备·器械', '27', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('27', '环保行业', '28', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('28', '石油·化工·矿产·采掘·冶炼·原材料', '29', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('29', '能源·水利', '30', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('30', '仪器·仪表·工业自动化·电气', '31', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('31', '汽车·摩托车', '32', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('32', '机械制造·机电·重工', '33', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('33', '原材料及加工', '34', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('34', '农·林·牧·渔', '35', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('35', '航空·航天研究与制造', '36', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('36', '船舶制造', '37', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('37', '政府·非营利机构', '38', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('38', '酒店/旅游', '39', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('39', '餐饮/娱乐', '40', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('40', '直销行业', '41', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('41', '美容美发', '42', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('42', '教育·培训·科研·院校·大学', '43', '0');
INSERT INTO `ims_amouse_weicard_industry` VALUES ('45', 'DNF', '44', '0');

-- ----------------------------
-- Table structure for `ims_amouse_weicard_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_member`;
CREATE TABLE `ims_amouse_weicard_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `headimg` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `myattention` varchar(255) DEFAULT NULL,
  `myfocus` varchar(255) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `companyAddress` varchar(255) DEFAULT NULL,
  `lat` decimal(18,10) DEFAULT '0.0000000000',
  `lng` decimal(18,10) DEFAULT '0.0000000000',
  `status` tinyint(1) DEFAULT NULL COMMENT '0表示已审核，1表示未审核，2表示禁用',
  `qianming` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_music`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_music`;
CREATE TABLE `ims_amouse_weicard_music` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) DEFAULT NULL,
  `musicName` varchar(255) DEFAULT NULL,
  `musicSinger` varchar(255) DEFAULT NULL,
  `musicImg` varchar(255) DEFAULT NULL,
  `musicUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_music
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_mycollect`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_mycollect`;
CREATE TABLE `ims_amouse_weicard_mycollect` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `from_user` varchar(255) NOT NULL,
  `collect_mid` int(10) NOT NULL,
  `collect_cid` int(10) NOT NULL,
  `collect_from_user` varchar(255) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_mycollect
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_photo`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_photo`;
CREATE TABLE `ims_amouse_weicard_photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL COMMENT '会员表id',
  `cid` int(10) NOT NULL COMMENT '名片表id',
  `from_user` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '栏目名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '栏目图标',
  `thumb` text COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_presence`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_presence`;
CREATE TABLE `ims_amouse_weicard_presence` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `from_user` varchar(255) DEFAULT NULL,
  `img` text,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_presence
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_reply`;
CREATE TABLE `ims_amouse_weicard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL COMMENT '活动标题',
  `description` longtext NOT NULL COMMENT '活动介绍',
  `thumb` varchar(200) DEFAULT '',
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_sysset`;
CREATE TABLE `ims_amouse_weicard_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `guanzhuUrl` varchar(255) DEFAULT '1' COMMENT '引导关注',
  `copyright` varchar(255) DEFAULT '' COMMENT '版权',
  `cnzz` varchar(800) DEFAULT '' COMMENT '第三方统计',
  `appid` varchar(255) DEFAULT '',
  `isoauth` int(2) unsigned NOT NULL DEFAULT '1',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_amouse_weicard_zan`
-- ----------------------------
DROP TABLE IF EXISTS `ims_amouse_weicard_zan`;
CREATE TABLE `ims_amouse_weicard_zan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `from_user` varchar(255) NOT NULL,
  `zan_mid` int(10) NOT NULL,
  `zan_cid` int(10) NOT NULL,
  `zan_from_user` varchar(255) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_amouse_weicard_zan
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_article_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_reply`;
CREATE TABLE `ims_article_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `isfill` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_auction_adv`
-- ----------------------------
DROP TABLE IF EXISTS `ims_auction_adv`;
CREATE TABLE `ims_auction_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_auction_adv
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_auction_goodslist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_auction_goodslist`;
CREATE TABLE `ims_auction_goodslist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `sh_price` int(10) DEFAULT '0' COMMENT '起拍金额',
  `add_price` int(10) DEFAULT '0' COMMENT '默认加价金额',
  `st_price` int(10) DEFAULT '0' COMMENT '成交金额',
  `bond` int(10) DEFAULT '0' COMMENT '保证金',
  `picarr` text COMMENT '商品图片',
  `content` mediumtext COMMENT '商品详情',
  `start_time` int(10) unsigned DEFAULT NULL COMMENT '开始时间',
  `end_time` int(10) unsigned DEFAULT NULL COMMENT '结束时间',
  `createtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `pos` tinyint(4) unsigned DEFAULT '0' COMMENT '出价次数',
  `status` int(11) NOT NULL COMMENT '1:已付余款',
  `g_status` int(11) NOT NULL COMMENT '2:上架；1：下架',
  `q_uid` varchar(10) DEFAULT NULL COMMENT '成交人昵称',
  `q_user` varchar(50) DEFAULT NULL COMMENT '成交人from_user',
  `send_state` int(4) unsigned NOT NULL COMMENT '1为已发货',
  `send` int(4) unsigned NOT NULL COMMENT '是否需要快递1为需要',
  `express` varchar(20) DEFAULT NULL COMMENT '快递公司',
  `expressn` char(20) DEFAULT NULL COMMENT '快递单',
  `send_time` char(20) DEFAULT NULL COMMENT '发货时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `send_state` (`send_state`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_auction_goodslist
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_auction_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_auction_member`;
CREATE TABLE `ims_auction_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号id',
  `balance` int(10) unsigned NOT NULL COMMENT '会员余额',
  `from_user` varchar(50) NOT NULL COMMENT '微信会员openID',
  `realname` varchar(10) NOT NULL COMMENT '真实姓名',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `avatar` varchar(255) NOT NULL COMMENT '头像',
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `address` varchar(255) NOT NULL COMMENT '邮寄地址',
  `bankcard` varchar(20) NOT NULL,
  `bankname` varchar(10) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `aliname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_auction_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_auction_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `ims_auction_recharge`;
CREATE TABLE `ims_auction_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `from_user` varchar(50) NOT NULL COMMENT '微信会员openID',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `status` smallint(4) NOT NULL DEFAULT '0' COMMENT '0未支付,1为已付款',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额支付,2为支付宝,3为微信支付,4为定价返还',
  `transid` varchar(30) NOT NULL COMMENT '微信订单号',
  `price` int(10) unsigned NOT NULL COMMENT '充值金额',
  `createtime` int(10) unsigned NOT NULL COMMENT '充值时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `from_user` (`from_user`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_auction_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_auction_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_auction_record`;
CREATE TABLE `ims_auction_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `from_user` varchar(50) NOT NULL COMMENT '微信会员openID',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `sid` int(10) unsigned NOT NULL COMMENT '商品编号',
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `price` int(10) unsigned NOT NULL COMMENT '交易价格',
  `bond` int(10) unsigned NOT NULL COMMENT '保证金',
  `createtime` int(10) unsigned NOT NULL COMMENT '购买时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_auction_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_auction_withdrawals`
-- ----------------------------
DROP TABLE IF EXISTS `ims_auction_withdrawals`;
CREATE TABLE `ims_auction_withdrawals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `status` smallint(4) NOT NULL COMMENT '0为提现中,1为提现成功，2提现失败',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为银行卡,2为支付宝',
  `price` int(10) unsigned NOT NULL COMMENT '提现金额',
  `createtime` int(10) unsigned NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_auction_withdrawals
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_basic_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_basic_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_bbb_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_bbb_reply`;
CREATE TABLE `ims_bbb_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `description` varchar(500) NOT NULL COMMENT '活动描述',
  `rule` text NOT NULL COMMENT '活动描述',
  `periodlottery` smallint(10) unsigned NOT NULL DEFAULT '1' COMMENT '0为无周期',
  `maxlottery` tinyint(3) unsigned NOT NULL COMMENT '最大抽奖数',
  `headpic` varchar(100) NOT NULL COMMENT '默认提示信息',
  `headurl` varchar(255) NOT NULL DEFAULT '',
  `panzi` varchar(100) NOT NULL DEFAULT '',
  `guzhuurl` varchar(255) NOT NULL DEFAULT '',
  `prace_times` int(10) NOT NULL DEFAULT '100',
  `title` varchar(100) NOT NULL DEFAULT '',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '1600000000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_bbb_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_bbb_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_bbb_user`;
CREATE TABLE `ims_bbb_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL DEFAULT '0',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `count` int(10) NOT NULL DEFAULT '0',
  `points` int(10) NOT NULL DEFAULT '0',
  `friendcount` int(10) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_bbb_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_bbb_winner`
-- ----------------------------
DROP TABLE IF EXISTS `ims_bbb_winner`;
CREATE TABLE `ims_bbb_winner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `point` int(10) unsigned NOT NULL COMMENT '点数',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未领奖，1不需要领奖，2已领奖',
  `createtime` int(10) unsigned NOT NULL COMMENT '获奖日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_bbb_winner
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_bigwheel_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_bigwheel_award`;
CREATE TABLE `ims_bigwheel_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '0' COMMENT '用户ID',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `prizetype` varchar(10) DEFAULT '' COMMENT '类型',
  `award_sn` varchar(50) DEFAULT '' COMMENT 'SN',
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_bigwheel_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_bigwheel_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_bigwheel_fans`;
CREATE TABLE `ims_bigwheel_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '' COMMENT '用户ID',
  `tel` varchar(20) DEFAULT '' COMMENT '登记信息(手机等)',
  `todaynum` int(11) DEFAULT '0',
  `totalnum` int(11) DEFAULT '0',
  `awardnum` int(11) DEFAULT '0',
  `last_time` int(10) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_bigwheel_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_bigwheel_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_bigwheel_reply`;
CREATE TABLE `ims_bigwheel_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `weid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `content` varchar(200) DEFAULT '',
  `start_picurl` varchar(200) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `ticket_information` varchar(200) DEFAULT '',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `repeat_lottery_reply` varchar(50) DEFAULT '',
  `end_theme` varchar(50) DEFAULT '',
  `end_instruction` varchar(200) DEFAULT '',
  `end_picurl` varchar(200) DEFAULT '',
  `c_type_one` varchar(20) DEFAULT '',
  `c_name_one` varchar(50) DEFAULT '',
  `c_num_one` int(11) DEFAULT '0',
  `c_draw_one` int(11) DEFAULT '0',
  `c_rate_one` double DEFAULT '0',
  `c_type_two` varchar(20) DEFAULT '',
  `c_name_two` varchar(50) DEFAULT '',
  `c_num_two` int(11) DEFAULT '0',
  `c_draw_two` int(11) DEFAULT '0',
  `c_rate_two` double DEFAULT '0',
  `c_type_three` varchar(20) DEFAULT '',
  `c_name_three` varchar(50) DEFAULT '',
  `c_num_three` int(11) DEFAULT '0',
  `c_draw_three` int(11) DEFAULT '0',
  `c_rate_three` double DEFAULT '0',
  `c_type_four` varchar(20) DEFAULT '',
  `c_name_four` varchar(50) DEFAULT '',
  `c_num_four` int(11) DEFAULT '0',
  `c_draw_four` int(11) DEFAULT '0',
  `c_rate_four` double DEFAULT '0',
  `c_type_five` varchar(20) DEFAULT '',
  `c_name_five` varchar(50) DEFAULT '',
  `c_num_five` int(11) DEFAULT '0',
  `c_draw_five` int(11) DEFAULT '0',
  `c_rate_five` double DEFAULT '0',
  `c_type_six` varchar(20) DEFAULT '',
  `c_name_six` varchar(50) DEFAULT '',
  `c_num_six` int(11) DEFAULT '0',
  `c_draw_six` int(10) DEFAULT '0',
  `c_rate_six` double DEFAULT '0',
  `total_num` int(11) DEFAULT '0' COMMENT '总获奖人数(自动加)',
  `probability` double DEFAULT '0',
  `award_times` int(11) DEFAULT '0',
  `number_times` int(11) DEFAULT '0',
  `most_num_times` int(11) DEFAULT '0',
  `sn_code` tinyint(4) DEFAULT '0',
  `sn_rename` varchar(20) DEFAULT '',
  `tel_rename` varchar(20) DEFAULT '',
  `copyright` varchar(20) DEFAULT '',
  `show_num` tinyint(2) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0',
  `fansnum` int(11) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `share_txt` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_bigwheel_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_bmhospital_group`
-- ----------------------------
DROP TABLE IF EXISTS `ims_bmhospital_group`;
CREATE TABLE `ims_bmhospital_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `ser_window` varchar(30) NOT NULL,
  `department_id` int(11) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `ser_picurl` varchar(200) NOT NULL,
  `ser_info` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_bmhospital_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_bmhospital_slide`
-- ----------------------------
DROP TABLE IF EXISTS `ims_bmhospital_slide`;
CREATE TABLE `ims_bmhospital_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `hs_pic` text COMMENT '幻灯图片',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_bmhospital_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ims_brand`;
CREATE TABLE `ims_brand` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned DEFAULT NULL,
  `bname` varchar(50) NOT NULL,
  `intro` varchar(1000) NOT NULL,
  `intro2` varchar(1000) NOT NULL,
  `video_name` varchar(100) DEFAULT NULL,
  `video_url` varchar(100) DEFAULT NULL,
  `createtime` int(11) unsigned DEFAULT NULL,
  `pptname` varchar(100) DEFAULT NULL,
  `ppt1` varchar(100) DEFAULT NULL,
  `ppt2` varchar(100) DEFAULT NULL,
  `ppt3` varchar(100) DEFAULT NULL,
  `pic` varchar(100) NOT NULL,
  `visitsCount` int(11) DEFAULT '0',
  `btnName` varchar(20) DEFAULT NULL,
  `btnUrl` varchar(100) DEFAULT NULL,
  `btnName2` varchar(20) DEFAULT NULL,
  `btnUrl2` varchar(100) DEFAULT NULL,
  `btnName3` varchar(20) DEFAULT NULL,
  `btnUrl3` varchar(100) DEFAULT NULL,
  `showMsg` int(1) DEFAULT '0',
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_brand_image`
-- ----------------------------
DROP TABLE IF EXISTS `ims_brand_image`;
CREATE TABLE `ims_brand_image` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) unsigned DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_brand_image
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_brand_message`
-- ----------------------------
DROP TABLE IF EXISTS `ims_brand_message`;
CREATE TABLE `ims_brand_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createtime` int(11) unsigned DEFAULT NULL,
  `bid` int(11) unsigned DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_brand_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_brand_note`
-- ----------------------------
DROP TABLE IF EXISTS `ims_brand_note`;
CREATE TABLE `ims_brand_note` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) unsigned DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_brand_note
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_brand_product`
-- ----------------------------
DROP TABLE IF EXISTS `ims_brand_product`;
CREATE TABLE `ims_brand_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) unsigned DEFAULT NULL,
  `pname` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `intro` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_brand_product
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_brand_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_brand_reply`;
CREATE TABLE `ims_brand_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `bid` int(10) unsigned NOT NULL,
  `new_pic` varchar(200) NOT NULL,
  `news_content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_brand_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_business`
-- ----------------------------
DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `province` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `dist` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(500) NOT NULL DEFAULT '',
  `lng` varchar(10) NOT NULL DEFAULT '',
  `lat` varchar(10) NOT NULL DEFAULT '',
  `industry1` varchar(10) NOT NULL DEFAULT '',
  `industry2` varchar(10) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_business
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_cache`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cache
-- ----------------------------
INSERT INTO `ims_core_cache` VALUES ('setting', 'a:6:{s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:9:\"copyright\";a:17:{s:8:\"sitename\";s:24:\"微赞微信管理系统\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:20:\"powered by 012wz.com\";s:11:\"footerright\";s:0:\"\";s:5:\"flogo\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:10:\"114.060055\";s:3:\"lat\";s:9:\"22.529554\";}s:7:\"company\";s:36:\"深圳市零壹贰科技有限公司\";s:7:\"address\";s:34:\"深圳市福田区北方大厦1108\";s:6:\"person\";s:6:\"微赞\";s:5:\"phone\";s:11:\"15800008888\";s:2:\"qq\";s:9:\"800083075\";s:5:\"email\";s:0:\"\";s:8:\"keywords\";s:82:\"微赞,微信,微信公众平台,公众平台二次开发,公众平台开源软件\";s:11:\"description\";s:82:\"微赞,微信,微信公众平台,公众平台二次开发,公众平台开源软件\";s:12:\"showhomepage\";i:1;}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";a:2:{s:3:\"key\";s:5:\"35928\";s:5:\"token\";s:32:\"c0d5f666e3997745253b6222efadbed5\";}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}}');
INSERT INTO `ims_core_cache` VALUES ('menus:platform', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('menus:site', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('modules', 'a:123:{s:5:\"basic\";a:17:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:4:\"news\";a:17:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:5:\"music\";a:17:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:7:\"userapi\";a:17:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微赞系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"recharge\";a:17:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:5:\"chats\";a:17:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:5:\"voice\";a:17:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:6:\"custom\";a:17:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:6:\"images\";a:17:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:5:\"video\";a:17:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供视频回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:15:\"zombie_fighting\";a:17:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:15:\"zombie_fighting\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:12:\"一战到底\";s:7:\"version\";s:3:\"2.8\";s:7:\"ability\";s:12:\"一战到底\";s:11:\"description\";s:120:\"一战到底是一档形式新颖，趣味十足，在挑战中挖掘个性，又充满悬念的全新益智攻擂游戏\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"ykbl_robot\";a:17:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:10:\"ykbl_robot\";s:4:\"type\";s:8:\"customer\";s:5:\"title\";s:15:\"聊天机器人\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:21:\"调用图灵机器人\";s:11:\"description\";s:84:\"调用图灵机器人，能够在系统中锁定图灵机器人！方便用户操作\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"xhw_voice\";a:17:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:9:\"xhw_voice\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"好声音\";s:7:\"version\";s:1:\"1\";s:7:\"ability\";s:9:\"好声音\";s:11:\"description\";s:9:\"好声音\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:2:{i:0;s:5:\"voice\";i:1;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"xhw_picvote\";a:17:{s:3:\"mid\";s:2:\"14\";s:4:\"name\";s:11:\"xhw_picvote\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"图片投票\";s:7:\"version\";s:3:\"1.8\";s:7:\"ability\";s:12:\"图片投票\";s:11:\"description\";s:12:\"图片投票\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:15:\"xfeng_community\";a:17:{s:3:\"mid\";s:2:\"15\";s:4:\"name\";s:15:\"xfeng_community\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微小区\";s:7:\"version\";s:3:\"4.8\";s:7:\"ability\";s:9:\"微小区\";s:11:\"description\";s:9:\"微小区\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:13:\"www.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:7:\"wl_heka\";a:17:{s:3:\"mid\";s:2:\"16\";s:4:\"name\";s:7:\"wl_heka\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"送贺卡\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:42:\"新年贺卡，生日贺卡，同窗贺卡\";s:11:\"description\";s:42:\"新年贺卡，生日贺卡，同窗贺卡\";s:6:\"author\";s:22:\"微赞 &amp; 012WZ.COM\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:14:\"weiyun_shuqian\";a:17:{s:3:\"mid\";s:2:\"17\";s:4:\"name\";s:14:\"weiyun_shuqian\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:21:\"数钱数到手抽筋\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:21:\"数钱数到手抽筋\";s:11:\"description\";s:87:\"窥探朋友私密的一面，看看朋友发表的秘密、八卦、爆料、真心话\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"weisrc_truth\";a:17:{s:3:\"mid\";s:2:\"18\";s:4:\"name\";s:12:\"weisrc_truth\";s:4:\"type\";s:7:\"wdlshow\";s:5:\"title\";s:9:\"真心话\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:9:\"真心话\";s:11:\"description\";s:87:\"窥探朋友私密的一面，看看朋友发表的秘密、八卦、爆料、真心话\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"weisrc_pano\";a:17:{s:3:\"mid\";s:2:\"19\";s:4:\"name\";s:11:\"weisrc_pano\";s:4:\"type\";s:5:\"other\";s:5:\"title\";s:15:\"360全景展示\";s:7:\"version\";s:3:\"1.2\";s:7:\"ability\";s:15:\"360全景展示\";s:11:\"description\";s:15:\"360全景展示\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:17:\"weisrc_invitative\";a:17:{s:3:\"mid\";s:2:\"20\";s:4:\"name\";s:17:\"weisrc_invitative\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"邀请函\";s:7:\"version\";s:3:\"2.4\";s:7:\"ability\";s:9:\"邀请函\";s:11:\"description\";s:9:\"邀请函\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:15:\"weisrc_feedback\";a:17:{s:3:\"mid\";s:2:\"21\";s:4:\"name\";s:15:\"weisrc_feedback\";s:4:\"type\";s:5:\"other\";s:5:\"title\";s:9:\"留言板\";s:7:\"version\";s:5:\"1.1.4\";s:7:\"ability\";s:9:\"留言板\";s:11:\"description\";s:9:\"留言板\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"weisrc_dish\";a:17:{s:3:\"mid\";s:2:\"22\";s:4:\"name\";s:11:\"weisrc_dish\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微点餐\";s:7:\"version\";s:3:\"3.7\";s:7:\"ability\";s:9:\"微点餐\";s:11:\"description\";s:9:\"微点餐\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:19:\"weisrc_clubbigwheel\";a:17:{s:3:\"mid\";s:2:\"23\";s:4:\"name\";s:19:\"weisrc_clubbigwheel\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"惩罚大转盘\";s:7:\"version\";s:5:\"1.1.2\";s:7:\"ability\";s:15:\"惩罚大转盘\";s:11:\"description\";s:15:\"惩罚大转盘\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:21:\"weisrc_businesscenter\";a:17:{s:3:\"mid\";s:2:\"24\";s:4:\"name\";s:21:\"weisrc_businesscenter\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微商圈\";s:7:\"version\";s:3:\"3.1\";s:7:\"ability\";s:9:\"微商圈\";s:11:\"description\";s:9:\"微商圈\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"weisrc_audio\";a:17:{s:3:\"mid\";s:2:\"25\";s:4:\"name\";s:12:\"weisrc_audio\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"音乐盒子\";s:7:\"version\";s:3:\"1.5\";s:7:\"ability\";s:12:\"音乐盒子\";s:11:\"description\";s:12:\"音乐盒子\";s:6:\"author\";s:9:\"012WZ.COM\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:7:\"weilive\";a:17:{s:3:\"mid\";s:2:\"26\";s:4:\"name\";s:7:\"weilive\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微生活\";s:7:\"version\";s:3:\"4.1\";s:7:\"ability\";s:9:\"微生活\";s:11:\"description\";s:9:\"微生活\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"we7_wxwall\";a:17:{s:3:\"mid\";s:2:\"27\";s:4:\"name\";s:10:\"we7_wxwall\";s:4:\"type\";s:7:\"wdlshow\";s:5:\"title\";s:9:\"微信墙\";s:7:\"version\";s:3:\"1.7\";s:7:\"ability\";s:54:\"可以实时同步显示现场参与者发送的微信\";s:11:\"description\";s:249:\"微信墙又称微信大屏幕，是在展会、音乐会、婚礼现场等场所展示特定主题微信的大屏幕，大屏幕上可以同步显示现场参与者发送的微信，使场内外观众能够第一时间传递和获取现场信息。\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"we7_shake\";a:17:{s:3:\"mid\";s:2:\"28\";s:4:\"name\";s:9:\"we7_shake\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"摇一摇中奖\";s:7:\"version\";s:3:\"1.4\";s:7:\"ability\";s:15:\"摇一摇中奖\";s:11:\"description\";s:15:\"摇一摇中奖\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:21:\"http://www.b2ctui.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"we7_research\";a:17:{s:3:\"mid\";s:2:\"29\";s:4:\"name\";s:12:\"we7_research\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:15:\"预约与调查\";s:7:\"version\";s:5:\"1.0.6\";s:7:\"ability\";s:48:\"可以快速生成调查表单或则预约记录\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:1:\"#\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:7:\"we7_egg\";a:17:{s:3:\"mid\";s:2:\"30\";s:4:\"name\";s:7:\"we7_egg\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:6:\"砸蛋\";s:7:\"version\";s:5:\"1.4.2\";s:7:\"ability\";s:30:\"趣味性抽奖类营销功能\";s:11:\"description\";s:123:\"砸蛋抽奖可以增强粉丝与公众号的互动、提升公众号的黏性，让你在短时间内迅速引爆人气。\";s:6:\"author\";s:9:\"012WZ.COM\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:7:\"we7_car\";a:17:{s:3:\"mid\";s:2:\"31\";s:4:\"name\";s:7:\"we7_car\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微汽车\";s:7:\"version\";s:3:\"3.5\";s:7:\"ability\";s:9:\"微汽车\";s:11:\"description\";s:9:\"微汽车\";s:6:\"author\";s:9:\"012wz.com\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"we7_business\";a:17:{s:3:\"mid\";s:2:\"32\";s:4:\"name\";s:12:\"we7_business\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:12:\"周边商户\";s:7:\"version\";s:3:\"1.4\";s:7:\"ability\";s:54:\"提供商家信息的添加、聚合及LBS的查询。\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:9:\"012WZ.COM\";s:3:\"url\";s:21:\"http://bbs.b2ctui.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:8:\"location\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"we7_album\";a:17:{s:3:\"mid\";s:2:\"33\";s:4:\"name\";s:9:\"we7_album\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微相册\";s:7:\"version\";s:3:\"3.6\";s:7:\"ability\";s:45:\"展示一系列图片来介绍你的公众号\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:9:\"012WZ.COM\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"wdl_wifi\";a:17:{s:3:\"mid\";s:2:\"34\";s:4:\"name\";s:8:\"wdl_wifi\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"微路由\";s:7:\"version\";s:5:\"2.8.5\";s:7:\"ability\";s:81:\"支持RippleTek路由器接口实现微信与路由器之间的各项应用交互\";s:11:\"description\";s:81:\"支持RippleTek路由器接口实现微信与路由器之间的各项应用交互\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"wdl_shopping\";a:17:{s:3:\"mid\";s:2:\"35\";s:4:\"name\";s:12:\"wdl_shopping\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微商城\";s:7:\"version\";s:3:\"3.8\";s:7:\"ability\";s:9:\"微商城\";s:11:\"description\";s:9:\"微商城\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"wdl_scratch\";a:17:{s:3:\"mid\";s:2:\"36\";s:4:\"name\";s:11:\"wdl_scratch\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:20:\"刮刮卡(经典版)\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:20:\"刮刮卡(经典版)\";s:11:\"description\";s:32:\"刮刮卡-经典版 营销抽奖\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"wdl_comeon\";a:17:{s:3:\"mid\";s:2:\"37\";s:4:\"name\";s:10:\"wdl_comeon\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"来吧来吧\";s:7:\"version\";s:4:\"1.84\";s:7:\"ability\";s:57:\"分享集点，赢取加油卡，充值卡等系列活动\";s:11:\"description\";s:57:\"分享集点，赢取加油卡，充值卡等系列活动\";s:6:\"author\";s:4:\"ewei\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"wdl_bigwheel\";a:17:{s:3:\"mid\";s:2:\"38\";s:4:\"name\";s:12:\"wdl_bigwheel\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"大转盘\";s:7:\"version\";s:5:\"1.4.1\";s:7:\"ability\";s:21:\"大转盘营销抽奖\";s:11:\"description\";s:21:\"大转盘营销抽奖\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:22:\"thinkidea_secondmarket\";a:17:{s:3:\"mid\";s:2:\"39\";s:4:\"name\";s:22:\"thinkidea_secondmarket\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"二手市场\";s:7:\"version\";s:3:\"3.3\";s:7:\"ability\";s:12:\"二手市场\";s:11:\"description\";s:99:\"类似58、赶集发布二手信息的模块.后期将继续推出新版本，使其功能更强大\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:16:\"thinkidea_rencai\";a:17:{s:3:\"mid\";s:2:\"40\";s:4:\"name\";s:16:\"thinkidea_rencai\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微人才\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:9:\"微人才\";s:11:\"description\";s:120:\"微人才，求职招聘，招人才，找企业，就来微人才。手机端也能发招聘，手机端也能找工作\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:13:\"www.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:10:{i:0;s:4:\"text\";i:1;s:8:\"location\";i:2;s:4:\"link\";i:3;s:9:\"subscribe\";i:4;s:11:\"unsubscribe\";i:5;s:2:\"qr\";i:6;s:5:\"trace\";i:7;s:5:\"click\";i:8;s:4:\"view\";i:9;s:5:\"enter\";}s:7:\"handles\";a:8:{i:0;s:8:\"location\";i:1;s:4:\"link\";i:2;s:9:\"subscribe\";i:3;s:2:\"qr\";i:4;s:5:\"trace\";i:5;s:5:\"click\";i:6;s:5:\"enter\";i:7;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:19:\"thinkidea_phonebook\";a:17:{s:3:\"mid\";s:2:\"41\";s:4:\"name\";s:19:\"thinkidea_phonebook\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"电话本\";s:7:\"version\";s:3:\"1.4\";s:7:\"ability\";s:9:\"电话本\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:9:\"Thinkidea\";s:3:\"url\";s:25:\"http://bbs.Thinkidea.net/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"str_takeout\";a:17:{s:3:\"mid\";s:2:\"42\";s:4:\"name\";s:11:\"str_takeout\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微外卖\";s:7:\"version\";s:5:\"2.9.6\";s:7:\"ability\";s:9:\"微外卖\";s:11:\"description\";s:9:\"微外卖\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:17:\"stonefish_scratch\";a:17:{s:3:\"mid\";s:2:\"43\";s:4:\"name\";s:17:\"stonefish_scratch\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"幸运刮刮卡\";s:7:\"version\";s:3:\"1.6\";s:7:\"ability\";s:33:\"幸运刮刮卡－大奖刮出来\";s:11:\"description\";s:128:\"幸运刮刮卡营销刮奖-结合商家网点模块，每个商家可送刮奖机会,分享还可以额外获得刮奖机会哟\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://www.00393.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:21:\"stonefish_redenvelope\";a:17:{s:3:\"mid\";s:2:\"44\";s:4:\"name\";s:21:\"stonefish_redenvelope\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"全民抢红包\";s:7:\"version\";s:3:\"1.8\";s:7:\"ability\";s:34:\"全民抢红包-营销吸粉工具\";s:11:\"description\";s:145:\"全民抢红包-结合商家活动可设置为抢红包和分红包，参与粉丝或邀请好友为其增加红包金额以及平分红包金额\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:18:\"stonefish_planting\";a:17:{s:3:\"mid\";s:2:\"45\";s:4:\"name\";s:18:\"stonefish_planting\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"种植乐园\";s:7:\"version\";s:10:\"1.20150105\";s:7:\"ability\";s:83:\"种植乐园--粉丝领取种子，邀请朋友浇水，让种子长大参与抽奖\";s:11:\"description\";s:125:\"种植乐园--粉丝通过领取种子，邀请朋友浇水，让种子长大，长大过程中可根据邀请值参与抽奖\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:18:\"stonefish_chailihe\";a:17:{s:3:\"mid\";s:2:\"46\";s:4:\"name\";s:18:\"stonefish_chailihe\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"幸运拆礼盒\";s:7:\"version\";s:3:\"2.6\";s:7:\"ability\";s:153:\"幸运拆礼盒－领取礼盒分享给朋友，让朋友帮其拆礼盒，成功达到设置拆开礼盒的人数，则有机会得到设置的礼品！\";s:11:\"description\";s:318:\"幸运拆礼盒－通过关健词触发活动，或通过朋友分享的活动链接领取礼盒，分享给朋友或朋友圈，朋友点击打开页面，计入拆礼盒人数，当达到活动设置拆开礼盒的人数后，则有机会得到设置的礼品！概率得到礼品或成功拆开即可领取礼品！\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:13:\"bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:18:\"stonefish_bigwheel\";a:17:{s:3:\"mid\";s:2:\"47\";s:4:\"name\";s:18:\"stonefish_bigwheel\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"幸运大转盘\";s:7:\"version\";s:3:\"2.4\";s:7:\"ability\";s:27:\"幸运大转盘营销抽奖\";s:11:\"description\";s:128:\"幸运大转盘营销抽奖-结合商家网点模块，每个商家可送抽奖机会,分享还可以额外获得抽奖机会哟\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"scene_cube\";a:17:{s:3:\"mid\";s:2:\"48\";s:4:\"name\";s:10:\"scene_cube\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"场景魔方\";s:7:\"version\";s:3:\"2.6\";s:7:\"ability\";s:39:\"商业信息华丽展示，高级授权\";s:11:\"description\";s:39:\"商业信息华丽展示，高级授权\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"quickspread\";a:17:{s:3:\"mid\";s:2:\"49\";s:4:\"name\";s:11:\"quickspread\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"码上涨粉\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:12:\"码上涨粉\";s:11:\"description\";s:25:\"传单传播,码上涨粉\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:2:{i:0;s:4:\"scan\";i:1;s:9:\"subscribe\";}s:7:\"handles\";a:2:{i:0;s:4:\"text\";i:1;s:9:\"subscribe\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:14:\"qmteam_zerobuy\";a:17:{s:3:\"mid\";s:2:\"50\";s:4:\"name\";s:14:\"qmteam_zerobuy\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"零元购\";s:7:\"version\";s:3:\"2.0\";s:7:\"ability\";s:9:\"零元购\";s:11:\"description\";s:147:\"零元购闪亮上线，零元抽大奖，大牌低价秒，优惠享不停，动动手指，天天有新品、豪礼抽不停。提高关注度。\";s:6:\"author\";s:9:\"青盟网\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"qiyue_canvas\";a:17:{s:3:\"mid\";s:2:\"51\";s:4:\"name\";s:12:\"qiyue_canvas\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"画图分享\";s:7:\"version\";s:3:\"1.2\";s:7:\"ability\";s:12:\"画图分享\";s:11:\"description\";s:39:\"用户画图，然后分享到朋友圈\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"mon_yjgz\";a:17:{s:3:\"mid\";s:2:\"52\";s:4:\"name\";s:8:\"mon_yjgz\";s:4:\"type\";s:5:\"other\";s:5:\"title\";s:12:\"一键关注\";s:7:\"version\";s:5:\"2.9.8\";s:7:\"ability\";s:12:\"一键关注\";s:11:\"description\";s:13:\"一键关注!\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"mon_weishare\";a:17:{s:3:\"mid\";s:2:\"53\";s:4:\"name\";s:12:\"mon_weishare\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"微助力\";s:7:\"version\";s:3:\"2.8\";s:7:\"ability\";s:21:\"分享活动赢好礼\";s:11:\"description\";s:75:\"分享活动到朋友圈获取朋友的助力，即可获取相应礼品！\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"mon_house\";a:17:{s:3:\"mid\";s:2:\"54\";s:4:\"name\";s:9:\"mon_house\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微楼书\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:9:\"微房产\";s:11:\"description\";s:12:\"微房产！\";s:6:\"author\";s:14:\"bbs.b2ctui.com\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"mon_fool\";a:17:{s:3:\"mid\";s:2:\"55\";s:4:\"name\";s:8:\"mon_fool\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:18:\"愚人整蛊红包\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:18:\"愚人整蛊红包\";s:11:\"description\";s:18:\"愚人整蛊红包\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"mon_brand\";a:17:{s:3:\"mid\";s:2:\"56\";s:4:\"name\";s:9:\"mon_brand\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"微品牌\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:45:\"品牌介绍，视频，幻灯片，产品！\";s:11:\"description\";s:45:\"品牌介绍，视频，幻灯片，产品！\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:14:\"bbs.b2ctui.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"microb_shake\";a:17:{s:3:\"mid\";s:2:\"57\";s:4:\"name\";s:12:\"microb_shake\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"周边摇一摇\";s:7:\"version\";s:3:\"2.7\";s:7:\"ability\";s:64:\"提供利用iBeacon蓝牙设备进行现场营销活动的功能\";s:11:\"description\";s:161:\"周边摇一摇使用腾讯最新的摇一摇周边功能. 特别适合各种车站, 会场, 卖场等现场活动, 活动形式新颖, 可以迅速引爆现场.\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:13:\"www.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:14:\"microb_redpack\";a:17:{s:3:\"mid\";s:2:\"58\";s:4:\"name\";s:14:\"microb_redpack\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:18:\"商户现金红包\";s:7:\"version\";s:3:\"1.8\";s:7:\"ability\";s:57:\"提供利用商户现金红包进行营销活动的功能\";s:11:\"description\";s:332:\"商户现金红包功能不同于市面上现有的红包功能. 用户领取后不需要提现, 打开后直接存入微信钱包零钱. <br>\n        主要功能使用 <mark>支持支付的认证服务号</mark>, 订阅号和未认证的服务号可以借用接口. <br>\n        也可以支持有赞等其他平台的营销活动\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:15:\"microb_notifier\";a:17:{s:3:\"mid\";s:2:\"59\";s:4:\"name\";s:15:\"microb_notifier\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:18:\"消息通知中心\";s:7:\"version\";s:5:\"1.9.5\";s:7:\"ability\";s:59:\"当前支持微信消息, 官方商城的支付成功提示\";s:11:\"description\";s:59:\"当前支持微信消息, 官方商城的支付成功提示\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"meepo_sexy\";a:17:{s:3:\"mid\";s:2:\"60\";s:4:\"name\";s:10:\"meepo_sexy\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:12:\"英雄联盟\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:12:\"英雄联盟\";s:11:\"description\";s:12:\"英雄联盟\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"meepo_qmbttz\";a:17:{s:3:\"mid\";s:2:\"61\";s:4:\"name\";s:12:\"meepo_qmbttz\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:12:\"冰桶挑战\";s:7:\"version\";s:3:\"0.7\";s:7:\"ability\";s:12:\"冰桶挑战\";s:11:\"description\";s:12:\"冰桶挑战\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:31:\"http://bbs.b2ctui.com/forum.php\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"meepo_nsign\";a:17:{s:3:\"mid\";s:2:\"62\";s:4:\"name\";s:11:\"meepo_nsign\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:6:\"签到\";s:7:\"version\";s:4:\"2.11\";s:7:\"ability\";s:6:\"签到\";s:11:\"description\";s:15:\"签到得积分\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:22:\"http://bbs.b2ctui.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"image\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"lxy_buscard\";a:17:{s:3:\"mid\";s:2:\"63\";s:4:\"name\";s:11:\"lxy_buscard\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微名片\";s:7:\"version\";s:5:\"1.9.5\";s:7:\"ability\";s:115:\"供企业业务员、销售员进行营销时的名片展示,同时对企业形象及企业产品进行全面展示\";s:11:\"description\";s:115:\"供企业业务员、销售员进行营销时的名片展示,同时对企业形象及企业产品进行全面展示\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"lee_tlvoice\";a:17:{s:3:\"mid\";s:2:\"64\";s:4:\"name\";s:11:\"lee_tlvoice\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:15:\"朋友圈语音\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:51:\"朋友圈语音，可用于朋友圈发送语音。\";s:11:\"description\";s:51:\"朋友圈语音，可用于朋友圈发送语音。\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"voice\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:7:\"ju_read\";a:17:{s:3:\"mid\";s:2:\"65\";s:4:\"name\";s:7:\"ju_read\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"集阅读\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:9:\"集阅读\";s:11:\"description\";s:9:\"集阅读\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"jufeng_wcy\";a:17:{s:3:\"mid\";s:2:\"66\";s:4:\"name\";s:10:\"jufeng_wcy\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:15:\"聚风微餐饮\";s:7:\"version\";s:3:\"1.4\";s:7:\"ability\";s:15:\"聚风微餐饮\";s:11:\"description\";s:36:\"首个多店铺版微信订餐模块\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"hx_zhongchou\";a:17:{s:3:\"mid\";s:2:\"67\";s:4:\"name\";s:12:\"hx_zhongchou\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微众筹\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:151:\"为有梦想、有创意、有项目的朋友提供募资、投资、孵化、运营一站式综合众筹服务,协助您实现自己的创业梦想。\";s:11:\"description\";s:151:\"为有梦想、有创意、有项目的朋友提供募资、投资、孵化、运营一站式综合众筹服务,协助您实现自己的创业梦想。\";s:6:\"author\";s:12:\"微赞科技\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"hx_voice\";a:17:{s:3:\"mid\";s:2:\"68\";s:4:\"name\";s:8:\"hx_voice\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:21:\"普通话在线考试\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:21:\"普通话在线考试\";s:11:\"description\";s:21:\"普通话在线考试\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"hx_subscribe\";a:17:{s:3:\"mid\";s:2:\"69\";s:4:\"name\";s:12:\"hx_subscribe\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"加粉神器\";s:7:\"version\";s:3:\"3.1\";s:7:\"ability\";s:12:\"加粉神器\";s:11:\"description\";s:39:\"推荐其他用户关注，奖励积分\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"hx_pictorial\";a:17:{s:3:\"mid\";s:2:\"70\";s:4:\"name\";s:12:\"hx_pictorial\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:24:\"微画报（微场景）\";s:7:\"version\";s:3:\"1.5\";s:7:\"ability\";s:45:\"用一系列场景图片展示产品和服务\";s:11:\"description\";s:45:\"用一系列场景图片展示产品和服务\";s:6:\"author\";s:12:\"微赞科技\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"hx_lottery\";a:17:{s:3:\"mid\";s:2:\"71\";s:4:\"name\";s:10:\"hx_lottery\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"幸运大抽奖\";s:7:\"version\";s:3:\"1.5\";s:7:\"ability\";s:21:\"幸运积分大抽奖\";s:11:\"description\";s:21:\"幸运积分大抽奖\";s:6:\"author\";s:12:\"华轩科技\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"hx_express\";a:17:{s:3:\"mid\";s:2:\"72\";s:4:\"name\";s:10:\"hx_express\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:15:\"扫码查快递\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:15:\"扫码查快递\";s:11:\"description\";s:36:\"扫描快递单条形码查询快递\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"hx_dialect\";a:17:{s:3:\"mid\";s:2:\"73\";s:4:\"name\";s:10:\"hx_dialect\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"方言听力版\";s:7:\"version\";s:3:\"0.3\";s:7:\"ability\";s:15:\"方言听力版\";s:11:\"description\";s:15:\"方言听力版\";s:6:\"author\";s:12:\"华轩科技\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"hx_cards\";a:17:{s:3:\"mid\";s:2:\"74\";s:4:\"name\";s:8:\"hx_cards\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"刮刮乐\";s:7:\"version\";s:3:\"2.7\";s:7:\"ability\";s:24:\"刮刮乐积分大抽奖\";s:11:\"description\";s:24:\"刮刮乐积分大抽奖\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"hx_alert\";a:17:{s:3:\"mid\";s:2:\"75\";s:4:\"name\";s:8:\"hx_alert\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:9:\"弹死你\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:99:\"用一种TA无法拒绝的方式跟TA对话！定制“弹框整蛊”，发给好友，弹死TA！\";s:11:\"description\";s:99:\"用一种TA无法拒绝的方式跟TA对话！定制“弹框整蛊”，发给好友，弹死TA！\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:6:\"hl_zzz\";a:17:{s:3:\"mid\";s:2:\"76\";s:4:\"name\";s:6:\"hl_zzz\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:9:\"做粽子\";s:7:\"version\";s:3:\"2.0\";s:7:\"ability\";s:15:\"瑞午节活动\";s:11:\"description\";s:146:\"每天系统默认给予10次（可以后台自定义），想要赶快做出XX，那就邀请好友来助威，让你的好友送你体力赚X吧\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:6:\"hl_tug\";a:17:{s:3:\"mid\";s:2:\"77\";s:4:\"name\";s:6:\"hl_tug\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:15:\"摇一摇拨河\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:28:\"摇一摇拔河,重现经典\";s:11:\"description\";s:28:\"摇一摇拔河,重现经典\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:16:\"hl_periarthritis\";a:17:{s:3:\"mid\";s:2:\"78\";s:4:\"name\";s:16:\"hl_periarthritis\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"肩周炎\";s:7:\"version\";s:3:\"1.4\";s:7:\"ability\";s:54:\"狂撸吧，翻滚吧，是时候治一下肩周炎了\";s:11:\"description\";s:100:\"天天坐在电脑前盼0.6,盼的肩周炎都来了;有病就得治,是时候治一下肩周炎了!\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:16:\"fwei_moneyimport\";a:17:{s:3:\"mid\";s:2:\"79\";s:4:\"name\";s:16:\"fwei_moneyimport\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:18:\"会员余额导入\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:18:\"会员余额导入\";s:11:\"description\";s:51:\"将已有系统的会员余额导入到微信系统\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:13:\"fm_photosvote\";a:17:{s:3:\"mid\";s:2:\"80\";s:4:\"name\";s:13:\"fm_photosvote\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"女神投票\";s:7:\"version\";s:3:\"4.0\";s:7:\"ability\";s:72:\"女神来了，－分享朋友拉朋友为你的女神投上一票吧！\";s:11:\"description\";s:72:\"女神来了，－分享朋友拉朋友为你的女神投上一票吧！\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:3:{i:0;s:4:\"text\";i:1;s:9:\"subscribe\";i:2;s:11:\"unsubscribe\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"feng_duobao\";a:17:{s:3:\"mid\";s:2:\"81\";s:4:\"name\";s:11:\"feng_duobao\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"一元夺宝\";s:7:\"version\";s:3:\"3.1\";s:7:\"ability\";s:12:\"一元夺宝\";s:11:\"description\";s:122:\"一云夺宝是一种全新的购物方式,是时尚、潮流的风向标,能满足个性、年轻消费者的购物需求\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"ewei_money\";a:17:{s:3:\"mid\";s:2:\"82\";s:4:\"name\";s:10:\"ewei_money\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:12:\"疯狂划算\";s:7:\"version\";s:4:\"1.02\";s:7:\"ability\";s:35:\"疯狂划算, 数钱数到手抽筋\";s:11:\"description\";s:35:\"疯狂划算, 数钱数到手抽筋\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:13:\"bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"ewei_hotel\";a:17:{s:3:\"mid\";s:2:\"83\";s:4:\"name\";s:10:\"ewei_hotel\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微酒店\";s:7:\"version\";s:3:\"3.1\";s:7:\"ability\";s:38:\"酒店房间预定,单店版,多店版\";s:11:\"description\";s:56:\"酒店房间预定，单店版, 多店版，类似携程\";s:6:\"author\";s:4:\"ewei\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"ewei_exam\";a:17:{s:3:\"mid\";s:2:\"84\";s:4:\"name\";s:9:\"ewei_exam\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微考试\";s:7:\"version\";s:3:\"2.8\";s:7:\"ability\";s:15:\"微考试系统\";s:11:\"description\";s:62:\"考试系统,判断,单选,多选,用于培训机构及学校!\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"ewei_couplet\";a:17:{s:3:\"mid\";s:2:\"85\";s:4:\"name\";s:12:\"ewei_couplet\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"对联猜猜\";s:7:\"version\";s:4:\"1.05\";s:7:\"ability\";s:51:\"新年吸粉利器，邀请好友集对联赢大奖\";s:11:\"description\";s:51:\"新年吸粉利器，邀请好友集对联赢大奖\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"ewei_bonus\";a:17:{s:3:\"mid\";s:2:\"86\";s:4:\"name\";s:10:\"ewei_bonus\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"合体红包\";s:7:\"version\";s:5:\"1.0.8\";s:7:\"ability\";s:30:\"最火的模块，合体红包\";s:11:\"description\";s:30:\"最火的模块，合体红包\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"eso_share\";a:17:{s:3:\"mid\";s:2:\"87\";s:4:\"name\";s:9:\"eso_share\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"分享达人\";s:7:\"version\";s:5:\"2.9.6\";s:7:\"ability\";s:12:\"分享达人\";s:11:\"description\";s:93:\"分享达人是您的微信公众号运营的利器，是您涨粉和宣传最好的工具。\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"eso_sale\";a:17:{s:3:\"mid\";s:2:\"88\";s:4:\"name\";s:8:\"eso_sale\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"分销系统\";s:7:\"version\";s:3:\"3.6\";s:7:\"ability\";s:28:\"分销系统,分销商城！\";s:11:\"description\";s:12:\"分销系统\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"eso_runman\";a:17:{s:3:\"mid\";s:2:\"89\";s:4:\"name\";s:10:\"eso_runman\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:24:\"奔跑吧兄弟撕名牌\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:24:\"奔跑吧兄弟撕名牌\";s:11:\"description\";s:24:\"奔跑吧兄弟撕名牌\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"czt_zwmm\";a:17:{s:3:\"mid\";s:2:\"90\";s:4:\"name\";s:8:\"czt_zwmm\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"指纹密码\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:12:\"指纹密码\";s:11:\"description\";s:169:\"超好玩的情人节配对游戏！乐爆用户，实现不一样的爱情甜蜜！\', \'超好玩的情人节配对游戏！乐爆用户，实现不一样的爱情甜蜜\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"czt_voice\";a:17:{s:3:\"mid\";s:2:\"91\";s:4:\"name\";s:9:\"czt_voice\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:18:\"朋友圈发语音\";s:7:\"version\";s:3:\"0.1\";s:7:\"ability\";s:18:\"朋友圈发语音\";s:11:\"description\";s:18:\"朋友圈发语音\";s:6:\"author\";s:0:\"\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"bm_hospital\";a:17:{s:3:\"mid\";s:2:\"92\";s:4:\"name\";s:11:\"bm_hospital\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:23:\"微医疗(门诊服务)\";s:7:\"version\";s:3:\"1.5\";s:7:\"ability\";s:138:\"自定义医院、科室、医生介绍，用户可通过微信在线了解医院、科室、医生介绍，并实现在线预约挂号。\";s:11:\"description\";s:138:\"自定义医院、科室、医生介绍，用户可通过微信在线了解医院、科室、医生介绍，并实现在线预约挂号。\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://www.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"image\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"amouse_house\";a:17:{s:3:\"mid\";s:2:\"93\";s:4:\"name\";s:12:\"amouse_house\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"微二手房\";s:7:\"version\";s:3:\"1.4\";s:7:\"ability\";s:67:\"出租,求购，求租，出售新房，二手房，新楼盘发布\";s:11:\"description\";s:195:\"微房产，出租,求购，求租，出售新房，二手房，最新房产信息平台，可以出租,求购，求租，出售新房，二手房，新楼盘信息,本地时尚生活互动平台\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"amouse_ecard\";a:17:{s:3:\"mid\";s:2:\"94\";s:4:\"name\";s:12:\"amouse_ecard\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:10:\"微E名片\";s:7:\"version\";s:3:\"1.5\";s:7:\"ability\";s:48:\"千叶微名片，这不是简单的微名片。\";s:11:\"description\";s:171:\"千叶微名片，这不是简单的微名片，帮你快速结交朋友，建立人脉。生成一个名片二维码，扫描二维码可以保存到手机联系人中。\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:14:\"bbs.b2ctui.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:15:\"wdl_hchighguess\";a:17:{s:3:\"mid\";s:2:\"96\";s:4:\"name\";s:15:\"wdl_hchighguess\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"我画你猜高级版\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:21:\"我画你猜高级版\";s:11:\"description\";s:21:\"我画你猜高级版\";s:6:\"author\";s:12:\"微赞科技\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"demo_pia3\";a:17:{s:3:\"mid\";s:2:\"97\";s:4:\"name\";s:9:\"demo_pia3\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"啪啪啪\";s:7:\"version\";s:3:\"0.1\";s:7:\"ability\";s:15:\"小游戏而已\";s:11:\"description\";s:15:\"小游戏而已\";s:6:\"author\";s:3:\"On3\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"lxy_rtrouter\";a:17:{s:3:\"mid\";s:2:\"98\";s:4:\"name\";s:12:\"lxy_rtrouter\";s:4:\"type\";s:5:\"other\";s:5:\"title\";s:9:\"微路由\";s:7:\"version\";s:3:\"0.6\";s:7:\"ability\";s:9:\"微路由\";s:11:\"description\";s:81:\"支持RippleTek路由器接口实现微信与路由器之间的各项应用交互\";s:6:\"author\";s:22:\"大路货 QQ:792454007\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:14:\"amouse_article\";a:17:{s:3:\"mid\";s:3:\"100\";s:4:\"name\";s:14:\"amouse_article\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"精美图文\";s:7:\"version\";s:3:\"3.3\";s:7:\"ability\";s:183:\"精美图文,官方微文章增加版，内置8套列表模板，很愉快的切换列表显示。可以完全兼容微文章,更好的展示公众号，图文里面可以包含音乐\";s:11:\"description\";s:576:\"精美图文,官方微文章增加版，内置8套列表模板，很愉快的切换列表显示。可以完全兼容微文章,更好的展示公众号，图文里面可以包含音乐.打通一键关注（此一键关注为我精美图文内置模块）与精美图文，现在文章上面可以推荐公众号了。让更多的人来关注，也可以很方便运维管理多个公众号，可以跟别人来交换公众号。\n精美图文内置12套列表页面模板，5套内容页。每个内容页都可以 放置要推荐的公众号，都可以后台设置背景音乐\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"feng_auction\";a:17:{s:3:\"mid\";s:3:\"101\";s:4:\"name\";s:12:\"feng_auction\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微拍卖\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:25:\"微信拍卖,粉丝互动\";s:11:\"description\";s:198:\"微拍卖集限时拍卖购物、账户明细管理、余额充值提现等功能一身，微拍卖可以用于任何有商品出售的平台，如家电、汽车、数码或绝大部分实体商户\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"weihaom_wb\";a:17:{s:3:\"mid\";s:3:\"102\";s:4:\"name\";s:10:\"weihaom_wb\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:9:\"踩白块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:50:\"拆包装,踩虫子,抽老板耳光...无所不能\";s:11:\"description\";s:50:\"拆包装,踩虫子,抽老板耳光...无所不能\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"we7_survey\";a:17:{s:3:\"mid\";s:3:\"103\";s:4:\"name\";s:10:\"we7_survey\";s:4:\"type\";s:8:\"customer\";s:5:\"title\";s:6:\"调研\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:6:\"调研\";s:11:\"description\";s:12:\"调研描述\";s:6:\"author\";s:9:\"012WZ.COM\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"ewei_vote\";a:17:{s:3:\"mid\";s:3:\"104\";s:4:\"name\";s:9:\"ewei_vote\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"微投票\";s:7:\"version\";s:4:\"1.03\";s:7:\"ability\";s:12:\"投票系统\";s:11:\"description\";s:33:\"图片、文字，单选，多选\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:6:\"hl_bbb\";a:17:{s:3:\"mid\";s:3:\"105\";s:4:\"name\";s:6:\"hl_bbb\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"摇骰子\";s:7:\"version\";s:5:\"2.0.0\";s:7:\"ability\";s:24:\"趣味性赚点数功能\";s:11:\"description\";s:109:\"腻了大转盘刮刮卡么?来一起摇骰子吧!可周期性举行比赛,按点数排名,增加用户黏度\";s:6:\"author\";s:8:\"12WZ.COM\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"lxy_marry\";a:17:{s:3:\"mid\";s:3:\"106\";s:4:\"name\";s:9:\"lxy_marry\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"微喜帖\";s:7:\"version\";s:3:\"0.6\";s:7:\"ability\";s:9:\"微喜帖\";s:11:\"description\";s:87:\"结婚喜帖发送，赴宴人员登记，新郎新娘结婚照展示，收集祝福语\";s:6:\"author\";s:9:\"012WZ.COM\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"we7_activity\";a:17:{s:3:\"mid\";s:3:\"107\";s:4:\"name\";s:12:\"we7_activity\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"微活动\";s:7:\"version\";s:3:\"2.3\";s:7:\"ability\";s:27:\"报名，议程，嘉宾！\";s:11:\"description\";s:57:\"报名，议程，嘉宾，地图导航，邮件提醒！\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:13:\"www.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:6:\"hl_dqq\";a:17:{s:3:\"mid\";s:3:\"108\";s:4:\"name\";s:6:\"hl_dqq\";s:4:\"type\";s:7:\"wdlgame\";s:5:\"title\";s:9:\"打气球\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:21:\"砸蛋功能升级版\";s:11:\"description\";s:129:\"打气球送积分可以增强粉丝与公众号的互动、提升公众号的黏性，让你在短时间内迅速引爆人气。\";s:6:\"author\";s:9:\"微动力\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"zam_weimails\";a:17:{s:3:\"mid\";s:3:\"109\";s:4:\"name\";s:12:\"zam_weimails\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"微信邮件\";s:7:\"version\";s:4:\"1.19\";s:7:\"ability\";s:40:\"微信邮件,粉丝邮件订阅与发送\";s:11:\"description\";s:169:\"本模块旨在方便粉丝需求各种资料 公众号可通过提供便利 将必要资料发送至粉丝绑定邮箱内 支持翻页 支持各种类型的文件上传\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"image\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"ewei_comeon\";a:17:{s:3:\"mid\";s:3:\"110\";s:4:\"name\";s:11:\"ewei_comeon\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"来吧来吧\";s:7:\"version\";s:4:\"1.84\";s:7:\"ability\";s:57:\"分享集点，赢取加油卡，充值卡等系列活动\";s:11:\"description\";s:57:\"分享集点，赢取加油卡，充值卡等系列活动\";s:6:\"author\";s:4:\"ewei\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:11:\"jeffh_vwifi\";a:17:{s:3:\"mid\";s:3:\"111\";s:4:\"name\";s:11:\"jeffh_vwifi\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:7:\"微WiFi\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:7:\"微WiFi\";s:11:\"description\";s:7:\"微WiFi\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"zam_findlx\";a:17:{s:3:\"mid\";s:3:\"112\";s:4:\"name\";s:10:\"zam_findlx\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"找老乡\";s:7:\"version\";s:3:\"6.1\";s:7:\"ability\";s:101:\"通过本模块可以快速找到老乡以及和老乡打招呼，通过平台进行聊天 等 功能\";s:11:\"description\";s:101:\"通过本模块可以快速找到老乡以及和老乡打招呼，通过平台进行聊天 等 功能\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:17:\"meepo_weixiangqin\";a:17:{s:3:\"mid\";s:3:\"113\";s:4:\"name\";s:17:\"meepo_weixiangqin\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微相亲\";s:7:\"version\";s:3:\"6.8\";s:7:\"ability\";s:39:\"微相亲/红娘/有缘网/世纪佳缘\";s:11:\"description\";s:39:\"微相亲/红娘/有缘网/世纪佳缘\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:14:\"bbs.b2ctui.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:3:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:8:\"location\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:18:\"stonefish_luckynum\";a:17:{s:3:\"mid\";s:3:\"114\";s:4:\"name\";s:18:\"stonefish_luckynum\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"幸运数字\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:12:\"幸运数字\";s:11:\"description\";s:12:\"幸运数字\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:13:\"www.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"lxy_buildpro\";a:17:{s:3:\"mid\";s:3:\"115\";s:4:\"name\";s:12:\"lxy_buildpro\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微房产\";s:7:\"version\";s:3:\"1.5\";s:7:\"ability\";s:9:\"微房产\";s:11:\"description\";s:27:\"供房产公司展示楼盘\";s:6:\"author\";s:22:\"大路货 QQ:792454007\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"top_news\";a:17:{s:3:\"mid\";s:3:\"116\";s:4:\"name\";s:8:\"top_news\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"头条新闻\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:12:\"头条新闻\";s:11:\"description\";s:12:\"头条新闻\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:12:\"lee_coreball\";a:17:{s:3:\"mid\";s:3:\"117\";s:4:\"name\";s:12:\"lee_coreball\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:8:\"Coreball\";s:7:\"version\";s:3:\"2.0\";s:7:\"ability\";s:36:\"Coreball,一款热门休闲游戏。\";s:11:\"description\";s:36:\"Coreball,一款热门休闲游戏。\";s:6:\"author\";s:12:\"Cloudus Team\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:10:\"wdl_amovie\";a:17:{s:3:\"mid\";s:3:\"118\";s:4:\"name\";s:10:\"wdl_amovie\";s:4:\"type\";s:8:\"customer\";s:5:\"title\";s:15:\"种子搜索器\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:66:\"种子资源搜索器,你懂得\', \'种子资源搜索器,你懂得\";s:11:\"description\";s:66:\"种子资源搜索器,你懂得\', \'种子资源搜索器,你懂得\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:9:\"xwz_queue\";a:17:{s:3:\"mid\";s:3:\"119\";s:4:\"name\";s:9:\"xwz_queue\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"微信排号\";s:7:\"version\";s:3:\"3.1\";s:7:\"ability\";s:12:\"微信排号\";s:11:\"description\";s:18:\"微信排号系统\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:18:\"super_securitycode\";a:17:{s:3:\"mid\";s:3:\"120\";s:4:\"name\";s:18:\"super_securitycode\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:15:\"超级防伪码\";s:7:\"version\";s:5:\"2.9.5\";s:7:\"ability\";s:15:\"超级防伪码\";s:11:\"description\";s:15:\"超级防伪码\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"mon_sign\";a:17:{s:3:\"mid\";s:3:\"121\";s:4:\"name\";s:8:\"mon_sign\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"积分签到\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:12:\"积分签到\";s:11:\"description\";s:13:\"积分签到!\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://bbs.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:2:{i:0;s:9:\"subscribe\";i:1;s:11:\"unsubscribe\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:13:\"meepo_begging\";a:17:{s:3:\"mid\";s:3:\"122\";s:4:\"name\";s:13:\"meepo_begging\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微乞丐\";s:7:\"version\";s:3:\"3.0\";s:7:\"ability\";s:123:\"网络乞讨，朋友圈蹭钱，靠脸吃饭的时代已经到来，抓紧行动起来，让我们一起做---微乞丐！\";s:11:\"description\";s:123:\"网络乞讨，朋友圈蹭钱，靠脸吃饭的时代已经到来，抓紧行动起来，让我们一起做---微乞丐！\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:21:\"http://bbs.012wz.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:1:{i:0;s:4:\"text\";}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"1\";}s:15:\"jdg_luvwhispers\";a:17:{s:3:\"mid\";s:3:\"123\";s:4:\"name\";s:15:\"jdg_luvwhispers\";s:4:\"type\";s:5:\"other\";s:5:\"title\";s:6:\"情话\";s:7:\"version\";s:3:\"0.3\";s:7:\"ability\";s:6:\"情话\";s:11:\"description\";s:6:\"情话\";s:6:\"author\";s:21:\"家对过微信平台\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:13:\"null_getvoice\";a:17:{s:3:\"mid\";s:3:\"124\";s:4:\"name\";s:13:\"null_getvoice\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:12:\"提取录音\";s:7:\"version\";s:3:\"1.3\";s:7:\"ability\";s:45:\"用手机录音，生成音频的下载链接\";s:11:\"description\";s:45:\"用手机录音，生成音频的下载链接\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"xhw_face\";a:17:{s:3:\"mid\";s:3:\"125\";s:4:\"name\";s:8:\"xhw_face\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:12:\"人脸识别\";s:7:\"version\";s:3:\"1.9\";s:7:\"ability\";s:12:\"人脸识别\";s:11:\"description\";s:147:\"通过用户发来的头部照片，识别出性别，年龄等特征。（当然，会存在一定的误差，请挑选脸部清晰的照片上传\";s:6:\"author\";s:6:\"微赞\";s:3:\"url\";s:20:\"http://www.012wz.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:2:{i:0;s:5:\"voice\";i:1;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}}');
INSERT INTO `ims_core_cache` VALUES ('usersfields', 'a:51:{i:0;s:3:\"uid\";i:1;s:7:\"uniacid\";i:2;s:6:\"mobile\";i:3;s:5:\"email\";i:4;s:8:\"password\";i:5;s:4:\"salt\";i:6;s:7:\"groupid\";i:7;s:7:\"credit1\";i:8;s:7:\"credit2\";i:9;s:7:\"credit3\";i:10;s:7:\"credit4\";i:11;s:7:\"credit5\";i:12;s:10:\"createtime\";i:13;s:8:\"realname\";i:14;s:8:\"nickname\";i:15;s:6:\"avatar\";i:16;s:2:\"qq\";i:17;s:3:\"vip\";i:18;s:6:\"gender\";i:19;s:9:\"birthyear\";i:20;s:10:\"birthmonth\";i:21;s:8:\"birthday\";i:22;s:13:\"constellation\";i:23;s:6:\"zodiac\";i:24;s:9:\"telephone\";i:25;s:6:\"idcard\";i:26;s:9:\"studentid\";i:27;s:5:\"grade\";i:28;s:7:\"address\";i:29;s:7:\"zipcode\";i:30;s:11:\"nationality\";i:31;s:14:\"resideprovince\";i:32;s:10:\"residecity\";i:33;s:10:\"residedist\";i:34;s:14:\"graduateschool\";i:35;s:7:\"company\";i:36;s:9:\"education\";i:37;s:10:\"occupation\";i:38;s:8:\"position\";i:39;s:7:\"revenue\";i:40;s:15:\"affectivestatus\";i:41;s:10:\"lookingfor\";i:42;s:9:\"bloodtype\";i:43;s:6:\"height\";i:44;s:6:\"weight\";i:45;s:6:\"alipay\";i:46;s:3:\"msn\";i:47;s:6:\"taobao\";i:48;s:4:\"site\";i:49;s:3:\"bio\";i:50;s:8:\"interest\";}');
INSERT INTO `ims_core_cache` VALUES ('upgrade', 'a:2:{s:7:\"upgrade\";b:0;s:10:\"lastupdate\";i:1440265069;}');
INSERT INTO `ims_core_cache` VALUES ('upgrade:template', 's:6:\"a:0:{}\";');

-- ----------------------------
-- Table structure for `ims_core_paylog`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL,
  `openid` varchar(40) NOT NULL DEFAULT '',
  `tid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(2000) NOT NULL DEFAULT '',
  `acid` int(10) unsigned NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  `createtime` varchar(64) NOT NULL,
  `eso_tag` varchar(2000) NOT NULL DEFAULT '',
  `uniontid` varchar(64) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_performance`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_performance
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_queue`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL DEFAULT '',
  `params` varchar(1000) NOT NULL DEFAULT '',
  `keyword` varchar(1000) NOT NULL DEFAULT '',
  `response` varchar(2000) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_queue
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_resource`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL DEFAULT '',
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_settings`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_settings
-- ----------------------------
INSERT INTO `ims_core_settings` VALUES ('authmode', 'i:1;');
INSERT INTO `ims_core_settings` VALUES ('close', 'a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}');
INSERT INTO `ims_core_settings` VALUES ('copyright', 'a:17:{s:8:\"sitename\";s:24:\"好资源微信管理系统\";s:3:\"url\";s:17:\"http://www.goodziyuan.com\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:17:\"powered by goodziyuan.com\";s:11:\"footerright\";s:0:\"\";s:5:\"flogo\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:10:\"114.060055\";s:3:\"lat\";s:9:\"22.529554\";}s:7:\"company\";s:39:\"深圳市零壹贰科技有限公司\";s:7:\"address\";s:68:\"深圳市福田区北方大厦1108\";s:6:\"person\";s:9:\"微赞\";s:5:\"phone\";s:11:\"15800008888\";s:2:\"qq\";s:9:\"800083075\";s:5:\"email\";s:0:\"\";s:8:\"keywords\";s:82:\"微赞,微信,微信公众平台,公众平台二次开发,公众平台开源软件\";s:11:\"description\";s:82:\"微赞,微信,微信公众平台,公众平台二次开发,公众平台开源软件\";s:12:\"showhomepage\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('register', 'a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('site', 'a:2:{s:3:\"key\";s:5:\"35928\";s:5:\"token\";s:32:\"c0d5f666e3997745253b6222efadbed5\";}');
INSERT INTO `ims_core_settings` VALUES ('basic', 'a:1:{s:8:\"template\";s:7:\"default\";}');

-- ----------------------------
-- Table structure for `ims_core_wechats_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_wechats_attachment`;
CREATE TABLE `ims_core_wechats_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `type` varchar(15) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_wechats_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon`;
CREATE TABLE `ims_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `logo_url` varchar(150) NOT NULL,
  `code_type` tinyint(3) unsigned NOT NULL,
  `brand_name` varchar(15) NOT NULL,
  `title` varchar(15) NOT NULL,
  `sub_title` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `notice` varchar(15) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_info` varchar(200) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `location_id_list` varchar(1000) NOT NULL,
  `use_custom_code` tinyint(3) NOT NULL,
  `bind_openid` tinyint(3) unsigned NOT NULL,
  `can_share` tinyint(3) unsigned NOT NULL,
  `can_give_friend` tinyint(3) unsigned NOT NULL,
  `get_limit` tinyint(3) unsigned NOT NULL,
  `service_phone` varchar(20) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `source` varchar(20) NOT NULL,
  `url_name_type` varchar(20) NOT NULL,
  `custom_url` varchar(100) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_location`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_location
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_modules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_modules`;
CREATE TABLE `ims_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `card_id` (`card_id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_record`;
CREATE TABLE `ims_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `outer_id` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `friend_openid` varchar(50) NOT NULL,
  `givebyfriend` tinyint(3) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `usetime` int(10) unsigned NOT NULL,
  `status` tinyint(3) NOT NULL,
  `clerk_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `outer_id` (`outer_id`),
  KEY `card_id` (`card_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_setting`;
CREATE TABLE `ims_coupon_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) NOT NULL,
  `logourl` varchar(150) NOT NULL,
  `whitelist` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_cover_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT '',
  `do` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_cover_reply
-- ----------------------------
INSERT INTO `ims_cover_reply` VALUES ('1', '1', '0', '7', 'mc', '', '个人中心入口设置', '', '', './index.php?c=mc&a=home&i=1');
INSERT INTO `ims_cover_reply` VALUES ('2', '1', '1', '8', 'site', '', '微赞团队入口设置', '', '', './index.php?c=home&i=1&t=1');

-- ----------------------------
-- Table structure for `ims_custom_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL DEFAULT '-1',
  `end1` int(10) NOT NULL DEFAULT '-1',
  `start2` int(10) NOT NULL DEFAULT '-1',
  `end2` int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_custom_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_dqq_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_dqq_award`;
CREATE TABLE `ims_dqq_award` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) NOT NULL COMMENT '奖品名称',
  `total` int(11) NOT NULL COMMENT '数量',
  `probalilty` varchar(5) NOT NULL COMMENT '概率单位%',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `inkind` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否是实物',
  `get_jf` int(11) NOT NULL COMMENT '获取的积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dqq_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_dqq_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_dqq_reply`;
CREATE TABLE `ims_dqq_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `description` varchar(100) NOT NULL COMMENT '活动描述',
  `rule` varchar(1000) NOT NULL COMMENT '规则',
  `periodlottery` smallint(10) unsigned NOT NULL DEFAULT '1' COMMENT '0为无周期',
  `maxlottery` tinyint(3) unsigned NOT NULL COMMENT '最大抽奖数',
  `default_tips` varchar(100) NOT NULL COMMENT '默认提示信息',
  `hitcredit` int(11) NOT NULL COMMENT '中奖奖励积分',
  `misscredit` int(11) NOT NULL COMMENT '未中奖奖励积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dqq_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_dqq_winner`
-- ----------------------------
DROP TABLE IF EXISTS `ims_dqq_winner`;
CREATE TABLE `ims_dqq_winner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `aid` int(10) unsigned NOT NULL COMMENT '奖品ID',
  `award` varchar(100) NOT NULL DEFAULT '' COMMENT '奖品名称',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '中奖信息描述',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未领奖，1不需要领奖，2已领奖',
  `createtime` int(10) unsigned NOT NULL COMMENT '获奖日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dqq_winner
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_egg_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_egg_award`;
CREATE TABLE `ims_egg_award` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) NOT NULL COMMENT '奖品名称',
  `total` int(11) NOT NULL COMMENT '数量',
  `probalilty` varchar(5) NOT NULL COMMENT '概率单位%',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `inkind` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否是实物',
  `activation_code` text COMMENT '激活码',
  `activation_url` varchar(200) NOT NULL COMMENT '激活地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_egg_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_egg_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_egg_reply`;
CREATE TABLE `ims_egg_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `description` varchar(100) NOT NULL COMMENT '活动描述',
  `rule` varchar(1000) NOT NULL COMMENT '规则',
  `periodlottery` smallint(10) unsigned NOT NULL DEFAULT '1' COMMENT '0为无周期',
  `maxlottery` tinyint(3) unsigned NOT NULL COMMENT '最大抽奖数',
  `default_tips` varchar(100) NOT NULL COMMENT '默认提示信息',
  `hitcredit` int(11) NOT NULL COMMENT '中奖奖励积分',
  `misscredit` int(11) NOT NULL COMMENT '未中奖奖励积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_egg_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_egg_winner`
-- ----------------------------
DROP TABLE IF EXISTS `ims_egg_winner`;
CREATE TABLE `ims_egg_winner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `aid` int(10) unsigned NOT NULL COMMENT '奖品ID',
  `award` varchar(100) NOT NULL DEFAULT '' COMMENT '奖品名称',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '中奖信息描述',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未领奖，1不需要领奖，2已领奖',
  `createtime` int(10) unsigned NOT NULL COMMENT '获奖日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_egg_winner
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_runman_plus`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_runman_plus`;
CREATE TABLE `ims_eso_runman_plus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL COMMENT '加分-被加分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='奔跑兄弟 - 加温记录';

-- ----------------------------
-- Records of ims_eso_runman_plus
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_runman_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_runman_reply`;
CREATE TABLE `ims_eso_runman_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `content` text,
  `background` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `description` text,
  `share_title` varchar(255) DEFAULT '',
  `share_desc` varchar(255) DEFAULT '',
  `share_url` varchar(255) DEFAULT '',
  `mp3` varchar(255) DEFAULT '',
  `join` int(10) unsigned DEFAULT '0',
  `view` int(10) unsigned DEFAULT '0',
  `share_txt` text,
  `regular` text,
  `setting` text,
  `starttime` bigint(18) unsigned DEFAULT '0',
  `endtime` bigint(18) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='奔跑兄弟 - 回复规则';

-- ----------------------------
-- Records of ims_eso_runman_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_runman_submit`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_runman_submit`;
CREATE TABLE `ims_eso_runman_submit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT '',
  `rid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '0',
  `did` int(10) unsigned DEFAULT '0',
  `indate` bigint(18) unsigned DEFAULT '0',
  `update` bigint(18) unsigned DEFAULT '0',
  `money` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '提现金额',
  `exchange` tinyint(3) unsigned DEFAULT '0' COMMENT '1为已处理',
  `setting` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='奔跑兄弟 - 领取记录';

-- ----------------------------
-- Records of ims_eso_runman_submit
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_runman_users`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_runman_users`;
CREATE TABLE `ims_eso_runman_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `ruid` int(11) DEFAULT NULL COMMENT '来源会员ID',
  `rnum` int(10) unsigned DEFAULT '0' COMMENT '被访问次数',
  `title` varchar(255) DEFAULT '',
  `sex` varchar(10) DEFAULT '',
  `tag` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `img` varchar(255) DEFAULT '',
  `openid` varchar(255) DEFAULT '',
  `indate` bigint(18) unsigned DEFAULT '0' COMMENT '入住时间',
  `ladate` varchar(20) DEFAULT '',
  `defaultval` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '初始暖值',
  `ruidval` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '别人加的暖值',
  `val` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '当前暖值（暖值总）',
  `one` tinyint(3) unsigned DEFAULT '0' COMMENT '第一次进入',
  `setting` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='奔跑兄弟 - 会员';

-- ----------------------------
-- Records of ims_eso_runman_users
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_address`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_address`;
CREATE TABLE `ims_eso_sale_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_adv`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_adv`;
CREATE TABLE `ims_eso_sale_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_adv
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_cart`;
CREATE TABLE `ims_eso_sale_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `optionid` int(10) DEFAULT '0',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_category`;
CREATE TABLE `ims_eso_sale_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `commission` int(10) unsigned DEFAULT '0' COMMENT '推荐该类商品所能获得的佣金',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `thumb` varchar(255) NOT NULL COMMENT '分类图片',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isrecommand` int(10) DEFAULT '0',
  `description` varchar(500) NOT NULL COMMENT '分类介绍',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_commission`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_commission`;
CREATE TABLE `ims_eso_sale_commission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL COMMENT '粉丝ID',
  `ogid` int(10) unsigned DEFAULT NULL COMMENT '订单商品ID',
  `commission` decimal(10,2) unsigned NOT NULL COMMENT '佣金',
  `content` text,
  `flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为账户充值记录，1为提现记录',
  `isout` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为未导出，1为已导出',
  `isshare` int(11) DEFAULT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_commission
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_credit_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_credit_award`;
CREATE TABLE `ims_eso_sale_credit_award` (
  `award_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `deadline` datetime NOT NULL,
  `credit_cost` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '100',
  `content` text NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_credit_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_credit_request`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_credit_request`;
CREATE TABLE `ims_eso_sale_credit_request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `award_id` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_credit_request
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_dispatch`;
CREATE TABLE `ims_eso_sale_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `dispatchname` varchar(50) DEFAULT '',
  `dispatchtype` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `firstprice` decimal(10,2) DEFAULT '0.00',
  `secondprice` decimal(10,2) DEFAULT '0.00',
  `firstweight` int(11) DEFAULT '0',
  `secondweight` int(11) DEFAULT '0',
  `express` int(11) DEFAULT '0',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_dispatch
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_express`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_express`;
CREATE TABLE `ims_eso_sale_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `express_name` varchar(50) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `express_price` varchar(10) DEFAULT '',
  `express_area` varchar(100) DEFAULT '',
  `express_url` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_express
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_feedback`;
CREATE TABLE `ims_eso_sale_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为维权，2为告擎',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未解决，1用户同意，2用户拒绝',
  `feedbackid` varchar(30) NOT NULL COMMENT '投诉单号',
  `transid` varchar(30) NOT NULL COMMENT '订单号',
  `reason` varchar(1000) NOT NULL COMMENT '理由',
  `solution` varchar(1000) NOT NULL COMMENT '期待解决方案',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_feedbackid` (`feedbackid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_transid` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_goods`;
CREATE TABLE `ims_eso_sale_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为实体，2为虚拟',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `xsthumb` varchar(255) DEFAULT '',
  `unit` varchar(5) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goodssn` varchar(50) NOT NULL DEFAULT '',
  `productsn` varchar(50) NOT NULL DEFAULT '',
  `marketprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `costprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `originalprice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `total` int(10) NOT NULL DEFAULT '0',
  `totalcnf` int(11) DEFAULT '0' COMMENT '0 拍下减库存 1 付款减库存 2 永久不减',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `credit` int(11) DEFAULT '0',
  `maxbuy` int(11) DEFAULT '0',
  `hasoption` int(11) DEFAULT '0',
  `dispatch` int(11) DEFAULT '0',
  `thumb_url` text,
  `isnew` int(11) DEFAULT '0',
  `ishot` int(11) DEFAULT '0',
  `isdiscount` int(11) DEFAULT '0',
  `isrecommand` int(11) DEFAULT '0',
  `istime` int(11) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `viewcount` int(11) DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `commission2` int(3) DEFAULT NULL,
  `commission3` int(3) DEFAULT NULL,
  `commission` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_goods_option`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_goods_option`;
CREATE TABLE `ims_eso_sale_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `productprice` decimal(10,2) DEFAULT '0.00',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `costprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_goods_option
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_goods_param`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_goods_param`;
CREATE TABLE `ims_eso_sale_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `value` text,
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_goods_param
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_member`;
CREATE TABLE `ims_eso_sale_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `shareid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `from_user` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `bankcard` varchar(20) DEFAULT NULL,
  `banktype` varchar(20) DEFAULT NULL,
  `alipay` varchar(100) DEFAULT NULL,
  `wxhao` varchar(100) DEFAULT NULL,
  `commission` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '已结佣佣金',
  `zhifu` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '已打款佣金',
  `content` text,
  `createtime` int(10) NOT NULL,
  `flagtime` int(10) DEFAULT NULL COMMENT '为成推广人的时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '0为禁用，1为可用',
  `flag` tinyint(1) DEFAULT '0' COMMENT '0为会推广人，1为推广人',
  `clickcount` int(11) NOT NULL DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_order`;
CREATE TABLE `ims_eso_sale_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `shareid` int(10) unsigned DEFAULT '0' COMMENT '推荐人ID',
  `ordersn` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为已付款，2为已发货，3为成功',
  `sendtype` tinyint(1) unsigned NOT NULL COMMENT '1为快递，2为自提',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  `goodstype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `addressid` int(10) unsigned NOT NULL,
  `expresscom` varchar(30) NOT NULL DEFAULT '',
  `expresssn` varchar(50) NOT NULL DEFAULT '',
  `express` varchar(200) NOT NULL DEFAULT '',
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `dispatch` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_order_goods`;
CREATE TABLE `ims_eso_sale_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `commission` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '该订单的推荐佣金',
  `commission2` decimal(10,2) unsigned DEFAULT '0.00',
  `commission3` decimal(10,2) unsigned DEFAULT '0.00',
  `applytime` int(10) unsigned DEFAULT NULL COMMENT '申请时间',
  `checktime` int(10) unsigned DEFAULT NULL COMMENT '审核时间',
  `status` tinyint(3) DEFAULT '0' COMMENT '申请状态，-2为标志删除，-1为审核无效，0为未申请，1为正在申请，2为审核通过',
  `content` text,
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `optionid` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `optionname` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_product`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_product`;
CREATE TABLE `ims_eso_sale_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `productsn` varchar(50) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `marketprice` decimal(10,0) unsigned NOT NULL,
  `productprice` decimal(10,0) unsigned NOT NULL,
  `total` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `spec` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goodsid` (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_product
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_rule`;
CREATE TABLE `ims_eso_sale_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '',
  `rule` text,
  `terms` text,
  `createtime` int(10) NOT NULL,
  `gzurl` varchar(255) NOT NULL,
  `teamfy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_rules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_rules`;
CREATE TABLE `ims_eso_sale_rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `rule` text,
  `terms` text,
  `createtime` int(10) NOT NULL,
  `commtime` int(5) NOT NULL DEFAULT '15' COMMENT '默认15天',
  `promotertimes` int(10) NOT NULL DEFAULT '1' COMMENT '默认成交一次才能成为推广员',
  `ischeck` tinyint(1) DEFAULT '1' COMMENT '0为未审核，1为审核',
  `clickcredit` int(10) NOT NULL DEFAULT '0' COMMENT '点击获取积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_rules
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_share_history`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_share_history`;
CREATE TABLE `ims_eso_sale_share_history` (
  `sharemid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_share_history
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_spec`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_spec`;
CREATE TABLE `ims_eso_sale_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `displaytype` tinyint(3) unsigned NOT NULL,
  `content` text NOT NULL,
  `goodsid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_spec
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_sale_spec_item`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_sale_spec_item`;
CREATE TABLE `ims_eso_sale_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `show` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_specid` (`specid`),
  KEY `indx_show` (`show`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_eso_sale_spec_item
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_share_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_share_data`;
CREATE TABLE `ims_eso_share_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则id',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `userid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `eso_shareip` varchar(15) NOT NULL DEFAULT '' COMMENT '分享达人IP',
  `eso_sharetime` int(10) unsigned NOT NULL COMMENT '分享时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分享达人';

-- ----------------------------
-- Records of ims_eso_share_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_share_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_share_list`;
CREATE TABLE `ims_eso_share_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则id',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `userid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `eso_sharenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享量',
  `eso_sharetime` int(10) unsigned NOT NULL COMMENT '最后分享时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否禁止',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分享达人';

-- ----------------------------
-- Records of ims_eso_share_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_eso_share_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_eso_share_reply`;
CREATE TABLE `ims_eso_share_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `isname` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要绑定个人信息',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL COMMENT '规则标题',
  `checkkeyword` varchar(50) NOT NULL COMMENT '查询关键词',
  `picture` varchar(100) NOT NULL COMMENT '图片',
  `start_time` int(10) unsigned NOT NULL COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL COMMENT '结束时间',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '内容',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '开关状态',
  `r` int(10) unsigned NOT NULL DEFAULT '0',
  `z` int(10) unsigned NOT NULL DEFAULT '0',
  `u` varchar(255) DEFAULT NULL,
  `share_url` text,
  `share_txt` text,
  `share_desc` text,
  `share_title` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分享达人';

-- ----------------------------
-- Records of ims_eso_share_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_bonus_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_bonus_fans`;
CREATE TABLE `ims_ewei_bonus_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `openid` varchar(100) DEFAULT '' COMMENT '用户ID',
  `nickname` varchar(255) DEFAULT '' COMMENT '昵称',
  `headurl` varchar(255) DEFAULT '' COMMENT '头像',
  `area` varchar(255) DEFAULT '' COMMENT '地区',
  `realname` varchar(255) DEFAULT '' COMMENT '姓名',
  `mobile` varchar(255) DEFAULT '' COMMENT '手机',
  `paytype` tinyint(1) DEFAULT '0',
  `account` varchar(255) DEFAULT '',
  `bank` varchar(255) DEFAULT '',
  `points_start` decimal(10,2) DEFAULT '0.00' COMMENT '初始钱数',
  `points_current` decimal(10,2) DEFAULT '0.00' COMMENT '当前钱数',
  `points_help` decimal(10,2) DEFAULT '0.00' COMMENT '合体钱数',
  `points_withdraw` decimal(10,2) DEFAULT '0.00' COMMENT '提取钱数',
  `points_total` decimal(10,2) DEFAULT '0.00' COMMENT '钱数总数',
  `helps` int(11) DEFAULT '0' COMMENT '被帮助数',
  `helpothers` int(11) DEFAULT '0' COMMENT '帮助数',
  `joincount` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0' COMMENT '0 未提现 1 已提现',
  `createtime` int(10) DEFAULT '0' COMMENT '参与时间',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_bonus_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_bonus_fans_help`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_bonus_fans_help`;
CREATE TABLE `ims_ewei_bonus_fans_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `fansopenid` varchar(100) DEFAULT '',
  `openid` varchar(100) DEFAULT '',
  `nickname` varchar(255) DEFAULT '',
  `headurl` varchar(255) DEFAULT '',
  `points` decimal(10,2) DEFAULT '0.00',
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_bonus_fans_help
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_bonus_fans_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_bonus_fans_record`;
CREATE TABLE `ims_ewei_bonus_fans_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `openid` varchar(100) DEFAULT '',
  `nickname` varchar(255) DEFAULT '',
  `points` decimal(10,2) DEFAULT '0.00' COMMENT '钱数',
  `status` int(11) DEFAULT '0' COMMENT '状态 0 申请 1 已提现',
  `sim` int(11) DEFAULT '0' COMMENT '状态 0 用户 1 模拟',
  `createtime` int(10) DEFAULT '0' COMMENT '申请时间',
  `consumetime` int(10) DEFAULT '0' COMMENT '提现时间',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_bonus_fans_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_bonus_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_bonus_reply`;
CREATE TABLE `ims_ewei_bonus_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(200) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0',
  `start` decimal(10,2) DEFAULT '0.00',
  `end` decimal(10,2) DEFAULT '0.00',
  `detail` text,
  `rules` text,
  `copyright` varchar(200) DEFAULT '',
  `followurl` varchar(1000) DEFAULT '',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `joincount` int(11) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  `points` decimal(10,2) DEFAULT '100.00' COMMENT '多少可以申请提现',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_bonus_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_bonus_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_bonus_sysset`;
CREATE TABLE `ims_ewei_bonus_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `appid` varchar(255) DEFAULT '',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  `resroot` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_bonus_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_comeon_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_comeon_award`;
CREATE TABLE `ims_ewei_comeon_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `point` decimal(10,2) DEFAULT '0.00',
  `name` varchar(255) DEFAULT '',
  `num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_comeon_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_comeon_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_comeon_fans`;
CREATE TABLE `ims_ewei_comeon_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `from_user` varchar(100) DEFAULT '' COMMENT '用户ID',
  `mobile` varchar(20) DEFAULT '' COMMENT '登记信息(手机等)',
  `points` decimal(10,2) DEFAULT '0.00' COMMENT '点数',
  `helps` int(11) DEFAULT '0' COMMENT '被助力次数',
  `createtime` int(10) DEFAULT '0',
  `status` int(10) DEFAULT '0',
  `awardid` int(10) DEFAULT '0',
  `awardtime` int(10) DEFAULT '0',
  `finger` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_comeon_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_comeon_fans_help`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_comeon_fans_help`;
CREATE TABLE `ims_ewei_comeon_fans_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `from_user` varchar(100) DEFAULT '' COMMENT '助力的',
  `fansid` int(11) DEFAULT '0' COMMENT '被助力的',
  `date` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_comeon_fans_help
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_comeon_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_comeon_reply`;
CREATE TABLE `ims_ewei_comeon_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `weid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(200) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `fansnum` int(11) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0',
  `toppic` varchar(255) DEFAULT '',
  `bgcolor` varchar(255) DEFAULT '',
  `fontcolor` varchar(255) DEFAULT '',
  `btncolor` varchar(255) DEFAULT '',
  `btnfontcolor` varchar(255) DEFAULT '',
  `start` decimal(10,2) DEFAULT '0.00',
  `end` decimal(10,2) DEFAULT '0.00',
  `tips` varchar(200) DEFAULT '',
  `info_tips` varchar(200) DEFAULT '' COMMENT '例如 您已经获得 [P] [U]',
  `help_tips` varchar(200) DEFAULT '' COMMENT '例如 给TA助力',
  `join_tips` varchar(200) DEFAULT '' COMMENT '例如 我也来领取加油卡',
  `invite_tips` varchar(200) DEFAULT '' COMMENT '例如 邀请好友助力',
  `rank_tips` varchar(200) DEFAULT '' COMMENT '例如 显示排名',
  `rank_num` int(11) DEFAULT '0' COMMENT '多少名之前的排名',
  `unit` varchar(200) DEFAULT '' COMMENT '单位',
  `ticket_information` varchar(200) DEFAULT '',
  `tel_rename` varchar(200) DEFAULT '',
  `content` text,
  `copyright` varchar(200) DEFAULT '',
  `joincontent` text,
  `overcontent` text,
  `self_times` int(11) DEFAULT '0' COMMENT '活动期间可以被助力几次',
  `self_day_times` int(11) DEFAULT '0' COMMENT '每天可以被助力几次',
  `other_times` int(11) DEFAULT '0' COMMENT '活动期间可给别人助力多少次',
  `other_day_times` int(11) DEFAULT '0' COMMENT '每天可给别人助力多少次',
  `other_one_times` int(11) DEFAULT '0' COMMENT '活动期间可给相同助力多少次',
  `other_one_day_times` int(11) DEFAULT '0' COMMENT '每天可给相同用户助力多少次',
  `type` tinyint(1) DEFAULT '0' COMMENT '规则类型 0 集分 1 集分',
  `show_rank` tinyint(1) DEFAULT '0' COMMENT '显示排名 0 不显示 1 显示',
  `show_num` tinyint(1) DEFAULT '0' COMMENT '是否显示奖品数量',
  `show_helps` tinyint(1) DEFAULT '0' COMMENT '是否显示助力数',
  `awardtype` tinyint(1) DEFAULT '0' COMMENT '奖品类型 0 一次性 1 阶梯性',
  `awards` text COMMENT '奖品',
  `rules` text COMMENT '规则',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `share_txt` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_comeon_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_comeon_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_comeon_rule`;
CREATE TABLE `ims_ewei_comeon_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `point` decimal(10,2) DEFAULT '0.00',
  `start` decimal(10,2) DEFAULT '0.00',
  `end` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_comeon_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_comeon_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_comeon_sysset`;
CREATE TABLE `ims_ewei_comeon_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `appid` varchar(255) DEFAULT '',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_comeon_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_couplet_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_couplet_fans`;
CREATE TABLE `ims_ewei_couplet_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `openid` varchar(100) DEFAULT '' COMMENT '用户ID',
  `nickname` varchar(255) DEFAULT '' COMMENT '昵称',
  `headurl` varchar(255) DEFAULT '' COMMENT '头像',
  `area` varchar(255) DEFAULT '' COMMENT '地区',
  `realname` varchar(255) DEFAULT '' COMMENT '姓名',
  `mobile` varchar(255) DEFAULT '' COMMENT '手机',
  `uptext` text COMMENT '上联',
  `downtext` text COMMENT '下联',
  `rule` text COMMENT '规则',
  `helps` int(11) DEFAULT '0' COMMENT '被帮助数',
  `status` tinyint(1) DEFAULT '0' COMMENT '0 未中奖 1 已中奖 2 已兑奖',
  `num` int(11) DEFAULT '0' COMMENT '抽中个数',
  `log` tinyint(1) DEFAULT '0',
  `sim` tinyint(1) DEFAULT '0',
  `createtime` int(10) DEFAULT '0' COMMENT '参与时间',
  `consumetime` int(10) DEFAULT '0' COMMENT '兑奖时间',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_couplet_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_couplet_fans_help`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_couplet_fans_help`;
CREATE TABLE `ims_ewei_couplet_fans_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `fansopenid` varchar(100) DEFAULT '',
  `openid` varchar(100) DEFAULT '',
  `nickname` varchar(255) DEFAULT '',
  `headurl` varchar(255) DEFAULT '',
  `desc` text,
  `status` tinyint(1) DEFAULT '0' COMMENT '0 错误 1 正确',
  `createtime` int(10) DEFAULT '0' COMMENT '帮助时间',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_couplet_fans_help
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_couplet_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_couplet_reply`;
CREATE TABLE `ims_ewei_couplet_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(200) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0',
  `start` decimal(10,2) DEFAULT '0.00',
  `end` decimal(10,2) DEFAULT '0.00',
  `detail` text,
  `rules` text,
  `couplets` text,
  `award_name` varchar(255) DEFAULT '0',
  `award_total` int(11) DEFAULT '0',
  `award_last` int(11) DEFAULT '0',
  `friendcount` int(11) DEFAULT '0',
  `copyright` varchar(200) DEFAULT '',
  `toptext` varchar(200) DEFAULT '',
  `followurl` varchar(1000) DEFAULT '',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `joincount` int(11) DEFAULT '0',
  `bgcolor` varchar(255) DEFAULT '',
  `res_img1` varchar(255) DEFAULT '',
  `res_img2` varchar(255) DEFAULT '',
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_couplet_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_couplet_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_couplet_sysset`;
CREATE TABLE `ims_ewei_couplet_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `appid` varchar(255) DEFAULT '',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_couplet_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_course`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_course`;
CREATE TABLE `ims_ewei_exam_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `pcate` int(11) DEFAULT '0',
  `ccate` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '' COMMENT '课程标题',
  `ctype` int(11) DEFAULT '0' COMMENT '0 时间限制 1 人数限制',
  `starttime` int(11) DEFAULT '0' COMMENT '报名开始时间',
  `endtime` int(11) DEFAULT '0' COMMENT '报名截止时间',
  `ctotal` int(11) DEFAULT '0' COMMENT '报名人数限制',
  `description` text,
  `content` text,
  `thumb` varchar(255) DEFAULT '',
  `viewnum` int(11) DEFAULT '0' COMMENT '访问人数',
  `fansnum` int(11) DEFAULT '0' COMMENT '报名人数',
  `teachers` text COMMENT '授课讲师',
  `coursetime` int(11) DEFAULT '0' COMMENT '开始时间',
  `times` int(11) DEFAULT '0' COMMENT '授课时长',
  `week` int(11) DEFAULT '0' COMMENT '第几期',
  `address` text,
  `location_p` varchar(255) DEFAULT NULL,
  `location_c` varchar(255) DEFAULT NULL,
  `location_a` varchar(255) DEFAULT NULL,
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0' COMMENT '题目排序',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_pcate` (`ccate`),
  KEY `idx_ccate` (`ccate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_course
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_course_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_course_category`;
CREATE TABLE `ims_ewei_exam_course_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `parentid` int(11) DEFAULT '0',
  `cname` varchar(255) DEFAULT '',
  `description` text COMMENT '描述',
  `displayorder` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_parentid` (`parentid`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_course_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_course_reserve`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_course_reserve`;
CREATE TABLE `ims_ewei_exam_course_reserve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `courseid` int(11) DEFAULT '0',
  `memberid` int(11) DEFAULT '0',
  `times` int(11) DEFAULT '0' COMMENT '用时',
  `createtime` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `ordersn` varchar(255) DEFAULT '',
  `msg` text,
  `mngtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`memberid`),
  KEY `idx_weid` (`weid`),
  KEY `idx_paperid` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_exam_course_reserve
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_member`;
CREATE TABLE `ims_ewei_exam_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '',
  `userid` varchar(255) DEFAULT '',
  `username` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_paper`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_paper`;
CREATE TABLE `ims_ewei_exam_paper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `pcate` int(11) DEFAULT '0',
  `ccate` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '' COMMENT '试卷标题',
  `level` int(11) DEFAULT '0' COMMENT '难度',
  `score` int(11) DEFAULT '0' COMMENT '分值',
  `description` text,
  `thumb` varchar(255) DEFAULT '',
  `year` int(11) DEFAULT '0' COMMENT '年份',
  `viewnum` int(11) DEFAULT '0' COMMENT '访问人数',
  `fansnum` int(11) DEFAULT '0' COMMENT '考试人数',
  `times` int(11) DEFAULT '0' COMMENT '时间限制 0不限制',
  `types` varchar(5) DEFAULT NULL COMMENT '考题类型选择 例如 11111 包含5种题型',
  `avscore` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平均分',
  `avtimes` int(11) NOT NULL DEFAULT '0' COMMENT '平均用时',
  `createtime` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '考题类型id',
  `status` tinyint(1) DEFAULT '0',
  `isfull` tinyint(1) NOT NULL DEFAULT '0' COMMENT '试题是否完整1完整0不完整',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_pcate` (`ccate`),
  KEY `idx_ccate` (`ccate`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_paper
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_paper_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_paper_category`;
CREATE TABLE `ims_ewei_exam_paper_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `parentid` int(11) DEFAULT '0',
  `cname` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `description` text COMMENT '描述',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_parentid` (`parentid`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_paper_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_paper_member_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_paper_member_data`;
CREATE TABLE `ims_ewei_exam_paper_member_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `paperid` int(11) DEFAULT '0',
  `memberid` int(11) DEFAULT '0',
  `recordid` int(11) DEFAULT '0' COMMENT '学员考试记录id',
  `questionid` int(11) NOT NULL DEFAULT '0',
  `answer` text,
  `times` int(11) DEFAULT '0' COMMENT '单题用时',
  `createtime` int(11) DEFAULT '0',
  `isright` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否回答正确',
  `type` int(11) DEFAULT '0' COMMENT '1 判断 2单选 3多选 4 填空  5 解答',
  `pageid` int(11) NOT NULL DEFAULT '0' COMMENT '顺序id',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_memberid` (`memberid`),
  KEY `idx_paperid` (`paperid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_paper_member_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_paper_member_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_paper_member_record`;
CREATE TABLE `ims_ewei_exam_paper_member_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `paperid` int(11) DEFAULT '0',
  `memberid` int(11) DEFAULT '0',
  `times` int(11) DEFAULT '0' COMMENT '用时',
  `countdown` int(11) DEFAULT '0' COMMENT '倒计时',
  `score` decimal(10,2) DEFAULT '0.00' COMMENT '得分',
  `did` int(11) DEFAULT '0' COMMENT '是否完成考试',
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`memberid`),
  KEY `idx_weid` (`weid`),
  KEY `idx_paperid` (`paperid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_paper_member_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_paper_question`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_paper_question`;
CREATE TABLE `ims_ewei_exam_paper_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `questionid` int(11) DEFAULT '0' COMMENT '题ID',
  `displayorder` int(11) DEFAULT '0' COMMENT '题目排序',
  `paperid` bigint(20) NOT NULL DEFAULT '0' COMMENT '试卷ID',
  PRIMARY KEY (`id`),
  KEY `idx_questionid` (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_paper_question
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_paper_type`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_paper_type`;
CREATE TABLE `ims_ewei_exam_paper_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `title` varchar(255) DEFAULT '' COMMENT '试卷标题',
  `score` decimal(10,2) DEFAULT '0.00' COMMENT '分值',
  `types` text COMMENT '试题类型设置 包含试题类型 试题分数',
  `times` int(11) NOT NULL DEFAULT '0' COMMENT '考试时间',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_paper_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_pool`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_pool`;
CREATE TABLE `ims_ewei_exam_pool` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `description` text COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_pool
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_question`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_question`;
CREATE TABLE `ims_ewei_exam_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `poolid` int(11) DEFAULT '0' COMMENT '题库ID',
  `paperid1` int(11) DEFAULT '0' COMMENT '题库ID',
  `type` int(11) DEFAULT '0' COMMENT '1 判断 2单选 3多选 4 填空  5 解答',
  `level` int(11) DEFAULT '0' COMMENT '难度',
  `question` text COMMENT '问题',
  `thumb` varchar(255) DEFAULT '' COMMENT '问题图片',
  `answer` text COMMENT '答案',
  `isimg` tinyint(1) DEFAULT '0' COMMENT '答案是否包含图片',
  `explain` text COMMENT '讲解',
  `fansnum` int(11) DEFAULT '0' COMMENT '多少人做过',
  `correctnum` int(11) DEFAULT '0' COMMENT '多少人正确',
  `items` text,
  `img_items` text,
  PRIMARY KEY (`id`),
  KEY `idx_poolid` (`poolid`),
  KEY `idx_type` (`type`),
  KEY `idx_weid` (`weid`),
  KEY `idx_paperid` (`paperid1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_question
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_reply`;
CREATE TABLE `ims_ewei_exam_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `paperid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`),
  KEY `idx_weid` (`weid`),
  KEY `idx_paperid` (`paperid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_exam_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_exam_sysset`;
CREATE TABLE `ims_ewei_exam_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `classopen` int(11) DEFAULT '1',
  `login_flag` tinyint(1) DEFAULT '0' COMMENT '是否开启登录',
  `about` text COMMENT '帮助',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_exam_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_money_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_money_award`;
CREATE TABLE `ims_ewei_money_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `sum` float DEFAULT NULL,
  `info` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '0' COMMENT '用户ID',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `prizetype` varchar(10) DEFAULT '' COMMENT '类型',
  `award_sn` varchar(50) DEFAULT '' COMMENT 'SN',
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `exchange` double DEFAULT '0',
  `useable` double DEFAULT '0',
  `shopUrl` varchar(300) NOT NULL COMMENT '购物链接地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_money_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_money_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_money_fans`;
CREATE TABLE `ims_ewei_money_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `isplay` tinyint(1) DEFAULT '0',
  `info` tinyint(1) DEFAULT '0',
  `from_user` varchar(50) NOT NULL,
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `sum` float DEFAULT NULL,
  `remain` int(11) NOT NULL,
  `max_score` float NOT NULL,
  `alltimes` int(11) NOT NULL COMMENT '总剩余次数',
  `daytimes` int(11) NOT NULL COMMENT '当天剩余次数',
  `lasttime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_money_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_money_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_money_reply`;
CREATE TABLE `ims_ewei_money_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `isfollow` tinyint(1) NOT NULL COMMENT '是否关注',
  `isshow` tinyint(1) DEFAULT '0',
  `info` int(11) DEFAULT '0',
  `c_rate_one` tinyint(1) DEFAULT '0',
  `c_rate_two` tinyint(1) DEFAULT '0',
  `c_rate_three` tinyint(1) DEFAULT '0',
  `c_rate_four` tinyint(1) DEFAULT '0',
  `c_rate_five` tinyint(1) DEFAULT '0',
  `c_rate_six` tinyint(1) DEFAULT '0',
  `c_rate_seven` tinyint(1) DEFAULT '0',
  `c_rate_eight` tinyint(1) DEFAULT '0',
  `c_rate_nine` tinyint(1) DEFAULT '0',
  `game_time` int(11) NOT NULL,
  `title` varchar(200) DEFAULT '',
  `start_picurl` varchar(200) DEFAULT '',
  `reg_first` tinyint(1) NOT NULL COMMENT '游戏前后注册',
  `max_sum` int(11) NOT NULL,
  `min_sum` int(11) NOT NULL,
  `total_remain` int(11) NOT NULL,
  `remain` int(11) NOT NULL,
  `remain_stime` int(11) NOT NULL,
  `remain_etime` int(11) NOT NULL,
  `remain_name` varchar(50) NOT NULL COMMENT '现金劵名称',
  `remain_sm` varchar(15) NOT NULL COMMENT '兑奖密码',
  `valid_time` varchar(100) NOT NULL COMMENT '现金劵有效时间',
  `remain_rule` varchar(100) NOT NULL COMMENT '现金劵规则',
  `rule` text NOT NULL COMMENT '规则',
  `description` text NOT NULL COMMENT '活动简介',
  `alltimes` int(3) unsigned NOT NULL COMMENT '最大抽奖数',
  `daytimes` int(11) NOT NULL COMMENT '每天最大抽奖数',
  `homeurl` varchar(300) NOT NULL COMMENT '微站链接地址',
  `homepicurl` varchar(200) DEFAULT '',
  `followurl` varchar(300) NOT NULL COMMENT '提示关注网址',
  `homename` varchar(50) NOT NULL COMMENT '微站名称',
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `view_times` int(11) NOT NULL,
  `play_times` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_money_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ewei_money_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_money_sysset`;
CREATE TABLE `ims_ewei_money_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `appid` varchar(255) DEFAULT '',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_money_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_feng_goodscodes`
-- ----------------------------
DROP TABLE IF EXISTS `ims_feng_goodscodes`;
CREATE TABLE `ims_feng_goodscodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL COMMENT '公众账号',
  `s_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `s_cid` smallint(5) unsigned NOT NULL,
  `s_len` smallint(5) DEFAULT NULL COMMENT '长度',
  `s_codes` longtext COMMENT '商品码',
  `s_codes_tmp` longtext COMMENT '商品码备份',
  PRIMARY KEY (`id`),
  KEY `s_id` (`s_id`),
  KEY `uniacid` (`uniacid`),
  KEY `s_len` (`s_len`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_feng_goodscodes
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_feng_goodslist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_feng_goodslist`;
CREATE TABLE `ims_feng_goodslist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `sid` int(10) unsigned NOT NULL COMMENT '同一个商品id',
  `title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `price` int(10) DEFAULT '0' COMMENT '金额',
  `zongrenshu` int(10) unsigned DEFAULT '0' COMMENT '总需人数',
  `canyurenshu` int(10) unsigned DEFAULT '0' COMMENT '已参与人数',
  `shengyurenshu` int(10) unsigned DEFAULT NULL COMMENT '剩余人数',
  `periods` smallint(6) unsigned DEFAULT '0' COMMENT '期数',
  `maxperiods` smallint(5) unsigned DEFAULT '1' COMMENT ' 最大期数',
  `picarr` text COMMENT '商品图片',
  `content` mediumtext COMMENT '商品详情',
  `createtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `pos` tinyint(4) unsigned DEFAULT NULL COMMENT '是否推荐',
  `status` int(11) NOT NULL COMMENT '1:下架, 2: 上架',
  `scale` int(10) unsigned DEFAULT NULL COMMENT '比例',
  `q_uid` varchar(10) DEFAULT NULL COMMENT '中奖人昵称',
  `q_user` varchar(50) DEFAULT NULL COMMENT '中奖人from_user',
  `q_user_code` char(20) DEFAULT NULL COMMENT '中奖码',
  `q_end_time` char(20) DEFAULT NULL COMMENT '揭晓时间',
  `send_state` int(4) unsigned NOT NULL COMMENT '1为已发货',
  `send` int(4) unsigned NOT NULL COMMENT '是否需要快递1为需要',
  `express` varchar(20) DEFAULT NULL COMMENT '快递公司',
  `expressn` char(20) DEFAULT NULL COMMENT '快递单',
  `send_time` char(20) DEFAULT NULL COMMENT '发货时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `sid` (`sid`),
  KEY `status` (`status`),
  KEY `shenyurenshu` (`shengyurenshu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_feng_goodslist
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_feng_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_feng_member`;
CREATE TABLE `ims_feng_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号id',
  `from_user` varchar(50) NOT NULL COMMENT '微信会员openID',
  `realname` varchar(10) NOT NULL COMMENT '真实姓名',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `avatar` varchar(255) NOT NULL COMMENT '头像',
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `address` varchar(255) NOT NULL COMMENT '邮寄地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_feng_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_feng_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_feng_record`;
CREATE TABLE `ims_feng_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` varchar(50) NOT NULL COMMENT '微信会员ID',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `sid` int(10) unsigned NOT NULL COMMENT '商品编号',
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `status` smallint(4) NOT NULL DEFAULT '0' COMMENT '0未支付，1为已付款',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额支付，2为支付宝，3为微信支付',
  `transid` varchar(30) NOT NULL COMMENT '微信订单号',
  `count` int(10) unsigned NOT NULL COMMENT '商品数量',
  `s_codes` longtext COMMENT '商品码',
  `createtime` int(10) unsigned NOT NULL COMMENT '购买时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `status` (`status`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_feng_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_feng_wechat`
-- ----------------------------
DROP TABLE IF EXISTS `ims_feng_wechat`;
CREATE TABLE `ims_feng_wechat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `appid` varchar(100) DEFAULT NULL,
  `appsecret` varchar(200) DEFAULT NULL,
  `access_token` text,
  `lasttime` char(20) DEFAULT NULL,
  `share_title` varchar(200) DEFAULT NULL,
  `share_image` varchar(500) DEFAULT NULL,
  `share_desc` varchar(300) DEFAULT NULL,
  `win_mess` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_feng_wechat
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fighting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fighting`;
CREATE TABLE `ims_fighting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `fid` int(10) unsigned NOT NULL,
  `answerNum` int(11) unsigned NOT NULL COMMENT '已经答题数量',
  `from_user` varchar(30) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL,
  `lastcredit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fighting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fighting_level`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fighting_level`;
CREATE TABLE `ims_fighting_level` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL DEFAULT '0',
  `levelname` varchar(100) NOT NULL DEFAULT '' COMMENT '等级名称',
  `min` int(10) NOT NULL DEFAULT '0' COMMENT '开始积分',
  `max` int(10) NOT NULL DEFAULT '0' COMMENT '结束积分',
  `dateline` int(10) NOT NULL DEFAULT '0' COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fighting_level
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fighting_question_bank`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fighting_question_bank`;
CREATE TABLE `ims_fighting_question_bank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `figure` int(30) NOT NULL,
  `question` varchar(100) NOT NULL,
  `option_num` int(10) unsigned NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) NOT NULL,
  `optionD` varchar(100) NOT NULL,
  `optionE` varchar(100) NOT NULL,
  `optionF` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `sid` int(10) unsigned NOT NULL COMMENT '广告URL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fighting_question_bank
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fighting_question_worng`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fighting_question_worng`;
CREATE TABLE `ims_fighting_question_worng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `fightingid` int(10) unsigned NOT NULL,
  `qname` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) NOT NULL,
  `optionD` varchar(100) NOT NULL,
  `optionE` varchar(100) NOT NULL,
  `optionF` varchar(100) NOT NULL,
  `wornganswer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fighting_question_worng
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fighting_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fighting_setting`;
CREATE TABLE `ims_fighting_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL COMMENT '活动标题',
  `description` longtext NOT NULL COMMENT '活动介绍',
  `tiao` tinyint(1) unsigned NOT NULL COMMENT '1允许跳过0不允许',
  `status_fighting` tinyint(1) unsigned NOT NULL COMMENT '0正常1暂停2结束',
  `qnum` int(11) unsigned NOT NULL COMMENT '题目数量',
  `answertime` int(10) unsigned NOT NULL COMMENT '答题时间',
  `start` int(10) unsigned NOT NULL DEFAULT '1383235200' COMMENT '开始时间',
  `end` int(10) unsigned NOT NULL DEFAULT '1383235200' COMMENT '结束时间',
  `most_num_times` int(11) DEFAULT '0',
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `followurl` varchar(1000) DEFAULT '',
  `thumb` varchar(100) NOT NULL COMMENT '广告',
  `thumb_url` varchar(100) NOT NULL COMMENT '广告URL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fighting_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fighting_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fighting_user`;
CREATE TABLE `ims_fighting_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `fid` int(10) unsigned NOT NULL COMMENT '活动ID',
  `nickname` varchar(100) NOT NULL COMMENT '活动ID',
  `mobile` varchar(100) NOT NULL COMMENT '手机号码',
  `openid` varchar(255) NOT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fighting_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fineness_adv`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fineness_adv`;
CREATE TABLE `ims_fineness_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `link` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='幻灯片';

-- ----------------------------
-- Records of ims_fineness_adv
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fineness_article`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fineness_article`;
CREATE TABLE `ims_fineness_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `musicurl` varchar(100) NOT NULL DEFAULT '' COMMENT '上传音乐',
  `content` text NOT NULL,
  `credit` varchar(255) DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类',
  `template` varchar(300) NOT NULL DEFAULT '' COMMENT '内容模板目录',
  `templatefile` varchar(300) NOT NULL DEFAULT '' COMMENT '分类模板名称',
  `bg_music_switch` varchar(1) NOT NULL DEFAULT '1',
  `clickNum` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(500) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '简介',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `outLink` varchar(500) DEFAULT '' COMMENT '外链',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fineness_article
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fineness_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fineness_article_category`;
CREATE TABLE `ims_fineness_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `thumb` varchar(1024) NOT NULL DEFAULT '' COMMENT '分类图片',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '分类描述',
  `template` varchar(300) NOT NULL DEFAULT '' COMMENT '分类模板目录',
  `templatefile` varchar(300) NOT NULL DEFAULT '' COMMENT '分类模板名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fineness_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fineness_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fineness_sysset`;
CREATE TABLE `ims_fineness_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `guanzhuUrl` varchar(255) DEFAULT '' COMMENT '引导关注',
  `guanzhutitle` varchar(255) DEFAULT '' COMMENT '引导关注名称',
  `historyUrl` varchar(255) DEFAULT '' COMMENT '历史记录外链',
  `copyright` varchar(255) DEFAULT '' COMMENT '版权',
  `cnzz` varchar(800) DEFAULT NULL,
  `appid` varchar(255) DEFAULT '',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '' COMMENT 'logo',
  `tjgzh` varchar(255) DEFAULT '1' COMMENT '推荐公众号图片',
  `tjgzhUrl` varchar(255) DEFAULT '1' COMMENT '推荐公众号引导关注',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fineness_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_advs`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_advs`;
CREATE TABLE `ims_fm_photosvote_advs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `description` varchar(350) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `times` int(11) DEFAULT '0',
  `ismiaoxian` int(2) DEFAULT '0',
  `issuiji` int(2) DEFAULT '0',
  `nexttime` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_advs
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_announce`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_announce`;
CREATE TABLE `ims_fm_photosvote_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `content` varchar(150) NOT NULL DEFAULT '' COMMENT '公告',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '公告',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '公告链接',
  `createtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_announce
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_awarding`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_awarding`;
CREATE TABLE `ims_fm_photosvote_awarding` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '区域ID',
  `shoptitle` varchar(50) NOT NULL DEFAULT '' COMMENT '兑奖店面名称',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '兑奖地址',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `pass` varchar(20) NOT NULL DEFAULT '' COMMENT '兑奖密码',
  `images` varchar(200) NOT NULL DEFAULT '' COMMENT '广告或店面图',
  `carmap` varchar(50) NOT NULL COMMENT '地图导航',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_awarding
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_awardingtype`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_awardingtype`;
CREATE TABLE `ims_fm_photosvote_awardingtype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL,
  `quyutitle` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_awardingtype
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_banners`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_banners`;
CREATE TABLE `ims_fm_photosvote_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(11) DEFAULT '0',
  `bannername` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_banners
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_bbsreply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_bbsreply`;
CREATE TABLE `ims_fm_photosvote_bbsreply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL,
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `tid` varchar(125) NOT NULL COMMENT '帖子的ID',
  `tfrom_user` varchar(255) NOT NULL DEFAULT '' COMMENT '帖子作者的openid',
  `reply_id` varchar(125) NOT NULL COMMENT '回复评论帖子的ID',
  `from_user` varchar(255) NOT NULL DEFAULT '' COMMENT '回复评论帖子的openid',
  `to_reply_id` int(11) NOT NULL DEFAULT '0' COMMENT '回复评论的id',
  `rfrom_user` varchar(255) NOT NULL DEFAULT '' COMMENT '被回复的评论的作者的openid',
  `content` text NOT NULL COMMENT '评论回复内容',
  `is_del` tinyint(2) DEFAULT '0' COMMENT '是否已删除 0-否 1-是',
  `status` tinyint(2) DEFAULT '0' COMMENT '是否审核 0-否 1-是',
  `storey` int(11) NOT NULL DEFAULT '0' COMMENT '绝对楼层',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT '回复IP',
  `iparr` varchar(200) NOT NULL DEFAULT '' COMMENT 'IP区域',
  `createtime` int(11) NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_rid` (`rid`),
  KEY `indx_createtime` (`createtime`),
  KEY `indx_from_user` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_bbsreply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_data`;
CREATE TABLE `ims_fm_photosvote_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL,
  `fromuser` varchar(150) NOT NULL DEFAULT '' COMMENT '分享用户openid',
  `from_user` varchar(150) NOT NULL DEFAULT '' COMMENT '当前用户openid',
  `tfrom_user` varchar(150) NOT NULL DEFAULT '' COMMENT '被分享用户openid',
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享人UID',
  `isin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否参与',
  `visitorsip` varchar(15) NOT NULL DEFAULT '' COMMENT '访问IP',
  `visitorstime` int(10) unsigned NOT NULL COMMENT '访问时间',
  `viewnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uid` (`uid`),
  KEY `indx_from_user` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_gift`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_gift`;
CREATE TABLE `ims_fm_photosvote_gift` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '奖品名称',
  `total` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '数量',
  `total_winning` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '中奖数量',
  `lingjiangtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '奖品库存减少方式0为有资格1为提交2为兑奖',
  `description` text NOT NULL COMMENT '描述',
  `inkind` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否是实物',
  `activation_code` varchar(50) NOT NULL COMMENT '激活码',
  `activation_url` varchar(215) NOT NULL COMMENT '激活地址',
  `break` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '需要朋友人数',
  `awardpic` varchar(200) NOT NULL COMMENT '奖品图片',
  `awardpass` varchar(20) NOT NULL COMMENT '兑奖密码',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_gift
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_giftmika`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_giftmika`;
CREATE TABLE `ims_fm_photosvote_giftmika` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(10) unsigned NOT NULL,
  `giftid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '礼盒ID',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `mika` varchar(50) NOT NULL COMMENT '密卡字符串',
  `activationurl` varchar(200) NOT NULL COMMENT '激活地址',
  `typename` varchar(20) NOT NULL DEFAULT '' COMMENT '类型说明',
  `description` varchar(50) NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否领取1为领取过',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_giftmika
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_iplist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_iplist`;
CREATE TABLE `ims_fm_photosvote_iplist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `iparr` varchar(200) NOT NULL DEFAULT '' COMMENT 'IP区域',
  `ipadd` varchar(100) NOT NULL DEFAULT '' COMMENT 'IP区域',
  `createtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_rid` (`rid`),
  KEY `indx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_iplist
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_iplistlog`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_iplistlog`;
CREATE TABLE `ims_fm_photosvote_iplistlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `from_user` varchar(255) NOT NULL DEFAULT '' COMMENT 'openid',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP',
  `hitym` varchar(255) NOT NULL DEFAULT '' COMMENT '点击页面',
  `createtime` int(11) NOT NULL COMMENT '初始时间',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_rid` (`rid`),
  KEY `indx_createtime` (`createtime`),
  KEY `indx_from_user` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_iplistlog
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_provevote`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_provevote`;
CREATE TABLE `ims_fm_photosvote_provevote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL,
  `from_user` varchar(255) NOT NULL DEFAULT '' COMMENT '用户openid',
  `tfrom_user` varchar(255) NOT NULL DEFAULT '' COMMENT '被投票用户openid',
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '微信头像',
  `photo` varchar(200) NOT NULL DEFAULT '' COMMENT '照片',
  `music` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `mediaid` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐id',
  `timelength` varchar(200) NOT NULL DEFAULT '' COMMENT '时间轴',
  `voice` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `vedio` varchar(200) NOT NULL DEFAULT '' COMMENT '视频',
  `youkuurl` varchar(200) NOT NULL DEFAULT '' COMMENT '视频',
  `fmmid` varchar(200) NOT NULL DEFAULT '' COMMENT '识别',
  `picarr` varchar(5000) DEFAULT '',
  `picarr_1` varchar(200) NOT NULL DEFAULT '' COMMENT '照片组',
  `picarr_2` varchar(200) NOT NULL DEFAULT '' COMMENT '照片组',
  `picarr_3` varchar(200) NOT NULL DEFAULT '' COMMENT '照片组',
  `picarr_4` varchar(200) NOT NULL DEFAULT '' COMMENT '照片组',
  `picarr_5` varchar(200) NOT NULL DEFAULT '' COMMENT '照片组',
  `picarr_6` varchar(200) NOT NULL DEFAULT '' COMMENT '照片组',
  `picarr_7` varchar(200) NOT NULL DEFAULT '' COMMENT '照片组',
  `picarr_8` varchar(200) NOT NULL DEFAULT '' COMMENT '照片组',
  `description` varchar(512) NOT NULL DEFAULT '' COMMENT '简介，描述',
  `photoname` varchar(50) NOT NULL DEFAULT '' COMMENT '照片名字',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `job` varchar(20) NOT NULL DEFAULT '' COMMENT '职业',
  `xingqu` varchar(20) NOT NULL DEFAULT '' COMMENT '兴趣',
  `weixin` varchar(255) NOT NULL DEFAULT '' COMMENT '联系微信号',
  `qqhao` varchar(20) NOT NULL DEFAULT '' COMMENT '联系QQ号码',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '联系地址',
  `photosnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '票数',
  `xnphotosnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '虚拟票数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '人气',
  `xnhits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '虚拟人气',
  `yaoqingnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '邀请量',
  `ewm` varchar(200) NOT NULL DEFAULT '' COMMENT '二维码地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态',
  `createip` varchar(50) NOT NULL DEFAULT '' COMMENT '创建IP',
  `lastip` varchar(50) NOT NULL DEFAULT '' COMMENT '编辑IP',
  `iparr` varchar(200) NOT NULL DEFAULT '' COMMENT 'ip地区',
  `lasttime` int(10) unsigned NOT NULL COMMENT '最后编辑时间',
  `sharetime` int(10) unsigned NOT NULL COMMENT '最后分享时间',
  `sharenum` int(10) unsigned NOT NULL COMMENT '最后分享',
  `createtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `ysid` int(10) unsigned NOT NULL COMMENT 'ysid',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_createtime` (`createtime`),
  KEY `indx_from_user` (`from_user`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_provevote
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_provevote_name`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_provevote_name`;
CREATE TABLE `ims_fm_photosvote_provevote_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(10) unsigned NOT NULL,
  `from_user` varchar(255) NOT NULL DEFAULT '' COMMENT '用户openid',
  `musicname` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `photoname` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `picarr_1_name` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `picarr_2_name` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `picarr_3_name` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `picarr_4_name` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `picarr_5_name` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `picarr_6_name` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `picarr_7_name` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `picarr_8_name` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `musicnamefop` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `voicename` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `voicenamefop` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `vedioname` varchar(200) NOT NULL DEFAULT '' COMMENT '视频',
  `vedionamefop` varchar(200) NOT NULL DEFAULT '' COMMENT '视频',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_rid` (`rid`),
  KEY `indx_from_user` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_provevote_name
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_provevote_voice`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_provevote_voice`;
CREATE TABLE `ims_fm_photosvote_provevote_voice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `from_user` varchar(555) NOT NULL DEFAULT '' COMMENT 'openid',
  `mediaid` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐id',
  `timelength` varchar(200) NOT NULL DEFAULT '' COMMENT '时间轴',
  `voice` varchar(200) NOT NULL DEFAULT '' COMMENT '音乐',
  `fmmid` varchar(200) NOT NULL DEFAULT '' COMMENT '识别',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(11) NOT NULL COMMENT '初始时间',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_createtime` (`createtime`),
  KEY `indx_from_user` (`from_user`(333)),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_provevote_voice
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_reply`;
CREATE TABLE `ims_fm_photosvote_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '规则标题',
  `shareurl` varchar(255) NOT NULL COMMENT '活动网址',
  `sharetitle` varchar(50) NOT NULL COMMENT '分享标题',
  `sharecontent` varchar(100) NOT NULL COMMENT '分享简介',
  `picture` varchar(225) NOT NULL COMMENT '规则图片',
  `sharephoto` varchar(225) NOT NULL COMMENT 'fx图片',
  `stopping` varchar(225) NOT NULL COMMENT 'fx图片',
  `nostart` varchar(225) NOT NULL COMMENT 'fx图片',
  `end` varchar(225) NOT NULL COMMENT 'fx图片',
  `start_time` int(10) unsigned NOT NULL COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL COMMENT '结束时间',
  `tstart_time` int(10) unsigned NOT NULL COMMENT '投票开始时间',
  `tend_time` int(10) unsigned NOT NULL COMMENT '投票结束时间',
  `bstart_time` int(10) unsigned NOT NULL COMMENT '报名开始时间',
  `bend_time` int(10) unsigned NOT NULL COMMENT '报名结束时间',
  `ttipstart` varchar(255) NOT NULL COMMENT '投票开始时间',
  `ttipend` varchar(255) NOT NULL COMMENT '投票结束时间',
  `btipstart` varchar(255) NOT NULL COMMENT '报名开始时间',
  `btipend` varchar(255) NOT NULL COMMENT '报名结束时间',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `command` varchar(255) NOT NULL COMMENT '命令',
  `ckcommand` varchar(255) NOT NULL COMMENT '命令',
  `content` text NOT NULL COMMENT '内容',
  `tj` text NOT NULL COMMENT '站长统计代码',
  `moshi` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '展示模式： 1 相册模式  2 详情模式',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '开关状态',
  `addpv` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启添加投稿',
  `isbbsreply` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启评论',
  `cqtp` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可重复投票',
  `tpsh` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '投稿是否需审核',
  `indexpx` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '活动首页显示,0 按最新排序 1 按人气排序 3 按投票数排序',
  `tpxz` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投稿照片数限制',
  `daytpxz` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每日投票数限制',
  `dayonetp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '同一选手投票数限制',
  `allonetp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '同一选手最高投票数',
  `indextpxz` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '首页列表显示数',
  `phbtpxz` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '人气榜显示个数',
  `autolitpic` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '裁剪大小',
  `autozl` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '裁剪质量',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `xuninum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '虚拟人数',
  `xuninumtime` int(10) unsigned NOT NULL DEFAULT '86400' COMMENT '虚拟间隔时间',
  `xuninuminitial` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '虚拟随机数值1',
  `xuninumending` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '虚拟随机数值2',
  `xuninum_time` int(10) unsigned NOT NULL COMMENT '虚拟更新时间',
  `isvisits` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否互访0为不可以1为可以',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否强制需要关注公众号才能参与',
  `opensubscribe` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要参与活动才算人气0为不需要1为需要',
  `share_shownum` int(3) unsigned NOT NULL DEFAULT '10' COMMENT '加载一次显示多少参与者',
  `userinfo` varchar(200) NOT NULL COMMENT '输入姓名或手机时的提示词',
  `isindex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否首页显示0为不需要1为需要',
  `isvotexq` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否详情页显示0为不需要1为需要',
  `ispaihang` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否排行页显示0为不需要1为需要',
  `isreg` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否报名页显示0为不需要1为需要',
  `isdes` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否描述页显示0为不需要1为需要',
  `isrealname` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入姓名0为不需要1为需要',
  `ismobile` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入手机号0为不需要1为需要',
  `isweixin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入微信号0为不需要1为需要',
  `isqqhao` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入QQ号0为不需要1为需要',
  `isemail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入邮箱0为不需要1为需要',
  `isaddress` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入地址0为不需要1为需要',
  `isjob` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职业0为不需要1为需要',
  `isxingqu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入兴趣0为不需要1为需要',
  `isfans` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0只保存本模块下1同步更新至官方FANS表',
  `iscopyright` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0显示公众号版权1为显示自定义版权',
  `copyrighturl` varchar(255) NOT NULL COMMENT '版权链接',
  `copyright` varchar(50) NOT NULL COMMENT '版权',
  `zbgcolor` varchar(50) NOT NULL COMMENT '背景色',
  `zbg` varchar(255) NOT NULL COMMENT '背景图',
  `zbgtj` varchar(255) NOT NULL COMMENT '背景图',
  `lapiao` varchar(5) NOT NULL COMMENT '拉票',
  `sharename` varchar(2) NOT NULL COMMENT '分享',
  `ishuodong` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0',
  `huodongname` varchar(100) NOT NULL COMMENT '活动名称',
  `huodongurl` varchar(255) NOT NULL COMMENT '活动链接网址',
  `hhhdpicture` varchar(255) NOT NULL COMMENT '活动图片',
  `messagetemplate` varchar(255) NOT NULL COMMENT '投票消息模板id 微信的模板id',
  `regmessagetemplate` varchar(255) NOT NULL COMMENT '报名消息模板id 微信的模板id',
  `shmessagetemplate` varchar(255) NOT NULL COMMENT '报名消息模板id 微信的模板id',
  `addpvapp` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '前端是否允许用户报名',
  `iscode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启投票验证码',
  `codekey` varchar(255) NOT NULL COMMENT '验证码key',
  `isedes` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启首页显示说明',
  `tmreply` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '弹幕评论是否同步到数据库',
  `tmyushe` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '弹幕评论是否同步到数据库',
  `isipv` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启IP作弊限制',
  `ipturl` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '存在作弊ip后是否继续允许查看，投票，评论等',
  `ipstopvote` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '存在作弊ip后是否继续允许查看，投票，评论等',
  `ipannounce` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启公告',
  `tmoshi` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '首页显示模式',
  `mediatype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '上传模式',
  `mediatypem` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '上传模式',
  `mediatypev` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '上传模式',
  `bgarr` varchar(1000) NOT NULL COMMENT '颜色及背景配置',
  `tpname` varchar(100) NOT NULL COMMENT '投票名称',
  `rqname` varchar(100) NOT NULL COMMENT '人气名称',
  `tpsname` varchar(100) NOT NULL COMMENT '投票数名称',
  `votesuccess` varchar(200) NOT NULL COMMENT '投票成功提示语',
  `subscribedes` varchar(200) NOT NULL COMMENT '分享提示语',
  `csrs` varchar(10) NOT NULL COMMENT '参赛作品',
  `ljtp` varchar(10) NOT NULL COMMENT '累计投票',
  `cyrs` varchar(10) NOT NULL COMMENT '参与人数',
  `voicebg` varchar(200) NOT NULL COMMENT '录音室背景',
  `qiniu` varchar(600) NOT NULL COMMENT '七牛',
  `voicemoshi` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '语音室模式',
  `isdaojishi` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '倒计时',
  `votetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户投票时间',
  `limitip` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票ip每天限制数',
  `indexorder` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '首页排序',
  `ttipvote` varchar(100) NOT NULL COMMENT '用户投票时间结束提示语',
  `webinfo` text NOT NULL COMMENT '内容',
  `istopheader` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '最上方',
  `zanzhums` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '赞助商显示',
  `isid` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'isid',
  `fansmostvote` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户最高投票数',
  `mtemplates` varchar(500) NOT NULL COMMENT '模板ID',
  `huodong` varchar(500) NOT NULL COMMENT '活动',
  `istop` varchar(300) NOT NULL COMMENT '顶部设置',
  `iplocallimit` varchar(100) NOT NULL COMMENT '地区限制',
  `iplocaldes` varchar(100) NOT NULL COMMENT '地区限制',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_fm_photosvote_votelog`
-- ----------------------------
DROP TABLE IF EXISTS `ims_fm_photosvote_votelog`;
CREATE TABLE `ims_fm_photosvote_votelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `uniacid` int(10) unsigned NOT NULL,
  `tptype` int(10) unsigned NOT NULL COMMENT '投票类型 1 微信页面投票  2 微信会话界面',
  `from_user` varchar(255) NOT NULL DEFAULT '' COMMENT '用户openid',
  `tfrom_user` varchar(255) NOT NULL DEFAULT '' COMMENT '被投票用户openid',
  `afrom_user` varchar(255) NOT NULL DEFAULT '' COMMENT '分享用户openid',
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT '投票IP',
  `iparr` varchar(200) NOT NULL DEFAULT '' COMMENT 'ip地区',
  `photosnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '票数',
  `createtime` int(10) unsigned NOT NULL COMMENT '投票时间',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`),
  KEY `indx_rid` (`rid`),
  KEY `indx_createtime` (`createtime`),
  KEY `indx_from_user` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_fm_photosvote_votelog
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_heka_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_heka_list`;
CREATE TABLE `ims_heka_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) DEFAULT NULL,
  `card` varchar(20) NOT NULL COMMENT '活动图片',
  `author` varchar(20) DEFAULT NULL,
  `content` varchar(500) NOT NULL COMMENT '活动描述',
  `cardName` varchar(50) DEFAULT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `share` int(11) DEFAULT NULL,
  `create_time` int(10) NOT NULL COMMENT '规则',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_heka_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_heka_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_heka_reply`;
CREATE TABLE `ims_heka_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) DEFAULT NULL,
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `description` varchar(200) NOT NULL COMMENT '活动描述',
  `create_time` int(10) NOT NULL COMMENT '规则',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_heka_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hl_periarthritis`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hl_periarthritis`;
CREATE TABLE `ims_hl_periarthritis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `shaketimes` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL COMMENT '活动图片',
  `gzurl` varchar(255) NOT NULL COMMENT '关注URL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hl_periarthritis
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hl_tug_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hl_tug_reply`;
CREATE TABLE `ims_hl_tug_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `weid` int(10) DEFAULT '0',
  `title` varchar(100) NOT NULL COMMENT '活动图片',
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  `ad1` varchar(100) NOT NULL COMMENT '图片',
  `ad2` varchar(100) NOT NULL COMMENT '图片',
  `ad3` varchar(100) NOT NULL COMMENT '图片',
  `ad4` varchar(100) NOT NULL COMMENT '图片',
  `teama` varchar(100) NOT NULL,
  `teamapic` varchar(100) NOT NULL COMMENT '图片',
  `teamb` varchar(100) NOT NULL,
  `teambpic` varchar(100) NOT NULL COMMENT '图片',
  `description` varchar(100) NOT NULL COMMENT '活动描述',
  `rule` varchar(1000) NOT NULL COMMENT '规则描述',
  `joinlimit` int(10) NOT NULL DEFAULT '0' COMMENT '人数限制',
  `timelimit` int(10) NOT NULL DEFAULT '0' COMMENT '时间限制',
  `status` smallint(1) NOT NULL,
  `starttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hl_tug_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hl_tug_winner`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hl_tug_winner`;
CREATE TABLE `ims_hl_tug_winner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `weid` int(10) NOT NULL DEFAULT '0',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '摇的次数',
  `status` smallint(1) NOT NULL DEFAULT '0',
  `uname` varchar(100) NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT '0',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `whoteam` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_from_user` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hl_tug_winner
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hnblacklist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hnblacklist`;
CREATE TABLE `ims_hnblacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `wantblack` varchar(255) NOT NULL,
  `blackwho` varchar(255) NOT NULL,
  `time` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hnblacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hnfans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hnfans`;
CREATE TABLE `ims_hnfans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `from_user` varchar(50) NOT NULL COMMENT '用户的唯一身份ID',
  `createtime` int(10) unsigned NOT NULL COMMENT '加入时间',
  `realname` varchar(10) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '头像',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别(0:保密 1:男 2:女)',
  `constellation` varchar(10) NOT NULL DEFAULT '' COMMENT '星座',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '邮寄地址',
  `nationality` varchar(30) NOT NULL DEFAULT '' COMMENT '国籍',
  `resideprovincecity` varchar(30) NOT NULL DEFAULT '' COMMENT '居住省市',
  `residedist` varchar(30) NOT NULL DEFAULT '' COMMENT '居住行政区/县',
  `education` varchar(10) NOT NULL DEFAULT '' COMMENT '学历',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `revenue` varchar(10) NOT NULL DEFAULT '' COMMENT '年收入',
  `affectivestatus` varchar(30) NOT NULL DEFAULT '' COMMENT '情感状态',
  `lookingfor` varchar(255) NOT NULL DEFAULT '' COMMENT ' 交友目的',
  `height` varchar(5) NOT NULL DEFAULT '' COMMENT '身高',
  `weight` varchar(5) NOT NULL DEFAULT '' COMMENT '体重',
  `interest` text NOT NULL COMMENT '兴趣爱好',
  `lxxingzuo` varchar(200) NOT NULL DEFAULT '' COMMENT '理想星座',
  `housestatus` varchar(20) NOT NULL DEFAULT '' COMMENT '是否有房',
  `carstatus` varchar(20) NOT NULL DEFAULT '' COMMENT '是否有车',
  `lat` varchar(20) NOT NULL DEFAULT '' COMMENT '经度',
  `lng` varchar(20) NOT NULL DEFAULT '' COMMENT '纬度',
  `ueducation` varchar(30) NOT NULL DEFAULT '' COMMENT 'TA的学历',
  `urevenue` varchar(30) NOT NULL DEFAULT '' COMMENT '他的月薪',
  `love` int(10) NOT NULL DEFAULT '0' COMMENT '被喜欢次数',
  `mails` int(10) NOT NULL DEFAULT '0' COMMENT '收信次数',
  `uheightL` int(10) NOT NULL DEFAULT '0' COMMENT 'Ta的最小身高',
  `uheightH` int(10) NOT NULL DEFAULT '0' COMMENT 'Ta的最大身高',
  `uweight` int(10) NOT NULL DEFAULT '0' COMMENT 'Ta的体重',
  `uage` int(10) NOT NULL DEFAULT '0' COMMENT 'Ta的年龄',
  `Descrip` varchar(200) NOT NULL DEFAULT '' COMMENT '一句话描述',
  `uitsCharacter` varchar(300) NOT NULL DEFAULT '' COMMENT 'Ta的性格',
  `uitsOthers` varchar(300) NOT NULL DEFAULT '' COMMENT 'Ta的其他要求',
  `age` int(10) NOT NULL DEFAULT '0' COMMENT '自己的年龄',
  `isshow` int(2) NOT NULL DEFAULT '0' COMMENT '注册审核机制',
  `time` int(12) NOT NULL DEFAULT '0' COMMENT '进入平台获取资料时间',
  `yingcang` int(2) NOT NULL DEFAULT '1' COMMENT '隐藏显示',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hnfans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hnmessage`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hnmessage`;
CREATE TABLE `ims_hnmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `content` varchar(300) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `sendernickname` varchar(200) NOT NULL,
  `senderavatar` varchar(255) NOT NULL,
  `geter` varchar(255) NOT NULL,
  `stime` int(12) NOT NULL,
  `mloop` tinyint(1) NOT NULL DEFAULT '0',
  `msgtype` varchar(20) NOT NULL DEFAULT 'text' COMMENT 'leixing',
  `thumburl` varchar(100) NOT NULL DEFAULT '0' COMMENT 'thumb',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hnmessage
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hnpayjifen`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hnpayjifen`;
CREATE TABLE `ims_hnpayjifen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `tid` varchar(20) NOT NULL DEFAULT '0' COMMENT '订单编号',
  `openid` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `fee` int(10) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `paytype` varchar(20) NOT NULL,
  `transid` varchar(30) NOT NULL DEFAULT '0',
  `time` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hnpayjifen
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hnresearch`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hnresearch`;
CREATE TABLE `ims_hnresearch` (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `information` varchar(500) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `inhome` tinyint(4) NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `pretotal` int(10) unsigned NOT NULL DEFAULT '1',
  `noticeemail` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`reid`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hnresearch
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hnresearch_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hnresearch_data`;
CREATE TABLE `ims_hnresearch_data` (
  `redid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `rerid` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `data` varchar(800) NOT NULL,
  PRIMARY KEY (`redid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hnresearch_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hnresearch_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hnresearch_fields`;
CREATE TABLE `ims_hnresearch_fields` (
  `refid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `essential` tinyint(4) NOT NULL DEFAULT '0',
  `bind` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(300) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `displayorder` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`refid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hnresearch_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hnresearch_rows`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hnresearch_rows`;
CREATE TABLE `ims_hnresearch_rows` (
  `rerid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `createtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rerid`),
  KEY `reid` (`reid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hnresearch_rows
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hongniangexchangelog`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hongniangexchangelog`;
CREATE TABLE `ims_hongniangexchangelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `toopenid` varchar(100) NOT NULL,
  `twhichone` varchar(100) NOT NULL,
  `credit` tinyint(1) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hongniangexchangelog
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hongniangsharelogs`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hongniangsharelogs`;
CREATE TABLE `ims_hongniangsharelogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `jljifen` varchar(10) NOT NULL,
  `sharetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hongniangsharelogs
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2`;
CREATE TABLE `ims_hotel2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `lng` decimal(10,2) DEFAULT '0.00',
  `lat` decimal(10,2) DEFAULT '0.00',
  `ordermax` int(11) DEFAULT '0',
  `numsmax` int(11) DEFAULT '0',
  `daymax` int(11) DEFAULT '0',
  `address` varchar(255) DEFAULT '',
  `location_p` varchar(50) DEFAULT '',
  `location_c` varchar(50) DEFAULT '',
  `location_a` varchar(50) DEFAULT '',
  `roomcount` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `phone` varchar(255) DEFAULT '',
  `mail` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `thumborder` varchar(255) DEFAULT '',
  `description` text,
  `content` text,
  `traffic` text,
  `thumbs` text,
  `sales` text,
  `displayorder` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `device` text,
  `brandid` int(11) DEFAULT '0',
  `businessid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hotel2
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2_brand`;
CREATE TABLE `ims_hotel2_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hotel2_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2_business`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2_business`;
CREATE TABLE `ims_hotel2_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `location_p` varchar(255) DEFAULT '',
  `location_c` varchar(255) DEFAULT '',
  `location_a` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hotel2_business
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2_member`;
CREATE TABLE `ims_hotel2_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `userid` varchar(50) DEFAULT '',
  `from_user` varchar(50) DEFAULT '',
  `realname` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `score` int(11) DEFAULT '0' COMMENT '积分',
  `createtime` int(11) DEFAULT '0',
  `userbind` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `username` varchar(30) DEFAULT '' COMMENT '用户名',
  `password` varchar(200) DEFAULT '' COMMENT '密码',
  `salt` varchar(8) NOT NULL DEFAULT '' COMMENT '加密盐',
  `islogin` tinyint(3) NOT NULL DEFAULT '0',
  `isauto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动添加，0否，1是',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hotel2_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2_order`;
CREATE TABLE `ims_hotel2_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `hotelid` int(11) DEFAULT '0',
  `roomid` int(11) DEFAULT '0',
  `memberid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `btime` int(11) DEFAULT '0',
  `etime` int(11) DEFAULT '0',
  `style` varchar(255) DEFAULT '',
  `nums` int(11) DEFAULT '0',
  `oprice` decimal(10,2) DEFAULT '0.00' COMMENT '原价',
  `cprice` decimal(10,2) DEFAULT '0.00' COMMENT '现价',
  `mprice` decimal(10,2) DEFAULT '0.00' COMMENT '会员价',
  `info` text,
  `time` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `paytype` int(11) DEFAULT '0',
  `paystatus` int(11) DEFAULT '0',
  `msg` text,
  `mngtime` int(11) DEFAULT '0',
  `contact_name` varchar(30) NOT NULL DEFAULT '' COMMENT '联系人',
  `day` tinyint(2) NOT NULL DEFAULT '0' COMMENT '住几晚',
  `sum_price` decimal(10,2) DEFAULT '0.00' COMMENT '总价',
  `ordersn` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_hotelid` (`hotelid`),
  KEY `indx_weid` (`weid`),
  KEY `indx_roomid` (`roomid`),
  KEY `indx_memberid` (`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hotel2_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2_reply`;
CREATE TABLE `ims_hotel2_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `hotelid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hotel2_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2_room`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2_room`;
CREATE TABLE `ims_hotel2_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotelid` int(11) DEFAULT '0',
  `weid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `oprice` decimal(10,2) DEFAULT '0.00' COMMENT '原价',
  `cprice` decimal(10,2) DEFAULT '0.00' COMMENT '现价',
  `mprice` decimal(10,2) DEFAULT '0.00' COMMENT '会员价',
  `thumbs` text,
  `device` text,
  `area` varchar(255) DEFAULT '',
  `floor` varchar(255) DEFAULT '',
  `smoke` varchar(255) DEFAULT '',
  `bed` varchar(255) DEFAULT '',
  `persons` int(11) DEFAULT '0',
  `bedadd` varchar(30) DEFAULT '',
  `status` int(11) DEFAULT '0',
  `isshow` int(11) DEFAULT '0',
  `sales` text,
  `displayorder` int(11) DEFAULT '0',
  `area_show` int(11) DEFAULT '0',
  `floor_show` int(11) DEFAULT '0',
  `smoke_show` int(11) DEFAULT '0',
  `bed_show` int(11) DEFAULT '0',
  `persons_show` int(11) DEFAULT '0',
  `bedadd_show` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0' COMMENT '订房积分',
  `breakfast` tinyint(3) DEFAULT '0' COMMENT '0无早 1单早 2双早',
  `sortid` int(11) NOT NULL DEFAULT '0' COMMENT '房间id，排序时使用',
  PRIMARY KEY (`id`),
  KEY `indx_hotelid` (`hotelid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hotel2_room
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2_room_price`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2_room_price`;
CREATE TABLE `ims_hotel2_room_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `hotelid` int(11) DEFAULT '0',
  `roomid` int(11) DEFAULT '0',
  `roomdate` int(11) DEFAULT '0',
  `thisdate` varchar(255) NOT NULL DEFAULT '' COMMENT '当天日期',
  `oprice` decimal(10,2) DEFAULT '0.00' COMMENT '原价',
  `cprice` decimal(10,2) DEFAULT '0.00' COMMENT '现价',
  `mprice` decimal(10,2) DEFAULT '0.00' COMMENT '会员价',
  `num` varchar(255) DEFAULT '-1',
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_hotelid` (`hotelid`),
  KEY `indx_roomid` (`roomid`),
  KEY `indx_roomdate` (`roomdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hotel2_room_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hotel2_set`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hotel2_set`;
CREATE TABLE `ims_hotel2_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `user` tinyint(1) DEFAULT '0' COMMENT '用户类型0微信用户1独立用户',
  `reg` tinyint(1) DEFAULT '0' COMMENT '是否允许注册0禁止注册1允许注册',
  `bind` tinyint(1) DEFAULT '0' COMMENT '是否绑定',
  `regcontent` text COMMENT '注册提示',
  `ordertype` tinyint(1) DEFAULT '0' COMMENT '预定类型0电话预定1电话和网络预订',
  `is_unify` tinyint(1) DEFAULT '0' COMMENT '0使用各分店电话,1使用统一电话',
  `tel` varchar(20) DEFAULT '' COMMENT '统一电话',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '提醒接受邮箱',
  `mobile` varchar(32) NOT NULL DEFAULT '' COMMENT '提醒接受手机',
  `paytype1` tinyint(1) DEFAULT '0',
  `paytype2` tinyint(1) DEFAULT '0',
  `paytype3` tinyint(1) DEFAULT '0',
  `version` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0单酒店版1多酒店版',
  `location_p` varchar(50) DEFAULT '',
  `location_c` varchar(50) DEFAULT '',
  `location_a` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_hotel2_set
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_alert_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_alert_list`;
CREATE TABLE `ims_hx_alert_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `title` varchar(50) DEFAULT NULL,
  `loops` int(10) unsigned NOT NULL COMMENT '循环次数',
  `items` text NOT NULL COMMENT '弹出文字',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_alert_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_alert_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_alert_reply`;
CREATE TABLE `ims_hx_alert_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) DEFAULT NULL,
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `description` varchar(200) NOT NULL COMMENT '活动描述',
  `gzurl` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_alert_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_cards_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_cards_award`;
CREATE TABLE `ims_hx_cards_award` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reply_id` int(10) DEFAULT '0',
  `uid` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `prizetype` varchar(10) DEFAULT '' COMMENT '类型',
  `level` int(10) unsigned NOT NULL,
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`reply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_cards_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_cards_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_cards_fans`;
CREATE TABLE `ims_hx_cards_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reply_id` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynum` int(10) unsigned NOT NULL DEFAULT '0',
  `totalnum` int(10) unsigned NOT NULL DEFAULT '0',
  `awardnum` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_cards_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_cards_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_cards_reply`;
CREATE TABLE `ims_hx_cards_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可参与的用户组',
  `thumb` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `need_type` varchar(10) NOT NULL,
  `need_num` int(10) unsigned NOT NULL,
  `give_type` varchar(10) NOT NULL,
  `give_num` int(10) unsigned NOT NULL DEFAULT '0',
  `onlynone` tinyint(1) NOT NULL DEFAULT '0',
  `awardnum` int(10) unsigned NOT NULL,
  `playnum` int(10) unsigned NOT NULL,
  `dayplaynum` int(10) unsigned NOT NULL,
  `zfcs` int(10) unsigned NOT NULL COMMENT '转发次数',
  `zjcs` int(10) unsigned NOT NULL,
  `tips` varchar(255) NOT NULL,
  `noprize` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `share_title` varchar(100) NOT NULL,
  `share_img` varchar(255) NOT NULL,
  `share_url` varchar(255) NOT NULL,
  `share_content` varchar(255) NOT NULL,
  `rate` int(10) unsigned NOT NULL,
  `prizes` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0结束1正常2暂停',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_cards_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_cards_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_cards_share`;
CREATE TABLE `ims_hx_cards_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uinacid` int(10) unsigned NOT NULL,
  `reply_id` int(10) unsigned NOT NULL,
  `share_from` varchar(50) NOT NULL,
  `share_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_cards_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_dialect_questions`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_dialect_questions`;
CREATE TABLE `ims_hx_dialect_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `audio` varchar(200) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `d` varchar(50) NOT NULL,
  `answer` varchar(2) NOT NULL,
  `mark` int(10) NOT NULL,
  `hard` varchar(5) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_dialect_questions
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_dialect_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_dialect_reply`;
CREATE TABLE `ims_hx_dialect_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `r_name` varchar(200) NOT NULL,
  `r_title` varchar(200) NOT NULL,
  `thumb` varchar(1000) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `s_title` varchar(200) NOT NULL,
  `s_icon` varchar(1000) NOT NULL,
  `s_des` varchar(1000) NOT NULL,
  `s_cancel` varchar(200) NOT NULL,
  `s_share` varchar(2000) NOT NULL,
  `s_sucai` varchar(2000) NOT NULL,
  `py_1` varchar(200) NOT NULL,
  `py_2` varchar(200) NOT NULL,
  `py_3` varchar(200) NOT NULL,
  `py_4` varchar(200) NOT NULL,
  `py_5` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_dialect_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_lottery_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_lottery_award`;
CREATE TABLE `ims_hx_lottery_award` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reply_id` int(10) DEFAULT '0',
  `uid` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `prizetype` varchar(10) DEFAULT '' COMMENT '类型',
  `level` int(10) unsigned NOT NULL,
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`reply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_lottery_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_lottery_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_lottery_fans`;
CREATE TABLE `ims_hx_lottery_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reply_id` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynum` int(10) unsigned NOT NULL DEFAULT '0',
  `totalnum` int(10) unsigned NOT NULL DEFAULT '0',
  `awardnum` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_lottery_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_lottery_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_lottery_reply`;
CREATE TABLE `ims_hx_lottery_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可参与的用户组',
  `thumb` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `need_type` varchar(10) NOT NULL,
  `need_num` int(10) unsigned NOT NULL,
  `give_type` varchar(10) NOT NULL,
  `give_num` int(10) unsigned NOT NULL DEFAULT '0',
  `onlynone` tinyint(1) NOT NULL DEFAULT '0',
  `awardnum` int(10) unsigned NOT NULL,
  `playnum` int(10) unsigned NOT NULL,
  `dayplaynum` int(10) unsigned NOT NULL,
  `zfcs` int(10) unsigned NOT NULL,
  `zjcs` int(10) unsigned NOT NULL,
  `tips` varchar(255) NOT NULL,
  `prizeinfo` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `share_title` varchar(100) NOT NULL,
  `share_img` varchar(255) NOT NULL,
  `share_url` varchar(255) NOT NULL,
  `share_content` varchar(255) NOT NULL,
  `rate` int(10) unsigned NOT NULL,
  `prizes` text NOT NULL,
  `reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0结束1正常2暂停',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_lottery_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_lottery_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_lottery_share`;
CREATE TABLE `ims_hx_lottery_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uinacid` int(10) unsigned NOT NULL,
  `reply_id` int(10) unsigned NOT NULL,
  `share_from` varchar(50) NOT NULL,
  `share_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_lottery_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_pictorial`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_pictorial`;
CREATE TABLE `ims_hx_pictorial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(100) NOT NULL DEFAULT '',
  `share` varchar(250) NOT NULL DEFAULT '',
  `open` varchar(100) NOT NULL DEFAULT '',
  `ostyle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `music` varchar(100) NOT NULL DEFAULT '',
  `mauto` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `mloop` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `content` varchar(1000) NOT NULL DEFAULT '',
  `loading` varchar(100) NOT NULL DEFAULT '',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `isloop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `moban` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_pictorial
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_pictorial_item`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_pictorial_item`;
CREATE TABLE `ims_hx_pictorial_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pictorialid` int(10) unsigned NOT NULL,
  `photoid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `item` varchar(1000) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `x` int(3) NOT NULL DEFAULT '0',
  `y` int(3) NOT NULL DEFAULT '0',
  `bigimg` varchar(1000) NOT NULL DEFAULT '',
  `animation` varchar(20) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_photoid` (`photoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_pictorial_item
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_pictorial_photo`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_pictorial_photo`;
CREATE TABLE `ims_hx_pictorial_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pictorialid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `ispreview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_huabaoid` (`pictorialid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_pictorial_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_pictorial_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_pictorial_reply`;
CREATE TABLE `ims_hx_pictorial_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `huabaoid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_pictorial_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_subscribe_apply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_subscribe_apply`;
CREATE TABLE `ims_hx_subscribe_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `realname` varchar(20) NOT NULL,
  `qq` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `alipay` varchar(50) NOT NULL,
  `cardid` varchar(50) NOT NULL,
  `cardfrom` varchar(255) NOT NULL,
  `cardname` varchar(10) NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `mobile` varchar(12) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_subscribe_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_subscribe_article`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_subscribe_article`;
CREATE TABLE `ims_hx_subscribe_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `credit` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_subscribe_article
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_subscribe_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_subscribe_data`;
CREATE TABLE `ims_hx_subscribe_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `from_uid` int(10) unsigned NOT NULL,
  `sn` int(10) unsigned NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `article_id` int(10) unsigned NOT NULL,
  `shouyi` int(10) unsigned NOT NULL DEFAULT '0',
  `zjrs` int(10) unsigned NOT NULL DEFAULT '0',
  `jjrs` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_subscribe_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_address`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_address`;
CREATE TABLE `ims_hx_zhongchou_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_adv`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_adv`;
CREATE TABLE `ims_hx_zhongchou_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_adv
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_cart`;
CREATE TABLE `ims_hx_zhongchou_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `projectid` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_category`;
CREATE TABLE `ims_hx_zhongchou_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `thumb` varchar(255) NOT NULL COMMENT '分类图片',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isrecommand` int(10) DEFAULT '0',
  `description` varchar(500) NOT NULL COMMENT '分类介绍',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_dispatch`;
CREATE TABLE `ims_hx_zhongchou_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `dispatchname` varchar(50) DEFAULT '',
  `dispatchtype` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `firstprice` decimal(10,2) DEFAULT '0.00',
  `secondprice` decimal(10,2) DEFAULT '0.00',
  `firstweight` int(11) DEFAULT '0',
  `secondweight` int(11) DEFAULT '0',
  `express` int(11) DEFAULT '0',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_dispatch
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_express`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_express`;
CREATE TABLE `ims_hx_zhongchou_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `express_name` varchar(50) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `express_price` varchar(10) DEFAULT '',
  `express_area` varchar(100) DEFAULT '',
  `express_url` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_express
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_feedback`;
CREATE TABLE `ims_hx_zhongchou_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为维权，2为告擎',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未解决，1用户同意，2用户拒绝',
  `feedbackid` varchar(30) NOT NULL COMMENT '投诉单号',
  `transid` varchar(30) NOT NULL COMMENT '订单号',
  `reason` varchar(1000) NOT NULL COMMENT '理由',
  `solution` varchar(1000) NOT NULL COMMENT '期待解决方案',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_feedbackid` (`feedbackid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_transid` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_order`;
CREATE TABLE `ims_hx_zhongchou_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为已付款，2为已发货，3为成功',
  `sendtype` tinyint(1) unsigned NOT NULL COMMENT '1为快递，2为自提',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  `return_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `addressid` int(10) unsigned NOT NULL,
  `expresscom` varchar(30) NOT NULL DEFAULT '',
  `expresssn` varchar(50) NOT NULL DEFAULT '',
  `express` varchar(200) NOT NULL DEFAULT '',
  `item_price` decimal(10,2) DEFAULT '0.00',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `dispatch` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_project`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_project`;
CREATE TABLE `ims_hx_zhongchou_project` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `limit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `donenum` int(10) unsigned NOT NULL DEFAULT '0',
  `finish_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deal_days` int(10) unsigned NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isrecommand` tinyint(1) unsigned DEFAULT '0',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) DEFAULT '',
  `brief` varchar(1000) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `nosubuser` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0暂停1正常2停止',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_project
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_hx_zhongchou_project_item`
-- ----------------------------
DROP TABLE IF EXISTS `ims_hx_zhongchou_project_item`;
CREATE TABLE `ims_hx_zhongchou_project_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(2000) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `limit_num` int(10) unsigned NOT NULL,
  `donenum` int(10) unsigned NOT NULL DEFAULT '0',
  `repaid_day` int(10) unsigned NOT NULL,
  `return_type` tinyint(1) unsigned NOT NULL,
  `dispatch` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hx_zhongchou_project_item
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_images_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_images_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_cart`;
CREATE TABLE `ims_jufeng_wcy_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `foodsid` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_category`;
CREATE TABLE `ims_jufeng_wcy_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID,0为店铺',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `sendprice` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `shouji` bigint(50) NOT NULL COMMENT '店家手机',
  `email` varchar(50) NOT NULL DEFAULT '',
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `time1` varchar(10) NOT NULL DEFAULT '0',
  `time2` varchar(10) NOT NULL DEFAULT '0',
  `time3` varchar(10) NOT NULL DEFAULT '0',
  `time4` varchar(10) NOT NULL DEFAULT '0',
  `address` varchar(100) NOT NULL DEFAULT '',
  `loc_x` varchar(20) NOT NULL DEFAULT '',
  `loc_y` varchar(20) NOT NULL DEFAULT '',
  `mbgroup` int(10) unsigned NOT NULL,
  `count1` varchar(20) NOT NULL,
  `count2` varchar(20) NOT NULL,
  `count3` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_foods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_foods`;
CREATE TABLE `ims_jufeng_wcy_foods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ishot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `unit` varchar(5) NOT NULL DEFAULT '',
  `preprice` varchar(10) NOT NULL DEFAULT '',
  `oriprice` varchar(10) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_foods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_loc`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_loc`;
CREATE TABLE `ims_jufeng_wcy_loc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `loc_x` varchar(20) NOT NULL,
  `loc_y` varchar(20) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_loc
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_order`;
CREATE TABLE `ims_jufeng_wcy_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `mobile` bigint(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '-2已删除，-1已取消，0已完成，1等待支付，2已下单，3已确认',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为在线付款，2为餐到付款',
  `other` varchar(100) NOT NULL DEFAULT '',
  `time` varchar(20) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_order_foods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_order_foods`;
CREATE TABLE `ims_jufeng_wcy_order_foods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `foodsid` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_order_foods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_print`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_print`;
CREATE TABLE `ims_jufeng_wcy_print` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `cateid` int(10) NOT NULL,
  `deviceno` varchar(20) NOT NULL,
  `key` varchar(20) NOT NULL,
  `printtime` int(10) unsigned NOT NULL,
  `qr` varchar(200) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_print
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_shoptype`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_shoptype`;
CREATE TABLE `ims_jufeng_wcy_shoptype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `displayorder` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_shoptype
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_jufeng_wcy_sms`
-- ----------------------------
DROP TABLE IF EXISTS `ims_jufeng_wcy_sms`;
CREATE TABLE `ims_jufeng_wcy_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `email` varchar(50) NOT NULL,
  `emailpsw` varchar(100) NOT NULL,
  `smtp` varchar(50) NOT NULL,
  `smsnum` varchar(50) NOT NULL,
  `smspsw` varchar(50) NOT NULL,
  `smstest` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_jufeng_wcy_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ju_read_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ju_read_data`;
CREATE TABLE `ims_ju_read_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `reply_id` int(10) unsigned NOT NULL,
  `openid` varchar(30) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `sn` varchar(20) NOT NULL,
  `prizeid` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ju_read_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ju_read_log`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ju_read_log`;
CREATE TABLE `ims_ju_read_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `reply_id` int(10) unsigned NOT NULL,
  `parentopenid` varchar(30) NOT NULL,
  `readopenid` varchar(30) NOT NULL,
  `ceratetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ju_read_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_ju_read_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_ju_read_reply`;
CREATE TABLE `ims_ju_read_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `topimg` varchar(255) NOT NULL,
  `bgcolor` varchar(10) NOT NULL,
  `pagestyle` longtext NOT NULL,
  `address` text NOT NULL,
  `tips` varchar(500) NOT NULL,
  `linkurl` varchar(200) NOT NULL,
  `adimg` varchar(255) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `copyright` varchar(20) NOT NULL,
  `prizes` longtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ju_read_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lee_tlvoice_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lee_tlvoice_record`;
CREATE TABLE `ims_lee_tlvoice_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyid` varchar(40) NOT NULL DEFAULT '',
  `timelength` varchar(20) NOT NULL DEFAULT '',
  `serverid` varchar(500) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lee_tlvoice_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lw_comments`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lw_comments`;
CREATE TABLE `ims_lw_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `toUser` varchar(50) NOT NULL,
  `content` varchar(300) NOT NULL DEFAULT '',
  `createtime` varchar(100) NOT NULL,
  `nowColor` varchar(50) NOT NULL,
  `limit` tinyint(2) NOT NULL DEFAULT '0',
  `isok` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lw_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lw_commentslike`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lw_commentslike`;
CREATE TABLE `ims_lw_commentslike` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `swnoId` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `createtime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lw_commentslike
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lw_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lw_fans`;
CREATE TABLE `ims_lw_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `headimgurl` varchar(300) NOT NULL DEFAULT '',
  `createtime` varchar(100) NOT NULL,
  `isblack` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lw_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lw_report`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lw_report`;
CREATE TABLE `ims_lw_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `swnoId` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `reporter` varchar(50) NOT NULL,
  `createtime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lw_report
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_album`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_album`;
CREATE TABLE `ims_lxy_buildpro_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '相册名称',
  `subtitle` varchar(255) DEFAULT NULL,
  `hid` int(11) DEFAULT NULL COMMENT '楼盘id ims_lxy_buildpro_set table id',
  `sort` tinyint(4) unsigned DEFAULT '0' COMMENT '排序',
  `jianjie` text,
  `pic` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='楼盘相册';

-- ----------------------------
-- Records of ims_lxy_buildpro_album
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_bill`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_bill`;
CREATE TABLE `ims_lxy_buildpro_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `weid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `pic1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='楼盘海报';

-- ----------------------------
-- Records of ims_lxy_buildpro_bill
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_expert_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_expert_comment`;
CREATE TABLE `ims_lxy_buildpro_expert_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `weid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `expert_name` varchar(20) DEFAULT NULL,
  `zhiwei` varchar(255) DEFAULT NULL COMMENT '专家职位',
  `sort` tinyint(4) unsigned DEFAULT NULL COMMENT '排序',
  `jianjie` text,
  `content` text COMMENT '点评内容',
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='楼盘-专家点评';

-- ----------------------------
-- Records of ims_lxy_buildpro_expert_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_fell`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_fell`;
CREATE TABLE `ims_lxy_buildpro_fell` (
  `yid` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `hid` int(11) DEFAULT NULL COMMENT '楼盘id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `sort` tinyint(4) unsigned DEFAULT '0' COMMENT '排序',
  `yinxiang_number` int(11) unsigned DEFAULT '0' COMMENT '印象数',
  `isshow` tinyint(1) DEFAULT '1',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`yid`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='房友印象';

-- ----------------------------
-- Records of ims_lxy_buildpro_fell
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_fell_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_fell_record`;
CREATE TABLE `ims_lxy_buildpro_fell_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `weid` int(11) DEFAULT NULL,
  `fromuser` varchar(255) DEFAULT NULL COMMENT '楼盘id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COMMENT='房友印象';

-- ----------------------------
-- Records of ims_lxy_buildpro_fell_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_full_view`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_full_view`;
CREATE TABLE `ims_lxy_buildpro_full_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `hsid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `quanjinglink` varchar(500) DEFAULT NULL COMMENT '全景外链',
  `pic_qian` varchar(1023) DEFAULT NULL,
  `pic_hou` varchar(1023) DEFAULT NULL,
  `pic_zuo` varchar(1023) DEFAULT NULL,
  `pic_you` varchar(1023) DEFAULT NULL,
  `pic_shang` varchar(1023) DEFAULT NULL,
  `pic_xia` varchar(1023) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='楼盘户型全景';

-- ----------------------------
-- Records of ims_lxy_buildpro_full_view
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_head`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_head`;
CREATE TABLE `ims_lxy_buildpro_head` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `xcname` varchar(255) DEFAULT NULL,
  `headpic` varchar(255) DEFAULT NULL,
  `apartpic` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `dist` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `jw_addr` varchar(255) DEFAULT NULL,
  `lng` varchar(12) DEFAULT '116.403694',
  `lat` varchar(12) DEFAULT '39.916042',
  `jianjie` text,
  `xiangmu` text,
  `jiaotong` text,
  `addr` varchar(255) DEFAULT NULL,
  `yyurl` varchar(500) DEFAULT NULL,
  `xwurl` varchar(500) DEFAULT NULL,
  `hyurl` varchar(500) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `lxname` varchar(50) DEFAULT NULL,
  `hyname` varchar(50) DEFAULT NULL,
  `yyname` varchar(50) DEFAULT NULL,
  `xwname` varchar(50) DEFAULT NULL,
  `yxname` varchar(50) DEFAULT NULL,
  `hxname` varchar(50) DEFAULT NULL,
  `jjname` varchar(50) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='楼盘简介';

-- ----------------------------
-- Records of ims_lxy_buildpro_head
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_house`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_house`;
CREATE TABLE `ims_lxy_buildpro_house` (
  `hsid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `weid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '户型名称',
  `sid` int(11) DEFAULT NULL COMMENT '子楼盘 ims_lxy_buildpro_set id',
  `louceng` smallint(1) DEFAULT NULL COMMENT '楼层',
  `mianji` varchar(255) DEFAULT NULL COMMENT '建筑面积',
  `fang` tinyint(4) DEFAULT NULL,
  `ting` tinyint(4) DEFAULT NULL,
  `sort` tinyint(4) unsigned DEFAULT NULL COMMENT '排序',
  `jianjie` text,
  `pic` text,
  `picjson` text,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`hsid`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='楼盘户型';

-- ----------------------------
-- Records of ims_lxy_buildpro_house
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_reply`;
CREATE TABLE `ims_lxy_buildpro_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `hid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_buildpro_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_buildpro_sub`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_buildpro_sub`;
CREATE TABLE `ims_lxy_buildpro_sub` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `hid` int(11) DEFAULT NULL COMMENT '楼盘id',
  `title` varchar(255) DEFAULT NULL COMMENT '子楼盘名称',
  `sort` tinyint(4) unsigned DEFAULT '0' COMMENT '排序',
  `jianjie` text,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='子楼盘';

-- ----------------------------
-- Records of ims_lxy_buildpro_sub
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_bussiness_card`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_bussiness_card`;
CREATE TABLE `ims_lxy_bussiness_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `websiteswitch` tinyint(4) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `addrswitch` tinyint(4) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `jw_addr` varchar(255) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `lat` varchar(10) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `dist` varchar(50) DEFAULT NULL,
  `style` varchar(20) DEFAULT 'default',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_bussiness_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_bussiness_card_class`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_bussiness_card_class`;
CREATE TABLE `ims_lxy_bussiness_card_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `outurl` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `isshow` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_bussiness_card_class
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_bussiness_card_cop`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_bussiness_card_cop`;
CREATE TABLE `ims_lxy_bussiness_card_cop` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `copname` varchar(100) DEFAULT NULL,
  `copintro` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `jw_addr` varchar(255) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `lat` varchar(10) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `dist` varchar(50) DEFAULT NULL,
  `bankuser` varchar(50) DEFAULT NULL,
  `bankname` varchar(50) DEFAULT NULL,
  `bankaccount` varchar(50) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_bussiness_card_cop
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_bussiness_card_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_bussiness_card_reply`;
CREATE TABLE `ims_lxy_bussiness_card_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `title` varchar(50) NOT NULL COMMENT '规则标题',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `picture` varchar(100) DEFAULT NULL COMMENT '图片',
  `cid` int(10) unsigned NOT NULL COMMENT '名片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '开关状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_bussiness_card_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_marry_info`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_marry_info`;
CREATE TABLE `ims_lxy_marry_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `weid` bigint(20) unsigned DEFAULT NULL,
  `fromuser` varchar(32) DEFAULT NULL,
  `sid` bigint(20) unsigned DEFAULT NULL COMMENT 'micro_xitie_set id',
  `name` varchar(25) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `rs` smallint(1) DEFAULT NULL COMMENT '赴宴人数',
  `zhufu` varchar(255) DEFAULT NULL COMMENT '收到祝福',
  `ctime` datetime DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '1:赴宴 2：祝福',
  PRIMARY KEY (`id`),
  KEY `idx_sid_openid` (`sid`,`fromuser`),
  KEY `idx_sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微喜帖信息列表';

-- ----------------------------
-- Records of ims_lxy_marry_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_marry_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_marry_list`;
CREATE TABLE `ims_lxy_marry_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `art_pic` varchar(255) DEFAULT NULL,
  `donghua_pic` varchar(255) DEFAULT NULL,
  `suolue_pic` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `xl_name` varchar(255) DEFAULT NULL,
  `xn_name` varchar(255) DEFAULT NULL,
  `is_front` varchar(255) DEFAULT '1' COMMENT '1:新郎名字在前 2:新娘名字在前',
  `tel` varchar(25) DEFAULT NULL,
  `hy_time` datetime DEFAULT NULL COMMENT '婚宴日期',
  `dist` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `hy_addr` varchar(255) DEFAULT NULL COMMENT '婚宴地址',
  `jw_addr` varchar(255) DEFAULT NULL COMMENT '经纬地址',
  `lng` varchar(12) DEFAULT '116.403694',
  `lat` varchar(12) DEFAULT '39.916042',
  `video` varchar(255) DEFAULT '/res/weiXiTie/mp4.mp4',
  `music` varchar(255) DEFAULT '/res/weiXiTie/youGotMe.mp3',
  `hs_pic` text COMMENT '婚纱图片',
  `pwd` varchar(255) DEFAULT NULL,
  `word` varchar(500) DEFAULT NULL,
  `erweima_pic` varchar(255) DEFAULT NULL COMMENT '二维码图片',
  `copyright` varchar(60) DEFAULT NULL,
  `createtime` int(11) unsigned DEFAULT NULL,
  `sendtitle` varchar(255) NOT NULL DEFAULT '',
  `senddescription` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微喜帖设置';

-- ----------------------------
-- Records of ims_lxy_marry_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_marry_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_marry_reply`;
CREATE TABLE `ims_lxy_marry_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `marryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_marry_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_rtrouter_authentication`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_rtrouter_authentication`;
CREATE TABLE `ims_lxy_rtrouter_authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `routerid` int(11) DEFAULT NULL,
  `fromuser` varchar(100) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `result` int(11) DEFAULT NULL,
  `resultmemo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_rtrouter_authentication
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_rtrouter_info`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_rtrouter_info`;
CREATE TABLE `ims_lxy_rtrouter_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `iurl` varchar(255) DEFAULT NULL,
  `rname` varchar(100) DEFAULT NULL,
  `appid` varchar(100) DEFAULT NULL,
  `appkey` varchar(100) DEFAULT NULL,
  `nodeid` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_rtrouter_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_lxy_rtrouter_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_lxy_rtrouter_reply`;
CREATE TABLE `ims_lxy_rtrouter_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `oktip` varchar(255) NOT NULL COMMENT '规则标题',
  `routerid` int(10) unsigned NOT NULL COMMENT '名片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '开关状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_lxy_rtrouter_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbrp_activities`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbrp_activities`;
CREATE TABLE `ims_mbrp_activities` (
  `actid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动编号',
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL COMMENT '活动名称',
  `start` int(10) unsigned NOT NULL COMMENT '开始时间',
  `end` int(10) unsigned NOT NULL COMMENT '结束时间',
  `rules` text NOT NULL COMMENT '活动规则介绍',
  `guide` varchar(255) NOT NULL COMMENT '活动指南(图文素材地址)',
  `banner` varchar(500) NOT NULL COMMENT '背景图片',
  `type` varchar(10) NOT NULL COMMENT '活动类型(direct, shared)',
  `limit` varchar(1000) NOT NULL DEFAULT '',
  `share` varchar(1000) NOT NULL DEFAULT '',
  `tag` text NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`actid`),
  KEY `type` (`type`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbrp_activities
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbrp_activity_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbrp_activity_gifts`;
CREATE TABLE `ims_mbrp_activity_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity` int(10) unsigned NOT NULL,
  `gift` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `rate` decimal(6,2) NOT NULL COMMENT '中奖百分比率',
  PRIMARY KEY (`id`),
  KEY `activity` (`activity`),
  KEY `gift` (`gift`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbrp_activity_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbrp_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbrp_fans`;
CREATE TABLE `ims_mbrp_fans` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) unsigned NOT NULL,
  `openid` varchar(40) NOT NULL DEFAULT '',
  `proxy` varchar(40) NOT NULL DEFAULT '',
  `unionid` varchar(40) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `gender` varchar(2) DEFAULT '',
  `state` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uniacid` (`uniacid`),
  KEY `openid` (`openid`),
  KEY `proxy` (`proxy`),
  KEY `nickname` (`nickname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbrp_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbrp_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbrp_gifts`;
CREATE TABLE `ims_mbrp_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'cash - 现金红包, coupon - 券类',
  `tag` text NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbrp_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbrp_helps`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbrp_helps`;
CREATE TABLE `ims_mbrp_helps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `activity` int(10) unsigned NOT NULL,
  `owner` int(10) unsigned NOT NULL,
  `helper` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity` (`activity`),
  KEY `uniacid` (`uniacid`),
  KEY `owner` (`owner`),
  KEY `helper` (`helper`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbrp_helps
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbrp_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbrp_profiles`;
CREATE TABLE `ims_mbrp_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(10) NOT NULL,
  `title` varchar(20) NOT NULL,
  `value` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbrp_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbrp_records`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbrp_records`;
CREATE TABLE `ims_mbrp_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `activity` int(10) unsigned NOT NULL,
  `gift` int(10) unsigned NOT NULL,
  `fee` varchar(20) NOT NULL DEFAULT '',
  `log` varchar(500) NOT NULL DEFAULT '',
  `status` varchar(20) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `completed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `activity` (`activity`),
  KEY `gift` (`gift`),
  KEY `log` (`log`(333)),
  KEY `uniacid` (`uniacid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbrp_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbrp_trades`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbrp_trades`;
CREATE TABLE `ims_mbrp_trades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `activity` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `item` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `paid` int(10) unsigned NOT NULL,
  `completed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `activity` (`activity`),
  KEY `uid` (`uid`),
  KEY `item` (`item`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbrp_trades
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbsk_activities`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbsk_activities`;
CREATE TABLE `ims_mbsk_activities` (
  `actid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动编号',
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL COMMENT '活动名称',
  `start` int(10) unsigned NOT NULL COMMENT '开始时间',
  `end` int(10) unsigned NOT NULL COMMENT '结束时间',
  `rules` text NOT NULL COMMENT '活动规则介绍',
  `guide` varchar(255) NOT NULL COMMENT '活动指南(图文素材地址)',
  `sorry` varchar(500) NOT NULL DEFAULT '',
  `banner` varchar(500) NOT NULL COMMENT '背景图片',
  `type` varchar(10) NOT NULL COMMENT '活动类型(direct, shared)',
  `tag` text NOT NULL,
  `limit` varchar(1000) NOT NULL DEFAULT '',
  `share` varchar(1000) NOT NULL DEFAULT '',
  `shake` varchar(1000) NOT NULL,
  `page` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`actid`),
  KEY `type` (`type`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbsk_activities
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbsk_activity_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbsk_activity_gifts`;
CREATE TABLE `ims_mbsk_activity_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity` int(10) unsigned NOT NULL,
  `gift` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `rate` decimal(6,2) NOT NULL COMMENT '中奖百分比率',
  PRIMARY KEY (`id`),
  KEY `activity` (`activity`),
  KEY `gift` (`gift`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbsk_activity_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbsk_devices`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbsk_devices`;
CREATE TABLE `ims_mbsk_devices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `activity` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `device_id` int(10) unsigned NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `major` int(10) unsigned NOT NULL,
  `minor` int(10) unsigned NOT NULL,
  `audit_status` int(11) NOT NULL,
  `audit_comment` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 未激活, 1:已激不活跃, 2: 活跃',
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`,`major`,`minor`),
  KEY `uniacid` (`uniacid`),
  KEY `device_id` (`device_id`),
  KEY `activity` (`activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbsk_devices
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbsk_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbsk_fans`;
CREATE TABLE `ims_mbsk_fans` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) unsigned NOT NULL,
  `openid` varchar(40) NOT NULL DEFAULT '',
  `proxy` varchar(40) NOT NULL DEFAULT '',
  `unionid` varchar(40) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `gender` varchar(2) DEFAULT '',
  `state` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uniacid` (`uniacid`),
  KEY `openid` (`openid`),
  KEY `proxy` (`proxy`),
  KEY `nickname` (`nickname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbsk_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbsk_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbsk_gifts`;
CREATE TABLE `ims_mbsk_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'cash - 现金红包, coupon - 券类',
  `tag` text NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbsk_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbsk_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbsk_profiles`;
CREATE TABLE `ims_mbsk_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(10) NOT NULL,
  `title` varchar(20) NOT NULL,
  `value` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbsk_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mbsk_records`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mbsk_records`;
CREATE TABLE `ims_mbsk_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `activity` int(10) unsigned NOT NULL,
  `gift` int(10) unsigned NOT NULL,
  `fee` varchar(20) NOT NULL DEFAULT '',
  `log` varchar(500) NOT NULL DEFAULT '',
  `status` varchar(20) NOT NULL,
  `device` int(10) unsigned NOT NULL DEFAULT '0',
  `distance` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `created` int(10) unsigned NOT NULL,
  `completed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `activity` (`activity`),
  KEY `gift` (`gift`),
  KEY `log` (`log`(333)),
  KEY `uniacid` (`uniacid`),
  KEY `status` (`status`),
  KEY `device` (`device`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mbsk_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mb_store_notifies`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mb_store_notifies`;
CREATE TABLE `ims_mb_store_notifies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `template` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mb_store_notifies
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_card`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card`;
CREATE TABLE `ims_mc_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `color` varchar(255) NOT NULL DEFAULT '',
  `background` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `format` varchar(50) NOT NULL DEFAULT '',
  `fields` varchar(1000) NOT NULL DEFAULT '',
  `snpos` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `business` text NOT NULL,
  `description` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_card_members`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_members`;
CREATE TABLE `ims_mc_card_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `cid` int(10) NOT NULL DEFAULT '0',
  `cardsn` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_members
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_chats_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_chats_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_credits_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `tid` varchar(20) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_credits_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL DEFAULT '',
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_fans_groups`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_fans_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_groups`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL DEFAULT '',
  `orderlist` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_groups
-- ----------------------------
INSERT INTO `ims_mc_groups` VALUES ('1', '1', '默认会员组', '0', '1');

-- ----------------------------
-- Table structure for `ims_mc_handsel`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_mapping_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `salt` char(8) NOT NULL DEFAULT '',
  `follow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fanid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `openid` (`openid`),
  KEY `updatetime` (`updatetime`),
  KEY `nickname` (`nickname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_mapping_ucenter`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_ucenter
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_mass_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mass_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_members`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `groupid` int(11) NOT NULL DEFAULT '0',
  `credit1` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit3` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit4` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit5` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `vip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `constellation` varchar(10) NOT NULL DEFAULT '',
  `zodiac` varchar(5) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `idcard` varchar(30) NOT NULL DEFAULT '',
  `studentid` varchar(50) NOT NULL DEFAULT '',
  `grade` varchar(10) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `nationality` varchar(30) NOT NULL DEFAULT '',
  `resideprovince` varchar(30) NOT NULL DEFAULT '',
  `residecity` varchar(30) NOT NULL DEFAULT '',
  `residedist` varchar(30) NOT NULL DEFAULT '',
  `graduateschool` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(50) NOT NULL DEFAULT '',
  `education` varchar(10) NOT NULL DEFAULT '',
  `occupation` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(30) NOT NULL DEFAULT '',
  `revenue` varchar(10) NOT NULL DEFAULT '',
  `affectivestatus` varchar(30) NOT NULL DEFAULT '',
  `lookingfor` varchar(255) NOT NULL DEFAULT '',
  `bloodtype` varchar(5) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL DEFAULT '',
  `weight` varchar(5) NOT NULL DEFAULT '',
  `alipay` varchar(30) NOT NULL DEFAULT '',
  `msn` varchar(30) NOT NULL DEFAULT '',
  `taobao` varchar(30) NOT NULL DEFAULT '',
  `site` varchar(30) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_members
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_member_address`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_member_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_oauth_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_meepohongniangphotos`
-- ----------------------------
DROP TABLE IF EXISTS `ims_meepohongniangphotos`;
CREATE TABLE `ims_meepohongniangphotos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_meepohongniangphotos
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_meepomailattachment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_meepomailattachment`;
CREATE TABLE `ims_meepomailattachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `attachmentname` varchar(50) NOT NULL COMMENT '附件名称',
  `thumb` varchar(255) NOT NULL COMMENT '附件路径',
  `description` varchar(500) NOT NULL COMMENT '附件描述',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附加排序',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_meepomailattachment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_meepoweixiangqin_slide`
-- ----------------------------
DROP TABLE IF EXISTS `ims_meepoweixiangqin_slide`;
CREATE TABLE `ims_meepoweixiangqin_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_meepoweixiangqin_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_meepo_hongnianglikes`
-- ----------------------------
DROP TABLE IF EXISTS `ims_meepo_hongnianglikes`;
CREATE TABLE `ims_meepo_hongnianglikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `toopenid` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(12) NOT NULL,
  `weid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_meepo_hongnianglikes
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_meepo_hongniangonoff`
-- ----------------------------
DROP TABLE IF EXISTS `ims_meepo_hongniangonoff`;
CREATE TABLE `ims_meepo_hongniangonoff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status` int(2) NOT NULL DEFAULT '1',
  `weid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_meepo_hongniangonoff
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_meepo_hongniangset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_meepo_hongniangset`;
CREATE TABLE `ims_meepo_hongniangset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `share_title` varchar(100) NOT NULL,
  `share_link` varchar(300) NOT NULL,
  `share_content` varchar(300) NOT NULL,
  `share_logo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `headtitle` varchar(200) NOT NULL,
  `logo` varchar(60) NOT NULL,
  `weid` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `hnages` varchar(200) NOT NULL,
  `pay_height` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看身高消费积分',
  `pay_weight` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看体重消费积分',
  `pay_telephone` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看手机号码消费积分',
  `pay_carhouse` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看车房状态',
  `pay_Descrip` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看自我介绍',
  `pay_uitsOthers` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看理想的另一半',
  `pay_uheight` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看对象的身高',
  `pay_uage` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看对象的年龄',
  `pay_all` varchar(12) NOT NULL DEFAULT '0' COMMENT '查看所有',
  `pay_occupation` varchar(10) NOT NULL DEFAULT '0' COMMENT '查看职业',
  `pay_revenue` varchar(10) NOT NULL DEFAULT '0' COMMENT '查看月收入',
  `pay_affectivestatus` varchar(10) NOT NULL DEFAULT '0' COMMENT '查看他的情感状态',
  `pay_lxxingzuo` varchar(10) NOT NULL DEFAULT '0' COMMENT '查看理想星座',
  `share_jifen` varchar(10) NOT NULL DEFAULT '0' COMMENT '分享奖励积分',
  `header_ads` varchar(100) NOT NULL COMMENT '前台广告',
  `header_adsurl` varchar(200) NOT NULL COMMENT '首页图片链接',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_meepo_hongniangset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_meepo_qmbttz_set`
-- ----------------------------
DROP TABLE IF EXISTS `ims_meepo_qmbttz_set`;
CREATE TABLE `ims_meepo_qmbttz_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `copyright` varchar(300) NOT NULL,
  `share_txt` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_meepo_qmbttz_set
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_meepo_sexy_set`
-- ----------------------------
DROP TABLE IF EXISTS `ims_meepo_sexy_set`;
CREATE TABLE `ims_meepo_sexy_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `num` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_meepo_sexy_set
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_menu_event`
-- ----------------------------
DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_menu_event
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_message_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_message_list`;
CREATE TABLE `ims_message_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  `fid` int(11) DEFAULT '0',
  `isshow` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_message_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mobilenumber`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateline` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mobilenumber
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_modules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '',
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL DEFAULT '0',
  `subscribes` varchar(500) NOT NULL DEFAULT '',
  `handles` varchar(500) NOT NULL DEFAULT '',
  `isrulefields` tinyint(1) NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issolution` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `target` int(10) unsigned NOT NULL DEFAULT '0',
  `iscard` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`),
  KEY `idx_issystem` (`issystem`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules
-- ----------------------------
INSERT INTO `ims_modules` VALUES ('1', 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('2', 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('3', 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('4', 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微赞系统，高效的与微信公众平台进行对接整合。', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('5', 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '0', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('6', 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '0', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('7', 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('9', 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('10', 'video', 'system', '基本视频回复', '1.0', '提供视频回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'Weizan Team', 'http://www.012wz.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('8', 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'Weizan Team', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', '1', '1', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('11', 'zombie_fighting', 'wdlgame', '一战到底', '2.8', '一战到底', '一战到底是一档形式新颖，趣味十足，在挑战中挖掘个性，又充满悬念的全新益智攻擂游戏', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('12', 'ykbl_robot', 'customer', '聊天机器人', '2.9.5', '调用图灵机器人', '调用图灵机器人，能够在系统中锁定图灵机器人！方便用户操作', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('13', 'xhw_voice', 'activity', '好声音', '1', '好声音', '好声音', '微赞', 'http://www.012wz.com', '0', 'a:0:{}', 'a:2:{i:0;s:5:\"voice\";i:1;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('14', 'xhw_picvote', 'activity', '图片投票', '1.8', '图片投票', '图片投票', '微赞', 'http://www.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('15', 'xfeng_community', 'business', '微小区', '4.8', '微小区', '微小区', '微赞', 'www.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('16', 'wl_heka', 'activity', '送贺卡', '1.3', '新年贺卡，生日贺卡，同窗贺卡', '新年贺卡，生日贺卡，同窗贺卡', '微赞 &amp; 012WZ.COM', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('17', 'weiyun_shuqian', 'wdlgame', '数钱数到手抽筋', '3.0', '数钱数到手抽筋', '窥探朋友私密的一面，看看朋友发表的秘密、八卦、爆料、真心话', '微赞', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('18', 'weisrc_truth', 'wdlshow', '真心话', '3.0', '真心话', '窥探朋友私密的一面，看看朋友发表的秘密、八卦、爆料、真心话', '微动力', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('19', 'weisrc_pano', 'other', '360全景展示', '1.2', '360全景展示', '360全景展示', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('20', 'weisrc_invitative', 'activity', '邀请函', '2.4', '邀请函', '邀请函', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('21', 'weisrc_feedback', 'other', '留言板', '1.1.4', '留言板', '留言板', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('22', 'weisrc_dish', 'business', '微点餐', '3.7', '微点餐', '微点餐', '微动力', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('23', 'weisrc_clubbigwheel', 'activity', '惩罚大转盘', '1.1.2', '惩罚大转盘', '惩罚大转盘', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('24', 'weisrc_businesscenter', 'business', '微商圈', '3.1', '微商圈', '微商圈', '微赞', 'http://www.012wz.com', '0', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('25', 'weisrc_audio', 'activity', '音乐盒子', '1.5', '音乐盒子', '音乐盒子', '012WZ.COM', 'http://bbs.012wz.com/', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('26', 'weilive', 'business', '微生活', '4.1', '微生活', '微生活', '微赞', 'http://www.012wz.com', '1', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('27', 'we7_wxwall', 'wdlshow', '微信墙', '1.7', '可以实时同步显示现场参与者发送的微信', '微信墙又称微信大屏幕，是在展会、音乐会、婚礼现场等场所展示特定主题微信的大屏幕，大屏幕上可以同步显示现场参与者发送的微信，使场内外观众能够第一时间传递和获取现场信息。', '微动力', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('28', 'we7_shake', 'activity', '摇一摇中奖', '1.4', '摇一摇中奖', '摇一摇中奖', '微动力', 'http://www.b2ctui.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('29', 'we7_research', 'business', '预约与调查', '1.0.6', '可以快速生成调查表单或则预约记录', '', '微动力', '#', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('30', 'we7_egg', 'activity', '砸蛋', '1.4.2', '趣味性抽奖类营销功能', '砸蛋抽奖可以增强粉丝与公众号的互动、提升公众号的黏性，让你在短时间内迅速引爆人气。', '012WZ.COM', 'http://bbs.012wz.com/', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('31', 'we7_car', 'business', '微汽车', '3.5', '微汽车', '微汽车', '012wz.com', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('32', 'we7_business', 'services', '周边商户', '1.4', '提供商家信息的添加、聚合及LBS的查询。', '', '012WZ.COM', 'http://bbs.b2ctui.com', '1', 'a:0:{}', 'a:1:{i:0;s:8:\"location\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('33', 'we7_album', 'business', '微相册', '3.6', '展示一系列图片来介绍你的公众号', '', '012WZ.COM', 'http://www.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('34', 'wdl_wifi', 'activity', '微路由', '2.8.5', '支持RippleTek路由器接口实现微信与路由器之间的各项应用交互', '支持RippleTek路由器接口实现微信与路由器之间的各项应用交互', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('35', 'wdl_shopping', 'business', '微商城', '3.8', '微商城', '微商城', '微动力', '', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('36', 'wdl_scratch', 'activity', '刮刮卡(经典版)', '2.9.5', '刮刮卡(经典版)', '刮刮卡-经典版 营销抽奖', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('37', 'wdl_comeon', 'activity', '来吧来吧', '1.84', '分享集点，赢取加油卡，充值卡等系列活动', '分享集点，赢取加油卡，充值卡等系列活动', 'ewei', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('38', 'wdl_bigwheel', 'activity', '大转盘', '1.4.1', '大转盘营销抽奖', '大转盘营销抽奖', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('39', 'thinkidea_secondmarket', 'activity', '二手市场', '3.3', '二手市场', '类似58、赶集发布二手信息的模块.后期将继续推出新版本，使其功能更强大', '微赞', 'http://bbs.012wz.com', '1', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('40', 'thinkidea_rencai', 'business', '微人才', '3.0', '微人才', '微人才，求职招聘，招人才，找企业，就来微人才。手机端也能发招聘，手机端也能找工作', '微赞', 'www.012wz.com', '1', 'a:10:{i:0;s:4:\"text\";i:1;s:8:\"location\";i:2;s:4:\"link\";i:3;s:9:\"subscribe\";i:4;s:11:\"unsubscribe\";i:5;s:2:\"qr\";i:6;s:5:\"trace\";i:7;s:5:\"click\";i:8;s:4:\"view\";i:9;s:5:\"enter\";}', 'a:8:{i:0;s:8:\"location\";i:1;s:4:\"link\";i:2;s:9:\"subscribe\";i:3;s:2:\"qr\";i:4;s:5:\"trace\";i:5;s:5:\"click\";i:6;s:5:\"enter\";i:7;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('41', 'thinkidea_phonebook', 'business', '电话本', '1.4', '电话本', '', 'Thinkidea', 'http://bbs.Thinkidea.net/', '1', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('42', 'str_takeout', 'business', '微外卖', '2.9.6', '微外卖', '微外卖', '微动力', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('43', 'stonefish_scratch', 'activity', '幸运刮刮卡', '1.6', '幸运刮刮卡－大奖刮出来', '幸运刮刮卡营销刮奖-结合商家网点模块，每个商家可送刮奖机会,分享还可以额外获得刮奖机会哟', '微赞', 'http://www.00393.com/', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('44', 'stonefish_redenvelope', 'activity', '全民抢红包', '1.8', '全民抢红包-营销吸粉工具', '全民抢红包-结合商家活动可设置为抢红包和分红包，参与粉丝或邀请好友为其增加红包金额以及平分红包金额', '微赞', 'http://www.012wz.com/', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('45', 'stonefish_planting', 'activity', '种植乐园', '1.20150105', '种植乐园--粉丝领取种子，邀请朋友浇水，让种子长大参与抽奖', '种植乐园--粉丝通过领取种子，邀请朋友浇水，让种子长大，长大过程中可根据邀请值参与抽奖', '微赞', 'http://www.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('46', 'stonefish_chailihe', 'activity', '幸运拆礼盒', '2.6', '幸运拆礼盒－领取礼盒分享给朋友，让朋友帮其拆礼盒，成功达到设置拆开礼盒的人数，则有机会得到设置的礼品！', '幸运拆礼盒－通过关健词触发活动，或通过朋友分享的活动链接领取礼盒，分享给朋友或朋友圈，朋友点击打开页面，计入拆礼盒人数，当达到活动设置拆开礼盒的人数后，则有机会得到设置的礼品！概率得到礼品或成功拆开即可领取礼品！', '微赞', 'bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('47', 'stonefish_bigwheel', 'activity', '幸运大转盘', '2.4', '幸运大转盘营销抽奖', '幸运大转盘营销抽奖-结合商家网点模块，每个商家可送抽奖机会,分享还可以额外获得抽奖机会哟', '微赞', 'http://www.012wz.com/', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('48', 'scene_cube', 'activity', '场景魔方', '2.6', '商业信息华丽展示，高级授权', '商业信息华丽展示，高级授权', '微动力', '', '0', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('49', 'quickspread', 'business', '码上涨粉', '3.0', '码上涨粉', '传单传播,码上涨粉', '微赞', 'http://bbs.012wz.com', '0', 'a:2:{i:0;s:4:\"scan\";i:1;s:9:\"subscribe\";}', 'a:2:{i:0;s:4:\"text\";i:1;s:9:\"subscribe\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('50', 'qmteam_zerobuy', 'activity', '零元购', '2.0', '零元购', '零元购闪亮上线，零元抽大奖，大牌低价秒，优惠享不停，动动手指，天天有新品、豪礼抽不停。提高关注度。', '青盟网', 'http://www.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('51', 'qiyue_canvas', 'activity', '画图分享', '1.2', '画图分享', '用户画图，然后分享到朋友圈', '微赞', '', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('52', 'mon_yjgz', 'other', '一键关注', '2.9.8', '一键关注', '一键关注!', '微赞', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('53', 'mon_weishare', 'activity', '微助力', '2.8', '分享活动赢好礼', '分享活动到朋友圈获取朋友的助力，即可获取相应礼品！', '微动力', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('54', 'mon_house', 'business', '微楼书', '1.3', '微房产', '微房产！', 'bbs.b2ctui.com', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('55', 'mon_fool', 'activity', '愚人整蛊红包', '2.9.5', '愚人整蛊红包', '愚人整蛊红包', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('56', 'mon_brand', 'activity', '微品牌', '1.3', '品牌介绍，视频，幻灯片，产品！', '品牌介绍，视频，幻灯片，产品！', '微动力', 'bbs.b2ctui.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('57', 'microb_shake', 'activity', '周边摇一摇', '2.7', '提供利用iBeacon蓝牙设备进行现场营销活动的功能', '周边摇一摇使用腾讯最新的摇一摇周边功能. 特别适合各种车站, 会场, 卖场等现场活动, 活动形式新颖, 可以迅速引爆现场.', '微赞', 'www.012wz.com', '0', 'a:0:{}', 'a:0:{}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('58', 'microb_redpack', 'activity', '商户现金红包', '1.8', '提供利用商户现金红包进行营销活动的功能', '商户现金红包功能不同于市面上现有的红包功能. 用户领取后不需要提现, 打开后直接存入微信钱包零钱. <br>\n        主要功能使用 <mark>支持支付的认证服务号</mark>, 订阅号和未认证的服务号可以借用接口. <br>\n        也可以支持有赞等其他平台的营销活动', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('59', 'microb_notifier', 'services', '消息通知中心', '1.9.5', '当前支持微信消息, 官方商城的支付成功提示', '当前支持微信消息, 官方商城的支付成功提示', '微赞', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('60', 'meepo_sexy', 'services', '英雄联盟', '2.9.5', '英雄联盟', '英雄联盟', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('61', 'meepo_qmbttz', 'wdlgame', '冰桶挑战', '0.7', '冰桶挑战', '冰桶挑战', '微动力', 'http://bbs.b2ctui.com/forum.php', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('62', 'meepo_nsign', 'activity', '签到', '2.11', '签到', '签到得积分', '微赞', 'http://bbs.b2ctui.com/', '1', 'a:0:{}', 'a:2:{i:0;s:4:\"text\";i:1;s:5:\"image\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('63', 'lxy_buscard', 'business', '微名片', '1.9.5', '供企业业务员、销售员进行营销时的名片展示,同时对企业形象及企业产品进行全面展示', '供企业业务员、销售员进行营销时的名片展示,同时对企业形象及企业产品进行全面展示', '微赞', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('64', 'lee_tlvoice', 'services', '朋友圈语音', '1.1', '朋友圈语音，可用于朋友圈发送语音。', '朋友圈语音，可用于朋友圈发送语音。', '微赞', '', '0', 'a:0:{}', 'a:2:{i:0;s:4:\"text\";i:1;s:5:\"voice\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('65', 'ju_read', 'business', '集阅读', '1.3', '集阅读', '集阅读', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('66', 'jufeng_wcy', 'business', '聚风微餐饮', '1.4', '聚风微餐饮', '首个多店铺版微信订餐模块', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('67', 'hx_zhongchou', 'business', '微众筹', '1.3', '为有梦想、有创意、有项目的朋友提供募资、投资、孵化、运营一站式综合众筹服务,协助您实现自己的创业梦想。', '为有梦想、有创意、有项目的朋友提供募资、投资、孵化、运营一站式综合众筹服务,协助您实现自己的创业梦想。', '微赞科技', 'http://www.012wz.com/', '1', 'a:0:{}', 'a:0:{}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('68', 'hx_voice', 'services', '普通话在线考试', '2.9.5', '普通话在线考试', '普通话在线考试', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('69', 'hx_subscribe', 'activity', '加粉神器', '3.1', '加粉神器', '推荐其他用户关注，奖励积分', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('70', 'hx_pictorial', 'activity', '微画报（微场景）', '1.5', '用一系列场景图片展示产品和服务', '用一系列场景图片展示产品和服务', '微赞科技', 'http://bbs.012wz.com/', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('71', 'hx_lottery', 'activity', '幸运大抽奖', '1.5', '幸运积分大抽奖', '幸运积分大抽奖', '华轩科技', 'http://bbs.012wz.com/', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('72', 'hx_express', 'services', '扫码查快递', '3.0', '扫码查快递', '扫描快递单条形码查询快递', '微赞', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('73', 'hx_dialect', 'activity', '方言听力版', '0.3', '方言听力版', '方言听力版', '华轩科技', 'http://bbs.012wz.com/', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('74', 'hx_cards', 'activity', '刮刮乐', '2.7', '刮刮乐积分大抽奖', '刮刮乐积分大抽奖', '微动力', '', '0', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('75', 'hx_alert', 'wdlgame', '弹死你', '1.0', '用一种TA无法拒绝的方式跟TA对话！定制“弹框整蛊”，发给好友，弹死TA！', '用一种TA无法拒绝的方式跟TA对话！定制“弹框整蛊”，发给好友，弹死TA！', '微动力', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('76', 'hl_zzz', 'wdlgame', '做粽子', '2.0', '瑞午节活动', '每天系统默认给予10次（可以后台自定义），想要赶快做出XX，那就邀请好友来助威，让你的好友送你体力赚X吧', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('77', 'hl_tug', 'wdlgame', '摇一摇拨河', '3.0', '摇一摇拔河,重现经典', '摇一摇拔河,重现经典', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('78', 'hl_periarthritis', 'activity', '肩周炎', '1.4', '狂撸吧，翻滚吧，是时候治一下肩周炎了', '天天坐在电脑前盼0.6,盼的肩周炎都来了;有病就得治,是时候治一下肩周炎了!', '微动力', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('79', 'fwei_moneyimport', 'services', '会员余额导入', '3.0', '会员余额导入', '将已有系统的会员余额导入到微信系统', '微赞', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:0:{}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('80', 'fm_photosvote', 'activity', '女神投票', '4.0', '女神来了，－分享朋友拉朋友为你的女神投上一票吧！', '女神来了，－分享朋友拉朋友为你的女神投上一票吧！', '微赞', 'http://www.012wz.com/', '1', 'a:3:{i:0;s:4:\"text\";i:1;s:9:\"subscribe\";i:2;s:11:\"unsubscribe\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('81', 'feng_duobao', 'business', '一元夺宝', '3.1', '一元夺宝', '一云夺宝是一种全新的购物方式,是时尚、潮流的风向标,能满足个性、年轻消费者的购物需求', '微赞', 'http://bbs.012wz.com', '1', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('82', 'ewei_money', 'wdlgame', '疯狂划算', '1.02', '疯狂划算, 数钱数到手抽筋', '疯狂划算, 数钱数到手抽筋', '微赞', 'bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('83', 'ewei_hotel', 'business', '微酒店', '3.1', '酒店房间预定,单店版,多店版', '酒店房间预定，单店版, 多店版，类似携程', 'ewei', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('84', 'ewei_exam', 'business', '微考试', '2.8', '微考试系统', '考试系统,判断,单选,多选,用于培训机构及学校!', '微动力', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('85', 'ewei_couplet', 'activity', '对联猜猜', '1.05', '新年吸粉利器，邀请好友集对联赢大奖', '新年吸粉利器，邀请好友集对联赢大奖', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('86', 'ewei_bonus', 'activity', '合体红包', '1.0.8', '最火的模块，合体红包', '最火的模块，合体红包', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('87', 'eso_share', 'activity', '分享达人', '2.9.6', '分享达人', '分享达人是您的微信公众号运营的利器，是您涨粉和宣传最好的工具。', '微动力', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('88', 'eso_sale', 'business', '分销系统', '3.6', '分销系统,分销商城！', '分销系统', '微赞', 'http://www.012wz.com/', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('89', 'eso_runman', 'activity', '奔跑吧兄弟撕名牌', '2.9.5', '奔跑吧兄弟撕名牌', '奔跑吧兄弟撕名牌', '微动力', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('90', 'czt_zwmm', 'activity', '指纹密码', '2.9.5', '指纹密码', '超好玩的情人节配对游戏！乐爆用户，实现不一样的爱情甜蜜！\', \'超好玩的情人节配对游戏！乐爆用户，实现不一样的爱情甜蜜', '微动力', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('91', 'czt_voice', 'activity', '朋友圈发语音', '0.1', '朋友圈发语音', '朋友圈发语音', '', 'http://bbs.012wz.com/', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('92', 'bm_hospital', 'business', '微医疗(门诊服务)', '1.5', '自定义医院、科室、医生介绍，用户可通过微信在线了解医院、科室、医生介绍，并实现在线预约挂号。', '自定义医院、科室、医生介绍，用户可通过微信在线了解医院、科室、医生介绍，并实现在线预约挂号。', '微赞', 'http://www.012wz.com/', '0', 'a:0:{}', 'a:2:{i:0;s:4:\"text\";i:1;s:5:\"image\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('93', 'amouse_house', 'business', '微二手房', '1.4', '出租,求购，求租，出售新房，二手房，新楼盘发布', '微房产，出租,求购，求租，出售新房，二手房，最新房产信息平台，可以出租,求购，求租，出售新房，二手房，新楼盘信息,本地时尚生活互动平台', '微动力', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('94', 'amouse_ecard', 'business', '微E名片', '1.5', '千叶微名片，这不是简单的微名片。', '千叶微名片，这不是简单的微名片，帮你快速结交朋友，建立人脉。生成一个名片二维码，扫描二维码可以保存到手机联系人中。', '微赞', 'bbs.b2ctui.com', '0', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('100', 'amouse_article', 'business', '精美图文', '3.3', '精美图文,官方微文章增加版，内置8套列表模板，很愉快的切换列表显示。可以完全兼容微文章,更好的展示公众号，图文里面可以包含音乐', '精美图文,官方微文章增加版，内置8套列表模板，很愉快的切换列表显示。可以完全兼容微文章,更好的展示公众号，图文里面可以包含音乐.打通一键关注（此一键关注为我精美图文内置模块）与精美图文，现在文章上面可以推荐公众号了。让更多的人来关注，也可以很方便运维管理多个公众号，可以跟别人来交换公众号。\n精美图文内置12套列表页面模板，5套内容页。每个内容页都可以 放置要推荐的公众号，都可以后台设置背景音乐', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('96', 'wdl_hchighguess', 'activity', '我画你猜高级版', '1.0', '我画你猜高级版', '我画你猜高级版', '微赞科技', 'http://www.012wz.com', '1', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('97', 'demo_pia3', 'activity', '啪啪啪', '0.1', '小游戏而已', '小游戏而已', 'On3', 'http://bbs.012wz.com/', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('98', 'lxy_rtrouter', 'other', '微路由', '0.6', '微路由', '支持RippleTek路由器接口实现微信与路由器之间的各项应用交互', '大路货 QQ:792454007', '', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('101', 'feng_auction', 'business', '微拍卖', '3.0', '微信拍卖,粉丝互动', '微拍卖集限时拍卖购物、账户明细管理、余额充值提现等功能一身，微拍卖可以用于任何有商品出售的平台，如家电、汽车、数码或绝大部分实体商户', '微动力', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('102', 'weihaom_wb', 'wdlgame', '踩白块', '1.0', '拆包装,踩虫子,抽老板耳光...无所不能', '拆包装,踩虫子,抽老板耳光...无所不能', '微赞', '', '0', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('103', 'we7_survey', 'customer', '调研', '1.1', '调研', '调研描述', '012WZ.COM', 'http://bbs.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('104', 'ewei_vote', 'activity', '微投票', '1.03', '投票系统', '图片、文字，单选，多选', '微动力', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('105', 'hl_bbb', 'activity', '摇骰子', '2.0.0', '趣味性赚点数功能', '腻了大转盘刮刮卡么?来一起摇骰子吧!可周期性举行比赛,按点数排名,增加用户黏度', '12WZ.COM', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('106', 'lxy_marry', 'activity', '微喜帖', '0.6', '微喜帖', '结婚喜帖发送，赴宴人员登记，新郎新娘结婚照展示，收集祝福语', '012WZ.COM', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('107', 'we7_activity', 'activity', '微活动', '2.3', '报名，议程，嘉宾！', '报名，议程，嘉宾，地图导航，邮件提醒！', '微赞', 'www.012wz.com', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('108', 'hl_dqq', 'wdlgame', '打气球', '1.3', '砸蛋功能升级版', '打气球送积分可以增强粉丝与公众号的互动、提升公众号的黏性，让你在短时间内迅速引爆人气。', '微动力', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('109', 'zam_weimails', 'activity', '微信邮件', '1.19', '微信邮件,粉丝邮件订阅与发送', '本模块旨在方便粉丝需求各种资料 公众号可通过提供便利 将必要资料发送至粉丝绑定邮箱内 支持翻页 支持各种类型的文件上传', '微赞', 'http://bbs.012wz.com/', '1', 'a:0:{}', 'a:2:{i:0;s:4:\"text\";i:1;s:5:\"image\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('110', 'ewei_comeon', 'activity', '来吧来吧', '1.84', '分享集点，赢取加油卡，充值卡等系列活动', '分享集点，赢取加油卡，充值卡等系列活动', 'ewei', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('111', 'jeffh_vwifi', 'services', '微WiFi', '2.9.5', '微WiFi', '微WiFi', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('112', 'zam_findlx', 'business', '找老乡', '6.1', '通过本模块可以快速找到老乡以及和老乡打招呼，通过平台进行聊天 等 功能', '通过本模块可以快速找到老乡以及和老乡打招呼，通过平台进行聊天 等 功能', '微赞', 'http://bbs.012wz.com/', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('113', 'meepo_weixiangqin', 'business', '微相亲', '6.8', '微相亲/红娘/有缘网/世纪佳缘', '微相亲/红娘/有缘网/世纪佳缘', '微赞', 'bbs.b2ctui.com', '1', 'a:0:{}', 'a:3:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:8:\"location\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('114', 'stonefish_luckynum', 'business', '幸运数字', '1.3', '幸运数字', '幸运数字', '微赞', 'www.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('115', 'lxy_buildpro', 'business', '微房产', '1.5', '微房产', '供房产公司展示楼盘', '大路货 QQ:792454007', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('116', 'top_news', 'business', '头条新闻', '1.3', '头条新闻', '头条新闻', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('117', 'lee_coreball', 'activity', 'Coreball', '2.0', 'Coreball,一款热门休闲游戏。', 'Coreball,一款热门休闲游戏。', 'Cloudus Team', '', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('118', 'wdl_amovie', 'customer', '种子搜索器', '2.9.5', '种子资源搜索器,你懂得\', \'种子资源搜索器,你懂得', '种子资源搜索器,你懂得\', \'种子资源搜索器,你懂得', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('119', 'xwz_queue', 'business', '微信排号', '3.1', '微信排号', '微信排号系统', '微赞', 'http://bbs.012wz.com/', '0', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('120', 'super_securitycode', 'services', '超级防伪码', '2.9.5', '超级防伪码', '超级防伪码', '微赞', 'http://bbs.012wz.com', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('121', 'mon_sign', 'activity', '积分签到', '3.0', '积分签到', '积分签到!', '微赞', 'http://bbs.012wz.com', '0', 'a:2:{i:0;s:9:\"subscribe\";i:1;s:11:\"unsubscribe\";}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('122', 'meepo_begging', 'business', '微乞丐', '3.0', '网络乞讨，朋友圈蹭钱，靠脸吃饭的时代已经到来，抓紧行动起来，让我们一起做---微乞丐！', '网络乞讨，朋友圈蹭钱，靠脸吃饭的时代已经到来，抓紧行动起来，让我们一起做---微乞丐！', '微赞', 'http://bbs.012wz.com/', '1', 'a:1:{i:0;s:4:\"text\";}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '1');
INSERT INTO `ims_modules` VALUES ('123', 'jdg_luvwhispers', 'other', '情话', '0.3', '情话', '情话', '家对过微信平台', '', '1', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '0', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('124', 'null_getvoice', 'services', '提取录音', '1.3', '用手机录音，生成音频的下载链接', '用手机录音，生成音频的下载链接', '微赞', '', '0', 'a:0:{}', 'a:1:{i:0;s:4:\"text\";}', '1', '0', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('125', 'xhw_face', 'activity', '人脸识别', '1.9', '人脸识别', '通过用户发来的头部照片，识别出性别，年龄等特征。（当然，会存在一定的误差，请挑选脸部清晰的照片上传', '微赞', 'http://www.012wz.com', '0', 'a:0:{}', 'a:2:{i:0;s:5:\"voice\";i:1;s:4:\"text\";}', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ims_modules_bindings`
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `entry` varchar(10) NOT NULL DEFAULT '',
  `call` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `do` varchar(30) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_bindings
-- ----------------------------
INSERT INTO `ims_modules_bindings` VALUES ('1', 'zombie_fighting', 'menu', '', '题库管理', 'questions', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('2', 'zombie_fighting', 'menu', '', '活动管理', 'lists', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('4', 'xhw_voice', 'menu', '', '项目管理', 'project', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('5', 'xhw_voice', 'menu', '', '高级设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('6', 'xhw_picvote', 'menu', '', '项目管理', 'project', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('7', 'xhw_picvote', 'menu', '', '高级设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('8', 'xfeng_community', 'cover', '', '首页入口设置', 'home', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('9', 'xfeng_community', 'cover', '', '公告入口设置', 'announcement', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('10', 'xfeng_community', 'cover', '', '报修入口设置', 'repair', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('11', 'xfeng_community', 'cover', '', '投诉入口设置', 'report', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('12', 'xfeng_community', 'cover', '', '电话入口设置', 'phone', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('13', 'xfeng_community', 'cover', '', '家政入口设置', 'homemaking', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('14', 'xfeng_community', 'cover', '', '租赁入口设置', 'houselease', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('15', 'xfeng_community', 'cover', '', '活动入口设置', 'activity', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('408', 'xfeng_community', 'menu', '', '超市管理', 'shopping', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('407', 'xfeng_community', 'menu', '', '菜单设置', 'nav', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('18', 'xfeng_community', 'cover', '', '常用查询入口设置', 'search', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('19', 'xfeng_community', 'cover', '', '物业介绍入口设置', 'property', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('20', 'xfeng_community', 'cover', '', '查物业费入口设置', 'propertyfree', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('21', 'xfeng_community', 'menu', 'getMenuTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('22', 'xfeng_community', 'menu', '', '小区管理', 'region', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('23', 'xfeng_community', 'menu', '', '类型管理', 'serviceCategory', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('24', 'xfeng_community', 'menu', '', '幻灯管理', 'slide', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('25', 'xfeng_community', 'menu', '', '物业介绍', 'property', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('26', 'xfeng_community', 'menu', '', '导航管理', 'NavExtension', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('27', 'xfeng_community', 'menu', '', '小区活动', 'activity', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('28', 'xfeng_community', 'menu', '', '常用查询', 'search', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('29', 'xfeng_community', 'menu', '', '便民号码', 'phone', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('30', 'xfeng_community', 'menu', '', '二手市场', 'fled', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('31', 'xfeng_community', 'menu', '', '小区拼车', 'carpool', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('32', 'xfeng_community', 'menu', '', '商家管理', 'business', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('33', 'xfeng_community', 'menu', '', '查物业费', 'propertyfree', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('34', 'xfeng_community', 'menu', '', '黑名单管理', 'black', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('35', 'wl_heka', 'menu', '', '贺卡管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('36', 'wl_heka', 'home', 'gethometiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('37', 'weiyun_shuqian', 'cover', '', '数钱数到手抽筋入口', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('38', 'weiyun_shuqian', 'menu', '', '分享设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('39', 'weiyun_shuqian', 'home', '', '数钱数到手抽筋', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('40', 'weisrc_truth', 'cover', '', '真心话入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('41', 'weisrc_truth', 'menu', '', '问题管理', 'question', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('42', 'weisrc_truth', 'menu', '', '参数设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('43', 'weisrc_truth', 'home', '', '真心话', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('44', 'weisrc_pano', 'cover', '', '360全景入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('45', 'weisrc_pano', 'home', '', '360全景展示', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('46', 'weisrc_invitative', 'menu', '', '邀请函管理', 'activity', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('47', 'weisrc_invitative', 'home', 'getHomeTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('48', 'weisrc_feedback', 'cover', '', '留言板入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('49', 'weisrc_feedback', 'menu', '', '留言管理', 'feedback', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('50', 'weisrc_feedback', 'menu', '', '参数设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('51', 'weisrc_feedback', 'home', '', '留言板', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('52', 'weisrc_dish', 'cover', '', '首页入口设置', 'wapindex', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('53', 'weisrc_dish', 'cover', '', '门店列表入口', 'waprestList', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('54', 'weisrc_dish', 'cover', '', '菜品列表入口', 'waplist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('55', 'weisrc_dish', 'cover', '', '智能点餐入口', 'wapselect', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('56', 'weisrc_dish', 'cover', '', '我的订单入口', 'orderlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('57', 'weisrc_dish', 'menu', '', '门店管理', 'stores', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('58', 'weisrc_dish', 'menu', '', '区域管理', 'area', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('59', 'weisrc_dish', 'menu', '', '黑名单', 'blacklist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('60', 'weisrc_dish', 'menu', '', '基本设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('61', 'weisrc_dish', 'home', '', '微点餐', 'wapindex', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('62', 'weisrc_dish', 'home', '', '门店列表', 'waprestList', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('63', 'weisrc_dish', 'home', '', '菜品列表', 'waplist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('64', 'weisrc_dish', 'home', '', '智能点餐', 'wapselect', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('65', 'weisrc_dish', 'home', '', '我的订单', 'orderlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('66', 'weisrc_clubbigwheel', 'cover', '', '入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('67', 'weisrc_clubbigwheel', 'home', '', '惩罚大转盘', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('68', 'weisrc_businesscenter', 'cover', '', '入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('69', 'weisrc_businesscenter', 'menu', '', '分类管理', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('70', 'weisrc_businesscenter', 'menu', '', '商家管理', 'stores', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('71', 'weisrc_businesscenter', 'menu', '', '优惠资讯', 'news', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('72', 'weisrc_businesscenter', 'menu', '', '留言管理', 'feedback', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('73', 'weisrc_businesscenter', 'menu', '', '幻灯片管理', 'slide', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('74', 'weisrc_businesscenter', 'menu', '', '网站设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('75', 'weisrc_businesscenter', 'home', '', '微商圈', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('76', 'weisrc_audio', 'cover', '', '音乐盒子入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('77', 'weisrc_audio', 'menu', '', '音乐管理', 'music', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('78', 'weisrc_audio', 'menu', '', '基本设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('79', 'weisrc_audio', 'home', '', '微音乐', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('80', 'weilive', 'cover', '', '入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('81', 'weilive', 'menu', '', '分类管理', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('82', 'weilive', 'menu', '', '商家管理', 'stores', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('83', 'weilive', 'menu', '', '幻灯片管理', 'slide', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('84', 'weilive', 'menu', '', '兑换商品管理', 'award', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('85', 'weilive', 'menu', '', '兑换请求管理', 'credit', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('86', 'weilive', 'menu', '', '投诉管理', 'complain', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('87', 'weilive', 'menu', '', '店主管理', 'host', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('88', 'weilive', 'menu', '', '粉丝管理', 'fansmanager', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('89', 'weilive', 'menu', '', '初始设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('90', 'we7_wxwall', 'rule', '', '查看内容', 'detail', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('91', 'we7_wxwall', 'rule', '', '审核内容', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('92', 'we7_wxwall', 'rule', '', '中奖名单', 'awardlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('93', 'we7_wxwall', 'rule', '', '黑名单', 'blacklist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('94', 'we7_shake', 'rule', '', '查看活动', 'detail', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('95', 'we7_shake', 'rule', '', '管理用户', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('96', 'we7_shake', 'home', '', '摇一摇中奖', 'detail', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('97', 'we7_research', 'menu', '', '预约活动列表', 'display', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('98', 'we7_research', 'menu', '', '新建预约活动', 'post', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('99', 'we7_research', 'home', 'getHomeTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('100', 'we7_research', 'profile', '', '我的预约调查', 'myresearch', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('101', 'we7_egg', 'rule', '', '中奖名单', 'awardlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('102', 'we7_egg', 'home', 'gethometiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('103', 'we7_car', 'cover', '', '汽车首页入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('104', 'we7_car', 'cover', '', '汽车车型入口设置', 'series', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('105', 'we7_car', 'cover', '', '车主关怀入口设置', 'guanhuai', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('106', 'we7_car', 'cover', '', '意见回馈入口设置', 'message', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('107', 'we7_car', 'cover', '', '实用工具入口设置', 'tool', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('108', 'we7_car', 'menu', '', '汽车首页设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('109', 'we7_car', 'menu', '', '汽车品牌管理', 'brand', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('110', 'we7_car', 'menu', '', '汽车车系管理', 'series', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('111', 'we7_car', 'menu', '', '汽车车型管理', 'type', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('112', 'we7_car', 'menu', '', '预约管理', 'yuyue', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('113', 'we7_car', 'menu', '', '车主关怀管理', 'guanhuai', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('114', 'we7_car', 'menu', '', '销售客服管理', 'kefu', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('115', 'we7_car', 'menu', '', '汽车资讯管理', 'news', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('116', 'we7_car', 'menu', '', '车型相册管理', 'album', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('117', 'we7_car', 'menu', '', '意见回馈管理', 'message', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('118', 'we7_car', 'menu', '', '实用工具设置', 'tool', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('119', 'we7_car', 'home', '', '汽车首页', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('120', 'we7_car', 'home', '', '汽车车型', 'series', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('121', 'we7_car', 'home', '', '预约试驾', 'yuyue', '1', '0');
INSERT INTO `ims_modules_bindings` VALUES ('122', 'we7_car', 'home', '', '预约保养', 'yuyue', '2', '0');
INSERT INTO `ims_modules_bindings` VALUES ('123', 'we7_car', 'home', '', '车主关怀', 'guanhuai', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('124', 'we7_car', 'home', '', '销售客服', 'kefu', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('125', 'we7_car', 'home', '', '意见回馈', 'message', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('126', 'we7_car', 'home', '', '实用工具', 'tool', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('127', 'we7_business', 'menu', '', '商户列表', 'display', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('128', 'we7_business', 'menu', '', '添加商户', 'post', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('129', 'we7_album', 'cover', '', '相册列表入口设置', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('130', 'we7_album', 'menu', '', '相册分类', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('131', 'we7_album', 'menu', '', '相册列表', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('132', 'we7_album', 'home', 'getAlbumTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('133', 'we7_album', 'home', '', '相册首页', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('134', 'wdl_wifi', 'menu', '', '路由器管理', 'routerlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('135', 'wdl_wifi', 'menu', '', '模板管理', 'moban', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('136', 'wdl_wifi', 'menu', '', '认证记录', 'authlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('137', 'wdl_shopping', 'cover', '', '商城入口设置', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('138', 'wdl_shopping', 'menu', '', '订单管理', 'order', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('139', 'wdl_shopping', 'menu', '', '商品管理', 'goods', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('140', 'wdl_shopping', 'menu', '', '商品分类', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('141', 'wdl_shopping', 'menu', '', '物流管理', 'express', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('142', 'wdl_shopping', 'menu', '', '配送方式', 'dispatch', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('143', 'wdl_shopping', 'menu', '', '幻灯片管理', 'adv', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('144', 'wdl_shopping', 'menu', '', '维权与告警', 'notice', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('145', 'wdl_shopping', 'home', '', '商城', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('146', 'wdl_shopping', 'profile', '', '我的订单', 'myorder', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('147', 'wdl_scratch', 'menu', '', '刮刮卡管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('148', 'wdl_scratch', 'menu', '', '授权设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('149', 'wdl_scratch', 'home', 'getHomeTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('150', 'wdl_comeon', 'menu', '', '活动管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('151', 'wdl_comeon', 'menu', '', '授权设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('152', 'wdl_bigwheel', 'menu', '', '大转盘管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('153', 'wdl_bigwheel', 'home', 'getItemTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('154', 'thinkidea_secondmarket', 'menu', '', '物品管理', 'goods', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('155', 'thinkidea_secondmarket', 'menu', '', '物品分类', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('156', 'thinkidea_secondmarket', 'home', 'gethometiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('157', 'thinkidea_rencai', 'menu', '', '招聘企业管理', 'zhaounit', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('158', 'thinkidea_rencai', 'menu', '', '职位分类管理', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('159', 'thinkidea_rencai', 'menu', '', '行业分类管理', 'Industry', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('160', 'thinkidea_rencai', 'menu', '', '求职简历管理', 'Resume', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('161', 'thinkidea_rencai', 'menu', '', '招聘信息管理', 'zhaoinfo', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('162', 'thinkidea_rencai', 'menu', '', '使用说明必读', 'readme', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('163', 'thinkidea_rencai', 'menu', '', '幻灯图片广告', 'ADSlider', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('164', 'thinkidea_phonebook', 'menu', '', '区域管理', 'zone', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('165', 'thinkidea_phonebook', 'menu', '', '分类管理', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('166', 'thinkidea_phonebook', 'menu', '', '信息管理', 'bookinfo', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('167', 'str_takeout', 'cover', '', '微外卖入口', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('168', 'str_takeout', 'menu', '', '门店管理', 'store', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('169', 'str_takeout', 'menu', '', '参数设置', 'config', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('170', 'str_takeout', 'menu', '', '系统说明', 'system', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('171', 'str_takeout', 'home', '', '外买', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('172', 'str_takeout', 'profile', '', '我的外卖', 'myorder', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('173', 'stonefish_scratch', 'cover', '', '刮刮卡入口设置', 'scratchall', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('174', 'stonefish_scratch', 'menu', '', '刮刮卡管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('175', 'stonefish_scratch', 'home', 'gethome', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('176', 'stonefish_scratch', 'profile', '', '幸运刮刮卡', 'scratch', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('177', 'stonefish_redenvelope', 'cover', '', '抢红包入口设置', 'redenvelopeall', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('178', 'stonefish_redenvelope', 'menu', '', '抢红包管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('179', 'stonefish_redenvelope', 'home', 'gethome', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('180', 'stonefish_redenvelope', 'profile', '', '全民抢红包', 'redenvelope', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('181', 'stonefish_planting', 'cover', '', '乐园入口设置', 'planting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('182', 'stonefish_planting', 'menu', '', '种植乐园管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('183', 'stonefish_planting', 'menu', '', '种子管理', 'seed', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('184', 'stonefish_planting', 'home', 'gethome', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('185', 'stonefish_planting', 'profile', '', '种植乐园', 'planting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('186', 'stonefish_chailihe', 'cover', '', '幸运拆礼盒入口设置', 'listentry', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('187', 'stonefish_chailihe', 'rule', '', '粉丝达人', 'userlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('188', 'stonefish_chailihe', 'rule', '', '分享数据', 'sharedata', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('189', 'stonefish_chailihe', 'rule', '', '奖品数据', 'prizedata', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('190', 'stonefish_chailihe', 'menu', '', '拆礼盒管理', 'eventlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('191', 'stonefish_chailihe', 'menu', '', '粉丝达人', 'userlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('192', 'stonefish_chailihe', 'menu', '', '分享数据', 'sharedata', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('193', 'stonefish_chailihe', 'menu', '', '奖品数据', 'prizedata', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('194', 'stonefish_chailihe', 'home', 'gettiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('195', 'stonefish_bigwheel', 'menu', '', '大转盘管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('196', 'stonefish_bigwheel', 'home', 'gethome', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('197', 'scene_cube', 'menu', '', '场景菜单', 'manager', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('198', 'quickspread', 'cover', '', 'Top10排行榜', 'Top', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('199', 'quickspread', 'cover', '', '查询推广结果', 'Follow', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('200', 'quickspread', 'cover', '', '积分查询', 'Credit', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('201', 'quickspread', 'menu', '', '传单管理', 'Spread', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('202', 'quickspread', 'home', '', '码上涨粉', 'Spread', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('203', 'qmteam_zerobuy', 'cover', '', '零元购入口', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('204', 'qmteam_zerobuy', 'menu', '', '商品管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('205', 'qmteam_zerobuy', 'menu', '', '活动详情', 'detail', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('206', 'qmteam_zerobuy', 'menu', '', '活动规则', 'activity_rule', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('207', 'qmteam_zerobuy', 'home', '', '零元购列表', 'list1', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('208', 'qmteam_zerobuy', 'home', '', '零元购详细页', 'detail', '', '1');
INSERT INTO `ims_modules_bindings` VALUES ('209', 'qmteam_zerobuy', 'profile', '', '个人中心导航', 'zerobuy_uc', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('210', 'qiyue_canvas', 'cover', '', '画图分享入口', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('211', 'qiyue_canvas', 'menu', '', '图片审核', 'check', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('212', 'qiyue_canvas', 'menu', '', '已审核列表', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('213', 'mon_yjgz', 'menu', '', '关注管理', 'gz', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('214', 'mon_weishare', 'menu', '', '助力活动管理', 'share', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('215', 'mon_weishare', 'menu', '', '授权接口设置', 'setting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('216', 'mon_house', 'menu', '', '楼盘设置', 'houseSetting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('217', 'mon_house', 'menu', '', '户型管理', 'unitSetting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('218', 'mon_house', 'menu', '', '置业顾问管理', 'agentSetting', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('219', 'mon_fool', 'menu', '', '愚人红包管理', 'fool', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('220', 'mon_brand', 'menu', '', '品牌管理', 'brand', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('221', 'microb_shake', 'menu', '', '活动参与方式', 'entry', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('222', 'microb_shake', 'menu', '', '活动管理', 'activity', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('223', 'microb_shake', 'menu', '', '礼品设置', 'gifts', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('224', 'microb_shake', 'menu', '', '设备管理', 'devices', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('225', 'microb_shake', 'menu', '', '接口参数', 'api', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('226', 'microb_redpack', 'menu', '', '活动参与方式', 'entry', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('227', 'microb_redpack', 'menu', '', '红包活动选项', 'activity', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('228', 'microb_redpack', 'menu', '', '礼品设置', 'gifts', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('229', 'microb_redpack', 'menu', '', '接口参数', 'api', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('230', 'microb_notifier', 'menu', '', '订单提交成功通知', 'submit', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('231', 'meepo_sexy', 'menu', '', '基本设置', 'set', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('232', 'meepo_qmbttz', 'menu', '', '基本设置', 'set', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('233', 'lxy_buscard', 'menu', '', '名片管理', 'cardlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('234', 'lxy_buscard', 'menu', '', '公司设置', 'copadd', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('235', 'lxy_buscard', 'menu', '', '分类管理', 'classlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('236', 'lee_tlvoice', 'cover', '', '首页入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('237', 'lee_tlvoice', 'menu', '', '语音记录', 'data', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('238', 'ju_read', 'menu', '', '活动管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('239', 'jufeng_wcy', 'cover', '', '点餐入口设置', 'dianjia', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('240', 'jufeng_wcy', 'menu', '', '店铺与菜系', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('241', 'jufeng_wcy', 'menu', '', '店铺分类', 'shoptype', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('242', 'jufeng_wcy', 'menu', '', '订单管理', 'order', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('243', 'jufeng_wcy', 'menu', '', '菜品管理', 'foods', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('244', 'jufeng_wcy', 'menu', '', '打印机管理', 'print', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('245', 'jufeng_wcy', 'menu', '', '基本设置', 'settings', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('246', 'jufeng_wcy', 'home', '', '在线订餐', 'dianjia', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('247', 'jufeng_wcy', 'profile', '', '我的订单', 'order', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('248', 'hx_zhongchou', 'cover', '', '众筹入口设置', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('249', 'hx_zhongchou', 'menu', '', '订单管理', 'order', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('250', 'hx_zhongchou', 'menu', '', '项目管理', 'project', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('251', 'hx_zhongchou', 'menu', '', '项目分类', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('252', 'hx_zhongchou', 'menu', '', '配送方式', 'dispatch', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('253', 'hx_zhongchou', 'menu', '', '物流管理', 'express', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('254', 'hx_zhongchou', 'menu', '', '幻灯片管理', 'adv', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('255', 'hx_zhongchou', 'home', '', '众筹', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('256', 'hx_zhongchou', 'profile', '', '我的众筹', 'myorder', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('257', 'hx_voice', 'cover', '', '普通话在线考试入口设置', 'voice', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('258', 'hx_subscribe', 'cover', '', '推荐关注入口设置', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('259', 'hx_subscribe', 'menu', '', '文章管理', 'article', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('260', 'hx_subscribe', 'menu', '', '积分排行', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('261', 'hx_subscribe', 'menu', '', '红包管理', 'credit', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('262', 'hx_subscribe', 'profile', '', '我的红包', 'mycredit', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('263', 'hx_pictorial', 'cover', '', '列表入口设置', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('264', 'hx_pictorial', 'menu', '', '画报管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('265', 'hx_pictorial', 'home', '', '画报首页', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('266', 'hx_lottery', 'menu', '', '活动管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('267', 'hx_lottery', 'profile', '', '我的奖品', 'myaward', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('268', 'hx_dialect', 'menu', '', '题库管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('269', 'hx_dialect', 'menu', '', '添加题目', 'add', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('270', 'hx_dialect', 'home', '', '地方话测试', 'detail', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('271', 'hx_cards', 'menu', '', '活动管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('272', 'hx_cards', 'profile', '', '我的奖品', 'myaward', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('273', 'hl_zzz', 'rule', '', '排名', 'awardlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('274', 'hl_tug', 'rule', '', '大屏幕', 'bigscreen', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('275', 'fwei_moneyimport', 'menu', '', '导入余额', 'import', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('276', 'fm_photosvote', 'menu', '', '管理中心', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('277', 'fm_photosvote', 'home', 'gettiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('278', 'feng_duobao', 'cover', '', '首页入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('279', 'feng_duobao', 'menu', '', '商品管理', 'goods', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('280', 'feng_duobao', 'menu', '', '交易记录', 'record', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('281', 'feng_duobao', 'menu', '', '订单管理', 'order', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('282', 'feng_duobao', 'menu', '', '会员管理', 'member', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('283', 'feng_duobao', 'home', '', '夺宝首页', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('284', 'feng_duobao', 'home', '', '个人中心', 'profile', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('285', 'ewei_money', 'menu', '', '活动管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('286', 'ewei_money', 'menu', '', '授权管理', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('287', 'ewei_hotel', 'cover', '', '微酒店入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('288', 'ewei_hotel', 'menu', '', '酒店管理', 'hotel', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('289', 'ewei_hotel', 'menu', '', '房型管理', 'room', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('290', 'ewei_hotel', 'menu', '', '品牌管理', 'brand', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('291', 'ewei_hotel', 'menu', '', '商圈管理', 'business', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('292', 'ewei_hotel', 'menu', '', '用户管理', 'member', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('293', 'ewei_hotel', 'menu', '', '订单管理', 'order', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('294', 'ewei_hotel', 'menu', '', '基本设置', 'hotelset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('295', 'ewei_hotel', 'home', 'getItemTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('296', 'ewei_exam', 'cover', '', '微考试入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('297', 'ewei_exam', 'cover', '', '试卷入口设置', 'paperlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('298', 'ewei_exam', 'cover', '', '课程入口设置', 'courselist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('299', 'ewei_exam', 'cover', '', '我的预约入口设置', 'reservelist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('300', 'ewei_exam', 'menu', '', '试卷类型', 'paper_type', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('301', 'ewei_exam', 'menu', '', '试卷管理', 'paper', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('302', 'ewei_exam', 'menu', '', '试卷分类', 'paper_category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('303', 'ewei_exam', 'menu', '', '试题管理', 'question', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('304', 'ewei_exam', 'menu', '', '题库管理', 'pool', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('305', 'ewei_exam', 'menu', '', '试题导入', 'upload_question', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('306', 'ewei_exam', 'menu', '', '课程管理', 'course', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('307', 'ewei_exam', 'menu', '', '课程分类', 'course_category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('308', 'ewei_exam', 'menu', '', '课程预定', 'reserve', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('309', 'ewei_exam', 'menu', '', '用户管理', 'member', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('310', 'ewei_exam', 'menu', '', '系统设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('311', 'ewei_exam', 'home', 'getItemTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('312', 'ewei_couplet', 'menu', '', '活动管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('313', 'ewei_couplet', 'menu', '', '基础设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('314', 'ewei_bonus', 'menu', '', '活动管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('315', 'ewei_bonus', 'menu', '', '基础设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('316', 'eso_share', 'rule', '', '达人管理', 'eso_sharelist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('317', 'eso_sale', 'cover', '', '购物入口设置', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('318', 'eso_sale', 'cover', '', '代理入口', 'fansindex', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('319', 'eso_sale', 'cover', '', '排行榜入口设置', 'phb', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('320', 'eso_sale', 'cover', '', '积分兑换入口设置', 'award', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('321', 'eso_sale', 'menu', '', '订单管理', 'order', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('322', 'eso_sale', 'menu', '', 'CRM会员管理', 'charge', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('323', 'eso_sale', 'menu', '', '商品管理', 'goods', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('324', 'eso_sale', 'menu', '', '商品分类', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('325', 'eso_sale', 'menu', '', '积分商品设置', 'award', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('326', 'eso_sale', 'menu', '', '积分兑换管理', 'credit', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('327', 'eso_sale', 'menu', '', '代理管理', 'fansmanager', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('328', 'eso_sale', 'menu', '', '佣金审核', 'commission', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('329', 'eso_sale', 'menu', '', '物流配送设置', 'dispatch', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('330', 'eso_sale', 'menu', '', '基础设置', 'rules', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('331', 'eso_sale', 'menu', '', '首页广告设置', 'adv', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('332', 'eso_runman', 'rule', '', '管理', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('333', 'eso_runman', 'menu', '', '列表', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('334', 'czt_zwmm', 'cover', '', '指纹蜜码', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('335', 'czt_voice', 'cover', '', '入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('336', 'bm_hospital', 'menu', '', '医院科室', 'classify', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('337', 'bm_hospital', 'menu', '', '医生', 'project', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('338', 'bm_hospital', 'menu', '', '预约管理', 'orders', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('339', 'bm_hospital', 'menu', '', '体检管理', 'group', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('340', 'amouse_house', 'cover', '', '最新房产信息入口', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('341', 'amouse_house', 'menu', '', '房产管理', 'house', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('342', 'amouse_house', 'menu', '', '新楼盘管理', 'premises', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('343', 'amouse_house', 'menu', '', '参数设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('344', 'amouse_house', 'home', '', '微站首页', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('345', 'amouse_ecard', 'cover', '', '我的名片首页', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('346', 'amouse_ecard', 'menu', '', '基本设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('347', 'amouse_ecard', 'menu', '', '名片管理', 'ecard', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('348', 'amouse_ecard', 'menu', '', '背景图片', 'bg', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('349', 'amouse_ecard', 'menu', '', '行业管理', 'industry', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('350', 'amouse_ecard', 'menu', '', '音乐管理', 'music', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('375', 'amouse_article', 'menu', '', '一键关注管理', 'hutui', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('374', 'amouse_article', 'menu', '', '幻灯片管理', 'adv', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('373', 'amouse_article', 'menu', '', '文章分类', 'category', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('372', 'amouse_article', 'menu', '', '文章管理', 'paper', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('371', 'amouse_article', 'cover', '', '微信互推入口', 'tuijian', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('358', 'wdl_hchighguess', 'menu', '', '词语设置', 'words', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('359', 'demo_pia3', 'cover', '', '啪啪啪入口设置', 'Entry', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('360', 'lxy_rtrouter', 'menu', '', '路由器管理', 'routerlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('361', 'lxy_rtrouter', 'menu', '', '认证记录', 'authlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('362', 'lxy_rtrouter', 'menu', '', '节点管理', 'nodelist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('370', 'amouse_article', 'cover', '', '精美图文入口', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('376', 'amouse_article', 'menu', '', '精美图文参数设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('377', 'feng_auction', 'cover', '', '拍卖首页', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('378', 'feng_auction', 'cover', '', '个人中心', 'profile', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('379', 'feng_auction', 'menu', '', '拍品管理', 'goods', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('380', 'feng_auction', 'menu', '', '充值记录', 'record', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('381', 'feng_auction', 'menu', '', '拍品发货', 'sendout', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('382', 'feng_auction', 'menu', '', '会员管理', 'member', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('383', 'feng_auction', 'menu', '', '提现管理', 'withdrawals', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('384', 'feng_auction', 'menu', '', '幻灯片管理', 'adv', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('385', 'feng_auction', 'home', '', '拍卖首页', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('386', 'feng_auction', 'home', '', '个人中心', 'profile', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('387', 'weihaom_wb', 'rule', '', '用户排名', 'userlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('388', 'we7_survey', 'menu', '', '调研活动列表', 'display', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('389', 'we7_survey', 'menu', '', '新建调研活动', 'post', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('390', 'we7_survey', 'home', 'gethometiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('391', 'we7_survey', 'profile', '', '我的调研', 'myresearch', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('392', 'ewei_vote', 'rule', '', '查看投票记录', 'votelist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('393', 'ewei_vote', 'menu', '', '微投票管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('394', 'ewei_vote', 'home', 'getItemTiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('395', 'hl_bbb', 'rule', '', '中奖名单', 'awardlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('396', 'lxy_marry', 'menu', '', '喜帖管理', 'Manager', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('397', 'we7_activity', 'menu', '', '活动管理', 'activityManger', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('398', 'we7_activity', 'menu', '', '提醒设置', 'tip', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('399', 'hl_dqq', 'rule', '', '中奖名单', 'awardlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('400', 'hl_dqq', 'home', 'gethometiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('401', 'zam_weimails', 'menu', '', '附件管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('402', 'ewei_comeon', 'menu', '', '活动管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('403', 'ewei_comeon', 'menu', '', '授权设置', 'sysset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('404', 'xfeng_community', 'cover', '', '二手入口设置', 'fled', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('405', 'xfeng_community', 'cover', '', '商家入口设置', 'business', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('406', 'xfeng_community', 'cover', '', '超市入口设置', 'shopping', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('409', 'zam_findlx', 'menu', '', '基本设置', 'set', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('410', 'zam_findlx', 'menu', '', '注册列表管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('411', 'zam_findlx', 'menu', '', '消息管理', 'news', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('412', 'meepo_weixiangqin', 'cover', '', '微相亲入口设置', 'alllist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('413', 'meepo_weixiangqin', 'menu', '', '审核机制', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('414', 'meepo_weixiangqin', 'menu', '', '审核开关', 'onoff', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('415', 'meepo_weixiangqin', 'menu', '', '基本设置', 'set', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('416', 'meepo_weixiangqin', 'menu', '', '图片管理', 'photolist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('417', 'meepo_weixiangqin', 'menu', '', '聊天记录', 'chatcontent', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('418', 'meepo_weixiangqin', 'menu', '', '幻灯片管理', 'slide', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('419', 'meepo_weixiangqin', 'menu', '', '相亲活动列表', 'Display', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('420', 'meepo_weixiangqin', 'menu', '', '新建相亲活动', 'Post', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('421', 'stonefish_luckynum', 'menu', '', '幸运数字管理', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('422', 'lxy_buildpro', 'menu', '', '楼盘管理', 'buildlists', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('423', 'lxy_buildpro', 'home', 'gethometiles', '', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('424', 'lee_coreball', 'cover', '', '首页入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('425', 'wdl_amovie', 'cover', '', '查询入口设置', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('426', 'xwz_queue', 'menu', '', '排号管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('427', 'super_securitycode', 'menu', '', '防伪码列表', 'list', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('428', 'super_securitycode', 'menu', '', '生成防伪码', 'create', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('429', 'super_securitycode', 'menu', '', '防伪码导入', 'insert', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('430', 'super_securitycode', 'menu', '', '防伪码导出', 'output', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('431', 'mon_sign', 'menu', '', '签到管理', 'sign', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('432', 'mon_sign', 'menu', '', '统计分析', 'analyse', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('433', 'meepo_begging', 'cover', '', '我要乞讨', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('434', 'meepo_begging', 'menu', '', '乞讨管理', 'manage', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('435', 'meepo_begging', 'menu', '', '发放饭钱', 'money', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('436', 'meepo_begging', 'menu', '', '红包参数', 'hongset', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('437', 'meepo_begging', 'profile', '', '我要乞讨', 'index', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('438', 'jdg_luvwhispers', 'cover', '', '情话入口设置', 'Myindex', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('439', 'jdg_luvwhispers', 'menu', '', '访问用户列表', 'Userlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('440', 'jdg_luvwhispers', 'menu', '', '情话记录列表', 'Talklist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('441', 'jdg_luvwhispers', 'menu', '', '举报信息列表', 'Reportlist', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('442', 'null_getvoice', 'cover', '', '录音机', 'set', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('443', 'xhw_face', 'menu', '', '照片管理', 'picture', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('444', 'xhw_face', 'menu', '', '参数设置', 'setting', '', '0');

-- ----------------------------
-- Table structure for `ims_mon_fool`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_fool`;
CREATE TABLE `ims_mon_fool` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `follow_url` varchar(200) NOT NULL,
  `new_title` varchar(200) NOT NULL,
  `new_icon` varchar(200) NOT NULL,
  `new_content` varchar(200) NOT NULL,
  `share_title` varchar(200) NOT NULL,
  `share_icon` varchar(200) NOT NULL,
  `share_content` varchar(200) NOT NULL,
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_fool
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_house`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_house`;
CREATE TABLE `ims_mon_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `news_title` varchar(255) NOT NULL,
  `lpaddress` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `sltel` varchar(25) NOT NULL,
  `zxtel` varchar(25) NOT NULL,
  `news_icon` varchar(255) NOT NULL,
  `news_content` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `kptime` int(10) DEFAULT '0',
  `rztime` int(10) DEFAULT '0',
  `kfs` varchar(100) NOT NULL,
  `cover_img` varchar(200) NOT NULL,
  `overview_img` varchar(200) NOT NULL,
  `intro_img` varchar(200) NOT NULL,
  `intro` varchar(1000) DEFAULT NULL,
  `order_title` varchar(50) NOT NULL,
  `order_remark` varchar(100) NOT NULL,
  `share_icon` varchar(200) NOT NULL,
  `share_title` varchar(200) NOT NULL,
  `share_content` varchar(500) NOT NULL,
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_house
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_house_agent`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_house_agent`;
CREATE TABLE `ims_mon_house_agent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT '0',
  `gname` varchar(255) NOT NULL,
  `headimgurl` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `workyear` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_hid` (`hid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_house_agent
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_house_item`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_house_item`;
CREATE TABLE `ims_mon_house_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `iname` varchar(255) NOT NULL,
  `icontent` varchar(255) NOT NULL,
  `sort` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_hid` (`hid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_house_item
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_house_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_house_order`;
CREATE TABLE `ims_mon_house_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT '0',
  `uname` varchar(20) NOT NULL,
  `createtime` int(10) DEFAULT '0',
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indx_hid` (`hid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_house_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_house_timage`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_house_timage`;
CREATE TABLE `ims_mon_house_timage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT '0',
  `tid` int(11) DEFAULT '0',
  `pre_img` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indx_hid` (`hid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_house_timage
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_house_type`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_house_type`;
CREATE TABLE `ims_mon_house_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `tname` varchar(255) NOT NULL,
  `sort` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_hid` (`hid`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_house_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_sign`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_sign`;
CREATE TABLE `ims_mon_sign` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `follow_credit` int(10) NOT NULL,
  `follow_credit_allow` int(1) DEFAULT '0',
  `leave_credit_clear` int(1) DEFAULT '0',
  `sign_credit` int(11) DEFAULT '0',
  `sync_credit` int(1) DEFAULT '0',
  `rule` varchar(2000) DEFAULT NULL,
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `sin_suc_msg` varchar(200) DEFAULT NULL,
  `sin_suc_fail` varchar(200) DEFAULT NULL,
  `new_title` varchar(200) DEFAULT NULL,
  `new_icon` varchar(200) DEFAULT NULL,
  `new_content` varchar(200) DEFAULT NULL,
  `copyright` varchar(200) DEFAULT NULL,
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_sign_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_sign_award`;
CREATE TABLE `ims_mon_sign_award` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned DEFAULT NULL,
  `uid` int(10) NOT NULL,
  `sign_type` int(2) NOT NULL,
  `serial_start_time` int(10) DEFAULT NULL,
  `serial_end_time` int(10) DEFAULT NULL,
  `serial_day` int(10) DEFAULT NULL,
  `credit` int(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_sign_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_sign_link`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_sign_link`;
CREATE TABLE `ims_mon_sign_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned DEFAULT NULL,
  `sort` int(2) DEFAULT '0',
  `link_name` varchar(50) NOT NULL,
  `link_url` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_sign_link
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_sign_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_sign_record`;
CREATE TABLE `ims_mon_sign_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `openid` varchar(200) NOT NULL,
  `sid` int(10) DEFAULT '0',
  `sin_time` int(10) DEFAULT '0',
  `credit` int(10) NOT NULL,
  `sign_type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_sign_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_sign_serial`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_sign_serial`;
CREATE TABLE `ims_mon_sign_serial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned DEFAULT NULL,
  `day` int(4) NOT NULL,
  `credit` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_sign_serial
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_sign_token`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_sign_token`;
CREATE TABLE `ims_mon_sign_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned DEFAULT NULL,
  `access_token` varchar(1000) NOT NULL,
  `expires_in` int(11) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_sign_token
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_sign_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_sign_user`;
CREATE TABLE `ims_mon_sign_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) NOT NULL,
  `begin_sign_time` int(10) DEFAULT NULL,
  `end_sign_time` int(10) DEFAULT NULL,
  `openid` varchar(200) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `headimgurl` varchar(200) DEFAULT NULL,
  `serial_id` int(10) DEFAULT NULL,
  `credit` int(10) DEFAULT '0',
  `sin_count` int(10) DEFAULT '0',
  `sin_serial` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_sign_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_yjgz`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_yjgz`;
CREATE TABLE `ims_mon_yjgz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `banner_pic` varchar(300) NOT NULL,
  `banner_desc` varchar(1000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_yjgz
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mon_yjgz_item`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mon_yjgz_item`;
CREATE TABLE `ims_mon_yjgz_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `i_desc` varchar(500) NOT NULL,
  `i_url` varchar(300) NOT NULL,
  `sort` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mon_yjgz_item
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_music_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(300) NOT NULL DEFAULT '',
  `hqurl` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_music_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_news_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(64) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_news_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_nsign_add`
-- ----------------------------
DROP TABLE IF EXISTS `ims_nsign_add`;
CREATE TABLE `ims_nsign_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `shop` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `thumb` text NOT NULL,
  `content` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nsign_add
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_nsign_prize`
-- ----------------------------
DROP TABLE IF EXISTS `ims_nsign_prize`;
CREATE TABLE `ims_nsign_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `award` text NOT NULL,
  `time` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nsign_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_nsign_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_nsign_record`;
CREATE TABLE `ims_nsign_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` text NOT NULL,
  `today_rank` int(11) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `last_sign_time` int(11) NOT NULL,
  `continue_sign_days` int(11) NOT NULL,
  `maxcontinue_sign_days` int(11) NOT NULL,
  `total_sign_num` int(11) NOT NULL,
  `maxtotal_sign_num` int(11) NOT NULL,
  `first_sign_days` int(11) NOT NULL,
  `maxfirst_sign_days` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nsign_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_nsign_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_nsign_reply`;
CREATE TABLE `ims_nsign_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `title` text NOT NULL,
  `picture` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nsign_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_profile_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `unchangeable` tinyint(1) NOT NULL DEFAULT '0',
  `showinregister` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_profile_fields
-- ----------------------------
INSERT INTO `ims_profile_fields` VALUES ('1', 'realname', '1', '真实姓名', '', '0', '1', '1', '1');
INSERT INTO `ims_profile_fields` VALUES ('2', 'nickname', '1', '昵称', '', '1', '1', '0', '1');
INSERT INTO `ims_profile_fields` VALUES ('3', 'avatar', '1', '头像', '', '1', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('4', 'qq', '1', 'QQ号', '', '0', '0', '0', '1');
INSERT INTO `ims_profile_fields` VALUES ('5', 'mobile', '1', '手机号码', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('6', 'vip', '1', 'VIP级别', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('7', 'gender', '1', '性别', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('8', 'birthyear', '1', '出生生日', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('9', 'constellation', '1', '星座', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('10', 'zodiac', '1', '生肖', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('11', 'telephone', '1', '固定电话', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('12', 'idcard', '1', '证件号码', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('13', 'studentid', '1', '学号', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('14', 'grade', '1', '班级', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('15', 'address', '1', '邮寄地址', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('16', 'zipcode', '1', '邮编', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('17', 'nationality', '1', '国籍', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('18', 'resideprovince', '1', '居住地址', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('19', 'graduateschool', '1', '毕业学校', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('20', 'company', '1', '公司', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('21', 'education', '1', '学历', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('22', 'occupation', '1', '职业', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('23', 'position', '1', '职位', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('24', 'revenue', '1', '年收入', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('25', 'affectivestatus', '1', '情感状态', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('26', 'lookingfor', '1', ' 交友目的', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('27', 'bloodtype', '1', '血型', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('28', 'height', '1', '身高', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('29', 'weight', '1', '体重', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('30', 'alipay', '1', '支付宝帐号', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('31', 'msn', '1', 'MSN', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('32', 'email', '1', '电子邮箱', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('33', 'taobao', '1', '阿里旺旺', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('34', 'site', '1', '主页', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('35', 'bio', '1', '自我介绍', '', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('36', 'interest', '1', '兴趣爱好', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ims_qiyue_canvas`
-- ----------------------------
DROP TABLE IF EXISTS `ims_qiyue_canvas`;
CREATE TABLE `ims_qiyue_canvas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL DEFAULT '',
  `attach` varchar(200) NOT NULL DEFAULT '',
  `diggtop` int(10) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ischeck` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `viewnum` int(10) NOT NULL DEFAULT '0',
  `sharenum` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qiyue_canvas
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `qrcid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket` varchar(250) NOT NULL DEFAULT '',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `subnum` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `url` varchar(80) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_qrcode_stat`
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `qrcid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `scene_str` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode_stat
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_active_channel`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_active_channel`;
CREATE TABLE `ims_quickspread_active_channel` (
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(100) NOT NULL,
  `channel` int(10) NOT NULL,
  PRIMARY KEY (`weid`,`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_active_channel
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_blacklist`;
CREATE TABLE `ims_quickspread_blacklist` (
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `weid` int(10) unsigned NOT NULL,
  `access_time` int(10) unsigned NOT NULL,
  `hit` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`from_user`,`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_channel`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_channel`;
CREATE TABLE `ims_quickspread_channel` (
  `channel` int(10) NOT NULL AUTO_INCREMENT,
  `active` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(1024) NOT NULL,
  `thumb` varchar(1024) NOT NULL,
  `bg` varchar(1024) NOT NULL,
  `desc` varchar(1024) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `bgparam` varchar(10240) NOT NULL,
  `click_credit` int(10) NOT NULL COMMENT '未关注的用户关注,送分享者积分',
  `sub_click_credit` int(10) NOT NULL COMMENT '未关注的用户关注,送上线积分',
  `newbie_credit` int(10) NOT NULL COMMENT '通过本渠道关注微信号，送新用户大礼包积分',
  `weid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_channel
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_credit`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_credit`;
CREATE TABLE `ims_quickspread_credit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `credit` int(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_credit
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_fans`;
CREATE TABLE `ims_quickspread_fans` (
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(100) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`weid`,`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_follow`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_follow`;
CREATE TABLE `ims_quickspread_follow` (
  `weid` int(10) unsigned NOT NULL,
  `leader` varchar(100) NOT NULL,
  `follower` varchar(100) NOT NULL,
  `channel` int(10) NOT NULL DEFAULT '0' COMMENT '渠道唯一标示符',
  `credit` int(10) NOT NULL DEFAULT '0',
  `createtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`weid`,`leader`,`follower`,`channel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_follow
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_iptable`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_iptable`;
CREATE TABLE `ims_quickspread_iptable` (
  `weid` int(10) unsigned NOT NULL,
  `ip` varchar(64) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `track_id` varchar(50) NOT NULL DEFAULT '',
  `track_type` varchar(20) NOT NULL DEFAULT '',
  `from_user` int(10) unsigned NOT NULL,
  `spreadid` int(10) unsigned NOT NULL,
  `title` varchar(128) NOT NULL,
  `access_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ip`,`weid`,`spreadid`,`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_iptable
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_qr`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_qr`;
CREATE TABLE `ims_quickspread_qr` (
  `weid` int(10) unsigned NOT NULL,
  `scene_id` varchar(50) NOT NULL,
  `qr_url` varchar(1024) NOT NULL,
  `media_id` varchar(1024) NOT NULL,
  `createtime` int(11) NOT NULL,
  `channel` int(10) NOT NULL DEFAULT '0' COMMENT '渠道唯一标示符',
  `from_user` varchar(100) NOT NULL,
  PRIMARY KEY (`weid`,`scene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_qr
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_scene_id`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_scene_id`;
CREATE TABLE `ims_quickspread_scene_id` (
  `weid` int(10) unsigned NOT NULL,
  `scene_id` int(10) NOT NULL,
  PRIMARY KEY (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_scene_id
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_spread`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_spread`;
CREATE TABLE `ims_quickspread_spread` (
  `spreadid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `poster_img` varchar(1024) NOT NULL,
  `preview_img` varchar(1024) NOT NULL,
  `background` varchar(1024) NOT NULL,
  `register_button` varchar(640) NOT NULL,
  `fillform_button` varchar(640) NOT NULL,
  `fillform_url` varchar(640) NOT NULL,
  `pos_top` int(10) unsigned NOT NULL,
  `pos_left` int(10) unsigned NOT NULL,
  `timestart` int(10) unsigned NOT NULL,
  `timeend` int(10) unsigned NOT NULL,
  `share_title` varchar(64) NOT NULL,
  `share_award` varchar(64) NOT NULL,
  `timelinetext` varchar(640) NOT NULL,
  `buttonimg` varchar(640) NOT NULL,
  `share_content` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click_credit` int(10) unsigned NOT NULL DEFAULT '0',
  `share_credit` int(10) unsigned NOT NULL DEFAULT '0',
  `fillform_credit` int(10) unsigned NOT NULL DEFAULT '0',
  `max_credit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spreadid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_spread
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_quickspread_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_quickspread_user`;
CREATE TABLE `ims_quickspread_user` (
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `weid` int(10) unsigned NOT NULL,
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(256) NOT NULL DEFAULT '',
  `memo` varchar(1024) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`from_user`,`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_quickspread_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_research`
-- ----------------------------
DROP TABLE IF EXISTS `ims_research`;
CREATE TABLE `ims_research` (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `information` varchar(500) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `inhome` tinyint(4) NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `pretotal` int(10) unsigned NOT NULL DEFAULT '1',
  `noticeemail` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`reid`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_research
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_research_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_research_data`;
CREATE TABLE `ims_research_data` (
  `redid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `rerid` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `data` varchar(800) NOT NULL,
  PRIMARY KEY (`redid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_research_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_research_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ims_research_fields`;
CREATE TABLE `ims_research_fields` (
  `refid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `essential` tinyint(4) NOT NULL DEFAULT '0',
  `bind` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(300) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `displayorder` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`refid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_research_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_research_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_research_reply`;
CREATE TABLE `ims_research_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `reid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_research_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_research_rows`
-- ----------------------------
DROP TABLE IF EXISTS `ims_research_rows`;
CREATE TABLE `ims_research_rows` (
  `rerid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `createtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rerid`),
  KEY `reid` (`reid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_research_rows
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule
-- ----------------------------
INSERT INTO `ims_rule` VALUES ('1', '0', '城市天气', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('2', '0', '百度百科', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('3', '0', '即时翻译', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('4', '0', '今日老黄历', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('5', '0', '看新闻', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('6', '0', '快递查询', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('7', '1', '个人中心入口设置', 'cover', '0', '1');
INSERT INTO `ims_rule` VALUES ('8', '1', '微赞团队入口设置', 'cover', '0', '1');

-- ----------------------------
-- Table structure for `ims_rule_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule_keyword
-- ----------------------------
INSERT INTO `ims_rule_keyword` VALUES ('1', '1', '0', 'userapi', '^.+天气$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('2', '2', '0', 'userapi', '^百科.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('3', '2', '0', 'userapi', '^定义.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('4', '3', '0', 'userapi', '^@.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('5', '4', '0', 'userapi', '日历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('6', '4', '0', 'userapi', '万年历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('7', '4', '0', 'userapi', '黄历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('8', '4', '0', 'userapi', '几号', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('9', '5', '0', 'userapi', '新闻', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('10', '6', '0', 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('11', '7', '1', 'cover', '个人中心', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('12', '8', '1', 'cover', '首页', '1', '0', '1');

-- ----------------------------
-- Table structure for `ims_scene_cube_app`
-- ----------------------------
DROP TABLE IF EXISTS `ims_scene_cube_app`;
CREATE TABLE `ims_scene_cube_app` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` int(11) NOT NULL,
  `iden` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `title` varchar(300) NOT NULL DEFAULT '',
  `thumb` varchar(300) NOT NULL,
  `qrcode` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `series` varchar(50) NOT NULL,
  `isshow` tinyint(2) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_scene_cube_app
-- ----------------------------
INSERT INTO `ims_scene_cube_app` VALUES ('1', '0', 'style2', '800', '【再一次•极致诱惑】唤起你对性感的记忆', 'http://wx.yvkj.cn/attachment/images/1/2014/12/j0YfUxEXY3S3qKKZykQioTHioqMkhe.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/Ubwy8t5BWPHpW7TpP8TYY5PYp8EjRS.png', 'Scene App', '伊索科技', '1', '0');
INSERT INTO `ims_scene_cube_app` VALUES ('2', '0', 'style4', '800', '我与自己久别重逢（EVERGREEN）', 'http://wx.yvkj.cn/attachment/images/1/2014/12/NoP2uo7u1IXZil7TT8uU181789aSJS.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/P0XRrm01GLD2d624Dy016l0l6890L1.png', 'Scene App', '伊索科技', '1', '0');
INSERT INTO `ims_scene_cube_app` VALUES ('3', '0', 'style6', '800', '一场冰冷世界的革命', 'http://wx.yvkj.cn/attachment/images/1/2014/12/e91N18rB6BOG6d31R16k8Oi9Nr6bvR.png', 'http://wx.yvkj.cn/attachment/images/1/2014/12/xfMT3R33RZhTprKnzHEiyfnRRuIftH.png', 'Scene App', '伊索科技', '1', '0');
INSERT INTO `ims_scene_cube_app` VALUES ('4', '0', 'style3', '800', '变形金刚4•绝迹重生', 'http://wx.yvkj.cn/attachment/images/1/2014/12/ES5X5F1MMDf1i41e111m51s5PDdIrG.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/IBGQ6hb5qgBDtGKk8m16W1zkM1p6wH.png', 'Scene App', '伊索科技', '1', '0');
INSERT INTO `ims_scene_cube_app` VALUES ('5', '0', 'style7', '800', 'iPhone6 再一次创造', 'http://wx.yvkj.cn/attachment/images/1/2014/12/GA3VVffFuJtXT225kMXUVrtVz6xuTT.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/n3N42iK3i2RqrR4r493Z1152e92f4T.png', 'Scene App', '伊索科技', '1', '0');
INSERT INTO `ims_scene_cube_app` VALUES ('6', '0', 'style8', '800', '2014 NEW FUN 泳池趴', 'http://wx.yvkj.cn/attachment/images/1/2014/12/sVVIoZSOgg9O9AVGgOa8lisaSov3Gu.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/EA310BKa1oUuH145B24zkT4H2k4725.png', 'Scene App', '伊索科技', '1', '1411316941');
INSERT INTO `ims_scene_cube_app` VALUES ('7', '0', 'style9', '800', '办公家具 就选优的！', 'http://wx.yvkj.cn/attachment/images/1/2014/12/HC4GSkNhMs4CXMSMSmq1u1EPSm3Qz1.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/hW5hPH88sk2gg8GCv8v51s7eiu8sI2.png', 'Scene App', '伊索科技', '1', '1411372542');
INSERT INTO `ims_scene_cube_app` VALUES ('8', '0', 'custom', '800', '自定义场景', 'http://wx.yvkj.cn/attachment/images/1/2014/12/xSIVVg3JIv36O6GCrsgookvP3jOWOo.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/kTLGl3TT6lR538JO6ETJo36uvtgbBg.jpg', 'Scene App', '伊索科技', '1', '1411372542');
INSERT INTO `ims_scene_cube_app` VALUES ('9', '0', 'style5', '800', '周年邀请函', 'http://wx.yvkj.cn/attachment/images/1/2014/12/r58jb4JXbp549pv1ZVNBJjhYpYPV4p.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/Yzf3Bn3bDnsnbaaBvbTk3KATkDnSsZ.png', 'Scene App', '伊索科技', '1', '1418961963');
INSERT INTO `ims_scene_cube_app` VALUES ('10', '0', 'style10', '800', '飞跃彩虹', 'http://wx.yvkj.cn/attachment/images/1/2014/12/c2gAZa2GgA0afrGcGmZLM8rpfPGRPF.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/BW9Q2tjV0wI29cZ1Ts1Cq0c92s1S1w.png', 'Scene App', '伊索科技', '1', '1418967102');
INSERT INTO `ims_scene_cube_app` VALUES ('11', '0', 'style12', '800', '九章别墅', 'http://wx.yvkj.cn/attachment/images/1/2014/12/iL0KI0B2SbsbCu12BucBeEpG1LPHuJ.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/rlUOEUUjulxzxoSb0Go9Bsr9gUogJA.png', 'Scene App', '伊索科技', '1', '1418967212');
INSERT INTO `ims_scene_cube_app` VALUES ('12', '0', 'onefound', '800', '壹基金', 'http://wx.yvkj.cn/attachment/images/1/2014/12/oo1oYPy7J474y71E1OLP1jEoslojS7.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/sjTi9T9W42DOt2Z2xOWw72ZJi9gojJ.png', 'Scene App', '伊索科技', '1', '1418970832');
INSERT INTO `ims_scene_cube_app` VALUES ('13', '0', 'employ', '800', '改变世界非你莫属', 'http://wx.yvkj.cn/attachment/images/1/2014/12/vRAx3d1GXu88Qa2xep3YpD19PplURZ.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/cT9gtVfVpedqyGJrz49fqt9Jqzy1bS.png', 'Scene App', '伊索科技', '1', '1418971650');
INSERT INTO `ims_scene_cube_app` VALUES ('14', '0', 'style13', '800', '3D相册', 'http://wx.yvkj.cn/attachment/images/1/2014/12/cQ86tfRUbERZtBBrFZBRQqzf7qK0aK.jpg', 'http://wx.yvkj.cn/attachment/images/1/2014/12/lo6346qeV4jKWeqWnn34EfhYqkyJhN.png', 'Scene App', '伊索科技', '1', '1418974137');
INSERT INTO `ims_scene_cube_app` VALUES ('15', '0', 'hammer', '800', '锤子手机', 'http://wx.yvkj.cn/attachment/images/1/2014/12/hgTWayViyBjL9Zr9ALYR5Rj9ygDQ5k.png', 'http://wx.yvkj.cn/attachment/images/1/2014/12/q49H4IHV9dy4iZh44d9I1IiLid4dHH.png', 'Scene App', '伊索科技', '1', '1418975113');

-- ----------------------------
-- Table structure for `ims_scene_cube_book`
-- ----------------------------
DROP TABLE IF EXISTS `ims_scene_cube_book`;
CREATE TABLE `ims_scene_cube_book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `list_id` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `str1` varchar(200) NOT NULL DEFAULT '',
  `str2` varchar(200) NOT NULL DEFAULT '',
  `str3` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_scene_cube_book
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_scene_cube_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_scene_cube_comment`;
CREATE TABLE `ims_scene_cube_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `from` varchar(10) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_scene_cube_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_scene_cube_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_scene_cube_list`;
CREATE TABLE `ims_scene_cube_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `s_id` int(11) NOT NULL,
  `iden` varchar(50) NOT NULL,
  `cover` varchar(300) NOT NULL,
  `cover_title` varchar(50) NOT NULL,
  `cover_subtitle` varchar(50) DEFAULT NULL,
  `cover1` varchar(300) NOT NULL,
  `cover2` varchar(300) NOT NULL,
  `thumb` varchar(300) NOT NULL,
  `share_title` varchar(200) NOT NULL DEFAULT '',
  `share_thumb` varchar(300) NOT NULL DEFAULT '',
  `share_content` varchar(1000) NOT NULL,
  `share_cb_url` varchar(500) NOT NULL,
  `share_cb_tel` varchar(20) NOT NULL,
  `diyurl` varchar(100) NOT NULL DEFAULT '',
  `share_cover` varchar(300) NOT NULL DEFAULT '',
  `share_url` varchar(300) NOT NULL DEFAULT '',
  `share_txt` varchar(500) NOT NULL DEFAULT '',
  `share_button` varchar(300) NOT NULL,
  `share_tips` varchar(300) NOT NULL,
  `reply_title` varchar(50) NOT NULL,
  `reply_thumb` varchar(300) NOT NULL,
  `reply_description` varchar(1000) NOT NULL,
  `isadvanced` int(3) NOT NULL DEFAULT '0',
  `advanced_thumb` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL DEFAULT '',
  `emailtitle` varchar(100) NOT NULL,
  `first_type` tinyint(2) NOT NULL,
  `first_btn_select` varchar(10) NOT NULL,
  `first_btn_value` varchar(500) NOT NULL,
  `bg_music_switch` tinyint(4) NOT NULL,
  `bg_music_icon` tinyint(4) NOT NULL,
  `bg_music_url` varchar(300) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `hits` int(10) NOT NULL,
  `shares` int(10) NOT NULL,
  `tongji` varchar(1000) NOT NULL,
  `isyuyue` tinyint(1) NOT NULL DEFAULT '0',
  `iscomment` tinyint(1) NOT NULL DEFAULT '0',
  `isdemo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_scene_cube_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_scene_cube_manage`
-- ----------------------------
DROP TABLE IF EXISTS `ims_scene_cube_manage`;
CREATE TABLE `ims_scene_cube_manage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `appid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `appnums` int(11) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_scene_cube_manage
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_scene_cube_page`
-- ----------------------------
DROP TABLE IF EXISTS `ims_scene_cube_page`;
CREATE TABLE `ims_scene_cube_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `list_id` varchar(50) NOT NULL DEFAULT '',
  `listorder` int(11) NOT NULL,
  `m_type` tinyint(4) NOT NULL,
  `thumb` varchar(300) NOT NULL,
  `param` text NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_scene_cube_page
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_scene_cube_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_scene_cube_reply`;
CREATE TABLE `ims_scene_cube_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `list_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_scene_cube_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shake_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shake_member`;
CREATE TABLE `ims_shake_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `shakecount` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(500) NOT NULL DEFAULT '',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0为不可摇奖，1为可摇奖',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_openid_replyid` (`openid`,`rid`),
  KEY `idx_replyid` (`rid`),
  KEY `idx_shakecount` (`rid`,`shakecount`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shake_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shake_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shake_reply`;
CREATE TABLE `ims_shake_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `cover` varchar(255) NOT NULL DEFAULT '',
  `qrcode` varchar(128) NOT NULL DEFAULT '',
  `background` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `rule` text NOT NULL,
  `speed` int(10) unsigned NOT NULL DEFAULT '3000',
  `speedandroid` int(10) unsigned NOT NULL DEFAULT '5000',
  `interval` int(10) unsigned NOT NULL DEFAULT '100',
  `countdown` tinyint(1) unsigned NOT NULL DEFAULT '10',
  `maxshake` int(10) unsigned NOT NULL DEFAULT '100',
  `maxwinner` int(10) unsigned NOT NULL DEFAULT '1',
  `maxjoin` int(10) unsigned NOT NULL,
  `joinprobability` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为未开始，1为进行中，2为已结束',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shake_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_address`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_address`;
CREATE TABLE `ims_shopping_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_adv`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_adv`;
CREATE TABLE `ims_shopping_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_adv
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_cart`;
CREATE TABLE `ims_shopping_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `optionid` int(10) DEFAULT '0',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_category`;
CREATE TABLE `ims_shopping_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `thumb` varchar(255) NOT NULL COMMENT '分类图片',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isrecommand` int(10) DEFAULT '0',
  `description` varchar(500) NOT NULL COMMENT '分类介绍',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_dispatch`;
CREATE TABLE `ims_shopping_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `dispatchname` varchar(50) DEFAULT '',
  `dispatchtype` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `firstprice` decimal(10,2) DEFAULT '0.00',
  `secondprice` decimal(10,2) DEFAULT '0.00',
  `firstweight` int(11) DEFAULT '0',
  `secondweight` int(11) DEFAULT '0',
  `express` int(11) DEFAULT '0',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_dispatch
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_express`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_express`;
CREATE TABLE `ims_shopping_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `express_name` varchar(50) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `express_price` varchar(10) DEFAULT '',
  `express_area` varchar(100) DEFAULT '',
  `express_url` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_express
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_feedback`;
CREATE TABLE `ims_shopping_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为维权，2为告擎',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未解决，1用户同意，2用户拒绝',
  `feedbackid` varchar(30) NOT NULL COMMENT '投诉单号',
  `transid` varchar(30) NOT NULL COMMENT '订单号',
  `reason` varchar(1000) NOT NULL COMMENT '理由',
  `solution` varchar(1000) NOT NULL COMMENT '期待解决方案',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_feedbackid` (`feedbackid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_transid` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_goods`;
CREATE TABLE `ims_shopping_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为实体，2为虚拟',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `unit` varchar(5) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goodssn` varchar(50) NOT NULL DEFAULT '',
  `productsn` varchar(50) NOT NULL DEFAULT '',
  `marketprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `costprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `originalprice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `totalcnf` int(11) DEFAULT '0' COMMENT '0 拍下减库存 1 付款减库存 2 永久不减',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `maxbuy` int(11) DEFAULT '0',
  `usermaxbuy` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户最多购买数量',
  `hasoption` int(11) DEFAULT '0',
  `dispatch` int(11) DEFAULT '0',
  `thumb_url` text,
  `isnew` int(11) DEFAULT '0',
  `ishot` int(11) DEFAULT '0',
  `isdiscount` int(11) DEFAULT '0',
  `isrecommand` int(11) DEFAULT '0',
  `istime` int(11) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `viewcount` int(11) DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_goods_option`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_goods_option`;
CREATE TABLE `ims_shopping_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `productprice` decimal(10,2) DEFAULT '0.00',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `costprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_goods_option
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_goods_param`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_goods_param`;
CREATE TABLE `ims_shopping_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `value` text,
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_goods_param
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_order`;
CREATE TABLE `ims_shopping_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为已付款，2为已发货，3为成功',
  `sendtype` tinyint(1) unsigned NOT NULL COMMENT '1为快递，2为自提',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  `goodstype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `addressid` int(10) unsigned NOT NULL,
  `expresscom` varchar(30) NOT NULL DEFAULT '',
  `expresssn` varchar(50) NOT NULL DEFAULT '',
  `express` varchar(200) NOT NULL DEFAULT '',
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `dispatch` int(10) DEFAULT '0',
  `paydetail` varchar(255) NOT NULL COMMENT '支付详情',
  `createtime` int(10) unsigned NOT NULL,
  `address` varchar(1024) NOT NULL DEFAULT '' COMMENT '收货地址信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_order_goods`;
CREATE TABLE `ims_shopping_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `optionid` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `optionname` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_product`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_product`;
CREATE TABLE `ims_shopping_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `productsn` varchar(50) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `marketprice` decimal(10,0) unsigned NOT NULL,
  `productprice` decimal(10,0) unsigned NOT NULL,
  `total` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `spec` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goodsid` (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_product
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_spec`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_spec`;
CREATE TABLE `ims_shopping_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `displaytype` tinyint(3) unsigned NOT NULL,
  `content` text NOT NULL,
  `goodsid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_spec
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_shopping_spec_item`
-- ----------------------------
DROP TABLE IF EXISTS `ims_shopping_spec_item`;
CREATE TABLE `ims_shopping_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `show` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_specid` (`specid`),
  KEY `indx_show` (`show`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_shopping_spec_item
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_article`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `ishot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(300) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `credit` varchar(255) NOT NULL DEFAULT '',
  `incontent` tinyint(1) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_article
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `icon` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `template` varchar(300) NOT NULL DEFAULT '',
  `styleid` int(10) unsigned NOT NULL,
  `templatefile` varchar(100) NOT NULL DEFAULT '',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `ishomepage` tinyint(1) NOT NULL DEFAULT '0',
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_multi`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `quickmenu` varchar(2000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_multi
-- ----------------------------
INSERT INTO `ims_site_multi` VALUES ('1', '1', '微赞团队', '1', '', 'a:2:{s:8:\"template\";s:7:\"default\";s:12:\"enablemodule\";a:0:{}}', '1', '');

-- ----------------------------
-- Table structure for `ims_site_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(50) NOT NULL DEFAULT '',
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL DEFAULT '',
  `position` tinyint(4) NOT NULL DEFAULT '1',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(500) NOT NULL DEFAULT '',
  `css` varchar(1000) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_nav
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_slide`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0',
  `multiid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_styles`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles
-- ----------------------------
INSERT INTO `ims_site_styles` VALUES ('1', '1', '1', '微站默认模板_gC5C');

-- ----------------------------
-- Table structure for `ims_site_styles_vars`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles_vars
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `sections` int(10) unsigned NOT NULL,
  `version` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_templates
-- ----------------------------
INSERT INTO `ims_site_templates` VALUES ('1', 'default', '微站默认模板', '由微赞提供默认微站模板套系', '微赞团队', 'http://012wz.com', '1', '0', '');
INSERT INTO `ims_site_templates` VALUES ('2', 'style_car', '微站微汽车', '由微赞提供微站微汽车', '012微赞', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('3', 'style99', '微赞微站模板99', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('4', 'style98', '微赞微站模板98', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('5', 'style96', '微赞微站模板96', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('6', 'style95', '微赞微站模板95', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('7', 'style94', '微赞微站模板94', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('8', 'style93', '微赞微站模板93', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('9', 'style92', '微赞微站模板92', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('10', 'style91', '微赞模板91', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('11', 'style90', '微赞模板90', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('12', 'style9', '微赞style9', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'car', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('13', 'style89', '微赞模板89', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('14', 'style88', '微赞模板88', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('15', 'style87', '微赞模板87', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('16', 'style86', '微赞模板86', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('17', 'style85', '微赞模板85', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('18', 'style84', '微赞模板84', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('19', 'style83', '微赞模板83', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('20', 'style82', '微赞模板82', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('21', 'style81', '微赞模板81', '由微赞提供默认微站模板套系，刷新看事例，请自行上传30*30px大小的png格式透明分类图片', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('22', 'style80', '微赞模板80', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('23', 'style8', '微赞style8', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'shoot', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('24', 'style79', '微赞模板79', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('25', 'style78', '微赞模板78', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('26', 'style77', '微赞模板77', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('27', 'style76', '微赞模板76', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('28', 'style75', '微赞模板75', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('29', 'style74', '微赞模板74', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('30', 'style73', '微赞模板73', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('31', 'style72', '微赞模板72', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('32', 'style71', '微赞模71', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('33', 'style70', '微赞模板70', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('34', 'style7', '微赞style7', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('35', 'style69', '微赞模板69', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('36', 'style68', '微赞模板68', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('37', 'style67', '微赞模板67', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('38', 'style66', '微赞模板66', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('39', 'style65', '微赞模板65', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('40', 'style64', '微赞模板64', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('41', 'style63', '微赞模板63', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('42', 'style62', '微赞模板62', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('43', 'style61', '微赞模板61', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('44', 'style60', '微赞模板60', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('45', 'style6', '微赞style6', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('46', 'style59', '微赞模板59', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('47', 'style58', '微赞模板58', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('48', 'style57', '微赞style57', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('49', 'style56', '微赞style56', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('50', 'style55', '微赞style55', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('51', 'style54', '微赞style54', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('52', 'style53', '微赞style53', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('53', 'style52', '微赞style52', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('54', 'style51', '微赞style51', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('55', 'style50', '微赞style50', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('56', 'style5', '微赞style5', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'car', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('57', 'style49', '微赞style49', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('58', 'style48', '微赞style48', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('59', 'style47', '微赞style47', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('60', 'style46', '微赞style46', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('61', 'style45', '微赞style45', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('62', 'style44', '微赞style44', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('63', 'style43', '微赞style43', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('64', 'style42', '微赞style42', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('65', 'style41', '微赞style41', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('66', 'style40', '微赞style40', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('67', 'style4', '微赞style4', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'car', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('68', 'style39', '微赞style39', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('69', 'style38', '微赞style38', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('70', 'style37', '微赞style37', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('71', 'style36', '微赞style36', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'medical', '0', '');
INSERT INTO `ims_site_templates` VALUES ('72', 'style35', '微赞style35', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('73', 'style34', '微赞style34', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('74', 'style33', '微赞style33', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('75', 'style32', '微赞style32', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '');
INSERT INTO `ims_site_templates` VALUES ('76', 'style31', '微赞style31', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'drink', '0', '');
INSERT INTO `ims_site_templates` VALUES ('77', 'style30', '微赞style30', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('78', 'style3', '微赞style3', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '4.0');
INSERT INTO `ims_site_templates` VALUES ('79', 'style29', '微赞style29', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('80', 'style28', '微赞style28', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('81', 'style27', '微赞style27', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('82', 'style26', '微赞style26', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('83', 'style25', '微赞style25', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('84', 'style24', '微赞style24', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('85', 'style23', '微赞style23', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '4.0');
INSERT INTO `ims_site_templates` VALUES ('86', 'style22', '微赞style22', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '4.0');
INSERT INTO `ims_site_templates` VALUES ('87', 'style21', '微赞style21', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('88', 'style20', '微赞style20', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('89', 'style2', '微赞style2', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'cosmetology', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('90', 'style19', '微赞style19', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'drink', '0', '6.0');
INSERT INTO `ims_site_templates` VALUES ('91', 'style18', '微赞style18', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '4.0');
INSERT INTO `ims_site_templates` VALUES ('92', 'style17', '微赞style17', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('93', 'style16', '微赞style16', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('94', 'style15', '微赞style15', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'tourism', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('95', 'style14', '微赞style14', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('96', 'style13', '微赞style13', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'realty', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('97', 'style12', '微赞style12', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', '0', '4.0');
INSERT INTO `ims_site_templates` VALUES ('98', 'style118', '微赞微站模板118', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('99', 'style117', '微赞微站模板117', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('100', 'style116', '微赞微站模板116', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('101', 'style113', '微赞微站模板113', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('102', 'style112', '微赞微站模板112', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('103', 'style111', '微赞微站模板111', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('104', 'style110', '微赞微站模板110', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('105', 'style11', '微赞style11', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'shoot', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('106', 'style108', '微赞微站模板108', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('107', 'style107', '微赞微站模板107', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('108', 'style106', '微赞微站模板106', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('109', 'style105', '微赞微站模板105', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('110', 'style104', '微赞微站模板104', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('111', 'style103', '微赞微站模板103', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('112', 'style102', '微赞微站模板102', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('113', 'style101', '微赞微站模板101', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('114', 'style100', '微赞微站模板100', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', '0', '');
INSERT INTO `ims_site_templates` VALUES ('115', 'style10', '微赞style10', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'shoot', '0', '5.0');
INSERT INTO `ims_site_templates` VALUES ('116', 'style1', '微赞style1', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'drink', '0', '4.0');

-- ----------------------------
-- Table structure for `ims_solution_acl`
-- ----------------------------
DROP TABLE IF EXISTS `ims_solution_acl`;
CREATE TABLE `ims_solution_acl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `eid` int(10) unsigned NOT NULL DEFAULT '0',
  `do` varchar(255) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_solution_acl
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stat_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stat_msg_history`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_msg_history
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stat_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_bigwheel_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_bigwheel_award`;
CREATE TABLE `ims_stonefish_bigwheel_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '0' COMMENT '用户ID',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `prizetype` int(11) DEFAULT '0' COMMENT '奖品ID',
  `prize` int(11) DEFAULT '0' COMMENT '奖品ID',
  `award_sn` varchar(50) DEFAULT '' COMMENT 'SN',
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `xuni` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_bigwheel_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_bigwheel_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_bigwheel_data`;
CREATE TABLE `ims_stonefish_bigwheel_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `fromuser` varchar(50) NOT NULL DEFAULT '' COMMENT '分享人openid',
  `avatar` varchar(512) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `visitorsip` varchar(15) NOT NULL DEFAULT '' COMMENT '访问IP',
  `visitorstime` int(10) unsigned NOT NULL COMMENT '访问时间',
  `viewnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_bigwheel_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_bigwheel_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_bigwheel_fans`;
CREATE TABLE `ims_stonefish_bigwheel_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '' COMMENT '用户ID',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT '联系QQ号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '联系地址',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `sharenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享量',
  `sharetime` int(10) DEFAULT '0' COMMENT '最后分享时间',
  `awardingid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖地址ID',
  `todaynum` int(11) DEFAULT '0',
  `totalnum` int(11) DEFAULT '0',
  `awardnum` int(11) DEFAULT '0',
  `last_time` int(10) DEFAULT '0',
  `zhongjiang` tinyint(1) DEFAULT '0',
  `xuni` tinyint(1) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_bigwheel_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_bigwheel_prize`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_bigwheel_prize`;
CREATE TABLE `ims_stonefish_bigwheel_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `turntable` int(10) unsigned NOT NULL COMMENT '转盘类型',
  `prizetype` varchar(50) NOT NULL COMMENT '奖品类别',
  `prizename` varchar(50) NOT NULL COMMENT '奖品名称',
  `prizepro` double DEFAULT '0' COMMENT '奖品概率',
  `prizetotal` int(10) NOT NULL COMMENT '奖品数量',
  `prizedraw` int(10) NOT NULL COMMENT '中奖数量',
  `prizepic` varchar(255) NOT NULL COMMENT '奖品图片',
  `prizetxt` text NOT NULL COMMENT '奖品说明',
  `credit` int(10) NOT NULL COMMENT '积分',
  `credit_type` varchar(20) DEFAULT '' COMMENT '积分类型',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_bigwheel_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_bigwheel_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_bigwheel_reply`;
CREATE TABLE `ims_stonefish_bigwheel_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `start_picurl` varchar(200) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `ticket_information` varchar(200) DEFAULT '',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `repeat_lottery_reply` varchar(50) DEFAULT '',
  `end_theme` varchar(50) DEFAULT '',
  `end_instruction` varchar(200) DEFAULT '',
  `end_picurl` varchar(200) DEFAULT '',
  `turntable` tinyint(1) DEFAULT '0',
  `turntablenum` tinyint(1) DEFAULT '6',
  `adpic` varchar(200) DEFAULT '',
  `adpicurl` varchar(200) DEFAULT '',
  `total_num` int(11) DEFAULT '0' COMMENT '总获奖人数(自动加)',
  `award_info` text NOT NULL,
  `probability` double DEFAULT '0',
  `award_times` int(11) DEFAULT '0',
  `number_times` int(11) DEFAULT '0',
  `most_num_times` int(11) DEFAULT '0',
  `credit_times` int(11) DEFAULT '0',
  `credittype` varchar(20) DEFAULT '',
  `credit_type` varchar(20) DEFAULT '',
  `credit1` int(11) DEFAULT '0',
  `credit2` int(11) DEFAULT '0',
  `sn_code` tinyint(4) DEFAULT '0',
  `sn_rename` varchar(20) DEFAULT '',
  `copyright` varchar(20) DEFAULT '',
  `show_num` tinyint(1) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0' COMMENT '浏览次数',
  `awardnum` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '首页滚动中奖人数显示',
  `fansnum` int(11) DEFAULT '0' COMMENT '参与人数',
  `createtime` int(10) DEFAULT '0',
  `share_acid` int(10) DEFAULT '0',
  `ticketinfo` varchar(50) DEFAULT '' COMMENT '兑奖参数提示词',
  `isrealname` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入姓名0为不需要1为需要',
  `ismobile` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入手机号0为不需要1为需要',
  `isqq` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入QQ号0为不需要1为需要',
  `isemail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入邮箱0为不需要1为需要',
  `isaddress` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入地址0为不需要1为需要',
  `isgender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入性别0为不需要1为需要',
  `istelephone` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入固定电话0为不需要1为需要',
  `isidcard` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入证件号码0为不需要1为需要',
  `iscompany` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入公司名称0为不需要1为需要',
  `isoccupation` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职业0为不需要1为需要',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职位0为不需要1为需要',
  `isfans` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0只保存本模块下1同步更新至官方FANS表',
  `isfansname` varchar(225) NOT NULL DEFAULT '真实姓名,手机号码,QQ号,邮箱,地址,性别,固定电话,证件号码,公司名称,职业,职位' COMMENT '显示字段名称',
  `xuninum` int(10) unsigned NOT NULL DEFAULT '500' COMMENT '虚拟人数',
  `xuninumtime` int(10) unsigned NOT NULL DEFAULT '86400' COMMENT '虚拟间隔时间',
  `xuninuminitial` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '虚拟随机数值1',
  `xuninumending` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '虚拟随机数值2',
  `xuninum_time` int(10) unsigned NOT NULL COMMENT '虚拟更新时间',
  `homepictime` int(3) unsigned NOT NULL COMMENT '首页秒显图片显示时间',
  `homepic` varchar(225) NOT NULL COMMENT '首页秒显图片',
  `opportunity` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '抽奖次数选项 0活动设置次数1商户赠送次数',
  `opportunity_txt` text NOT NULL COMMENT '商户赠送参数说明',
  `bigwheelpic` varchar(225) NOT NULL COMMENT '转盘图',
  `bigwheelimg` varchar(225) NOT NULL COMMENT '指针图',
  `bigwheelimgan` varchar(225) NOT NULL COMMENT '九宫格按钮',
  `bigwheelimgbg` varchar(225) NOT NULL COMMENT '九宫格转动背景图',
  `prizeDeg` varchar(225) NOT NULL COMMENT '中奖角度设置',
  `lostDeg` varchar(225) NOT NULL COMMENT '未中奖角度设置',
  `showparameters` varchar(1000) NOT NULL COMMENT '显示界面参数：背景色、背景图以及文字色等',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_bigwheel_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_bigwheel_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_bigwheel_share`;
CREATE TABLE `ims_stonefish_bigwheel_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `acid` int(11) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `share_txt` text NOT NULL COMMENT '参与活动规则',
  `share_imgurl` varchar(255) NOT NULL COMMENT '分享朋友或朋友圈图',
  `share_picurl` varchar(255) NOT NULL COMMENT '分享图片按钮',
  `share_pic` varchar(255) NOT NULL COMMENT '分享弹出图片',
  `sharenumtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分享赠送抽奖类型',
  `sharenum` int(11) DEFAULT '0' COMMENT '分享赠送抽奖基数',
  `sharetype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分享赠送类型',
  `share_confirm` varchar(200) DEFAULT '' COMMENT '分享成功提示语',
  `share_fail` varchar(200) DEFAULT '' COMMENT '分享失败提示语',
  `share_cancel` varchar(200) DEFAULT '' COMMENT '分享中途取消提示语',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_acid` (`acid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_bigwheel_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_chailihe_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_chailihe_data`;
CREATE TABLE `ims_stonefish_chailihe_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `fromuser` varchar(50) NOT NULL DEFAULT '' COMMENT '分享人openid',
  `avatar` varchar(512) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享人UID',
  `visitorsip` varchar(15) NOT NULL DEFAULT '' COMMENT '访问IP',
  `visitorstime` int(10) unsigned NOT NULL COMMENT '访问时间',
  `viewnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_chailihe_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_chailihe_gift`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_chailihe_gift`;
CREATE TABLE `ims_stonefish_chailihe_gift` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `title` varchar(50) NOT NULL COMMENT '奖品名称',
  `lihetitle` varchar(50) NOT NULL COMMENT '礼盒名称',
  `total` int(11) NOT NULL COMMENT '数量',
  `daytotal` int(11) NOT NULL COMMENT '每天最多中奖数量',
  `probalilty` varchar(5) NOT NULL COMMENT '概率单位%',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `inkind` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否是实物',
  `activation_code` varchar(50) NOT NULL COMMENT '激活码',
  `activation_url` varchar(200) NOT NULL COMMENT '激活地址',
  `gift` varchar(225) DEFAULT '' COMMENT '礼盒图片',
  `giftVoice` varchar(225) DEFAULT '' COMMENT '礼盒声音',
  `break` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '需要帮拆的人数',
  `awardpic` varchar(512) NOT NULL COMMENT '奖品图片',
  `awardpass` varchar(500) NOT NULL COMMENT '兑奖地点列表',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_chailihe_gift
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_chailihe_giftmika`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_chailihe_giftmika`;
CREATE TABLE `ims_stonefish_chailihe_giftmika` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `giftid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '礼盒ID',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `mika` varchar(50) NOT NULL COMMENT '密卡字符串',
  `activationurl` varchar(200) NOT NULL COMMENT '激活地址',
  `typename` varchar(20) NOT NULL DEFAULT '' COMMENT '类型说明',
  `description` varchar(50) NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否领取1为领取过',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_chailihe_giftmika
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_chailihe_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_chailihe_reply`;
CREATE TABLE `ims_stonefish_chailihe_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `title` varchar(50) NOT NULL COMMENT '规则标题',
  `shareurl` varchar(255) NOT NULL COMMENT '活动网址',
  `sharetitle` varchar(50) NOT NULL COMMENT '分享标题',
  `sharecontent` varchar(100) NOT NULL COMMENT '分享简介',
  `picture` varchar(225) NOT NULL COMMENT '图片',
  `music` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '背景音乐开关',
  `musicbg` varchar(225) NOT NULL COMMENT '背景音乐',
  `picnojiang` varchar(255) NOT NULL COMMENT '没有中奖的提示图',
  `bgcolor` varchar(10) NOT NULL COMMENT '背景色',
  `text01color` varchar(10) NOT NULL COMMENT '文字色',
  `text02color` varchar(10) NOT NULL COMMENT '版权文字色',
  `text03color` varchar(10) NOT NULL COMMENT '弹出层文字色',
  `text04color` varchar(10) NOT NULL COMMENT '帮助或兑奖点背景色',
  `text05color` varchar(10) NOT NULL COMMENT '帮助或兑奖点文字色',
  `picbg01` varchar(225) NOT NULL COMMENT '背景图片一',
  `picbg02` varchar(225) NOT NULL COMMENT '背景图片二',
  `picbg03` varchar(225) NOT NULL COMMENT '底部图片',
  `start_time` int(10) unsigned NOT NULL COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL COMMENT '结束时间',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `activityinfo` varchar(255) NOT NULL COMMENT '领奖说明',
  `content` text NOT NULL COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '开关状态',
  `miao` varchar(2) NOT NULL DEFAULT '5' COMMENT '秒数',
  `email` varchar(100) NOT NULL COMMENT '通知邮箱',
  `zhongjiang` varchar(200) NOT NULL COMMENT '中奖提醒词',
  `xuninum` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '虚拟人数',
  `xuninumtime` int(10) unsigned NOT NULL DEFAULT '86400' COMMENT '虚拟间隔时间',
  `xuninuminitial` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '虚拟随机数值1',
  `xuninumending` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '虚拟随机数值2',
  `xuninum_time` int(10) unsigned NOT NULL COMMENT '虚拟更新时间',
  `helpnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '显示帮助人数',
  `share_shownum` int(3) unsigned NOT NULL DEFAULT '50' COMMENT '中奖用户显示数',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否强制需要关注公众号才能领取礼盒',
  `opensubscribe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否强制关注公众号才能拆礼盒0为不需要1为需要关注',
  `openshare` varchar(255) NOT NULL COMMENT '拆礼盒强制关注公众号分享网址',
  `opentype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '打开礼盒方式0为访问1为点击',
  `helpchai` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '互拆设置',
  `helpren` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '拆礼盒对象',
  `chainum` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '同人多礼盒',
  `awarding` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖地点选择',
  `number_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '每人最多领取礼盒个数',
  `number_num_day` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '每人每天最多领取礼盒个数',
  `showlihe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示礼盒名称和奖品名称',
  `showline` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否礼盒线0为不显示',
  `repeatzj` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可以重复中奖0为一次',
  `shangjia` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示赞助商',
  `shangjianame` varchar(50) NOT NULL COMMENT '赞助商名称',
  `shangjiapic` varchar(512) NOT NULL COMMENT '赞助商图片展示',
  `shangjialogo` varchar(512) NOT NULL COMMENT '赞助商图片LOGO',
  `shangjiatel` varchar(50) NOT NULL COMMENT '赞助商联系电话',
  `shangjiaaddress` varchar(90) NOT NULL COMMENT '赞助商联系地址',
  `shangjiamap` varchar(50) NOT NULL COMMENT '赞助商地图导航',
  `shangjialink` varchar(250) NOT NULL COMMENT '赞助商链接',
  `imgpic01` varchar(225) NOT NULL COMMENT '幻灯片图一',
  `imgpic02` varchar(225) NOT NULL COMMENT '幻灯片图二',
  `imgpic03` varchar(225) NOT NULL COMMENT '幻灯片图三',
  `imgpic04` varchar(225) NOT NULL COMMENT '幻灯片图三',
  `imgpic05` varchar(225) NOT NULL COMMENT '幻灯片图四',
  `userinfo` varchar(200) NOT NULL COMMENT '输入姓名或手机时的提示词',
  `isinfo` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖参数是领取填写还是中奖填写0为领取填写',
  `isrealname` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入姓名0为不需要1为需要',
  `ismobile` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入手机号0为不需要1为需要',
  `isqq` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入QQ号0为不需要1为需要',
  `isemail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入邮箱0为不需要1为需要',
  `isaddress` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入地址0为不需要1为需要',
  `isgender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入性别0为不需要1为需要',
  `istelephone` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入固定电话0为不需要1为需要',
  `isidcard` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入证件号码0为不需要1为需要',
  `iscompany` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入公司名称0为不需要1为需要',
  `isoccupation` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职业0为不需要1为需要',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职位0为不需要1为需要',
  `isfansname` varchar(225) NOT NULL DEFAULT '真实姓名,手机号码,QQ号,邮箱,地址,性别,固定电话,证件号码,公司名称,职业,职位' COMMENT '显示字段名称',
  `isfans` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0只保存本模块下1同步更新至官方FANS表',
  `iscopyright` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0显示公众号版权1为显示自定义版权',
  `copyrighturl` varchar(255) NOT NULL COMMENT '版权链接',
  `copyright` varchar(50) NOT NULL COMMENT '版权',
  `messageto` varchar(500) NOT NULL COMMENT '消息模板',
  `randlihe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示礼盒方式1为随机0为全部',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_chailihe_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_chailihe_userlist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_chailihe_userlist`;
CREATE TABLE `ims_stonefish_chailihe_userlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `avatar` varchar(512) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `liheid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '礼盒id',
  `mikaid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '密卡id',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT '联系QQ号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '联系地址',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `sharenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享量',
  `sharetime` int(10) unsigned NOT NULL COMMENT '最后分享时间',
  `datatime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `zhongjiang` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否中奖',
  `awardingid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖地址ID',
  `awardingtypeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖地址区域ID',
  `openlihe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否打开过',
  `xuni` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否虚拟中奖',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否禁止',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_chailihe_userlist
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_luckynum`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_luckynum`;
CREATE TABLE `ims_stonefish_luckynum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `isshow` tinyint(1) DEFAULT '0',
  `title` varchar(100) DEFAULT '',
  `shareimg` varchar(255) DEFAULT '',
  `sharetitle` varchar(100) DEFAULT '',
  `sharedesc` varchar(300) DEFAULT '',
  `show_instruction` varchar(100) DEFAULT '',
  `time_instruction` varchar(100) DEFAULT '',
  `limit_instruction` varchar(100) DEFAULT '',
  `end_instruction` varchar(100) DEFAULT '',
  `awardnum_instruction` varchar(100) DEFAULT '',
  `award_instruction` varchar(100) DEFAULT '',
  `luckynumstart` int(10) unsigned NOT NULL DEFAULT '0',
  `luckynumfilter` varchar(100) NOT NULL DEFAULT '',
  `awardprompt` varchar(200) NOT NULL DEFAULT '',
  `currentprompt` varchar(200) NOT NULL DEFAULT '',
  `limittype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '参与限制0为无限制1为只能一次',
  `awardnum` tinyint(1) NOT NULL DEFAULT '0' COMMENT '中奖限制次数',
  `ticketinfo` varchar(50) DEFAULT '' COMMENT '兑奖参数提示词',
  `isrealname` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入姓名0为不需要1为需要',
  `ismobile` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入手机号0为不需要1为需要',
  `isqq` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入QQ号0为不需要1为需要',
  `isemail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入邮箱0为不需要1为需要',
  `isaddress` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入地址0为不需要1为需要',
  `isgender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入性别0为不需要1为需要',
  `istelephone` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入固定电话0为不需要1为需要',
  `isidcard` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入证件号码0为不需要1为需要',
  `iscompany` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入公司名称0为不需要1为需要',
  `isoccupation` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职业0为不需要1为需要',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职位0为不需要1为需要',
  `isfans` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0只保存本模块下1同步更新至官方FANS表',
  `isfansname` varchar(225) NOT NULL DEFAULT '真实姓名,手机号码,QQ号,邮箱,地址,性别,固定电话,证件号码,公司名称,职业,职位' COMMENT '显示字段名称',
  `sponsors1` varchar(50) DEFAULT '',
  `sponsors1link` varchar(255) DEFAULT '',
  `sponsors2` varchar(50) DEFAULT '',
  `sponsors2link` varchar(255) DEFAULT '',
  `sponsors3` varchar(50) DEFAULT '',
  `sponsors3link` varchar(255) DEFAULT '',
  `sponsors4` varchar(50) DEFAULT '',
  `sponsors4link` varchar(255) DEFAULT '',
  `sponsors5` varchar(50) DEFAULT '',
  `sponsors5link` varchar(255) DEFAULT '',
  `ruletext` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_luckynum
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_luckynum_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_luckynum_award`;
CREATE TABLE `ims_stonefish_luckynum_award` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `numbers` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_luckynum_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_luckynum_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_luckynum_fans`;
CREATE TABLE `ims_stonefish_luckynum_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(50) NOT NULL DEFAULT '0',
  `award_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT '联系QQ号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '联系地址',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `zhongjiang` tinyint(1) NOT NULL DEFAULT '0',
  `xuni` tinyint(1) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `awardingid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖地址ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rid_number_UNIQUE` (`rid`,`number`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_luckynum_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_planting_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_planting_award`;
CREATE TABLE `ims_stonefish_planting_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0' COMMENT '公众号ID',
  `rid` int(11) DEFAULT '0',
  `fid` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '0' COMMENT '用户ID',
  `prizeid` int(11) DEFAULT '0' COMMENT '奖品ID',
  `shengzhangid` tinyint(1) DEFAULT '0' COMMENT '种子生成级别',
  `prizename` varchar(50) DEFAULT '' COMMENT '奖品名称',
  `prizetype` varchar(10) DEFAULT '' COMMENT '类型',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `createtime` int(10) DEFAULT '0' COMMENT '中奖时间',
  `consumetime` int(10) DEFAULT '0' COMMENT '领奖时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态0为未领取1为领取',
  `xuni` tinyint(1) DEFAULT '0',
  `tickettype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖类型1为前端后台2为店员3为商家网点',
  `ticketid` int(11) DEFAULT '0' COMMENT '兑奖人ID',
  `ticketname` varchar(50) DEFAULT '' COMMENT '兑奖人姓名',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_planting_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_planting_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_planting_data`;
CREATE TABLE `ims_stonefish_planting_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(11) DEFAULT '0' COMMENT '公众号ID',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `fromuser` varchar(50) NOT NULL DEFAULT '' COMMENT '分享人openid',
  `avatar` varchar(512) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `visitorsip` varchar(15) NOT NULL DEFAULT '' COMMENT '访问IP',
  `visitorstime` int(10) unsigned NOT NULL COMMENT '访问时间',
  `viewnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_planting_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_planting_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_planting_fans`;
CREATE TABLE `ims_stonefish_planting_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0' COMMENT '公众号ID',
  `seedid` int(11) DEFAULT '0' COMMENT '种子ID',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '' COMMENT '用户ID',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT '联系QQ号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '联系地址',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `sharenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享量',
  `sharetime` int(10) DEFAULT '0' COMMENT '最后分享时间',
  `awardingid` int(10) DEFAULT '0' COMMENT '兑奖地址ID',
  `choujiang` tinyint(1) DEFAULT '0' COMMENT '抽奖状态',
  `last_time` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `zhongjiang` tinyint(1) DEFAULT '0',
  `xuni` tinyint(1) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_planting_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_planting_prize`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_planting_prize`;
CREATE TABLE `ims_stonefish_planting_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0' COMMENT '公众号ID',
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `sharenum` int(10) DEFAULT '0' COMMENT '抽奖所需助力值',
  `prizetype` varchar(50) NOT NULL COMMENT '奖品类别',
  `prizename` varchar(50) NOT NULL COMMENT '奖品名称',
  `prizepro` double DEFAULT '0' COMMENT '奖品概率',
  `prizetotal` int(10) NOT NULL COMMENT '奖品数量',
  `prizedraw` int(10) NOT NULL COMMENT '中奖数量',
  `prizepic` varchar(255) NOT NULL COMMENT '奖品图片',
  `prizetxt` text NOT NULL COMMENT '奖品说明',
  `credit` int(10) NOT NULL COMMENT '积分',
  `credit_type` varchar(20) DEFAULT '' COMMENT '积分类型',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_planting_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_planting_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_planting_reply`;
CREATE TABLE `ims_stonefish_planting_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `uniacid` int(11) DEFAULT '0' COMMENT '公众号ID',
  `title` varchar(50) DEFAULT '' COMMENT '活动名称',
  `description` varchar(255) DEFAULT '' COMMENT '活动简介',
  `start_picurl` varchar(200) DEFAULT '' COMMENT '活动开始图片',
  `isshow` tinyint(1) DEFAULT '0',
  `award_times` int(11) DEFAULT '0' COMMENT '每人最多获奖次数',
  `ticket_information` varchar(200) DEFAULT '' COMMENT '兑奖信息',
  `starttime` int(10) DEFAULT '0' COMMENT '活动开始时间',
  `endtime` int(10) DEFAULT '0' COMMENT '活动结束时间',
  `end_theme` varchar(50) DEFAULT '' COMMENT '结束标题',
  `end_instruction` varchar(200) DEFAULT '' COMMENT '活动结束简介',
  `end_picurl` varchar(200) DEFAULT '' COMMENT '活动结束图片',
  `adpic` varchar(200) DEFAULT '' COMMENT '活动页顶部广告图',
  `adpicurl` varchar(200) DEFAULT '' COMMENT '活动页顶部广告链接',
  `total_num` int(11) DEFAULT '0' COMMENT '奖品数量(自动加)',
  `copyright` varchar(20) DEFAULT '' COMMENT '自定义版权',
  `show_num` tinyint(1) DEFAULT '0' COMMENT '是否显示奖品数量',
  `viewnum` int(11) DEFAULT '0' COMMENT '浏览次数',
  `fansnum` int(11) DEFAULT '0' COMMENT '参与人数',
  `seedid` varchar(100) NOT NULL COMMENT '种子集',
  `limittype` tinyint(1) DEFAULT '0' COMMENT '限制类型0为只能一次1为每天一次',
  `totallimit` tinyint(1) DEFAULT '1' COMMENT '好友助力总次数制',
  `awardnum` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '首页滚动中奖人数显示',
  `createtime` int(10) DEFAULT '0' COMMENT '活动创建时间',
  `ticketinfo` varchar(50) DEFAULT '' COMMENT '兑奖参数提示词',
  `tickettype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '兑奖类型1为前端后台2为店员3为商家网点',
  `isrealname` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入姓名0为不需要1为需要',
  `ismobile` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入手机号0为不需要1为需要',
  `isqq` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入QQ号0为不需要1为需要',
  `isemail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入邮箱0为不需要1为需要',
  `isaddress` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入地址0为不需要1为需要',
  `isgender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入性别0为不需要1为需要',
  `istelephone` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入固定电话0为不需要1为需要',
  `isidcard` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入证件号码0为不需要1为需要',
  `iscompany` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入公司名称0为不需要1为需要',
  `isoccupation` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职业0为不需要1为需要',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职位0为不需要1为需要',
  `isfans` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0只保存本模块下1同步更新至官方FANS表',
  `isfansname` varchar(225) NOT NULL DEFAULT '真实姓名,手机号码,QQ号,邮箱,地址,性别,固定电话,证件号码,公司名称,职业,职位' COMMENT '显示字段名称',
  `xuninum` int(10) unsigned NOT NULL DEFAULT '500' COMMENT '虚拟人数',
  `xuninumtime` int(10) unsigned NOT NULL DEFAULT '86400' COMMENT '虚拟间隔时间',
  `xuninuminitial` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '虚拟随机数值1',
  `xuninumending` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '虚拟随机数值2',
  `xuninum_time` int(10) unsigned NOT NULL COMMENT '虚拟更新时间',
  `homepictime` int(3) unsigned NOT NULL COMMENT '首页秒显图片显示时间',
  `homepic` varchar(225) NOT NULL COMMENT '首页秒显图片',
  `opportunity` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '参与选项 0任何人1关注粉丝2为商户赠送',
  `opportunity_txt` text NOT NULL COMMENT '商户赠送参数说明',
  `award_info` text NOT NULL COMMENT '奖品详细介绍',
  `credit_times` tinyint(1) DEFAULT '0',
  `credit_type` varchar(20) DEFAULT '',
  `showparameters` varchar(1000) NOT NULL COMMENT '显示界面参数：背景色、背景图以及文字色等',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_planting_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_planting_seed`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_planting_seed`;
CREATE TABLE `ims_stonefish_planting_seed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0' COMMENT '公众号ID',
  `seedname` varchar(50) NOT NULL DEFAULT '' COMMENT '种子名称',
  `seedimg` varchar(512) NOT NULL DEFAULT '' COMMENT '种子形象图',
  `seedad` varchar(150) NOT NULL DEFAULT '' COMMENT '种子介绍',
  `seedinfo` text NOT NULL COMMENT '种子介绍',
  `seedimg01` varchar(512) NOT NULL DEFAULT '' COMMENT '胚胎',
  `seedimg02` varchar(512) NOT NULL DEFAULT '' COMMENT '发芽',
  `seedimg03` varchar(512) NOT NULL DEFAULT '' COMMENT '生长',
  `seedimg04` varchar(512) NOT NULL DEFAULT '' COMMENT '发枝',
  `seedimg05` varchar(512) NOT NULL DEFAULT '' COMMENT '繁荣',
  `seedimg06` varchar(512) NOT NULL DEFAULT '' COMMENT '开花',
  `seedimg07` varchar(512) NOT NULL DEFAULT '' COMMENT '结果',
  `seedimg08` varchar(512) NOT NULL DEFAULT '' COMMENT '成熟',
  `seed01` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '胚胎量',
  `seed02` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '发芽量',
  `seed03` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '生长量',
  `seed04` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '发枝量',
  `seed05` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '繁荣量',
  `seed06` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '开花量',
  `seed07` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '开花量',
  `seed08` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '成熟量',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_planting_seed
-- ----------------------------
INSERT INTO `ims_stonefish_planting_seed` VALUES ('1', '0', '摇钱树-最好复制一个同样的种子进行活动', '../addons/stonefish_planting/template/images/tree_00.png', '摇钱树广告词', '摇钱树种子详细说明', '../addons/stonefish_planting/template/images/tree_0.png', '../addons/stonefish_planting/template/images/tree_1.png', '../addons/stonefish_planting/template/images/tree_2.png', '../addons/stonefish_planting/template/images/tree_3.png', '../addons/stonefish_planting/template/images/tree_4.png', '../addons/stonefish_planting/template/images/tree_5.png', '../addons/stonefish_planting/template/images/tree_6.png', '../addons/stonefish_planting/template/images/tree_7.png', '0', '5', '10', '15', '25', '35', '45', '60');

-- ----------------------------
-- Table structure for `ims_stonefish_planting_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_planting_share`;
CREATE TABLE `ims_stonefish_planting_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `acid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0' COMMENT '公众号ID',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(255) DEFAULT '',
  `share_txt` text NOT NULL COMMENT '参与活动规则',
  `share_imgurl` varchar(255) NOT NULL COMMENT '分享朋友或朋友圈图',
  `share_picurl` varchar(255) NOT NULL COMMENT '分享图片按钮',
  `share_pic` varchar(255) NOT NULL COMMENT '分享弹出图片',
  `share_confirm` varchar(200) DEFAULT '' COMMENT '分享成功提示语',
  `share_fail` varchar(200) DEFAULT '' COMMENT '分享失败提示语',
  `share_cancel` varchar(200) DEFAULT '' COMMENT '分享中途取消提示语',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_planting_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_planting_token`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_planting_token`;
CREATE TABLE `ims_stonefish_planting_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `access_token` varchar(1000) NOT NULL,
  `expires_in` int(11) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_planting_token
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_redenvelope_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_redenvelope_award`;
CREATE TABLE `ims_stonefish_redenvelope_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '0' COMMENT '用户ID',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `prizetype` varchar(10) DEFAULT '' COMMENT '类型',
  `prize` int(11) DEFAULT '0' COMMENT '奖品ID',
  `award_sn` varchar(50) DEFAULT '' COMMENT 'SN',
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `xuni` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_redenvelope_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_redenvelope_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_redenvelope_data`;
CREATE TABLE `ims_stonefish_redenvelope_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `fromuser` varchar(50) NOT NULL DEFAULT '' COMMENT '分享人openid',
  `avatar` varchar(512) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `visitorsip` varchar(15) NOT NULL DEFAULT '' COMMENT '访问IP',
  `visitorstime` int(10) unsigned NOT NULL COMMENT '访问时间',
  `point` decimal(10,2) DEFAULT '0.00' COMMENT '助力金额',
  `viewnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_redenvelope_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_redenvelope_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_redenvelope_fans`;
CREATE TABLE `ims_stonefish_redenvelope_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '' COMMENT '用户ID',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT '联系QQ号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '联系地址',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `inpoint` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '起始金额',
  `outpoint` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '已兑换金额',
  `sharenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享量',
  `sharetime` int(10) DEFAULT '0' COMMENT '最后分享时间',
  `awardingid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖地址ID',
  `last_time` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `zhongjiang` tinyint(1) DEFAULT '0',
  `xuni` tinyint(1) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_redenvelope_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_redenvelope_prize`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_redenvelope_prize`;
CREATE TABLE `ims_stonefish_redenvelope_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `point` decimal(10,2) DEFAULT '0.00' COMMENT '奖品需要金额',
  `prizetype` varchar(50) NOT NULL COMMENT '奖品类别',
  `prizename` varchar(50) NOT NULL COMMENT '奖品名称',
  `prizepro` double DEFAULT '0' COMMENT '奖品概率',
  `prizetotal` int(10) NOT NULL COMMENT '奖品数量',
  `prizedraw` int(10) NOT NULL COMMENT '中奖数量',
  `prizepic` varchar(255) NOT NULL COMMENT '奖品图片',
  `prizetxt` text NOT NULL COMMENT '奖品说明',
  `credit` int(10) NOT NULL COMMENT '积分',
  `credit_type` varchar(20) DEFAULT '' COMMENT '积分类型',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_redenvelope_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_redenvelope_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_redenvelope_reply`;
CREATE TABLE `ims_stonefish_redenvelope_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '' COMMENT '活动名称',
  `description` varchar(255) DEFAULT '' COMMENT '活动简介',
  `start_picurl` varchar(200) DEFAULT '' COMMENT '活动开始图片',
  `isshow` tinyint(1) DEFAULT '0',
  `envelope` tinyint(1) DEFAULT '0' COMMENT '红包类型0为实物奖品1为现金',
  `award_times` int(11) DEFAULT '0' COMMENT '每人最多获奖次数',
  `ticket_information` varchar(200) DEFAULT '' COMMENT '兑奖信息',
  `starttime` int(10) DEFAULT '0' COMMENT '活动开始时间',
  `endtime` int(10) DEFAULT '0' COMMENT '活动结束时间',
  `end_theme` varchar(50) DEFAULT '' COMMENT '结束标题',
  `end_instruction` varchar(200) DEFAULT '' COMMENT '活动结束简介',
  `end_picurl` varchar(200) DEFAULT '' COMMENT '活动结束图片',
  `adpic` varchar(200) DEFAULT '' COMMENT '活动页顶部广告图',
  `adpicurl` varchar(200) DEFAULT '' COMMENT '活动页顶部广告链接',
  `total_num` int(11) DEFAULT '0' COMMENT '奖品数量(自动加)',
  `sn_rename` varchar(20) DEFAULT '',
  `copyright` varchar(20) DEFAULT '' COMMENT '自定义版权',
  `show_num` tinyint(1) DEFAULT '0' COMMENT '是否显示奖品数量',
  `viewnum` int(11) DEFAULT '0' COMMENT '浏览次数',
  `awardnum` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '首页滚动中奖人数显示',
  `fansnum` int(11) DEFAULT '0' COMMENT '参与人数',
  `cardbg` varchar(255) NOT NULL COMMENT '抽奖卡片背景图片',
  `inpointstart` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '初始分值1',
  `inpointend` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '初始分值2',
  `randompointstart` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '助力随机金额范围开始数',
  `randompointend` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '助力随机金额范围结束数',
  `addp` tinyint(1) DEFAULT '100' COMMENT '好友帮助攒钱机率%',
  `limittype` tinyint(1) DEFAULT '0' COMMENT '限制类型0为只能一次1为每天一次',
  `totallimit` tinyint(1) DEFAULT '1' COMMENT '好友助力总次数制',
  `incomelimit` float(10,2) unsigned NOT NULL DEFAULT '10000.00' COMMENT '最高金额限制',
  `tixianlimit` float(10,2) unsigned NOT NULL DEFAULT '100.00' COMMENT '提现金额限制',
  `countlimit` int(5) NOT NULL COMMENT '活动总人数限制',
  `createtime` int(10) DEFAULT '0' COMMENT '活动创建时间',
  `share_acid` int(10) DEFAULT '0' COMMENT '默认分享公众号ID',
  `sharetip` varchar(100) NOT NULL COMMENT '分享提示内容',
  `fanpaitip` varchar(100) NOT NULL COMMENT '好友翻牌小提示',
  `awardtip` varchar(200) NOT NULL COMMENT '中奖小提示说明',
  `sharebtn` varchar(10) NOT NULL COMMENT '邀请好友攒钱文字',
  `fsharebtn` varchar(10) NOT NULL COMMENT '好友帮助邀请攒钱文字',
  `bgcolor` varchar(10) DEFAULT '' COMMENT '背景颜色',
  `fontcolor` varchar(10) DEFAULT '' COMMENT '文字颜色',
  `btncolor` varchar(10) DEFAULT '' COMMENT '按钮颜色',
  `btnfontcolor` varchar(10) DEFAULT '' COMMENT '按钮文字颜色',
  `txcolor` varchar(10) DEFAULT '' COMMENT '提现按钮颜色',
  `txfontcolor` varchar(10) DEFAULT '' COMMENT '提现按钮文字颜色',
  `rulebgcolor` varchar(10) DEFAULT '' COMMENT '规则框背景颜色',
  `ticketinfo` varchar(50) DEFAULT '' COMMENT '兑奖参数提示词',
  `isrealname` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入姓名0为不需要1为需要',
  `ismobile` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入手机号0为不需要1为需要',
  `isqq` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入QQ号0为不需要1为需要',
  `isemail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入邮箱0为不需要1为需要',
  `isaddress` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入地址0为不需要1为需要',
  `isgender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入性别0为不需要1为需要',
  `istelephone` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入固定电话0为不需要1为需要',
  `isidcard` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入证件号码0为不需要1为需要',
  `iscompany` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入公司名称0为不需要1为需要',
  `isoccupation` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职业0为不需要1为需要',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职位0为不需要1为需要',
  `isfans` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0只保存本模块下1同步更新至官方FANS表',
  `isfansname` varchar(225) NOT NULL DEFAULT '真实姓名,手机号码,QQ号,邮箱,地址,性别,固定电话,证件号码,公司名称,职业,职位' COMMENT '显示字段名称',
  `xuninum` int(10) unsigned NOT NULL DEFAULT '500' COMMENT '虚拟人数',
  `xuninumtime` int(10) unsigned NOT NULL DEFAULT '86400' COMMENT '虚拟间隔时间',
  `xuninuminitial` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '虚拟随机数值1',
  `xuninumending` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '虚拟随机数值2',
  `xuninum_time` int(10) unsigned NOT NULL COMMENT '虚拟更新时间',
  `homepictime` int(3) unsigned NOT NULL COMMENT '首页秒显图片显示时间',
  `homepic` varchar(225) NOT NULL COMMENT '首页秒显图片',
  `opportunity` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '参与选项 0任何人1关注粉丝2为商户赠送',
  `opportunity_txt` text NOT NULL COMMENT '商户赠送参数说明',
  `award_info` text NOT NULL COMMENT '奖品详细介绍',
  `credit_times` tinyint(1) DEFAULT '0',
  `credit_type` varchar(20) DEFAULT '',
  `showparameters` varchar(1000) NOT NULL COMMENT '显示界面参数：背景色、背景图以及文字色等',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_redenvelope_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_redenvelope_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_redenvelope_share`;
CREATE TABLE `ims_stonefish_redenvelope_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `acid` int(11) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(255) DEFAULT '',
  `share_txt` text NOT NULL COMMENT '参与活动规则',
  `share_imgurl` varchar(255) NOT NULL COMMENT '分享朋友或朋友圈图',
  `share_picurl` varchar(255) NOT NULL COMMENT '分享图片按钮',
  `share_pic` varchar(255) NOT NULL COMMENT '分享弹出图片',
  `share_confirm` varchar(200) DEFAULT '' COMMENT '分享成功提示语',
  `share_fail` varchar(200) DEFAULT '' COMMENT '分享失败提示语',
  `share_cancel` varchar(200) DEFAULT '' COMMENT '分享中途取消提示语',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_acid` (`acid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_redenvelope_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_redenvelope_token`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_redenvelope_token`;
CREATE TABLE `ims_stonefish_redenvelope_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `access_token` varchar(1000) NOT NULL,
  `expires_in` int(11) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_redenvelope_token
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_scratch_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_scratch_award`;
CREATE TABLE `ims_stonefish_scratch_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '0' COMMENT '用户ID',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `prizetype` varchar(10) DEFAULT '' COMMENT '类型',
  `prize` int(11) DEFAULT '0' COMMENT '奖品ID',
  `award_sn` varchar(50) DEFAULT '' COMMENT 'SN',
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `xuni` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_scratch_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_scratch_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_scratch_data`;
CREATE TABLE `ims_stonefish_scratch_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户openid',
  `fromuser` varchar(50) NOT NULL DEFAULT '' COMMENT '分享人openid',
  `avatar` varchar(512) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `visitorsip` varchar(15) NOT NULL DEFAULT '' COMMENT '访问IP',
  `visitorstime` int(10) unsigned NOT NULL COMMENT '访问时间',
  `viewnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_scratch_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_scratch_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_scratch_fans`;
CREATE TABLE `ims_stonefish_scratch_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '' COMMENT '用户ID',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '微信头像',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT '联系QQ号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '联系地址',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `sharenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享量',
  `sharetime` int(10) DEFAULT '0' COMMENT '最后分享时间',
  `awardingid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖地址ID',
  `todaynum` int(11) DEFAULT '0',
  `totalnum` int(11) DEFAULT '0',
  `awardnum` int(11) DEFAULT '0',
  `last_time` int(10) DEFAULT '0',
  `zhongjiang` tinyint(1) DEFAULT '0',
  `xuni` tinyint(1) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_scratch_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_scratch_prize`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_scratch_prize`;
CREATE TABLE `ims_stonefish_scratch_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `turntable` int(10) unsigned NOT NULL COMMENT '转盘类型',
  `prizetype` varchar(50) NOT NULL COMMENT '奖品类别',
  `prizename` varchar(50) NOT NULL COMMENT '奖品名称',
  `prizepro` double DEFAULT '0' COMMENT '奖品概率',
  `prizetotal` int(10) NOT NULL COMMENT '奖品数量',
  `prizedraw` int(10) NOT NULL COMMENT '中奖数量',
  `prizepic` varchar(255) NOT NULL COMMENT '奖品图片',
  `prizetxt` text NOT NULL COMMENT '奖品说明',
  `credit` int(10) NOT NULL COMMENT '积分',
  `credit_type` varchar(20) DEFAULT '' COMMENT '积分类型',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_scratch_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_scratch_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_scratch_reply`;
CREATE TABLE `ims_stonefish_scratch_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `start_picurl` varchar(200) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `ticket_information` varchar(200) DEFAULT '' COMMENT '兑奖信息',
  `notaward` tinyint(1) DEFAULT '0' COMMENT '没有中奖类型',
  `notawardpic` varchar(2000) DEFAULT '' COMMENT '没有中奖显示图',
  `notawardtext` varchar(1000) DEFAULT '' COMMENT '没有中奖提示文字',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `repeat_lottery_reply` varchar(50) DEFAULT '' COMMENT '重复刮奖信息',
  `end_theme` varchar(50) DEFAULT '' COMMENT '结束标题',
  `end_instruction` varchar(200) DEFAULT '',
  `end_picurl` varchar(200) DEFAULT '',
  `adpic` varchar(200) DEFAULT '' COMMENT '活动页顶部广告图',
  `adpicurl` varchar(200) DEFAULT '',
  `total_num` int(11) DEFAULT '0' COMMENT '总获奖人数(自动加)',
  `award_info` text NOT NULL COMMENT '奖品详细介绍',
  `award_times` int(11) DEFAULT '0' COMMENT '每人最多获奖次数',
  `number_times` int(11) DEFAULT '0' COMMENT '每人最多刮奖次数',
  `most_num_times` int(11) DEFAULT '0' COMMENT '每人每天最多刮奖次数',
  `credit_times` int(11) DEFAULT '0',
  `credittype` varchar(20) DEFAULT '',
  `credit_type` varchar(20) DEFAULT '',
  `credit1` int(11) DEFAULT '0',
  `credit2` int(11) DEFAULT '0',
  `sn_code` tinyint(4) DEFAULT '0',
  `sn_rename` varchar(20) DEFAULT '',
  `copyright` varchar(20) DEFAULT '',
  `show_num` tinyint(1) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0' COMMENT '浏览次数',
  `awardnum` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '首页滚动中奖人数显示',
  `fansnum` int(11) DEFAULT '0' COMMENT '参与人数',
  `createtime` int(10) DEFAULT '0',
  `share_acid` int(10) DEFAULT '0',
  `ticketinfo` varchar(50) DEFAULT '' COMMENT '兑奖参数提示词',
  `isrealname` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入姓名0为不需要1为需要',
  `ismobile` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要输入手机号0为不需要1为需要',
  `isqq` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入QQ号0为不需要1为需要',
  `isemail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入邮箱0为不需要1为需要',
  `isaddress` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入地址0为不需要1为需要',
  `isgender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入性别0为不需要1为需要',
  `istelephone` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入固定电话0为不需要1为需要',
  `isidcard` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入证件号码0为不需要1为需要',
  `iscompany` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入公司名称0为不需要1为需要',
  `isoccupation` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职业0为不需要1为需要',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要输入职位0为不需要1为需要',
  `isfans` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0只保存本模块下1同步更新至官方FANS表',
  `isfansname` varchar(225) NOT NULL DEFAULT '真实姓名,手机号码,QQ号,邮箱,地址,性别,固定电话,证件号码,公司名称,职业,职位' COMMENT '显示字段名称',
  `xuninum` int(10) unsigned NOT NULL DEFAULT '500' COMMENT '虚拟人数',
  `xuninumtime` int(10) unsigned NOT NULL DEFAULT '86400' COMMENT '虚拟间隔时间',
  `xuninuminitial` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '虚拟随机数值1',
  `xuninumending` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '虚拟随机数值2',
  `xuninum_time` int(10) unsigned NOT NULL COMMENT '虚拟更新时间',
  `homepictime` int(3) unsigned NOT NULL COMMENT '首页秒显图片显示时间',
  `homepic` varchar(225) NOT NULL COMMENT '首页秒显图片',
  `opportunity` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '刮奖次数选项 0活动设置次数1商户赠送次数',
  `opportunity_txt` text NOT NULL COMMENT '商户赠送参数说明',
  `showparameters` varchar(1000) NOT NULL COMMENT '显示界面参数：背景色、背景图以及文字色等',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_scratch_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stonefish_scratch_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stonefish_scratch_share`;
CREATE TABLE `ims_stonefish_scratch_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `acid` int(11) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `share_txt` text NOT NULL COMMENT '参与活动规则',
  `share_imgurl` varchar(255) NOT NULL COMMENT '分享朋友或朋友圈图',
  `share_picurl` varchar(255) NOT NULL COMMENT '分享图片按钮',
  `share_pic` varchar(255) NOT NULL COMMENT '分享弹出图片',
  `sharenumtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分享赠送抽奖类型',
  `sharenum` int(11) DEFAULT '0' COMMENT '分享赠送抽奖基数',
  `sharetype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分享赠送类型',
  `share_confirm` varchar(200) DEFAULT '' COMMENT '分享成功提示语',
  `share_fail` varchar(200) DEFAULT '' COMMENT '分享失败提示语',
  `share_cancel` varchar(200) DEFAULT '' COMMENT '分享中途取消提示语',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_acid` (`acid`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stonefish_scratch_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_str_config`
-- ----------------------------
DROP TABLE IF EXISTS `ims_str_config`;
CREATE TABLE `ims_str_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime_limit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_str_config
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_str_dish`
-- ----------------------------
DROP TABLE IF EXISTS `ims_str_dish`;
CREATE TABLE `ims_str_dish` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) NOT NULL DEFAULT '0',
  `sailed` int(10) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `thumb` varchar(60) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_str_dish
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_str_dish_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_str_dish_category`;
CREATE TABLE `ims_str_dish_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_str_dish_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_str_dish_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_str_dish_comment`;
CREATE TABLE `ims_str_dish_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `oid` int(10) unsigned NOT NULL,
  `did` int(10) unsigned NOT NULL,
  `score` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `oid` (`oid`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_str_dish_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_str_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_str_order`;
CREATE TABLE `ims_str_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `num` tinyint(3) unsigned NOT NULL,
  `delivery_time` varchar(15) NOT NULL,
  `pay_type` varchar(15) NOT NULL,
  `dish` varchar(3000) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '2',
  `comment` tinyint(3) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `uniacid_sid` (`uniacid`,`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_str_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_str_store`
-- ----------------------------
DROP TABLE IF EXISTS `ims_str_store`;
CREATE TABLE `ims_str_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `business_hours` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `send_price` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delivery_price` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delivery_time` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `serve_radius` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_area` varchar(50) NOT NULL,
  `thumbs` varchar(1000) NOT NULL,
  `district` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `location_x` varchar(15) NOT NULL,
  `location_y` varchar(15) NOT NULL,
  `email_notice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_str_store
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_super_securitycode_data_moban`
-- ----------------------------
DROP TABLE IF EXISTS `ims_super_securitycode_data_moban`;
CREATE TABLE `ims_super_securitycode_data_moban` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `factory` varchar(500) NOT NULL,
  `creditname` varchar(20) NOT NULL,
  `creditnum` int(10) unsigned NOT NULL,
  `creditstatus` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `stime` int(10) unsigned NOT NULL,
  `createtime` decimal(11,0) NOT NULL,
  `num` int(10) NOT NULL,
  `tourl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_super_securitycode_data_moban
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_super_securitycode_logs`
-- ----------------------------
DROP TABLE IF EXISTS `ims_super_securitycode_logs`;
CREATE TABLE `ims_super_securitycode_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_super_securitycode_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_super_securitycode_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_super_securitycode_reply`;
CREATE TABLE `ims_super_securitycode_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `weid` int(10) NOT NULL,
  `Reply` varchar(1000) NOT NULL,
  `Integral` int(10) NOT NULL,
  `tnumber` int(10) NOT NULL,
  `Failure` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_super_securitycode_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_survey`
-- ----------------------------
DROP TABLE IF EXISTS `ims_survey`;
CREATE TABLE `ims_survey` (
  `sid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `information` varchar(500) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL,
  `pertotal` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `suggest_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`sid`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_survey_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_survey_data`;
CREATE TABLE `ims_survey_data` (
  `sdid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `srid` int(11) NOT NULL,
  `sfid` int(11) NOT NULL,
  `data` varchar(800) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sdid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_survey_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ims_survey_fields`;
CREATE TABLE `ims_survey_fields` (
  `sfid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `essential` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bind` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(300) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sfid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_survey_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_survey_reply`;
CREATE TABLE `ims_survey_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_survey_rows`
-- ----------------------------
DROP TABLE IF EXISTS `ims_survey_rows`;
CREATE TABLE `ims_survey_rows` (
  `srid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `suggest` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`srid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey_rows
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_phonebook_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_phonebook_category`;
CREATE TABLE `ims_thinkidea_phonebook_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '行业名称',
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `display` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `isshow` smallint(1) DEFAULT '1' COMMENT '是否显示',
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of ims_thinkidea_phonebook_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_phonebook_info`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_phonebook_info`;
CREATE TABLE `ims_thinkidea_phonebook_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `zone` smallint(6) NOT NULL,
  `category` smallint(6) NOT NULL,
  `address` varchar(250) NOT NULL,
  `isauth` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否认证',
  `coordinate` varchar(50) NOT NULL COMMENT '坐标',
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='电话本内容';

-- ----------------------------
-- Records of ims_thinkidea_phonebook_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_phonebook_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_phonebook_reply`;
CREATE TABLE `ims_thinkidea_phonebook_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` smallint(6) NOT NULL,
  `weid` smallint(6) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_thinkidea_phonebook_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_phonebook_zone`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_phonebook_zone`;
CREATE TABLE `ims_thinkidea_phonebook_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `display` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `isshow` smallint(1) DEFAULT '1' COMMENT '是否显示',
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of ims_thinkidea_phonebook_zone
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_adslider`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_adslider`;
CREATE TABLE `ims_thinkidea_rencai_adslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` smallint(6) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '广告名称',
  `position` tinyint(1) NOT NULL COMMENT '幻灯、ad在的位置',
  `url` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL COMMENT '链接地址',
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `display` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(11) NOT NULL DEFAULT '0',
  `exprtime` int(11) NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`,`position`,`isshow`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='幻灯、广告投放管理';

-- ----------------------------
-- Records of ims_thinkidea_rencai_adslider
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_apply_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_apply_jobs`;
CREATE TABLE `ims_thinkidea_rencai_apply_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL COMMENT '公众号',
  `person_id` int(11) NOT NULL COMMENT '求职者个人id',
  `company_id` int(11) NOT NULL COMMENT '公司id',
  `job_id` int(11) NOT NULL COMMENT '职位id',
  `dateline` int(11) NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`,`person_id`,`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='求职者申请职位表';

-- ----------------------------
-- Records of ims_thinkidea_rencai_apply_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_category`;
CREATE TABLE `ims_thinkidea_rencai_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `isshow` smallint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `display` smallint(1) NOT NULL DEFAULT '0' COMMENT '排序',
  `ishot` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否热门',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='职位分类表';

-- ----------------------------
-- Records of ims_thinkidea_rencai_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_company`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_company`;
CREATE TABLE `ims_thinkidea_rencai_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL DEFAULT '0',
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `industry` smallint(1) DEFAULT NULL COMMENT '公司所属行业类别',
  `address` varchar(250) DEFAULT NULL COMMENT '公司地址',
  `contact` varchar(20) DEFAULT NULL COMMENT '联系人',
  `mobile` char(11) DEFAULT NULL COMMENT '手机',
  `scale` smallint(1) NOT NULL DEFAULT '0' COMMENT '规模',
  `type` tinyint(1) DEFAULT '0' COMMENT '企业类型',
  `description` text COMMENT '公司简介',
  `license` varchar(250) DEFAULT NULL COMMENT '公司营业执照',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否通过审核',
  `isauth` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否认证',
  `view_resume_nums` smallint(6) NOT NULL DEFAULT '0' COMMENT '已经查看简历数',
  `view_resume_total` smallint(6) NOT NULL DEFAULT '0' COMMENT '查看简历数上限',
  `dateline` int(11) NOT NULL,
  `coordinate` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '企业封面',
  `position` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐位',
  PRIMARY KEY (`id`),
  KEY `weid_from_user` (`weid`,`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_thinkidea_rencai_company
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_industry`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_industry`;
CREATE TABLE `ims_thinkidea_rencai_industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '行业名称',
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `display` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `ishot` smallint(1) DEFAULT '0' COMMENT '是否热门',
  `isshow` smallint(1) DEFAULT '1' COMMENT '是否显示',
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行业分类表';

-- ----------------------------
-- Records of ims_thinkidea_rencai_industry
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_job`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_job`;
CREATE TABLE `ims_thinkidea_rencai_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL COMMENT '企业id',
  `title` varchar(100) NOT NULL COMMENT '职位名称',
  `cid` int(11) NOT NULL COMMENT '职位类别id',
  `end_time` varchar(20) NOT NULL COMMENT '岗位截止日期',
  `payroll` smallint(6) NOT NULL COMMENT '薪资',
  `educational` tinyint(4) NOT NULL COMMENT '学历',
  `workexperience` tinyint(4) NOT NULL COMMENT '工作经验',
  `welfare` varchar(50) NOT NULL COMMENT '福利保障',
  `positiontype` tinyint(4) NOT NULL COMMENT '职位类型',
  `nums` int(11) NOT NULL COMMENT '招聘人数',
  `workaddress` varchar(50) NOT NULL COMMENT '工作地点',
  `description` varchar(255) NOT NULL COMMENT '职位信息描述',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `istop` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `ishot` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否热门',
  `expiration` int(11) NOT NULL DEFAULT '0' COMMENT '置顶过期时间',
  `dateline` int(11) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  KEY `weid_from_dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司职位信息';

-- ----------------------------
-- Records of ims_thinkidea_rencai_job
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_jobs_comments`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_jobs_comments`;
CREATE TABLE `ims_thinkidea_rencai_jobs_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` smallint(6) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL COMMENT '用户id可以是求职者也可以是招聘者',
  `jobid` int(11) DEFAULT NULL COMMENT '如果1jobid如果2resumeid',
  `content` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of ims_thinkidea_rencai_jobs_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_member`;
CREATE TABLE `ims_thinkidea_rencai_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '是1企业还是2个人',
  `status` smallint(1) NOT NULL DEFAULT '0' COMMENT '状态。是否可用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='注册用户表含企业、个人。作快速查询使用';

-- ----------------------------
-- Records of ims_thinkidea_rencai_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_person`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_person`;
CREATE TABLE `ims_thinkidea_rencai_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `from_user` varchar(100) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `headimgurl` varchar(250) DEFAULT NULL,
  `sex` smallint(1) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `age` smallint(6) DEFAULT NULL,
  `educational` tinyint(1) DEFAULT NULL COMMENT '我的学历',
  `professional` varchar(50) DEFAULT NULL COMMENT '我的专业',
  `workexperience` smallint(6) DEFAULT NULL COMMENT '工作经验',
  `workaddress` varchar(50) DEFAULT NULL COMMENT '期望工作地点',
  `assessment` varchar(255) DEFAULT NULL COMMENT '自我评价',
  `istop` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶该简历',
  `expiration` int(11) NOT NULL DEFAULT '0',
  `dateline` int(11) NOT NULL,
  `views` int(11) NOT NULL COMMENT '被浏览数',
  `updatetime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `weid_from_user` (`weid`,`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='求职个人表';

-- ----------------------------
-- Records of ims_thinkidea_rencai_person
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_person_collect`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_person_collect`;
CREATE TABLE `ims_thinkidea_rencai_person_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL COMMENT '职位id',
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏职位表';

-- ----------------------------
-- Records of ims_thinkidea_rencai_person_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_person_resume`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_person_resume`;
CREATE TABLE `ims_thinkidea_rencai_person_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `weid` int(11) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `start_time` char(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` char(11) DEFAULT NULL COMMENT '结束时间',
  `wage` int(11) DEFAULT NULL COMMENT '税前工资',
  `work_description` text COMMENT '工作描述',
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='个人简历';

-- ----------------------------
-- Records of ims_thinkidea_rencai_person_resume
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_reply`;
CREATE TABLE `ims_thinkidea_rencai_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_thinkidea_rencai_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_rencai_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_rencai_share`;
CREATE TABLE `ims_thinkidea_rencai_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_title` varchar(250) NOT NULL DEFAULT '0',
  `default_desc` varchar(250) NOT NULL DEFAULT '0',
  `default_pic` varchar(250) NOT NULL DEFAULT '0',
  `index_title` varchar(250) NOT NULL COMMENT '首页title',
  `index_desc` varchar(250) NOT NULL COMMENT '首页描述',
  `index_pic` varchar(250) NOT NULL,
  `zhao_title` varchar(250) NOT NULL COMMENT '招聘列表页title',
  `zhao_desc` varchar(250) NOT NULL COMMENT '招聘列表页描述',
  `zhao_pic` varchar(250) NOT NULL,
  `qiu_title` varchar(250) NOT NULL COMMENT '求职列表页title',
  `qiu_desc` varchar(250) NOT NULL COMMENT '求职列表页描述',
  `qiu_pic` varchar(250) NOT NULL,
  `uniacid` int(11) NOT NULL DEFAULT '0' COMMENT '统一公众号',
  `mobile_title` varchar(255) DEFAULT NULL COMMENT '手机端title',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='设置分享';

-- ----------------------------
-- Records of ims_thinkidea_rencai_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_secondmarket_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_secondmarket_category`;
CREATE TABLE `ims_thinkidea_secondmarket_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0' COMMENT '父栏目id',
  `weid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_thinkidea_secondmarket_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_secondmarket_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_secondmarket_goods`;
CREATE TABLE `ims_thinkidea_secondmarket_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `rolex` varchar(30) NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `price` int(10) NOT NULL,
  `realname` varchar(18) NOT NULL,
  `sex` int(1) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `description` longtext NOT NULL,
  `thumb1` varchar(200) DEFAULT NULL,
  `thumb2` varchar(200) DEFAULT NULL,
  `thumb3` varchar(200) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_thinkidea_secondmarket_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_thinkidea_secondmarket_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_thinkidea_secondmarket_reply`;
CREATE TABLE `ims_thinkidea_secondmarket_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `acid` int(11) NOT NULL,
  `title` text NOT NULL,
  `avatar` text NOT NULL,
  `description` text NOT NULL,
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_thinkidea_secondmarket_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_uni_account`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account
-- ----------------------------
INSERT INTO `ims_uni_account` VALUES ('1', '-1', '微赞团队', '一个朝气蓬勃的团队');

-- ----------------------------
-- Table structure for `ims_uni_account_modules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_modules
-- ----------------------------
INSERT INTO `ims_uni_account_modules` VALUES ('1', '1', 'basic', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('2', '1', 'news', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('3', '1', 'music', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('4', '1', 'userapi', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('5', '1', 'recharge', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('6', '1', 'chats', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('7', '1', 'voice', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('8', '1', 'custom', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('9', '1', 'images', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('10', '1', 'video', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('11', '1', 'zombie_fighting', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('12', '1', 'ykbl_robot', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('13', '1', 'xhw_voice', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('14', '1', 'xhw_picvote', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('15', '1', 'xfeng_community', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('16', '1', 'wl_heka', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('17', '1', 'weiyun_shuqian', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('18', '1', 'weisrc_truth', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('19', '1', 'weisrc_pano', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('20', '1', 'weisrc_invitative', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('21', '1', 'weisrc_feedback', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('22', '1', 'weisrc_dish', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('23', '1', 'weisrc_clubbigwheel', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('24', '1', 'weisrc_businesscenter', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('25', '1', 'weisrc_audio', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('26', '1', 'weilive', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('27', '1', 'we7_wxwall', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('28', '1', 'we7_shake', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('29', '1', 'we7_research', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('30', '1', 'we7_egg', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('31', '1', 'we7_car', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('32', '1', 'we7_business', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('33', '1', 'we7_album', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('34', '1', 'wdl_wifi', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('35', '1', 'wdl_shopping', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('36', '1', 'wdl_scratch', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('37', '1', 'wdl_comeon', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('38', '1', 'wdl_bigwheel', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('39', '1', 'thinkidea_secondmarket', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('40', '1', 'thinkidea_rencai', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('41', '1', 'thinkidea_phonebook', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('42', '1', 'str_takeout', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('43', '1', 'stonefish_scratch', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('44', '1', 'stonefish_redenvelope', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('45', '1', 'stonefish_planting', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('46', '1', 'stonefish_chailihe', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('47', '1', 'stonefish_bigwheel', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('48', '1', 'scene_cube', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('49', '1', 'quickspread', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('50', '1', 'qmteam_zerobuy', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('51', '1', 'qiyue_canvas', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('52', '1', 'mon_yjgz', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('53', '1', 'mon_weishare', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('54', '1', 'mon_house', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('55', '1', 'mon_fool', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('56', '1', 'mon_brand', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('57', '1', 'microb_shake', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('58', '1', 'microb_redpack', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('59', '1', 'microb_notifier', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('60', '1', 'meepo_sexy', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('61', '1', 'meepo_qmbttz', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('62', '1', 'meepo_nsign', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('63', '1', 'lxy_buscard', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('64', '1', 'lee_tlvoice', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('65', '1', 'ju_read', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('66', '1', 'jufeng_wcy', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('67', '1', 'hx_zhongchou', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('68', '1', 'hx_voice', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('69', '1', 'hx_subscribe', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('70', '1', 'hx_pictorial', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('71', '1', 'hx_lottery', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('72', '1', 'hx_express', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('73', '1', 'hx_dialect', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('74', '1', 'hx_cards', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('75', '1', 'hx_alert', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('76', '1', 'hl_zzz', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('77', '1', 'hl_tug', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('78', '1', 'hl_periarthritis', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('79', '1', 'fwei_moneyimport', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('80', '1', 'fm_photosvote', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('81', '1', 'feng_duobao', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('82', '1', 'ewei_money', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('83', '1', 'ewei_hotel', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('84', '1', 'ewei_exam', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('85', '1', 'ewei_couplet', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('86', '1', 'ewei_bonus', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('87', '1', 'eso_share', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('88', '1', 'eso_sale', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('89', '1', 'eso_runman', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('90', '1', 'czt_zwmm', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('91', '1', 'czt_voice', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('92', '1', 'bm_hospital', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('93', '1', 'amouse_house', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('94', '1', 'amouse_ecard', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('96', '1', 'wdl_hchighguess', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('97', '1', 'demo_pia3', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('98', '1', 'lxy_rtrouter', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('99', '1', 'amouse_article', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('100', '1', 'feng_auction', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('101', '1', 'weihaom_wb', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('102', '1', 'we7_survey', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('103', '1', 'ewei_vote', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('104', '1', 'hl_bbb', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('105', '1', 'lxy_marry', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('106', '1', 'we7_activity', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('107', '1', 'hl_dqq', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('108', '1', 'zam_weimails', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('109', '1', 'ewei_comeon', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('110', '1', 'jeffh_vwifi', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('111', '1', 'zam_findlx', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('112', '1', 'meepo_weixiangqin', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('113', '1', 'stonefish_luckynum', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('114', '1', 'lxy_buildpro', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('115', '1', 'top_news', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('116', '1', 'lee_coreball', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('117', '1', 'wdl_amovie', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('118', '1', 'xwz_queue', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('119', '1', 'super_securitycode', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('120', '1', 'mon_sign', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('121', '1', 'meepo_begging', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('122', '1', 'jdg_luvwhispers', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('123', '1', 'null_getvoice', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('124', '1', 'xhw_face', '1', '');

-- ----------------------------
-- Table structure for `ims_uni_account_users`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_users
-- ----------------------------
INSERT INTO `ims_uni_account_users` VALUES ('1', '1', '1', 'manager');

-- ----------------------------
-- Table structure for `ims_uni_group`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modules` varchar(10000) NOT NULL,
  `templates` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_group
-- ----------------------------
INSERT INTO `ims_uni_group` VALUES ('1', '体验套餐服务', 'a:28:{i:0;s:15:\"wdl_hchighguess\";i:1;s:9:\"demo_pia3\";i:2;s:12:\"lxy_rtrouter\";i:3;s:12:\"feng_auction\";i:4;s:10:\"weihaom_wb\";i:5;s:10:\"we7_survey\";i:6;s:9:\"ewei_vote\";i:7;s:6:\"hl_bbb\";i:8;s:9:\"lxy_marry\";i:9;s:12:\"we7_activity\";i:10;s:6:\"hl_dqq\";i:11;s:12:\"zam_weimails\";i:12;s:11:\"ewei_comeon\";i:13;s:11:\"jeffh_vwifi\";i:14;s:10:\"zam_findlx\";i:15;s:17:\"meepo_weixiangqin\";i:16;s:18:\"stonefish_luckynum\";i:17;s:12:\"lxy_buildpro\";i:18;s:8:\"top_news\";i:19;s:12:\"lee_coreball\";i:20;s:10:\"wdl_amovie\";i:21;s:9:\"xwz_queue\";i:22;s:18:\"super_securitycode\";i:23;s:8:\"mon_sign\";i:24;s:13:\"meepo_begging\";i:25;s:15:\"jdg_luvwhispers\";i:26;s:13:\"null_getvoice\";i:27;s:8:\"xhw_face\";}', 'N;');

-- ----------------------------
-- Table structure for `ims_uni_settings`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL DEFAULT '',
  `oauth` varchar(100) NOT NULL DEFAULT '',
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL DEFAULT '',
  `creditnames` varchar(500) NOT NULL DEFAULT '',
  `creditbehaviors` varchar(500) NOT NULL DEFAULT '',
  `welcome` varchar(60) NOT NULL DEFAULT '',
  `default` varchar(60) NOT NULL DEFAULT '',
  `default_message` varchar(1000) NOT NULL DEFAULT '',
  `shortcuts` varchar(5000) NOT NULL DEFAULT '',
  `payment` varchar(2000) NOT NULL DEFAULT '',
  `groupdata` varchar(100) NOT NULL,
  `stat` varchar(300) NOT NULL,
  `bootstrap` varchar(120) NOT NULL,
  `menuset` text NOT NULL,
  `default_site` int(10) unsigned DEFAULT '0',
  `sync` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_settings
-- ----------------------------
INSERT INTO `ims_uni_settings` VALUES ('1', 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}', 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', '', 'a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', 'a:3:{s:8:\"isexpire\";i:0;s:10:\"oldgroupid\";s:0:\"\";s:7:\"endtime\";i:1410364919;}', '', '', '', '1', '', '0');

-- ----------------------------
-- Table structure for `ims_uni_verifycode`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_userapi_cache`
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_userapi_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL DEFAULT '',
  `apiurl` varchar(300) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT '',
  `default_text` varchar(100) NOT NULL DEFAULT '',
  `cachetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_reply
-- ----------------------------
INSERT INTO `ims_userapi_reply` VALUES ('1', '1', '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('2', '2', '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('3', '3', '\"@查询内容(中文或英文)\"', 'translate.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('4', '4', '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('5', '5', '\"新闻\"', 'news.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('6', '6', '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', '0');

-- ----------------------------
-- Table structure for `ims_users`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `joindate` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` varchar(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `remark` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users
-- ----------------------------
INSERT INTO `ims_users` VALUES ('1', '0', 'admin', '5e87082be3b485c1982ffdecc119a4a505e943e2', 'e11a7a78', '0', '1439401419', '', '1440265507', '222.64.72.186', '');

-- ----------------------------
-- Table structure for `ims_users_group`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL DEFAULT '',
  `maxaccount` int(10) unsigned NOT NULL DEFAULT '0',
  `maxsubaccount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_group
-- ----------------------------
INSERT INTO `ims_users_group` VALUES ('1', '体验用户组', 'a:1:{i:0;i:1;}', '1', '1');
INSERT INTO `ims_users_group` VALUES ('2', '白金用户组', 'a:1:{i:0;i:1;}', '2', '2');
INSERT INTO `ims_users_group` VALUES ('3', '黄金用户组', 'a:1:{i:0;i:1;}', '3', '3');

-- ----------------------------
-- Table structure for `ims_users_invitation`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_invitation
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_users_permission`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_users_profile`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `constellation` varchar(10) NOT NULL DEFAULT '',
  `zodiac` varchar(5) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `idcard` varchar(30) NOT NULL DEFAULT '',
  `studentid` varchar(50) NOT NULL DEFAULT '',
  `grade` varchar(10) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `nationality` varchar(30) NOT NULL DEFAULT '',
  `resideprovince` varchar(30) NOT NULL DEFAULT '',
  `residecity` varchar(30) NOT NULL DEFAULT '',
  `residedist` varchar(30) NOT NULL DEFAULT '',
  `graduateschool` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(50) NOT NULL DEFAULT '',
  `education` varchar(10) NOT NULL DEFAULT '',
  `occupation` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(30) NOT NULL DEFAULT '',
  `revenue` varchar(10) NOT NULL DEFAULT '',
  `affectivestatus` varchar(30) NOT NULL DEFAULT '',
  `lookingfor` varchar(255) NOT NULL DEFAULT '',
  `bloodtype` varchar(5) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL DEFAULT '',
  `weight` varchar(5) NOT NULL DEFAULT '',
  `alipay` varchar(30) NOT NULL DEFAULT '',
  `msn` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `taobao` varchar(30) NOT NULL DEFAULT '',
  `site` varchar(30) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_profile
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_video_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_video_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_voice_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `rid_2` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_voice_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_vote_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_vote_fans`;
CREATE TABLE `ims_vote_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` varchar(50) DEFAULT '',
  `rid` int(11) DEFAULT '0',
  `votes` varchar(255) DEFAULT '',
  `votetime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_votetime` (`votetime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_vote_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `ims_vote_option`;
CREATE TABLE `ims_vote_option` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `content` text,
  `vote_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_vote_option
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_vote_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_vote_reply`;
CREATE TABLE `ims_vote_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) DEFAULT '0',
  `weid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `votetype` tinyint(4) DEFAULT '0',
  `votetotal` int(10) DEFAULT '0',
  `status` int(10) DEFAULT '0',
  `votenum` int(10) DEFAULT '0',
  `votetimes` int(10) DEFAULT '0',
  `votelimit` int(10) DEFAULT '0',
  `viewnum` int(10) DEFAULT '0',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `isimg` int(10) DEFAULT '0',
  `isshow` int(10) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `share_txt` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_vote_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_comeon_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_comeon_award`;
CREATE TABLE `ims_wdl_comeon_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `point` decimal(10,2) DEFAULT '0.00',
  `name` varchar(255) DEFAULT '',
  `num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_comeon_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_comeon_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_comeon_fans`;
CREATE TABLE `ims_wdl_comeon_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `from_user` varchar(100) DEFAULT '' COMMENT '用户ID',
  `mobile` varchar(20) DEFAULT '' COMMENT '登记信息(手机等)',
  `points` decimal(10,2) DEFAULT '0.00' COMMENT '点数',
  `helps` int(11) DEFAULT '0' COMMENT '被助力次数',
  `createtime` int(10) DEFAULT '0',
  `status` int(10) DEFAULT '0',
  `awardid` int(10) DEFAULT '0',
  `awardtime` int(10) DEFAULT '0',
  `finger` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_comeon_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_comeon_fans_help`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_comeon_fans_help`;
CREATE TABLE `ims_wdl_comeon_fans_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `from_user` varchar(100) DEFAULT '' COMMENT '助力的',
  `fansid` int(11) DEFAULT '0' COMMENT '被助力的',
  `date` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_comeon_fans_help
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_comeon_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_comeon_reply`;
CREATE TABLE `ims_wdl_comeon_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `weid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(200) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `fansnum` int(11) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0',
  `toppic` varchar(255) DEFAULT '',
  `bgcolor` varchar(255) DEFAULT '',
  `fontcolor` varchar(255) DEFAULT '',
  `btncolor` varchar(255) DEFAULT '',
  `btnfontcolor` varchar(255) DEFAULT '',
  `start` decimal(10,2) DEFAULT '0.00',
  `end` decimal(10,2) DEFAULT '0.00',
  `tips` varchar(200) DEFAULT '',
  `info_tips` varchar(200) DEFAULT '' COMMENT '例如 您已经获得 [P] [U]',
  `help_tips` varchar(200) DEFAULT '' COMMENT '例如 给TA助力',
  `join_tips` varchar(200) DEFAULT '' COMMENT '例如 我也来领取加油卡',
  `invite_tips` varchar(200) DEFAULT '' COMMENT '例如 邀请好友助力',
  `rank_tips` varchar(200) DEFAULT '' COMMENT '例如 显示排名',
  `rank_num` int(11) DEFAULT '0' COMMENT '多少名之前的排名',
  `unit` varchar(200) DEFAULT '' COMMENT '单位',
  `ticket_information` varchar(200) DEFAULT '',
  `tel_rename` varchar(200) DEFAULT '',
  `content` text,
  `copyright` varchar(200) DEFAULT '',
  `joincontent` text,
  `overcontent` text,
  `self_times` int(11) DEFAULT '0' COMMENT '活动期间可以被助力几次',
  `self_day_times` int(11) DEFAULT '0' COMMENT '每天可以被助力几次',
  `other_times` int(11) DEFAULT '0' COMMENT '活动期间可给别人助力多少次',
  `other_day_times` int(11) DEFAULT '0' COMMENT '每天可给别人助力多少次',
  `other_one_times` int(11) DEFAULT '0' COMMENT '活动期间可给相同助力多少次',
  `other_one_day_times` int(11) DEFAULT '0' COMMENT '每天可给相同用户助力多少次',
  `type` tinyint(1) DEFAULT '0' COMMENT '规则类型 0 集分 1 集分',
  `show_rank` tinyint(1) DEFAULT '0' COMMENT '显示排名 0 不显示 1 显示',
  `show_num` tinyint(1) DEFAULT '0' COMMENT '是否显示奖品数量',
  `show_helps` tinyint(1) DEFAULT '0' COMMENT '是否显示助力数',
  `awardtype` tinyint(1) DEFAULT '0' COMMENT '奖品类型 0 一次性 1 阶梯性',
  `awards` text COMMENT '奖品',
  `rules` text COMMENT '规则',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `share_txt` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_comeon_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_comeon_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_comeon_rule`;
CREATE TABLE `ims_wdl_comeon_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `point` decimal(10,2) DEFAULT '0.00',
  `start` decimal(10,2) DEFAULT '0.00',
  `end` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_comeon_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_comeon_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_comeon_sysset`;
CREATE TABLE `ims_wdl_comeon_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `appid` varchar(255) DEFAULT '',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_comeon_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_hchighguess_images`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_hchighguess_images`;
CREATE TABLE `ims_wdl_hchighguess_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `wid` int(10) unsigned NOT NULL COMMENT '词条ID',
  `rid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `image` varchar(255) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_hchighguess_images
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_hchighguess_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_hchighguess_member`;
CREATE TABLE `ims_wdl_hchighguess_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `avatar` varchar(255) DEFAULT NULL,
  `realname` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_hchighguess_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_hchighguess_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_hchighguess_reply`;
CREATE TABLE `ims_wdl_hchighguess_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `description` text,
  `sharetitle` varchar(255) DEFAULT NULL,
  `sharecover` varchar(255) DEFAULT NULL,
  `sharedescription` text,
  `gzurl` varchar(255) DEFAULT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_hchighguess_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_hchighguess_selectlog`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_hchighguess_selectlog`;
CREATE TABLE `ims_wdl_hchighguess_selectlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `wid` int(10) unsigned NOT NULL,
  `imgid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `realname` varchar(50) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `word` varchar(20) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_hchighguess_selectlog
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_hchighguess_words`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_hchighguess_words`;
CREATE TABLE `ims_wdl_hchighguess_words` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `word` varchar(20) DEFAULT NULL,
  `words` varchar(100) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_hchighguess_words
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_scratch_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_scratch_award`;
CREATE TABLE `ims_wdl_scratch_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '0' COMMENT '用户ID',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `prizetype` varchar(10) DEFAULT '' COMMENT '类型',
  `award_sn` varchar(50) DEFAULT '' COMMENT 'SN',
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_scratch_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_scratch_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_scratch_fans`;
CREATE TABLE `ims_wdl_scratch_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '' COMMENT '用户ID',
  `tel` varchar(20) DEFAULT '' COMMENT '登记信息(手机等)',
  `todaynum` int(11) DEFAULT '0',
  `totalnum` int(11) DEFAULT '0',
  `awardnum` int(11) DEFAULT '0',
  `last_time` int(10) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_scratch_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_scratch_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_scratch_reply`;
CREATE TABLE `ims_wdl_scratch_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `weid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `content` varchar(200) DEFAULT '',
  `start_picurl` varchar(200) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `ticket_information` varchar(200) DEFAULT '',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `repeat_lottery_reply` varchar(50) DEFAULT '',
  `end_theme` varchar(50) DEFAULT '',
  `end_instruction` varchar(200) DEFAULT '',
  `end_picurl` varchar(200) DEFAULT '',
  `c_type_one` varchar(20) DEFAULT '',
  `c_name_one` varchar(50) DEFAULT '',
  `c_num_one` int(11) DEFAULT '0',
  `c_draw_one` int(11) DEFAULT '0',
  `c_rate_one` double DEFAULT '0',
  `c_type_two` varchar(20) DEFAULT '',
  `c_name_two` varchar(50) DEFAULT '',
  `c_num_two` int(11) DEFAULT '0',
  `c_draw_two` int(11) DEFAULT '0',
  `c_rate_two` double DEFAULT '0',
  `c_type_three` varchar(20) DEFAULT '',
  `c_name_three` varchar(50) DEFAULT '',
  `c_num_three` int(11) DEFAULT '0',
  `c_draw_three` int(11) DEFAULT '0',
  `c_rate_three` double DEFAULT '0',
  `c_type_four` varchar(20) DEFAULT '',
  `c_name_four` varchar(50) DEFAULT '',
  `c_num_four` int(11) DEFAULT '0',
  `c_draw_four` int(11) DEFAULT '0',
  `c_rate_four` double DEFAULT '0',
  `c_type_five` varchar(20) DEFAULT '',
  `c_name_five` varchar(50) DEFAULT '',
  `c_num_five` int(11) DEFAULT '0',
  `c_draw_five` int(11) DEFAULT '0',
  `c_rate_five` double DEFAULT '0',
  `c_type_six` varchar(20) DEFAULT '',
  `c_name_six` varchar(50) DEFAULT '',
  `c_num_six` int(11) DEFAULT '0',
  `c_draw_six` int(10) DEFAULT '0',
  `c_rate_six` double DEFAULT '0',
  `total_num` int(11) DEFAULT '0' COMMENT '总获奖人数(自动加)',
  `probability` double DEFAULT '0',
  `award_times` int(11) DEFAULT '0',
  `number_times` int(11) DEFAULT '0',
  `most_num_times` int(11) DEFAULT '0',
  `sn_code` tinyint(4) DEFAULT '0',
  `sn_rename` varchar(20) DEFAULT '',
  `tel_rename` varchar(20) DEFAULT '',
  `copyright` varchar(20) DEFAULT '',
  `show_num` tinyint(2) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0',
  `fansnum` int(11) DEFAULT '0',
  `createtime` int(10) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `share_txt` text NOT NULL,
  `follow` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_scratch_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_scratch_sysset`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_scratch_sysset`;
CREATE TABLE `ims_wdl_scratch_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `appid` varchar(255) DEFAULT '',
  `appsecret` varchar(255) DEFAULT '',
  `appid_share` varchar(255) DEFAULT '',
  `appsecret_share` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_scratch_sysset
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_wifi_authentication`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_wifi_authentication`;
CREATE TABLE `ims_wdl_wifi_authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `routerid` int(11) DEFAULT NULL,
  `fromuser` varchar(100) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `result` int(11) DEFAULT NULL,
  `resultmemo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_wifi_authentication
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_wifi_moban`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_wifi_moban`;
CREATE TABLE `ims_wdl_wifi_moban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `style` varchar(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `shopname` varchar(200) NOT NULL,
  `shopaddress` varchar(200) NOT NULL,
  `shoptel` varchar(20) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `qrcode` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `bgimg` varchar(2000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_wifi_moban
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wdl_wifi_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wdl_wifi_reply`;
CREATE TABLE `ims_wdl_wifi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则id',
  `oktip` varchar(255) NOT NULL COMMENT '规则标题',
  `routerid` int(10) unsigned NOT NULL COMMENT '节点id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '开关状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wdl_wifi_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_album`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_album`;
CREATE TABLE `ims_we7car_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `content` varchar(1000) NOT NULL DEFAULT '',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `isview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_album
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_album_photo`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_album_photo`;
CREATE TABLE `ims_we7car_album_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `albumid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `ispreview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid` (`weid`),
  KEY `ims_albumid_order` (`albumid`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_album_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_brand`;
CREATE TABLE `ims_we7car_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `listorder` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `officialweb` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `createtime` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_weid_order` (`weid`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_care`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_care`;
CREATE TABLE `ims_we7car_care` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `brand_id` int(10) unsigned NOT NULL,
  `brand_cn` varchar(50) NOT NULL,
  `series_id` int(10) unsigned NOT NULL,
  `series_cn` varchar(50) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `type_cn` varchar(50) NOT NULL,
  `car_note` varchar(50) NOT NULL,
  `car_no` varchar(50) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_mobile` varchar(15) NOT NULL,
  `car_startTime` int(10) unsigned NOT NULL,
  `car_photo` varchar(100) NOT NULL,
  `car_insurance_lastDate` int(10) unsigned NOT NULL,
  `car_insurance_lastCost` mediumint(10) unsigned NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `car_care_lastDate` int(10) unsigned NOT NULL,
  `car_care_lastCost` mediumint(10) unsigned NOT NULL,
  `createtime` int(10) NOT NULL,
  `isshow` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid` (`weid`),
  KEY `ims_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_care
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_message_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_message_list`;
CREATE TABLE `ims_we7car_message_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  `fid` int(11) DEFAULT '0',
  `isshow` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid` (`weid`),
  KEY `ims_fid_time` (`fid`,`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_message_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_message_set`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_message_set`;
CREATE TABLE `ims_we7car_message_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `isshow` tinyint(1) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_message_set
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_news`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_news`;
CREATE TABLE `ims_we7car_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `ishot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `template` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '来源',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ims_category_id` (`category_id`),
  KEY `ims_weid` (`weid`),
  KEY `ims_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_news
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_news_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_news_category`;
CREATE TABLE `ims_we7car_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `title` varchar(50) NOT NULL COMMENT '分类名称',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '分类描述',
  `thumb` varchar(60) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid_title` (`weid`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_news_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_order_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_order_data`;
CREATE TABLE `ims_we7car_order_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `srid` int(11) NOT NULL,
  `sfid` int(11) NOT NULL,
  `data` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ims_sid` (`sid`),
  KEY `ims_srid` (`srid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_order_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_order_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_order_fields`;
CREATE TABLE `ims_we7car_order_fields` (
  `fid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `value` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `ims_sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_order_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_order_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_order_list`;
CREATE TABLE `ims_we7car_order_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL,
  `yytype` tinyint(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `brand` int(10) unsigned NOT NULL,
  `brand_cn` varchar(15) NOT NULL,
  `serie` int(10) unsigned NOT NULL,
  `serie_cn` varchar(15) NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `type_cn` varchar(15) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `createtime` int(10) NOT NULL,
  `note` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_sid` (`sid`),
  KEY `ims_createtime` (`createtime`),
  KEY `ims_dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_order_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_order_set`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_order_set`;
CREATE TABLE `ims_we7car_order_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `yytype` tinyint(2) NOT NULL,
  `pertotal` tinyint(3) unsigned NOT NULL,
  `description` varchar(500) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `location_x` float NOT NULL,
  `location_y` float NOT NULL,
  `topbanner` varchar(150) DEFAULT NULL,
  `isshow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `note` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid` (`weid`),
  KEY `ims_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_order_set
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_series`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_series`;
CREATE TABLE `ims_we7car_series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `listorder` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(20) NOT NULL,
  `thumb` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `createtime` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid_order` (`weid`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_series
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_services`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_services`;
CREATE TABLE `ims_we7car_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `listorder` int(11) NOT NULL,
  `kefuname` varchar(50) NOT NULL,
  `headthumb` varchar(200) NOT NULL,
  `kefutel` varchar(20) NOT NULL,
  `pre_sales` tinyint(2) NOT NULL,
  `aft_sales` tinyint(2) NOT NULL,
  `description` text NOT NULL,
  `createtime` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_services
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_set`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_set`;
CREATE TABLE `ims_we7car_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `address` varchar(60) NOT NULL,
  `opentime` varchar(60) NOT NULL,
  `pre_consult` varchar(60) NOT NULL,
  `aft_consult` varchar(60) NOT NULL,
  `thumbArr` varchar(500) NOT NULL,
  `weicar_logo` varchar(200) NOT NULL,
  `shop_logo` varchar(200) NOT NULL,
  `guanhuai_thumb` varchar(200) NOT NULL,
  `typethumb` varchar(70) NOT NULL,
  `yuyue1thumb` varchar(70) NOT NULL,
  `yuyue2thumb` varchar(70) NOT NULL,
  `kefuthumb` varchar(70) NOT NULL,
  `messagethumb` varchar(70) NOT NULL,
  `carethumb` varchar(70) NOT NULL,
  `status` int(1) NOT NULL,
  `isshow` tinyint(1) NOT NULL,
  `tools` varchar(50) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_set
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_we7car_type`
-- ----------------------------
DROP TABLE IF EXISTS `ims_we7car_type`;
CREATE TABLE `ims_we7car_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listorder` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `weid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pyear` varchar(10) NOT NULL,
  `price1` varchar(50) NOT NULL,
  `price2` varchar(50) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `thumbArr` varchar(500) NOT NULL,
  `output` varchar(10) NOT NULL,
  `gearnum` varchar(10) NOT NULL,
  `gear_box` varchar(30) NOT NULL,
  `xiangceid` int(11) NOT NULL,
  `createtime` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` varchar(512) NOT NULL DEFAULT '' COMMENT '品牌描述',
  PRIMARY KEY (`id`),
  KEY `ims_weid_order` (`weid`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_we7car_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weihaom_wb_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weihaom_wb_reply`;
CREATE TABLE `ims_weihaom_wb_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `description` text,
  `title1` varchar(255) DEFAULT NULL,
  `description1` text,
  `fimg` varchar(255) DEFAULT NULL,
  `bimg` varchar(255) DEFAULT NULL,
  `bgmusic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weihaom_wb_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weihaom_wb_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weihaom_wb_user`;
CREATE TABLE `ims_weihaom_wb_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weihaom_wb_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_activity`;
CREATE TABLE `ims_weilive_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店家id',
  `title` varchar(100) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '' COMMENT '缩略图',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `kill_price` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) NOT NULL DEFAULT '-1' COMMENT '券数量',
  `numed` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人限领数量',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '消费获得积分',
  `credit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '领取消费积分',
  `catch` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '领取数量',
  `used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用数量',
  `activity_detail` text,
  `description` text,
  `prompt` text,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(5) unsigned NOT NULL DEFAULT '1' COMMENT '券类型',
  `ischeck` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `isopen` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `cost_time` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0为优惠卷，1为活动',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_category`;
CREATE TABLE `ims_weilive_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `cityid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `logo` varchar(200) DEFAULT '' COMMENT '商家logo',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isfirst` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '首页推荐',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_city`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_city`;
CREATE TABLE `ims_weilive_city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '城市名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_city
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_code`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_code`;
CREATE TABLE `ims_weilive_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `actid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `code` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1使用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_code
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_comment`;
CREATE TABLE `ims_weilive_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店家id',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `comment` text,
  `isopen` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_complain`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_complain`;
CREATE TABLE `ims_weilive_complain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `actid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '活动ID',
  `acttitle` varchar(50) NOT NULL DEFAULT '0' COMMENT '活动名称',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店家ID',
  `storetitle` varchar(50) NOT NULL DEFAULT '0' COMMENT '店家名称',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `content` text,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_complain
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_coupon`;
CREATE TABLE `ims_weilive_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `from_user` varchar(255) NOT NULL DEFAULT '',
  `actid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `nums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券数量',
  `isuse` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1已使用',
  `usetime` int(10) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0为优惠券，1为秒杀活动',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_credit`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_credit`;
CREATE TABLE `ims_weilive_credit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属店家',
  `from_user` varchar(255) NOT NULL DEFAULT '',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `credit` int(5) NOT NULL DEFAULT '0' COMMENT '积分',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '获得积分类型，0为签到获得，1为消费获得',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_credit
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_prize`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_prize`;
CREATE TABLE `ims_weilive_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `inkind` int(10) unsigned NOT NULL COMMENT '1为卡密，2为现场，3为邮寄',
  `activation_code` varchar(2000) NOT NULL COMMENT '激活码',
  `activation_url` varchar(200) NOT NULL COMMENT '激活地址',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_prizecode`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_prizecode`;
CREATE TABLE `ims_weilive_prizecode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(30) NOT NULL,
  `createtime` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `status` int(3) NOT NULL COMMENT '1为已发,0为未发',
  `code` varchar(2000) NOT NULL COMMENT '激活码',
  `url` varchar(200) NOT NULL COMMENT '激活地址',
  `inkind` int(10) unsigned NOT NULL COMMENT '1为卡密，2为现场，3为邮寄',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_prizecode
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_setting`;
CREATE TABLE `ims_weilive_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '所属帐号',
  `gzurl` varchar(255) NOT NULL,
  `helpurl` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) NOT NULL DEFAULT '',
  `description` text,
  `distance` decimal(10,2) unsigned NOT NULL DEFAULT '5.00' COMMENT '附近距离',
  `pagesize` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '每页显示数据量',
  `mobile` varchar(11) DEFAULT '' COMMENT '联系电话',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_shophost`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_shophost`;
CREATE TABLE `ims_weilive_shophost` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `from_user` varchar(255) NOT NULL DEFAULT '',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `pwd` varchar(20) NOT NULL DEFAULT '' COMMENT '登录密码',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_shophost
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_slide`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_slide`;
CREATE TABLE `ims_weilive_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  `slide` varchar(200) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weilive_stores`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weilive_stores`;
CREATE TABLE `ims_weilive_stores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL DEFAULT '0' COMMENT '公众号id',
  `hostid` int(10) NOT NULL DEFAULT '0' COMMENT '商家id',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类别id',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类别id',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `pwd` varchar(20) NOT NULL DEFAULT '' COMMENT '商家消费密码',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '商家logo',
  `permit` varchar(200) NOT NULL DEFAULT '' COMMENT '营业执照',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '级别',
  `place` varchar(200) NOT NULL DEFAULT '',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `hours` varchar(200) NOT NULL DEFAULT '' COMMENT '营业时间',
  `business_time` varchar(20) NOT NULL DEFAULT '8:00~20:00' COMMENT '营业时间',
  `location_p` varchar(100) NOT NULL DEFAULT '' COMMENT '省',
  `location_c` varchar(100) NOT NULL DEFAULT '' COMMENT '市',
  `location_a` varchar(100) NOT NULL DEFAULT '' COMMENT '区',
  `isfirst` tinyint(1) NOT NULL DEFAULT '0' COMMENT '首页推荐',
  `from_user` varchar(255) NOT NULL DEFAULT '',
  `mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '加入方式 0:后台 1:申请入驻',
  `checked` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在手机端显示',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weilive_stores
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weishare`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weishare`;
CREATE TABLE `ims_weishare` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned DEFAULT NULL,
  `title` varchar(100) NOT NULL COMMENT '活动标题',
  `thumb` varchar(100) NOT NULL COMMENT '活动图片',
  `description` varchar(100) NOT NULL COMMENT '活动描述',
  `image` varchar(100) NOT NULL COMMENT '背景图片',
  `max` int(11) NOT NULL COMMENT '得分极限',
  `start` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '分值',
  `step` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '助力积分',
  `steprandom` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '助力随机积分',
  `steptype` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '助力随机积分方式',
  `rule` varchar(2000) NOT NULL COMMENT '规则',
  `url` varchar(250) NOT NULL COMMENT '引导关注素材',
  `count` int(11) NOT NULL COMMENT '领卡数量限制',
  `background` varchar(100) NOT NULL COMMENT '背景颜色',
  `tip` varchar(100) NOT NULL COMMENT '提示语',
  `unit` varchar(100) NOT NULL COMMENT '单位',
  `cardname` varchar(100) NOT NULL COMMENT '卡片名称',
  `helplimit` int(11) NOT NULL COMMENT '每天助力限制次数',
  `totallimit` int(11) NOT NULL COMMENT '总得助力次数',
  `limittype` int(1) NOT NULL COMMENT '限制类型',
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  `endtime` int(11) unsigned NOT NULL COMMENT '日期',
  `shareIcon` varchar(200) NOT NULL COMMENT '分享图标',
  `shareTitle` varchar(200) NOT NULL,
  `shareContent` varchar(200) NOT NULL,
  `copyright` varchar(100) NOT NULL COMMENT '版权',
  `showu` varchar(1) NOT NULL DEFAULT '0',
  `sortcount` varchar(100) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weishare
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weishare_firend`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weishare_firend`;
CREATE TABLE `ims_weishare_firend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '分享用户的id',
  `sid` int(10) NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weishare_firend
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weishare_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weishare_reply`;
CREATE TABLE `ims_weishare_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `sid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `new_title` varchar(100) NOT NULL COMMENT '图文标题',
  `new_pic` varchar(100) NOT NULL COMMENT '图文图片',
  `new_desc` varchar(100) NOT NULL COMMENT '图文描述',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weishare_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weishare_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weishare_setting`;
CREATE TABLE `ims_weishare_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned DEFAULT NULL,
  `appid` varchar(200) NOT NULL COMMENT 'appid',
  `secret` varchar(200) NOT NULL COMMENT 'secret',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weishare_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weishare_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weishare_user`;
CREATE TABLE `ims_weishare_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) NOT NULL DEFAULT '0',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `tel` varchar(50) NOT NULL,
  `income` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  `helpcount` int(11) DEFAULT '0' COMMENT '助力次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weishare_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_audio_music`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_audio_music`;
CREATE TABLE `ims_weisrc_audio_music` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `url` varchar(500) NOT NULL COMMENT '歌曲链接',
  `title` char(255) NOT NULL COMMENT '歌曲名称',
  `cover` varchar(500) NOT NULL COMMENT '唱片封面',
  `singer` char(255) NOT NULL COMMENT '歌手',
  `intro` char(255) NOT NULL COMMENT '解说',
  `collect` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `displayorder` int(11) DEFAULT '0',
  `dateline` int(11) DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_audio_music
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_audio_music_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_audio_music_user`;
CREATE TABLE `ims_weisrc_audio_music_user` (
  `did` mediumint(8) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `openid` char(255) NOT NULL,
  `mid` mediumint(8) NOT NULL,
  `title` char(255) NOT NULL,
  `cover` char(255) NOT NULL,
  `singer` char(255) NOT NULL,
  `intro` char(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_audio_music_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_audio_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_audio_setting`;
CREATE TABLE `ims_weisrc_audio_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) DEFAULT '' COMMENT '版权名称',
  `bg` varchar(500) DEFAULT '' COMMENT '背景图',
  `bg_rand` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '随机背景',
  `bg_setting` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '随机背景',
  `bg_url` varchar(500) DEFAULT '' COMMENT '自定义背景图',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_audio_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_businesscenter_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_businesscenter_category`;
CREATE TABLE `ims_weisrc_businesscenter_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `cityid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `logo` varchar(500) DEFAULT '' COMMENT '商家logo',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isfirst` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '首页推荐',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_businesscenter_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_businesscenter_city`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_businesscenter_city`;
CREATE TABLE `ims_weisrc_businesscenter_city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '城市名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_businesscenter_city
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_businesscenter_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_businesscenter_feedback`;
CREATE TABLE `ims_weisrc_businesscenter_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL COMMENT '公众号ID',
  `storeid` int(11) NOT NULL COMMENT '商家ID',
  `parentid` int(11) DEFAULT '0' COMMENT '父级ID',
  `from_user` varchar(100) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `content` varchar(600) DEFAULT NULL,
  `top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `dateline` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_businesscenter_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_businesscenter_news`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_businesscenter_news`;
CREATE TABLE `ims_weisrc_businesscenter_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商家id',
  `title` varchar(200) NOT NULL DEFAULT '',
  `thumb` varchar(500) NOT NULL DEFAULT '',
  `summary` varchar(1000) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `address` varchar(200) NOT NULL DEFAULT '',
  `start_time` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `url` varchar(200) NOT NULL DEFAULT '',
  `isfirst` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否在首页显示',
  `top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶',
  `mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '加入方式 0:后台 1:申请',
  `checked` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_businesscenter_news
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_businesscenter_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_businesscenter_setting`;
CREATE TABLE `ims_weisrc_businesscenter_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '所属帐号',
  `title` varchar(100) NOT NULL DEFAULT '',
  `bg` varchar(500) NOT NULL DEFAULT '',
  `announcement` text NOT NULL COMMENT '公告',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '地址',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `place` varchar(200) NOT NULL DEFAULT '',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `location_p` varchar(100) NOT NULL DEFAULT '' COMMENT '省',
  `location_c` varchar(100) NOT NULL DEFAULT '' COMMENT '市',
  `location_a` varchar(100) NOT NULL DEFAULT '' COMMENT '区',
  `pagesize` int(10) unsigned NOT NULL DEFAULT '5' COMMENT '每页显示数据量',
  `topcolor` varchar(20) NOT NULL DEFAULT '' COMMENT '顶部字体颜色',
  `topbgcolor` varchar(20) NOT NULL DEFAULT '' COMMENT '顶部字体颜色',
  `announcebordercolor` varchar(20) NOT NULL DEFAULT '' COMMENT '公告边框颜色',
  `announcebgcolor` varchar(20) NOT NULL DEFAULT '' COMMENT '公告背景颜色',
  `announcecolor` varchar(20) NOT NULL DEFAULT '' COMMENT '公告字体颜色',
  `storestitlecolor` varchar(20) NOT NULL DEFAULT '' COMMENT '商家名称颜色',
  `storesstatuscolor` varchar(20) NOT NULL DEFAULT '' COMMENT '商家状态颜色',
  `showcity` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示城市选择',
  `settled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启入驻',
  `feedback_show_enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `feedback_check_enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '留言是否需要审核',
  `scroll_announce` varchar(500) NOT NULL DEFAULT '' COMMENT '公告',
  `scroll_announce_speed` tinyint(2) unsigned NOT NULL DEFAULT '6' COMMENT '公告滚动速度',
  `scroll_announce_link` varchar(500) NOT NULL DEFAULT '' COMMENT '公告链接',
  `scroll_announce_enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示顶部公告',
  `copyright` varchar(500) NOT NULL DEFAULT '' COMMENT '底部版权',
  `copyright_link` varchar(500) NOT NULL DEFAULT '' COMMENT '底部版权链接',
  `menuname1` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单1名称',
  `menulink1` varchar(500) NOT NULL DEFAULT '' COMMENT '菜单1链接',
  `menuname2` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单2名称',
  `menulink2` varchar(500) NOT NULL DEFAULT '' COMMENT '菜单2链接',
  `menuname3` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单3名称',
  `menulink3` varchar(500) NOT NULL DEFAULT '' COMMENT '菜单3链接',
  `appid` varchar(300) NOT NULL DEFAULT '' COMMENT 'appid',
  `secret` varchar(300) NOT NULL DEFAULT '' COMMENT 'secret',
  `dateline` int(10) unsigned NOT NULL,
  `share_title` varchar(100) NOT NULL DEFAULT '',
  `share_image` varchar(500) NOT NULL DEFAULT '',
  `share_desc` varchar(200) NOT NULL DEFAULT '',
  `share_cancel` varchar(200) NOT NULL DEFAULT '',
  `share_url` varchar(200) NOT NULL DEFAULT '',
  `share_num` int(10) NOT NULL DEFAULT '0',
  `follow_url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_businesscenter_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_businesscenter_slide`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_businesscenter_slide`;
CREATE TABLE `ims_weisrc_businesscenter_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `cityid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `isfirst` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否在首页显示',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_businesscenter_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_businesscenter_stores`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_businesscenter_stores`;
CREATE TABLE `ims_weisrc_businesscenter_stores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL DEFAULT '0' COMMENT '公众号id',
  `cityid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类别id',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类别id',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '微站网址',
  `site_name` varchar(100) NOT NULL DEFAULT '' COMMENT '微站按钮名称',
  `site_url` varchar(200) NOT NULL DEFAULT '' COMMENT '微站网址',
  `shop_name` varchar(100) NOT NULL DEFAULT '' COMMENT '折扣按钮名称',
  `shop_url` varchar(400) NOT NULL DEFAULT '' COMMENT '折扣链接',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '商家logo',
  `qrcode` varchar(200) NOT NULL DEFAULT '' COMMENT '商家logo',
  `qrcode_url` varchar(400) NOT NULL DEFAULT '' COMMENT '素材链接',
  `qrcode_description` varchar(200) NOT NULL DEFAULT '' COMMENT '二维码文字提示',
  `services` varchar(200) NOT NULL DEFAULT '' COMMENT '服务范围',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '联系人',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `discounts` varchar(200) NOT NULL COMMENT '会员折扣',
  `consume` varchar(20) NOT NULL COMMENT '人均消费',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '级别',
  `place` varchar(200) NOT NULL DEFAULT '',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `hours` varchar(200) NOT NULL DEFAULT '' COMMENT '营业时间',
  `starttime` varchar(10) NOT NULL DEFAULT '09:00' COMMENT '开始时间',
  `endtime` varchar(10) NOT NULL DEFAULT '18:00' COMMENT '结束时间',
  `location_p` varchar(100) NOT NULL DEFAULT '' COMMENT '省',
  `location_c` varchar(100) NOT NULL DEFAULT '' COMMENT '市',
  `location_a` varchar(100) NOT NULL DEFAULT '' COMMENT '区',
  `isfirst` tinyint(1) NOT NULL DEFAULT '0' COMMENT '首页推荐',
  `top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐商家，相当于置顶',
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `businesslicense` varchar(200) NOT NULL DEFAULT '' COMMENT '营业执照',
  `mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '加入方式 0:后台 1:申请入驻',
  `checked` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在手机端显示',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL DEFAULT '0',
  `time_enable1` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用营业时间1',
  `time_enable2` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用营业时间2',
  `time_enable3` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用营业时间3',
  `starttime2` varchar(10) NOT NULL DEFAULT '09:00' COMMENT '开始时间',
  `endtime2` varchar(10) NOT NULL DEFAULT '18:00' COMMENT '结束时间',
  `starttime3` varchar(10) NOT NULL DEFAULT '09:00' COMMENT '开始时间',
  `endtime3` varchar(10) NOT NULL DEFAULT '18:00' COMMENT '结束时间',
  `share_title` varchar(100) NOT NULL DEFAULT '',
  `share_desc` varchar(200) NOT NULL DEFAULT '',
  `share_cancel` varchar(200) NOT NULL DEFAULT '',
  `share_url` varchar(200) NOT NULL DEFAULT '',
  `share_num` int(10) NOT NULL DEFAULT '0',
  `follow_url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_businesscenter_stores
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_area`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_area`;
CREATE TABLE `ims_weisrc_dish_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '区域名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_area
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_blacklist`;
CREATE TABLE `ims_weisrc_dish_blacklist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(100) DEFAULT '' COMMENT '用户ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`from_user`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_cart`;
CREATE TABLE `ims_weisrc_dish_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `price` varchar(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_category`;
CREATE TABLE `ims_weisrc_dish_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_email_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_email_setting`;
CREATE TABLE `ims_weisrc_dish_email_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `email_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启邮箱提醒',
  `email_host` varchar(50) DEFAULT '' COMMENT '邮箱服务器',
  `email_send` varchar(20) DEFAULT '' COMMENT '商户发送邮件邮箱',
  `email_pwd` varchar(20) DEFAULT '' COMMENT '邮箱密码',
  `email_user` varchar(100) DEFAULT '' COMMENT '发信人名称',
  `email` varchar(255) DEFAULT '' COMMENT '商户接收邮件邮箱',
  `email_business_tpl` varchar(200) DEFAULT '' COMMENT '商户接收内容模板',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_email_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_goods`;
CREATE TABLE `ims_weisrc_dish_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `unitname` varchar(5) NOT NULL DEFAULT '份',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `taste` varchar(1000) NOT NULL DEFAULT '' COMMENT '口味',
  `isspecial` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `marketprice` varchar(10) NOT NULL DEFAULT '',
  `productprice` varchar(10) NOT NULL DEFAULT '',
  `credit` int(10) NOT NULL DEFAULT '0',
  `subcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被点次数',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_intelligent`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_intelligent`;
CREATE TABLE `ims_weisrc_dish_intelligent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` int(10) NOT NULL DEFAULT '0' COMMENT '适用人数',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '菜品',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_intelligent
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_mealtime`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_mealtime`;
CREATE TABLE `ims_weisrc_dish_mealtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `begintime` varchar(50) DEFAULT '',
  `endtime` varchar(50) DEFAULT '',
  `storeid` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_mealtime
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_nave`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_nave`;
CREATE TABLE `ims_weisrc_dish_nave` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `type` int(10) NOT NULL DEFAULT '-1' COMMENT '链接类型 -1:自定义 1:首页2:门店3:菜单列表4:我的菜单',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '导航名称',
  `link` varchar(200) NOT NULL DEFAULT '' COMMENT '导航链接',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_nave
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_order`;
CREATE TABLE `ims_weisrc_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号id',
  `storeid` int(10) unsigned NOT NULL COMMENT '门店id',
  `from_user` varchar(50) NOT NULL,
  `ordersn` varchar(30) NOT NULL COMMENT '订单号',
  `totalnum` tinyint(4) DEFAULT NULL COMMENT '总数量',
  `totalprice` varchar(10) NOT NULL COMMENT '总金额',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为确认付款方式，2为成功',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1余额，2在线，3到付',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `address` varchar(250) NOT NULL DEFAULT '' COMMENT '地址',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `reply` varchar(1000) NOT NULL DEFAULT '' COMMENT '回复',
  `meal_time` varchar(50) NOT NULL DEFAULT '' COMMENT '就餐时间',
  `counts` tinyint(4) DEFAULT '0' COMMENT '预订人数',
  `seat_type` tinyint(1) DEFAULT '0' COMMENT '位置类型1大厅2包间',
  `carports` tinyint(3) DEFAULT '0' COMMENT '车位',
  `dining_mode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用餐类型 1:到店 2:外卖',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `tables` varchar(10) NOT NULL DEFAULT '' COMMENT '桌号',
  `print_sta` tinyint(1) DEFAULT '-1' COMMENT '打印状态',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1拒绝，0未处理，1已处理',
  `isfinish` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `isemail` tinyint(1) NOT NULL DEFAULT '0',
  `issms` tinyint(1) NOT NULL DEFAULT '0',
  `istpl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_order_goods`;
CREATE TABLE `ims_weisrc_dish_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `price` varchar(10) NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_print_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_print_order`;
CREATE TABLE `ims_weisrc_dish_print_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `print_usr` varchar(50) DEFAULT '',
  `print_status` tinyint(1) DEFAULT '-1',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_print_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_print_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_print_setting`;
CREATE TABLE `ims_weisrc_dish_print_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `title` varchar(200) DEFAULT '',
  `print_status` tinyint(1) NOT NULL,
  `print_type` tinyint(1) NOT NULL,
  `print_usr` varchar(50) DEFAULT '',
  `print_nums` tinyint(3) DEFAULT '1',
  `print_top` varchar(40) DEFAULT '',
  `print_bottom` varchar(40) DEFAULT '',
  `dateline` int(10) DEFAULT '0',
  `qrcode_status` tinyint(1) NOT NULL DEFAULT '0',
  `qrcode_url` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_print_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_reply`;
CREATE TABLE `ims_weisrc_dish_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '入口类型',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入口门店',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加日期',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_setting`;
CREATE TABLE `ims_weisrc_dish_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) DEFAULT '' COMMENT '网站名称',
  `thumb` varchar(200) DEFAULT '' COMMENT '背景图',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `entrance_type` tinyint(1) unsigned NOT NULL COMMENT '入口类型1:首页2门店列表3菜品列表4我的菜单',
  `entrance_storeid` tinyint(1) unsigned NOT NULL COMMENT '入口门店id',
  `order_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订餐开启',
  `dining_mode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用餐类型 1:到店 2:外卖',
  `dateline` int(10) DEFAULT '0',
  `istplnotice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否模版通知',
  `tplneworder` varchar(200) DEFAULT '' COMMENT '模板id',
  `tpluser` text COMMENT '通知用户',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_sms_checkcode`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_sms_checkcode`;
CREATE TABLE `ims_weisrc_dish_sms_checkcode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(100) DEFAULT '' COMMENT '用户ID',
  `mobile` varchar(30) DEFAULT '' COMMENT '手机',
  `checkcode` varchar(100) DEFAULT '' COMMENT '验证码',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态 0未使用1已使用',
  `dateline` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_sms_checkcode
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_sms_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_sms_setting`;
CREATE TABLE `ims_weisrc_dish_sms_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `sms_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启短信提醒',
  `sms_verify_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启短信验证提醒',
  `sms_username` varchar(20) DEFAULT '' COMMENT '平台帐号',
  `sms_pwd` varchar(20) DEFAULT '' COMMENT '平台密码',
  `sms_mobile` varchar(20) DEFAULT '' COMMENT '商户接收短信手机',
  `sms_verify_tpl` varchar(120) DEFAULT '' COMMENT '验证短信模板',
  `sms_business_tpl` varchar(120) DEFAULT '' COMMENT '商户短信模板',
  `sms_user_tpl` varchar(120) DEFAULT '' COMMENT '用户短信模板',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_sms_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_stores`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_stores`;
CREATE TABLE `ims_weisrc_dish_stores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL DEFAULT '0' COMMENT '公众号id',
  `areaid` int(10) NOT NULL DEFAULT '0' COMMENT '区域id',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '商家logo',
  `info` varchar(1000) NOT NULL DEFAULT '' COMMENT '简短描述',
  `content` text NOT NULL COMMENT '简介',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `location_p` varchar(100) NOT NULL DEFAULT '' COMMENT '省',
  `location_c` varchar(100) NOT NULL DEFAULT '' COMMENT '市',
  `location_a` varchar(100) NOT NULL DEFAULT '' COMMENT '区',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `place` varchar(200) NOT NULL DEFAULT '',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `password` varchar(20) NOT NULL DEFAULT '' COMMENT '登录密码',
  `hours` varchar(200) NOT NULL DEFAULT '' COMMENT '营业时间',
  `recharging_password` varchar(20) NOT NULL DEFAULT '' COMMENT '充值密码',
  `thumb_url` varchar(1000) DEFAULT NULL,
  `enable_wifi` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有wifi',
  `enable_card` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否能刷卡',
  `enable_room` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有包厢',
  `enable_park` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有停车',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在手机端显示',
  `is_meal` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否店内点餐',
  `is_delivery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否外卖订餐',
  `sendingprice` varchar(10) NOT NULL DEFAULT '' COMMENT '起送价格',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `is_sms` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL DEFAULT '0',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_stores
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_dish_store_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_dish_store_setting`;
CREATE TABLE `ims_weisrc_dish_store_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `order_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订餐开启',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_dish_store_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_feedback_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_feedback_feedback`;
CREATE TABLE `ims_weisrc_feedback_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `from_user` varchar(100) DEFAULT '',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0为第一级',
  `nickname` varchar(100) DEFAULT '',
  `username` varchar(100) DEFAULT '',
  `headimgurl` varchar(500) DEFAULT '',
  `content` varchar(200) DEFAULT '' COMMENT '回复内容',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_feedback_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_feedback_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_feedback_setting`;
CREATE TABLE `ims_weisrc_feedback_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `title` varchar(100) DEFAULT '' COMMENT '网站名称',
  `pagesize` int(10) unsigned DEFAULT '10' COMMENT '每页显示数量 默认为10',
  `topimgurl` varchar(500) DEFAULT '' COMMENT '顶部图片',
  `pagecolor` varchar(50) DEFAULT '' COMMENT '页面色调',
  `ischeck` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否需要审核',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_feedback_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_invitative_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_invitative_activity`;
CREATE TABLE `ims_weisrc_invitative_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned DEFAULT '0',
  `weid` int(10) unsigned DEFAULT '0',
  `reply_title` varchar(100) DEFAULT '图文标题',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `thumb` varchar(500) NOT NULL DEFAULT '' COMMENT '封面',
  `title` varchar(100) DEFAULT '' COMMENT '活动标题',
  `content` text NOT NULL COMMENT '活动介绍',
  `organizers` varchar(100) DEFAULT '' COMMENT '举办者',
  `bg` varchar(500) DEFAULT '' COMMENT '背景',
  `cardtype` tinyint(1) DEFAULT '1' COMMENT '卡片类型',
  `cardbg` varchar(500) DEFAULT '' COMMENT '卡片背景',
  `thumbs` varchar(1000) DEFAULT '' COMMENT '活动图片',
  `musicurl` varchar(500) DEFAULT '' COMMENT '音乐链接',
  `tel` varchar(20) NOT NULL COMMENT '联系电话',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `place` varchar(200) NOT NULL DEFAULT '',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `displayorder` int(11) DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_invitative_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_invitative_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_invitative_reply`;
CREATE TABLE `ims_weisrc_invitative_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `activityid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_invitative_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_invitative_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_invitative_user`;
CREATE TABLE `ims_weisrc_invitative_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `from_user` varchar(100) DEFAULT '',
  `activityid` int(10) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(100) DEFAULT '',
  `headimgurl` varchar(500) DEFAULT '',
  `username` varchar(100) DEFAULT '' COMMENT '用户名称',
  `tel` varchar(50) DEFAULT '' COMMENT '联系电话',
  `company` varchar(200) DEFAULT '' COMMENT '公司',
  `position` varchar(200) DEFAULT '' COMMENT '职位',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_invitative_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_pano_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_pano_reply`;
CREATE TABLE `ims_weisrc_pano_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL DEFAULT '0',
  `weid` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(200) NOT NULL,
  `picture1` varchar(200) NOT NULL,
  `picture2` varchar(200) NOT NULL,
  `picture3` varchar(200) NOT NULL,
  `picture4` varchar(200) NOT NULL,
  `picture5` varchar(200) NOT NULL,
  `picture6` varchar(200) NOT NULL,
  `music` varchar(400) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_pano_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_truth_question`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_truth_question`;
CREATE TABLE `ims_weisrc_truth_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `from_user` varchar(100) DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_truth_question
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_truth_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_truth_reply`;
CREATE TABLE `ims_weisrc_truth_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `qid` int(10) unsigned DEFAULT '0',
  `from_user` varchar(100) DEFAULT '',
  `parentid` int(10) unsigned DEFAULT '0',
  `parentopenid` varchar(100) DEFAULT '',
  `nickname` varchar(100) DEFAULT '',
  `headimgurl` varchar(500) DEFAULT '',
  `content` varchar(200) DEFAULT '' COMMENT '回复内容',
  `sharecount` int(10) unsigned DEFAULT '0' COMMENT '分享次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_truth_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_truth_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_truth_setting`;
CREATE TABLE `ims_weisrc_truth_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `title` varchar(100) DEFAULT '' COMMENT '网站名称',
  `share_title` varchar(100) NOT NULL DEFAULT '',
  `share_image` varchar(500) NOT NULL DEFAULT '',
  `share_desc` varchar(200) NOT NULL DEFAULT '',
  `share_cancel` varchar(200) NOT NULL DEFAULT '',
  `share_url` varchar(200) NOT NULL DEFAULT '',
  `share_num` int(10) NOT NULL DEFAULT '0',
  `follow_url` varchar(200) NOT NULL DEFAULT '',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_truth_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weisrc_truth_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weisrc_truth_share`;
CREATE TABLE `ims_weisrc_truth_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `qid` int(10) unsigned DEFAULT '0',
  `from_user` varchar(100) DEFAULT '',
  `parentid` int(10) unsigned DEFAULT '0',
  `parentopenid` varchar(100) DEFAULT '',
  `nickname` varchar(100) DEFAULT '',
  `headimgurl` varchar(500) DEFAULT '',
  `content` varchar(200) DEFAULT '' COMMENT '回复内容',
  `sharecount` int(10) unsigned DEFAULT '0' COMMENT '分享次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weisrc_truth_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_weiyun_shuqian_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_weiyun_shuqian_setting`;
CREATE TABLE `ims_weiyun_shuqian_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `title` varchar(100) DEFAULT '' COMMENT '网站名称',
  `share_title` varchar(100) NOT NULL DEFAULT '',
  `share_image` varchar(500) NOT NULL DEFAULT '',
  `share_desc` varchar(200) NOT NULL DEFAULT '',
  `share_cancel` varchar(200) NOT NULL DEFAULT '',
  `share_num` int(10) NOT NULL DEFAULT '0',
  `share_url` varchar(200) NOT NULL DEFAULT '',
  `follow_url` varchar(200) NOT NULL DEFAULT '',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_weiyun_shuqian_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wxwall_award`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxwall_award`;
CREATE TABLE `ims_wxwall_award` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxwall_award
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wxwall_members`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxwall_members`;
CREATE TABLE `ims_wxwall_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` varchar(50) NOT NULL COMMENT '用户的唯一身份ID',
  `rid` int(10) unsigned NOT NULL COMMENT '用户当前所在的微信墙话题',
  `isjoin` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否正在加入话题',
  `isblacklist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户是否是黑名单',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '用户最后发表时间',
  `avatar` varchar(255) NOT NULL COMMENT '粉丝头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxwall_members
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wxwall_message`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxwall_message`;
CREATE TABLE `ims_wxwall_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `from_user` varchar(50) NOT NULL COMMENT '用户的唯一ID',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '用户发表的内容',
  `type` varchar(10) NOT NULL COMMENT '发表内容类型',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxwall_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wxwall_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxwall_reply`;
CREATE TABLE `ims_wxwall_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `acid` int(10) NOT NULL,
  `enter_tips` varchar(300) NOT NULL DEFAULT '' COMMENT '进入提示',
  `quit_tips` varchar(300) NOT NULL DEFAULT '' COMMENT '退出提示',
  `send_tips` varchar(300) NOT NULL DEFAULT '' COMMENT '发表提示',
  `quit_command` varchar(10) NOT NULL DEFAULT '' COMMENT '退出指令',
  `timeout` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '超时时间',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要审核',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `background` varchar(255) NOT NULL DEFAULT '',
  `syncwall` varchar(2000) NOT NULL DEFAULT '' COMMENT '第三方墙',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxwall_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wx_tuijian`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wx_tuijian`;
CREATE TABLE `ims_wx_tuijian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '公众号名称',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '公众号名称',
  `guanzhuUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '引导关注',
  `type` varchar(1) NOT NULL DEFAULT '1',
  `clickNum` int(10) unsigned NOT NULL DEFAULT '0',
  `ipclient` varchar(50) NOT NULL DEFAULT '' COMMENT 'ip',
  `thumb` varchar(500) NOT NULL DEFAULT '' COMMENT '缩略图',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hot` int(1) NOT NULL COMMENT '是否热门 0默认 1热门',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wx_tuijian
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_activity`;
CREATE TABLE `ims_xcommunity_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `regionid` varchar(500) NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `enddate` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `number` int(11) NOT NULL DEFAULT '1',
  `content` varchar(2000) NOT NULL,
  `status` int(1) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  `resnumber` int(11) unsigned NOT NULL COMMENT '报名人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_announcement`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_announcement`;
CREATE TABLE `ims_xcommunity_announcement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `regionid` int(10) unsigned NOT NULL COMMENT '小区编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `createtime` int(10) unsigned NOT NULL,
  `starttime` int(11) unsigned NOT NULL COMMENT '开始时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '结束时间',
  `status` tinyint(1) NOT NULL COMMENT '1禁用，2启用',
  `enable` tinyint(1) NOT NULL COMMENT '模板类型',
  `datetime` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL COMMENT '通知范围',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='发布公告';

-- ----------------------------
-- Records of ims_xcommunity_announcement
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_business`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_business`;
CREATE TABLE `ims_xcommunity_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `qq` int(11) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` int(1) unsigned NOT NULL COMMENT '0未审核，1审核',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_business
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_carpool`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_carpool`;
CREATE TABLE `ims_xcommunity_carpool` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `seat` int(2) unsigned NOT NULL,
  `sprice` int(10) unsigned NOT NULL,
  `month` int(2) unsigned NOT NULL,
  `yday` int(2) unsigned NOT NULL,
  `contact` varchar(50) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `start_position` varchar(100) NOT NULL,
  `end_position` varchar(100) NOT NULL,
  `startMinute` int(10) unsigned NOT NULL,
  `startSeconds` int(10) unsigned NOT NULL,
  `license_number` varchar(100) NOT NULL,
  `car_model` varchar(100) NOT NULL,
  `car_brand` varchar(100) NOT NULL,
  `content` varchar(300) NOT NULL,
  `enable` int(1) NOT NULL COMMENT '1开启,0关闭',
  `createtime` int(10) unsigned NOT NULL,
  `regionid` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_carpool
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_fled`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_fled`;
CREATE TABLE `ims_xcommunity_fled` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `rolex` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `yprice` int(10) NOT NULL,
  `zprice` int(10) NOT NULL,
  `realname` varchar(18) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `description` varchar(100) NOT NULL,
  `regionid` int(10) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `images` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_fled
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_member`;
CREATE TABLE `ims_xcommunity_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned NOT NULL,
  `regionid` int(10) unsigned NOT NULL COMMENT '小区编号',
  `openid` varchar(50) NOT NULL,
  `realname` varchar(50) NOT NULL COMMENT '真实姓名',
  `mobile` varchar(15) NOT NULL COMMENT '手机号',
  `regionname` varchar(50) NOT NULL COMMENT '小区名称',
  `address` varchar(100) NOT NULL COMMENT '楼栋门牌',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `manage_status` tinyint(1) unsigned NOT NULL COMMENT '授权管理员',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='注册用户';

-- ----------------------------
-- Records of ims_xcommunity_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_nav`;
CREATE TABLE `ims_xcommunity_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `pcate` int(10) NOT NULL,
  `title` varchar(30) NOT NULL COMMENT '菜单标题',
  `url` varchar(1000) NOT NULL COMMENT '菜单链接',
  `styleid` int(10) NOT NULL COMMENT '风格id',
  `status` int(1) NOT NULL COMMENT '状态',
  `icon` varchar(50) NOT NULL COMMENT '系统图标',
  `bgcolor` varchar(20) NOT NULL COMMENT '背景颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_nav
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_notice_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_notice_setting`;
CREATE TABLE `ims_xcommunity_notice_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `regionid` int(10) unsigned NOT NULL,
  `template_id_1` varchar(100) NOT NULL,
  `template_id_2` varchar(100) NOT NULL,
  `template_id_3` varchar(100) NOT NULL,
  `template_id_4` varchar(100) NOT NULL,
  `template_id_5` varchar(100) NOT NULL,
  `template_id_6` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告模板消息ID设置';

-- ----------------------------
-- Records of ims_xcommunity_notice_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_propertyfree`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_propertyfree`;
CREATE TABLE `ims_xcommunity_propertyfree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `username` varchar(30) NOT NULL,
  `homenumber` varchar(15) NOT NULL,
  `profree` varchar(10) NOT NULL,
  `tcf` varchar(10) NOT NULL,
  `gtsf` varchar(10) NOT NULL,
  `gtdf` varchar(10) NOT NULL,
  `protimeid` int(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` int(1) unsigned NOT NULL COMMENT '1代表缴费，0代表未缴费',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_propertyfree
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_protime`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_protime`;
CREATE TABLE `ims_xcommunity_protime` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `protime` varchar(30) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_protime
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_region`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_region`;
CREATE TABLE `ims_xcommunity_region` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `linkmen` varchar(50) NOT NULL COMMENT '联系人',
  `linkway` varchar(50) NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='添加小区信息';

-- ----------------------------
-- Records of ims_xcommunity_region
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_reply`;
CREATE TABLE `ims_xcommunity_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `reportid` int(10) unsigned NOT NULL COMMENT '报告ID',
  `isreply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是回复',
  `content` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_report`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_report`;
CREATE TABLE `ims_xcommunity_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL COMMENT '用户身份',
  `weid` int(11) unsigned NOT NULL COMMENT '公众号ID',
  `regionid` int(10) unsigned NOT NULL COMMENT '小区编号',
  `type` tinyint(1) NOT NULL COMMENT '1为报修，2为投诉',
  `category` varchar(50) NOT NULL DEFAULT '' COMMENT '类目',
  `content` varchar(255) NOT NULL COMMENT '投诉内容',
  `requirement` varchar(1000) NOT NULL,
  `createtime` int(11) unsigned NOT NULL COMMENT '投诉日期',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态,1已解决,0未解决,2为用户取消',
  `newmsg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有新信息',
  `rank` tinyint(3) unsigned NOT NULL COMMENT '评级 1满意，2一般，3不满意',
  `comment` varchar(1000) NOT NULL,
  `resolve` varchar(1000) NOT NULL COMMENT '处理结果',
  `resolver` varchar(50) NOT NULL COMMENT '处理人',
  `resolvetime` int(10) NOT NULL COMMENT '处理时间',
  `images` text,
  `print_sta` int(3) NOT NULL COMMENT '打印状态',
  PRIMARY KEY (`id`),
  KEY `idx_weid_regionid` (`weid`,`regionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_report
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_res`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_res`;
CREATE TABLE `ims_xcommunity_res` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(100) NOT NULL,
  `truename` varchar(30) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `num` int(2) unsigned NOT NULL,
  `rid` int(11) unsigned NOT NULL,
  `sex` varchar(6) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_res
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_search`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_search`;
CREATE TABLE `ims_xcommunity_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `sname` varchar(30) NOT NULL,
  `surl` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `icon` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_search
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_servicecategory`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_servicecategory`;
CREATE TABLE `ims_xcommunity_servicecategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT NULL,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `description` varchar(50) NOT NULL COMMENT '分类描述',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_servicecategory
-- ----------------------------
INSERT INTO `ims_xcommunity_servicecategory` VALUES ('1', null, '家政服务', '', '0', '0', '1');
INSERT INTO `ims_xcommunity_servicecategory` VALUES ('2', null, '租赁服务', '', '0', '0', '1');
INSERT INTO `ims_xcommunity_servicecategory` VALUES ('3', null, '报修类型', '', '0', '0', '1');
INSERT INTO `ims_xcommunity_servicecategory` VALUES ('4', null, '投诉类型', '', '0', '0', '1');
INSERT INTO `ims_xcommunity_servicecategory` VALUES ('5', null, '二手交易类型', '', '0', '0', '1');

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_address`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_address`;
CREATE TABLE `ims_xcommunity_shopping_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `regionid` int(11) unsigned NOT NULL COMMENT '当前小区ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_cart`;
CREATE TABLE `ims_xcommunity_shopping_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `optionid` int(10) DEFAULT '0',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_category`;
CREATE TABLE `ims_xcommunity_shopping_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `thumb` varchar(255) NOT NULL COMMENT '分类图片',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isrecommand` int(10) DEFAULT '0',
  `description` varchar(500) NOT NULL COMMENT '分类介绍',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `regionid` varchar(1000) NOT NULL COMMENT '小区ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='超市商品分类';

-- ----------------------------
-- Records of ims_xcommunity_shopping_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_dispatch`;
CREATE TABLE `ims_xcommunity_shopping_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `dispatchname` varchar(50) DEFAULT '',
  `dispatchtype` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `firstprice` decimal(10,2) DEFAULT '0.00',
  `secondprice` decimal(10,2) DEFAULT '0.00',
  `firstweight` int(11) DEFAULT '0',
  `secondweight` int(11) DEFAULT '0',
  `express` int(11) DEFAULT '0',
  `description` text,
  `regionid` varchar(1000) NOT NULL COMMENT '小区ID',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_dispatch
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_express`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_express`;
CREATE TABLE `ims_xcommunity_shopping_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `express_name` varchar(50) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `express_price` varchar(10) DEFAULT '',
  `express_area` varchar(100) DEFAULT '',
  `express_url` varchar(255) DEFAULT '',
  `regionid` varchar(1000) NOT NULL COMMENT '小区ID',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_express
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_feedback`;
CREATE TABLE `ims_xcommunity_shopping_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为维权，2为告擎',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未解决，1用户同意，2用户拒绝',
  `feedbackid` varchar(30) NOT NULL COMMENT '投诉单号',
  `transid` varchar(30) NOT NULL COMMENT '订单号',
  `reason` varchar(1000) NOT NULL COMMENT '理由',
  `solution` varchar(1000) NOT NULL COMMENT '期待解决方案',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_feedbackid` (`feedbackid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_transid` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_goods`;
CREATE TABLE `ims_xcommunity_shopping_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为实体，2为虚拟',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `unit` varchar(5) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goodssn` varchar(50) NOT NULL DEFAULT '',
  `productsn` varchar(50) NOT NULL DEFAULT '',
  `marketprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `costprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `originalprice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `total` int(10) NOT NULL DEFAULT '0',
  `totalcnf` int(11) DEFAULT '0' COMMENT '0 拍下减库存 1 付款减库存 2 永久不减',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `credit` int(11) DEFAULT '0',
  `maxbuy` int(11) DEFAULT '0',
  `hasoption` int(11) DEFAULT '0',
  `dispatch` int(11) DEFAULT '0',
  `thumb_url` text,
  `isnew` int(11) DEFAULT '0',
  `ishot` int(11) DEFAULT '0',
  `isdiscount` int(11) DEFAULT '0',
  `isrecommand` int(11) DEFAULT '0',
  `istime` int(11) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `viewcount` int(11) DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `regionid` varchar(1000) NOT NULL COMMENT '小区ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_goods_option`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_goods_option`;
CREATE TABLE `ims_xcommunity_shopping_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `productprice` decimal(10,2) DEFAULT '0.00',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `costprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_goods_option
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_goods_param`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_goods_param`;
CREATE TABLE `ims_xcommunity_shopping_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `value` text,
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_goods_param
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_order`;
CREATE TABLE `ims_xcommunity_shopping_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为已付款，2为已发货，3为成功',
  `sendtype` tinyint(1) unsigned NOT NULL COMMENT '1为快递，2为自提',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  `goodstype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `addressid` int(10) unsigned NOT NULL,
  `expresscom` varchar(30) NOT NULL DEFAULT '',
  `expresssn` varchar(50) NOT NULL DEFAULT '',
  `express` varchar(200) NOT NULL DEFAULT '',
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `dispatch` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `regionid` int(11) unsigned NOT NULL COMMENT '当前小区ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_order_goods`;
CREATE TABLE `ims_xcommunity_shopping_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `optionid` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `optionname` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_product`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_product`;
CREATE TABLE `ims_xcommunity_shopping_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `productsn` varchar(50) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `marketprice` decimal(10,0) unsigned NOT NULL,
  `productprice` decimal(10,0) unsigned NOT NULL,
  `total` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `spec` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goodsid` (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_product
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_slide`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_slide`;
CREATE TABLE `ims_xcommunity_shopping_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  `regionid` varchar(1000) NOT NULL COMMENT '小区ID',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_spec`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_spec`;
CREATE TABLE `ims_xcommunity_shopping_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `displaytype` tinyint(3) unsigned NOT NULL,
  `content` text NOT NULL,
  `goodsid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_spec
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_shopping_spec_item`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_shopping_spec_item`;
CREATE TABLE `ims_xcommunity_shopping_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `show` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_specid` (`specid`),
  KEY `indx_show` (`show`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_shopping_spec_item
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_sjdp`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_sjdp`;
CREATE TABLE `ims_xcommunity_sjdp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `uid` int(11) NOT NULL,
  `regionid` varchar(50) NOT NULL,
  `sjname` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `contactname` varchar(30) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` int(11) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `shopdesc` varchar(500) NOT NULL,
  `businnesstime` varchar(20) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `businessurl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_sjdp
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_template`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_template`;
CREATE TABLE `ims_xcommunity_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='模板设置';

-- ----------------------------
-- Records of ims_xcommunity_template
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_verifycode`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_verifycode`;
CREATE TABLE `ims_xcommunity_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xcommunity_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xcommunity_wechat_notice`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xcommunity_wechat_notice`;
CREATE TABLE `ims_xcommunity_wechat_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `regionid` int(10) unsigned NOT NULL,
  `fansopenid` varchar(30) NOT NULL,
  `repair_status` int(1) NOT NULL,
  `report_status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='微信设置';

-- ----------------------------
-- Records of ims_xcommunity_wechat_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xfcommunity_images`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xfcommunity_images`;
CREATE TABLE `ims_xfcommunity_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  `file` longtext,
  `type` int(11) NOT NULL COMMENT '报修1，租赁2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xfcommunity_images
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_face`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_face`;
CREATE TABLE `ims_xhw_face` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `description` mediumtext CHARACTER SET utf8 NOT NULL,
  `picurl` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `grade` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_xhw_face
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_face_link`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_face_link`;
CREATE TABLE `ims_xhw_face_link` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `weid` int(20) NOT NULL,
  `link` varchar(500) CHARACTER SET utf8 NOT NULL,
  `number` int(10) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `api_secret` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_xhw_face_link
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_picvote`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_picvote`;
CREATE TABLE `ims_xhw_picvote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `weid` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `smalltext` varchar(300) NOT NULL,
  `share_title` varchar(500) NOT NULL,
  `share_desc` varchar(500) NOT NULL,
  `follow_url` varchar(300) NOT NULL,
  `rule_url` varchar(500) NOT NULL,
  `bgcolor` varchar(20) NOT NULL,
  `rule` text NOT NULL,
  `submit_url` varchar(500) NOT NULL,
  `starttime` int(20) NOT NULL,
  `endtime` int(20) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `imgnum` int(10) NOT NULL,
  `mynum` int(10) NOT NULL COMMENT '投票上限',
  `cnzz` varchar(500) NOT NULL,
  `pass` int(10) NOT NULL,
  `anum` int(10) NOT NULL,
  `bnum` int(10) NOT NULL,
  `adpic` varchar(500) NOT NULL,
  `adlink` varchar(500) NOT NULL,
  `ad` varchar(5000) NOT NULL,
  `adpass` int(10) NOT NULL,
  `adimg` varchar(5000) NOT NULL,
  `adimglink` varchar(5000) NOT NULL,
  `adaimg` text NOT NULL,
  `imagnum` int(10) NOT NULL,
  `adiamglink` text NOT NULL,
  `day` int(10) NOT NULL,
  `hot` int(10) NOT NULL,
  `sharenum` int(10) NOT NULL,
  `viewnum` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xhw_picvote
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_picvote_log`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_picvote_log`;
CREATE TABLE `ims_xhw_picvote_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL COMMENT '项目ID',
  `openid` varchar(100) CHARACTER SET utf8 NOT NULL,
  `numid` int(10) NOT NULL COMMENT '被投票ID',
  `time` int(20) NOT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_xhw_picvote_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_picvote_reg`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_picvote_reg`;
CREATE TABLE `ims_xhw_picvote_reg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL COMMENT '项目ID',
  `weid` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `openid` varchar(500) CHARACTER SET utf8 NOT NULL,
  `nickname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(500) CHARACTER SET utf8 NOT NULL,
  `phone` text CHARACTER SET utf8 NOT NULL,
  `pass` int(10) NOT NULL,
  `num` int(11) NOT NULL COMMENT '赞',
  `sharenum` int(10) NOT NULL COMMENT '朋友圈浏览次数',
  `time` int(12) NOT NULL,
  `img` varchar(5000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`(333))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_xhw_picvote_reg
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_picvote_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_picvote_setting`;
CREATE TABLE `ims_xhw_picvote_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `jssdkpass` int(10) NOT NULL,
  `openidpass` int(10) NOT NULL,
  `followpass` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_xhw_picvote_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_voice`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_voice`;
CREATE TABLE `ims_xhw_voice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `weid` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `smalltext` varchar(300) NOT NULL,
  `share_title` varchar(500) NOT NULL,
  `share_desc` varchar(500) NOT NULL,
  `follow_url` varchar(300) NOT NULL,
  `rule_url` varchar(500) NOT NULL,
  `submit_url` varchar(500) NOT NULL,
  `rules_url` varchar(500) NOT NULL,
  `starttime` int(20) NOT NULL,
  `endtime` int(20) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `mynum` int(10) NOT NULL COMMENT '投票上限',
  `cnzz` varchar(500) NOT NULL,
  `adpic` varchar(500) NOT NULL,
  `adlink` varchar(500) NOT NULL,
  `ad` varchar(5000) NOT NULL,
  `adpass` int(10) NOT NULL,
  `anum` int(10) NOT NULL,
  `bnum` int(10) NOT NULL,
  `adimg` varchar(5000) NOT NULL,
  `adimglink` varchar(5000) NOT NULL,
  `day` int(10) NOT NULL,
  `hot` int(10) NOT NULL,
  `sharenum` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xhw_voice
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_voice_log`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_voice_log`;
CREATE TABLE `ims_xhw_voice_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL COMMENT '项目ID',
  `openid` varchar(100) CHARACTER SET utf8 NOT NULL,
  `numid` int(10) NOT NULL COMMENT '被投票ID',
  `time` int(20) NOT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_xhw_voice_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_voice_reg`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_voice_reg`;
CREATE TABLE `ims_xhw_voice_reg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL COMMENT '项目ID',
  `weid` int(10) NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `mediaid` varchar(500) CHARACTER SET utf8 NOT NULL,
  `mp3` varchar(500) CHARACTER SET utf8 NOT NULL,
  `openid` varchar(500) CHARACTER SET utf8 NOT NULL,
  `nickname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(500) CHARACTER SET utf8 NOT NULL,
  `phone` text NOT NULL,
  `pass` int(10) NOT NULL,
  `num` int(11) NOT NULL COMMENT '赞',
  `sharenum` int(10) NOT NULL COMMENT '朋友圈浏览次数',
  `time` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`(333))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_xhw_voice_reg
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xhw_voice_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xhw_voice_setting`;
CREATE TABLE `ims_xhw_voice_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `appid` varchar(100) CHARACTER SET utf8 NOT NULL,
  `appsecret` varchar(100) CHARACTER SET utf8 NOT NULL,
  `accesskey` varchar(100) CHARACTER SET utf8 NOT NULL,
  `secretkey` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `link` varchar(100) NOT NULL,
  `settingpass` int(10) NOT NULL,
  `openidpass` int(10) NOT NULL,
  `followpass` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_xhw_voice_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xwz_queue_data`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xwz_queue_data`;
CREATE TABLE `ims_xwz_queue_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `typeid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `number` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `giveuptime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xwz_queue_data
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xwz_queue_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xwz_queue_fans`;
CREATE TABLE `ims_xwz_queue_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `nickname` varchar(255) DEFAULT '' COMMENT '昵称',
  `headimgurl` varchar(255) DEFAULT '' COMMENT '头像',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 -1 黑名单 0 正常',
  `suc` int(11) DEFAULT '0' COMMENT '取号次数',
  `past` int(11) DEFAULT '0' COMMENT '过号次数',
  `cancel` int(11) DEFAULT '0' COMMENT '取消次数',
  `createtime` int(11) DEFAULT '0' COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_status` (`status`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xwz_queue_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xwz_queue_manager`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xwz_queue_manager`;
CREATE TABLE `ims_xwz_queue_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xwz_queue_manager
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xwz_queue_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xwz_queue_reply`;
CREATE TABLE `ims_xwz_queue_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(200) DEFAULT '',
  `heading` varchar(255) DEFAULT '',
  `smallheading` varchar(255) DEFAULT '',
  `tel` varchar(255) DEFAULT '',
  `followurl` varchar(255) DEFAULT '',
  `intro` text,
  `status` tinyint(1) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `beforenum` int(11) DEFAULT '0',
  `screenbg` varchar(255) DEFAULT '',
  `qrcode` varchar(1000) DEFAULT '',
  `qrcodetype` tinyint(3) DEFAULT '0',
  `templateid` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xwz_queue_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_xwz_queue_type`
-- ----------------------------
DROP TABLE IF EXISTS `ims_xwz_queue_type`;
CREATE TABLE `ims_xwz_queue_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `tag` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `num` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_xwz_queue_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zam_chatlog`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zam_chatlog`;
CREATE TABLE `ims_zam_chatlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `toopenid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tousername` varchar(100) NOT NULL,
  `content` varchar(300) NOT NULL,
  `createtime` int(12) NOT NULL,
  `weid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zam_chatlog
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zam_cookie`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zam_cookie`;
CREATE TABLE `ims_zam_cookie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cookie` text NOT NULL,
  `cookies` text NOT NULL,
  `token` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ims_zam_cookie
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zam_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zam_userinfo`;
CREATE TABLE `ims_zam_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `sex` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `banji` varchar(50) NOT NULL,
  `createtime` int(12) NOT NULL,
  `jointime` int(12) NOT NULL,
  `fakeid` varchar(100) NOT NULL,
  `msgid` varchar(12) NOT NULL,
  `chattime` int(100) NOT NULL,
  `isblacklist` tinyint(1) NOT NULL,
  `weid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zam_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zerobuy_code`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zerobuy_code`;
CREATE TABLE `ims_zerobuy_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `did` int(10) unsigned NOT NULL COMMENT '活动详情ID',
  `uid` int(10) unsigned NOT NULL,
  `jointime` int(10) NOT NULL COMMENT '参与时间',
  `code` char(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='参与号码表';

-- ----------------------------
-- Records of ims_zerobuy_code
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zerobuy_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zerobuy_detail`;
CREATE TABLE `ims_zerobuy_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `lid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1-即将进行，2-正在进行，3-已结束，未开奖，4-已开奖，5-已开奖，无人中奖',
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `zerobuy_price` varchar(10) NOT NULL,
  `join_num` int(10) unsigned NOT NULL COMMENT '参与人数',
  `exchange` smallint(4) unsigned NOT NULL COMMENT '积分兑换比例',
  `draw_code` char(5) NOT NULL COMMENT '开奖码',
  `win_code` char(5) NOT NULL COMMENT '中奖码',
  `winner_uid` int(10) unsigned NOT NULL COMMENT '中奖用户ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动详情';

-- ----------------------------
-- Records of ims_zerobuy_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zerobuy_list`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zerobuy_list`;
CREATE TABLE `ims_zerobuy_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `use_nums` int(11) NOT NULL COMMENT '活动次数',
  `thumb` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `inventory` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动商品清单';

-- ----------------------------
-- Records of ims_zerobuy_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zerobuy_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zerobuy_rule`;
CREATE TABLE `ims_zerobuy_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `rule` text NOT NULL,
  `rule_draw` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-相对规则，1-绝对规则',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动规则';

-- ----------------------------
-- Records of ims_zerobuy_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zzz_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zzz_reply`;
CREATE TABLE `ims_zzz_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `description` text NOT NULL COMMENT '活动描述',
  `rule` text NOT NULL COMMENT '活动描述',
  `periodlottery` smallint(10) unsigned NOT NULL DEFAULT '1' COMMENT '0为无周期',
  `maxlottery` tinyint(3) unsigned NOT NULL COMMENT '系统每天赠送次数',
  `guzhuurl` varchar(255) NOT NULL DEFAULT '',
  `prace_times` int(10) NOT NULL DEFAULT '100',
  `title` varchar(100) NOT NULL DEFAULT '',
  `bgurl` varchar(255) NOT NULL DEFAULT '',
  `bigunit` varchar(50) NOT NULL DEFAULT '',
  `smallunit` varchar(50) NOT NULL DEFAULT '',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '1600000000',
  `sharevalue` int(10) unsigned NOT NULL COMMENT '分享赠送体力',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zzz_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zzz_share`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zzz_share`;
CREATE TABLE `ims_zzz_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `fanid` int(10) unsigned NOT NULL COMMENT '粉丝ID',
  `sharefid` int(10) unsigned NOT NULL COMMENT '分享者ID',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`,`fanid`,`sharefid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zzz_share
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zzz_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zzz_user`;
CREATE TABLE `ims_zzz_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL DEFAULT '0',
  `fanid` int(10) unsigned NOT NULL COMMENT '粉丝ID',
  `count` int(10) NOT NULL DEFAULT '0',
  `points` int(10) NOT NULL DEFAULT '0',
  `friendcount` int(10) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL COMMENT '日期',
  `sharevalue` int(10) unsigned NOT NULL COMMENT '分享获得体力',
  PRIMARY KEY (`id`),
  KEY `idx_fanid` (`fanid`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zzz_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_zzz_winner`
-- ----------------------------
DROP TABLE IF EXISTS `ims_zzz_winner`;
CREATE TABLE `ims_zzz_winner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `point` int(10) unsigned NOT NULL DEFAULT '0',
  `fanid` int(10) unsigned NOT NULL COMMENT '粉丝ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未领奖，1不需要领奖，2已领奖',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '获奖日期',
  PRIMARY KEY (`id`),
  KEY `idx_fanid` (`fanid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zzz_winner
-- ----------------------------
