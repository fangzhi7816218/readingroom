/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : reading

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-05-21 21:59:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cate_mag`
-- ----------------------------
DROP TABLE IF EXISTS `cate_mag`;
CREATE TABLE `cate_mag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `inv` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate_mag
-- ----------------------------
