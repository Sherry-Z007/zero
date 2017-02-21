/*
Navicat MySQL Data Transfer

Source Server         : xueyuftp.gotoftp2.com
Source Server Version : 50617
Source Host           : xueyuftp.gotoftp2.com:3306
Source Database       : xueyuftp

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-17 17:21:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zaih_about
-- ----------------------------
DROP TABLE IF EXISTS `zaih_about`;
CREATE TABLE `zaih_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(30) NOT NULL COMMENT '客服电话',
  `gz_time` varchar(50) NOT NULL COMMENT '工作时间',
  `kefu` varchar(50) NOT NULL COMMENT '客服QQ',
  `beian` varchar(255) NOT NULL COMMENT '备案信息',
  `address` varchar(255) NOT NULL COMMENT '公司地址',
  `gs_name` varchar(255) NOT NULL COMMENT '公司名称',
  `content` longtext NOT NULL COMMENT '关于我们',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `zaih_admin_user`;
CREATE TABLE `zaih_admin_user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '后台用户ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用 1 冻结2',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_chat
-- ----------------------------
DROP TABLE IF EXISTS `zaih_chat`;
CREATE TABLE `zaih_chat` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL COMMENT '被评论者ID',
  `username` varchar(20) NOT NULL COMMENT '被评论者用户名',
  `order_id` int(10) NOT NULL COMMENT '订单ID',
  `ctime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_chat_data
-- ----------------------------
DROP TABLE IF EXISTS `zaih_chat_data`;
CREATE TABLE `zaih_chat_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `chat_id` mediumint(8) NOT NULL COMMENT '评论ID',
  `user_id` mediumint(8) NOT NULL COMMENT '评论用户ID',
  `username` varchar(20) NOT NULL COMMENT '评论者用户名',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `reply` varchar(255) NOT NULL COMMENT '回复内容',
  `ctime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_comment
-- ----------------------------
DROP TABLE IF EXISTS `zaih_comment`;
CREATE TABLE `zaih_comment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `buser_id` mediumint(8) NOT NULL COMMENT '被评论者ID',
  `username` varchar(20) NOT NULL COMMENT '被评论者用户名',
  `order_id` int(10) NOT NULL COMMENT '订单ID',
  `content` varchar(255) NOT NULL COMMENT '价评内容',
  `status` tinyint(1) DEFAULT NULL COMMENT '通过状态 0未通过 1通过',
  `ctime` int(10) NOT NULL DEFAULT '0' COMMENT '评价时间',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '评分',
  `record` varchar(255) DEFAULT NULL COMMENT '录音',
  `user_id` mediumint(9) NOT NULL COMMENT '论者评ID',
  `role` tinyint(1) NOT NULL COMMENT '评论角色   0用户 1面试官',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_coupon
-- ----------------------------
DROP TABLE IF EXISTS `zaih_coupon`;
CREATE TABLE `zaih_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL COMMENT '券礼号',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(100) NOT NULL COMMENT '图主',
  `ctime` varchar(30) NOT NULL COMMENT '建时间创',
  `uid` mediumint(9) NOT NULL COMMENT '用户ID',
  `money` decimal(10,2) NOT NULL COMMENT '值面',
  `etime` varchar(30) NOT NULL COMMENT '束结时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 未使用 2已使用 ',
  `btime` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `zaih_evaluate`;
CREATE TABLE `zaih_evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COMMENT '评价内容',
  `number` int(11) NOT NULL COMMENT '评分',
  `record` varchar(255) DEFAULT NULL COMMENT '录音',
  `pass` tinyint(4) NOT NULL COMMENT '是否通过 0未通过 1通过',
  `order_id` int(11) NOT NULL,
  `ctime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_help
-- ----------------------------
DROP TABLE IF EXISTS `zaih_help`;
CREATE TABLE `zaih_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '助帮标题',
  `content` longtext COMMENT '帮助内容',
  `hcid` int(11) NOT NULL COMMENT '助帮分类ID',
  `ctime` varchar(30) NOT NULL COMMENT '建时间创',
  `status` tinyint(1) NOT NULL COMMENT '1启用 2冻结',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_helpclass
-- ----------------------------
DROP TABLE IF EXISTS `zaih_helpclass`;
CREATE TABLE `zaih_helpclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '帮助分类名称',
  `status` tinyint(1) NOT NULL COMMENT '否是显示 1显示 2冻结',
  `ctime` varchar(30) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_indtype
-- ----------------------------
DROP TABLE IF EXISTS `zaih_indtype`;
CREATE TABLE `zaih_indtype` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) NOT NULL DEFAULT '0' COMMENT '行业类别分类ID',
  `indtype_name` varchar(100) NOT NULL COMMENT '行业分类名称',
  `ctime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_indtype_category
-- ----------------------------
DROP TABLE IF EXISTS `zaih_indtype_category`;
CREATE TABLE `zaih_indtype_category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL DEFAULT '' COMMENT '行业类别分类名称',
  `ctime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_language
-- ----------------------------
DROP TABLE IF EXISTS `zaih_language`;
CREATE TABLE `zaih_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '语言名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1启用 0冻结',
  `ctime` varchar(50) NOT NULL COMMENT '建时间创',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_meal
-- ----------------------------
DROP TABLE IF EXISTS `zaih_meal`;
CREATE TABLE `zaih_meal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '预约套餐标题',
  `content` longtext NOT NULL COMMENT '约预套餐的内容',
  `money` decimal(10,0) NOT NULL COMMENT '约预金额',
  `ctime` varchar(30) NOT NULL COMMENT '建时间创',
  `status` tinyint(1) NOT NULL COMMENT '1启用 2冻结',
  `uid` int(11) NOT NULL COMMENT '面试官ID',
  `subtitle` varchar(255) NOT NULL COMMENT '副标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_orders
-- ----------------------------
DROP TABLE IF EXISTS `zaih_orders`;
CREATE TABLE `zaih_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `good_name` varchar(255) NOT NULL COMMENT '行家邀约题标',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态 0已下单 1已付款 2退款中 3退款成功交易关闭 4等待评价 5交易成功',
  `ctime` varchar(30) NOT NULL COMMENT '创建日期',
  `uid` int(11) NOT NULL COMMENT '下单用户ID',
  `cptime` varchar(30) NOT NULL COMMENT '预约时间',
  `cpid` int(11) NOT NULL COMMENT '预约套餐ID',
  `vid` int(11) NOT NULL COMMENT '面试官ID',
  `myproblem` longtext NOT NULL COMMENT '请教的问题',
  `money` decimal(10,2) NOT NULL COMMENT '约预金额',
  `ftime` varchar(30) NOT NULL COMMENT '付款时间',
  `jtime` varchar(30) NOT NULL COMMENT '交成时间',
  `coupon_status` tinyint(1) DEFAULT NULL COMMENT '是否使用礼品券 0未使用 1使用',
  `cmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用礼品券面值',
  `cid` int(11) NOT NULL COMMENT '礼品券ID',
  `real_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实付金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_pic
-- ----------------------------
DROP TABLE IF EXISTS `zaih_pic`;
CREATE TABLE `zaih_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `title` varchar(20) NOT NULL,
  `ctime` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_skill
-- ----------------------------
DROP TABLE IF EXISTS `zaih_skill`;
CREATE TABLE `zaih_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '技能培训标题',
  `pic` varchar(50) DEFAULT NULL COMMENT '图片',
  `ctime` varchar(30) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_user
-- ----------------------------
DROP TABLE IF EXISTS `zaih_user`;
CREATE TABLE `zaih_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '普通会员ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用 1 冻结 0 删除2',
  `role` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户角色 0用户 1面试官',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `portrait` varchar(100) NOT NULL DEFAULT 'mrPic.jpg',
  `name` varchar(20) NOT NULL COMMENT '真实姓名',
  `addr` varchar(255) NOT NULL COMMENT '长居地',
  `intro` varchar(255) NOT NULL COMMENT '个人简介',
  `update_time` varchar(50) NOT NULL DEFAULT '0',
  `ctime` varchar(50) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zaih_verify
-- ----------------------------
DROP TABLE IF EXISTS `zaih_verify`;
CREATE TABLE `zaih_verify` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '行家ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_id` mediumint(8) NOT NULL COMMENT '用户ID',
  `name` varchar(20) NOT NULL COMMENT '姓氏',
  `sex` tinyint(1) NOT NULL COMMENT '性别 1男 2女',
  `language` varchar(255) NOT NULL DEFAULT '0' COMMENT '面试语言',
  `otherlanguage` varchar(100) NOT NULL COMMENT '他其',
  `industry` varchar(255) NOT NULL COMMENT '从事行业',
  `working_time` varchar(20) NOT NULL COMMENT '从业时间',
  `good_at` varchar(255) NOT NULL COMMENT '擅长面试的职位',
  `position_post` varchar(255) NOT NULL COMMENT '任职岗位',
  `record` varchar(255) NOT NULL COMMENT '录音',
  `video` varchar(255) NOT NULL COMMENT '视频',
  `ctime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核状态 0：保存； 1:提交未审核; 2 审核通过 ； 3审核拒绝',
  `brief` varchar(255) NOT NULL COMMENT '个人职业经历介绍',
  `bus_card` varchar(100) DEFAULT NULL COMMENT '个人名片',
  `is_public` tinyint(1) NOT NULL COMMENT '是否公开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
