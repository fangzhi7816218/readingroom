/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : reading

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-05-21 21:59:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `truename` varchar(50) DEFAULT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'bk02', null, null, '3215', '547018219@qq.com', null, null);
INSERT INTO `user` VALUES ('2', null, null, '96e79218965eb72c92a549dd5a330112', '1251', null, null, null);
INSERT INTO `user` VALUES ('3', 'bk0211', null, null, '2152', '547018219@qq.com', null, '12');
INSERT INTO `user` VALUES ('4', 'bk02111', null, '96e79218965eb72c92a549dd5a330112', '7896', '547018458@qq.com', null, null);
INSERT INTO `user` VALUES ('5', 'bk0211112', null, '96e79218965eb72c92a549dd5a330112', '4535', '547018458@qq.com', null, null);
INSERT INTO `user` VALUES ('6', 'bk02', null, '96e79218965eb72c92a549dd5a330112', '2152', '547018219@qq.com', null, null);
INSERT INTO `user` VALUES ('7', 'bk02', null, '96e79218965eb72c92a549dd5a330112', '8795', '112121212@qq.com', null, null);
INSERT INTO `user` VALUES ('8', 'bk02332', null, '96e79218965eb72c92a549dd5a330112', '2354', '5470118458@qq.com', null, null);
INSERT INTO `user` VALUES ('9', 'bk02001', null, '670b14728ad9902aecba32e22fa4f6bd', null, '5470184508@qq.com', '', null);
INSERT INTO `user` VALUES ('10', 'bk0221212', null, 'cc065dbcefa4ca6ea12c769262f855ba', '5546fc5aafa05', '1121212d12@qq.com', '', null);
