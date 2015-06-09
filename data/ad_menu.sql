/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : reading

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-05-21 21:58:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ad_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ad_menu`;
CREATE TABLE `ad_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `menu_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad_menu
-- ----------------------------
INSERT INTO `ad_menu` VALUES ('1', '0', '网站后台', '');
INSERT INTO `ad_menu` VALUES ('2', '1', '后台首页', 'http://www.readingroom.com/Admin/Index/main.html');
INSERT INTO `ad_menu` VALUES ('3', '0', '权限管理', 'http://www.readingroom.com/Admin/Index/main.html');
INSERT INTO `ad_menu` VALUES ('4', '3', '管理员列表', 'http://www.readingroom.com/Admin/Index/admin_list.html');
INSERT INTO `ad_menu` VALUES ('5', '3', '添加管理员', 'http://www.readingroom.com/Admin/Index/admin_add.html');
INSERT INTO `ad_menu` VALUES ('6', '0', '前台用户管理', 'http://www.readingroom.com/Admin/Index/admin_add.html');
INSERT INTO `ad_menu` VALUES ('7', '6', '用户列表', 'http://www.readingroom.com/Admin/User/user_list.html');
INSERT INTO `ad_menu` VALUES ('8', '0', '后台布局', '');
INSERT INTO `ad_menu` VALUES ('9', '8', '后台菜单列表', 'http://www.readingroom.com/Admin/Menu/menu_list.html');
INSERT INTO `ad_menu` VALUES ('10', '8', '增加菜表', 'http://www.readingroom.com/Admin/Menu/menu_add.html');
INSERT INTO `ad_menu` VALUES ('22', '0', '分类管理', 'http://www.readingroom.com/Admin/Menu/menu_add.html');
INSERT INTO `ad_menu` VALUES ('23', '22', '图书分类', 'http://www.readingroom.com/Admin/Catebook/cate_list.html');
INSERT INTO `ad_menu` VALUES ('24', '22', '添加分类', 'http://www.readingroom.com/Admin/Catebook/cate_add.html');
INSERT INTO `ad_menu` VALUES ('25', '0', '图书管理', '');
INSERT INTO `ad_menu` VALUES ('26', '25', '图书列表', 'http://www.readingroom.com/Admin/Book/book_list.html');
INSERT INTO `ad_menu` VALUES ('27', '25', '添加图书', 'http://www.readingroom.com/Admin/Book/book_add.html');
INSERT INTO `ad_menu` VALUES ('28', '25', '图书回收站', 'http://www.readingroom.com/Admin/Book/book_recycle.html');
INSERT INTO `ad_menu` VALUES ('29', '0', '文章管理', 'http://www.readingroom.com/Admin/');
INSERT INTO `ad_menu` VALUES ('30', '29', '文章列表', 'http://www.readingroom.com/Admin/Article/article_list.html');
INSERT INTO `ad_menu` VALUES ('31', '29', '添加文章', 'http://www.readingroom.com/Admin/Article/article_add.html');
INSERT INTO `ad_menu` VALUES ('32', '29', '文章回收站', 'http://www.readingroom.com/Admin/Article/article_recycle.html');
INSERT INTO `ad_menu` VALUES ('33', '0', '评论管理', 'http://www.readingroom.com/Admin/');
INSERT INTO `ad_menu` VALUES ('34', '33', '评论列表', 'http://www.readingroom.com/Admin/Common/com_list.html');
