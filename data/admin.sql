/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : reading

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-05-21 21:58:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `truename` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `root` tinyint(1) DEFAULT NULL,
  `root_ids` varchar(255) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `last_ip` char(15) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2', 'root', null, '749fc146870a3b8ce123d892fb431efc', '55488a23dfe8b', '1', null, null, null, '127.0.0.1', '1432199706');
INSERT INTO `admin` VALUES ('7', '小飞12', '方智', 'c7260c083f6e829e46ea1acedc9351f2', '55530d773fd72', '2', '1,2,3,4,5,8,10', '111', '11111', '127.0.0.1', '1431506489');
INSERT INTO `admin` VALUES ('8', '小飞123', '方智', '59ac8393f44eb32b0ba01f9b896d96fb', '5553347de36b3', '2', '3,5,6,7,8,9,10', '21212', '21211', '127.0.0.1', '1431516553');
INSERT INTO `admin` VALUES ('9', 'root111', '111111', '5b603a6f465a9e1c36454390c5f05940', '55533525efbd1', '1', null, '1', '11111', '127.0.0.1', '1431516477');
INSERT INTO `admin` VALUES ('10', '1231', '1212', 'f450a2fe59298fd0fb867a5c3697fbc7', '5554272d024b9', '2', '1,2,3,4,5,8,10', '1212', '1212', null, null);
