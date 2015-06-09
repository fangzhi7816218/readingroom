/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : reading

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-05-21 21:59:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT '0',
  `b_id` int(11) DEFAULT '0',
  `p_id` int(11) DEFAULT '0',
  `contents` text,
  `time` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1' COMMENT '默认为0时 还未评审 为1时已通过评审',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '10', '166', '0', '采摘厅', '1432211491', '1');
INSERT INTO `comment` VALUES ('2', '10', '166', '0', '震天', '1432211525', '1');
INSERT INTO `comment` VALUES ('3', '10', '166', '0', '', '1432211530', '1');
INSERT INTO `comment` VALUES ('4', '10', '166', '0', '', '1432211674', '1');
INSERT INTO `comment` VALUES ('5', '10', '166', '0', '', '1432211675', '1');
INSERT INTO `comment` VALUES ('6', '10', '166', '0', '', '1432211679', '1');
INSERT INTO `comment` VALUES ('7', '10', '166', '0', '', '1432211692', '1');
INSERT INTO `comment` VALUES ('8', '10', '166', '1', '城', '1432211701', '1');
INSERT INTO `comment` VALUES ('9', '10', '166', '1', '城', '1432212934', '1');
INSERT INTO `comment` VALUES ('10', '10', '166', '0', '城', '1432213361', '1');
INSERT INTO `comment` VALUES ('11', '10', '166', '1', '城', '1432213393', '1');
INSERT INTO `comment` VALUES ('12', '10', '166', '1', '城', '1432213847', '1');
INSERT INTO `comment` VALUES ('13', '10', '166', '1', '城', '1432213855', '1');
INSERT INTO `comment` VALUES ('14', '10', '166', '1', '城', '1432213953', '1');
INSERT INTO `comment` VALUES ('15', '10', '166', '1', '城', '1432213982', '1');
INSERT INTO `comment` VALUES ('16', '10', '166', '1', '城', '1432214000', '1');
INSERT INTO `comment` VALUES ('17', '10', '166', '1', '城', '1432214088', '1');
INSERT INTO `comment` VALUES ('18', '10', '166', '1', '城', '1432214155', '1');
INSERT INTO `comment` VALUES ('19', '10', '166', '0', '城', '1432214347', '1');
INSERT INTO `comment` VALUES ('20', '10', '166', '1', '城', '1432214442', '1');
INSERT INTO `comment` VALUES ('21', '10', '166', '1', '城', '1432214535', '1');
INSERT INTO `comment` VALUES ('22', '10', '166', '1', '城', '1432214607', '1');
INSERT INTO `comment` VALUES ('23', '10', '166', '1', '城', '1432214661', '1');
INSERT INTO `comment` VALUES ('24', '10', '166', '0', '城', '1432214699', '1');
INSERT INTO `comment` VALUES ('25', '10', '166', '0', '城', '1432215113', '1');
INSERT INTO `comment` VALUES ('26', '10', '166', '0', '城', '1432215129', '1');
INSERT INTO `comment` VALUES ('27', '10', '166', '1', '城', '1432215137', '1');
INSERT INTO `comment` VALUES ('28', '10', '166', '1', '城', '1432215158', '1');
INSERT INTO `comment` VALUES ('29', '10', '166', '0', '城', '1432215185', '1');
INSERT INTO `comment` VALUES ('30', '10', '166', '1', '城', '1432215199', '1');
INSERT INTO `comment` VALUES ('31', '0', '166', '0', '夺', '1432216168', '1');
INSERT INTO `comment` VALUES ('32', '0', '166', '0', '夺', '1432216186', '1');
INSERT INTO `comment` VALUES ('33', '0', '166', '0', '夺', '1432216210', '1');
INSERT INTO `comment` VALUES ('34', '0', '166', '0', '夺', '1432216236', '1');
INSERT INTO `comment` VALUES ('35', '0', '0', '1', null, '0', '1');
