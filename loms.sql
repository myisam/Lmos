/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : loms

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-05-05 23:28:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `servers`
-- ----------------------------
DROP TABLE IF EXISTS `servers`;
CREATE TABLE `servers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `ip1` varchar(50) NOT NULL,
  `ip2` varchar(50) NOT NULL,
  `hostconfig` varchar(100) NOT NULL,
  `idc` varchar(100) NOT NULL,
  `project` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servers
-- ----------------------------
INSERT INTO `servers` VALUES ('5', 'db', '55.12.145.112', '66.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('6', 'web', '11.12.145.112', '11.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');
INSERT INTO `servers` VALUES ('7', 'db', '55.12.145.112', '11.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');
INSERT INTO `servers` VALUES ('8', 'db', '11.12.145.112', '111.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('9', 'db', '11.12.145.33', '111.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('10', 'db', '55.12.145.112', '66.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');
INSERT INTO `servers` VALUES ('11', 'db', '11.12.145.112', '11.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('12', 'db', '55.12.145.112', '11.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('13', 'db', '55.12.145.112', '11.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');
INSERT INTO `servers` VALUES ('14', 'db', '11.12.145.112', '111.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('15', 'db', '11.12.145.112', '66.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');
INSERT INTO `servers` VALUES ('16', 'db', '55.12.145.112', '111.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');
INSERT INTO `servers` VALUES ('17', 'db', '55.12.145.112', '11.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('18', 'db', '11.12.145.33', '66.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('19', 'db', '55.12.145.112', '66.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');
INSERT INTO `servers` VALUES ('20', 'web', '55.12.145.112', '111.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');
INSERT INTO `servers` VALUES ('21', 'web', '11.12.145.112', '111.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'kuai365');
INSERT INTO `servers` VALUES ('22', 'web', '55.12.145.112', '11.12.145.33', 'CPU16核内存16G', '南方联合(环数)', 'zs365');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'user ID',
  `privilege` int(3) NOT NULL COMMENT '0:visitor;1:Admin',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `createtime` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'account create time',
  `lastlogin` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'last logined time',
  `loginip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'other description',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2', 'admin', '0132ee94af0adb621b6d6faeb51b1890', '1351649903', '1399301695', '127.0.0.1', '13388888888', 'sky@lmos.com', '超级管理员\r\nhttp://johnsteven.blog.51cto.com/');
