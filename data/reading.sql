/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : reading

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-05-21 21:58:34
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

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT '0',
  `b_id` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `contents` text,
  `status` tinyint(4) DEFAULT '0',
  `add_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('10', '0', '1', '第一章 述赴京沿途及抵京后情事', '<p>绔地黄柳霜在模压 顶替</p>', '0', '1432030395');
INSERT INTO `article` VALUES ('11', '0', '1', '第二章九弟不作归计', '<p>奇才枯s</p>', '0', '1432030395');
INSERT INTO `article` VALUES ('12', '0', '1', '第三章 为试帖诗课及温习制艺', '<p>基本面地顶替顶替</p>', '0', '1432030395');
INSERT INTO `article` VALUES ('13', '0', '1', '第四章勉君子应立志', '<p>奇才柑顶替标有顶替一压下在<span style=\"color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;\">勉君子应立志</span><span style=\"color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;\">勉君子应立志</span><span style=\"color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;\">勉君子应立志</span></p>', '0', '1432030395');
INSERT INTO `article` VALUES ('14', '0', '1', '第四章 读书要有志有识有恒', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;奇才柑顶替标有顶替一压下在<span style=\"color: rgb(75, 74, 74); line-height: 25px; font-weight: bold;\">d发在可想而知夺厅枯枯枯枯顶替厅夺夺</span></p>', '0', '1432104055');
INSERT INTO `article` VALUES ('15', '0', '1', '告兄弟相处之道', '&lt;p&gt;奇才柑顶替标有顶替一压下在&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;告兄弟相处之道&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;告兄弟相处之道&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;告兄弟相处之道&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('16', '0', '1', '读书宜专习字宜有恒', '&lt;p&gt;奇才柑顶替标有顶替一压下在&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书宜专习字宜有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书宜专习字宜有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书宜专习字宜有恒&lt;/span&gt;&lt;span style=&quot;font-size: 9pt; color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;恒&lt;/span&gt;&lt;span style=&quot;font-size: 9pt; color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;告兄弟相处之道&lt;/span&gt;&lt;span style=&quot;font-size: 9pt; color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;告兄弟相处之道&lt;/span&gt;&lt;span style=&quot;font-size: 9pt; color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;告兄弟相处之道&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('17', '0', '1', '讲事贵乎专之理', '&lt;p&gt;奇才柑顶替标有顶替一压下在&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;勉君子应立志&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书要有志有识有&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书宜专习字宜有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书宜专习字宜有恒&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;读书宜专习字宜有恒&lt;/span&gt;&lt;span style=&quot;font-size: 9pt; color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;恒&lt;/span&gt;&lt;span style=&quot;font-size: 9pt; color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;告兄弟相处之道&lt;/span&gt;&lt;span style=&quot;font-size: 9pt; color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;告兄弟相处之道&lt;/span&gt;&lt;span style=&quot;font-size: 9pt; color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;告兄弟&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;讲事贵乎专之理&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;讲事贵乎专之理&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); font-size: 9pt; line-height: 25px; text-align: justify;&quot;&gt;相处之道&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('18', '0', '1', '讲事贵乎专之理', '&lt;p&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;讲事贵乎专之理&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;讲事贵乎专之理&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;讲事贵乎专之理&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;讲事贵乎专之理&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('19', '0', '1', '讲事贵乎专之理', '&lt;p&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;讲事贵乎专之理&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;讲事贵乎专之理&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('20', '0', '1', '评论诸弟文章之优劣', '&lt;p&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;评论诸弟文章之优劣&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;评论诸弟文章之优劣&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;评论诸弟文章之优劣&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('21', '0', '1', '事事应勤思善问', '&lt;p&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;事事应勤思善问&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;事事应勤思善问&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;事事应勤思善问&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('22', '0', '1', '堂上诸大人已受封', '&lt;p&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;堂上诸大人已受封&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;堂上诸大人已受封&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;堂上诸大人已受封&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('23', '0', '1', '遵祖父意祖母不必改葬', '&lt;p&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify;&quot;&gt;遵祖父意祖母不必改葬&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;遵祖父意祖母不必改葬&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;遵祖父意祖母不必改葬&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;遵祖父意祖母不必改葬&lt;/span&gt;&lt;span style=&quot;color: rgb(75, 74, 74); line-height: 25px; text-align: justify; font-size: 9pt;&quot;&gt;遵祖父意祖母不必改葬&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('24', '10', '1', '第一章 的第一节', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;d地苦大本营茜茜柘城村夺顶替仝棋村桭 顶替&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('25', '24', '1', '第一章 的第一节的第一小节', '<p><span style=\"font-weight: bold;\">d地苦大本营茜茜柘城村夺顶替仝棋在基本模压 2222222222桭 顶替</span></p>', '0', '1432030395');
INSERT INTO `article` VALUES ('26', '11', '1', '第二章 的第一节', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;d地苦大本营茜茜柘城村夺顶替仝棋在基本模压 2222222222桭 顶替&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('27', '11', '1', '第二章 的第二节', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;d地苦大本营茜茜柘城村夺顶替仝棋在基本模压 2222222222桭 顶替&lt;/span&gt;&lt;/p&gt;', '0', '1432030395');
INSERT INTO `article` VALUES ('28', '13', '1', '第四章 的第一节', '&lt;p&gt;顶替模压 奇才村基本面苛&lt;/p&gt;', '0', '1432103794');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) DEFAULT NULL COMMENT '所属分类',
  `name` varchar(50) DEFAULT NULL,
  `pages` int(11) DEFAULT '0',
  `author` varchar(255) DEFAULT NULL,
  `ibsn` varchar(50) DEFAULT NULL,
  `description` text,
  `img` varchar(255) DEFAULT NULL,
  `number` tinyint(10) DEFAULT '0' COMMENT '图书数量',
  `on_sale` tinyint(1) DEFAULT '0' COMMENT '是否上架 1为上架 0为下架',
  `focus` tinyint(1) DEFAULT '0' COMMENT '关注',
  `best` tinyint(1) DEFAULT '0' COMMENT '精品',
  `hot` tinyint(1) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `order` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否删除 1 为删除 0为不删除 ',
  `add_time` int(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'b',
  `hit` int(11) NOT NULL DEFAULT '0' COMMENT '书本的点击量',
  `public` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '13', ' 曾国藩家书', '309', '李明得', 'pwbcxm1432016789', '人们曾普遍认为主站坦克的地位会随着冷战的结束而大幅下降，并由此导致反坦克武器的重要性也随之下降。但事实再一次证明，这个世界没有真正的预言家。', '/Public/Uploads/book/2015-05-19/555ad795d7d13.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432016789', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('2', '13', '三国志', '307', '李明得', 'nvzobf1432017052', '人们曾普遍认为主站坦克的地位会随着冷战的结束而大幅下降，并由此导致反坦克武器的重要性也随之下降。但事实再一次证明，这个世界没有真正的预言家。', '/Public/Uploads/book/2015-05-19/555ad89c1031a.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432017052', 'b', '2', '四川出版');
INSERT INTO `book` VALUES ('3', '13', '史记', '519', '李明得', 'mjurxh1432017317', '有一个国家打胜仗后，大摆宴席庆功行赏。国王对王子说：“孩子，我们胜利了，可你没有立功。”王子遗憾地说：“父王，你没有让我到前线去，叫我如何立功呢？”有一位大臣连忙安慰他说：“王子，您才18岁，以后立功的机会还多着呢。”王子对国王说：“请问父王，我还能再有一次18岁吗？”国王听了很高兴地说：“很好，孩子，记住你这句话，你就已经立了大功了。”', '/Public/Uploads/book/2015-05-19/555ad9a5874d9.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432017317', 'b', '1', '四川出版');
INSERT INTO `book` VALUES ('4', '13', '宋词三百首、元曲三百首', '275', '李明得', 'iykvou1432017390', '十年前，有个年轻姑娘只身一人去了西藏，她在西藏跑了近三个月，几乎看遍了所有的高原美景，但离开西藏时，却带着一丝遗憾。因为藏在她心底的一个愿望没能实现。那就是，与一个西藏军人相遇，然后相爱，再然后，嫁给他。', '/Public/Uploads/book/2015-05-19/555ad9ee4b499.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432017390', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('5', '13', '容斋随笔', '215', '李明得', 'qdaguz1432017484', '很多人都把袁泉比作一汪清泉，站在聚光灯下的她，云淡风轻、清丽脱俗，就像一个不食人间烟火的女子，有种令人心动的美。尽管有人说她皮肤不好，她却坚持走自然的路线：“我觉得瑕疵是天成的。其实在自然光下的照片更美。”', '/Public/Uploads/book/2015-05-19/555ada4ce8cea.jpg', '0', '1', '1', '1', '1', '1', '51', '0', '1432017484', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('6', '13', '吕氏春秋', '496', '李明得', 'wergmx1432017544', '在我国广袤的大地上，当3名航天英雄完成了太空漫游，乘“轻装战船”载誉而归时，华夏大地沸腾了。神舟七号3名航天员的安全“回家”，再次印证了“减重是飞船飞行成功的重要环节”，同样也昭示了这次神舟七号飞天完美的成功，减重工作功不可没。', '/Public/Uploads/book/2015-05-19/555ada881a6d8.jpg', '0', '1', '1', '1', '1', '1', '52', '0', '1432017544', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('7', '13', '飞秋梦', '468', '李明得', 'wopeis1432017654', '最近臧天朔犯事儿了，而且是好几件大事儿，于是就进去了，惹得不少人长吁短叹。其实吧，人都有点犯事儿的欲望，例如，面对波涛汹涌的美女，大多数男人很难成为柳下惠。但有欲望不等于真犯事儿，抑制一下，用一些二百五的行径，就能轻易地掩饰那颗蠢蠢欲动的心。', '/Public/Uploads/book/2015-05-19/555adaf6ccfa2.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432017654', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('8', '13', '古文观止', '608', '李明得', 'izcasj1432017704', '在这一轮国内的宏观调控中，地产业被秋风卷走的“三重茅”分别是：利率不新上调、遏制非自住购买需求以及压缩地产业融资管道。本刊深入访问数十家本土地产公司CEO及众多业内专业人士，以探求当下“安得资金千万亿，大庇健康的房地产市场俱欢颜”？', '/Public/Uploads/book/2015-05-19/555adb28241c2.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432017704', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('9', '13', '圣经的故事', '838', '李明得', 'yaevft1432018273', '毫不夸张地说，寄生虫就潜伏在我们的周围，随时都有侵入我们体内的危险。我们虽然不必过分紧张，但最好是能做好适当的防范，注意不要染上寄生虫病。在此我们列出一些能引起重病，有时甚至能导致人死亡的寄生虫的代表。但这也只是其中的一部分。', '/Public/Uploads/book/2015-05-19/555add6131a15.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432018273', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('10', '6', '玄幻之武魔之战', '224', '李明得', 'pxjotu1432018327', '最近臧天朔犯事儿了，而且是好几件大事儿，于是就进去了，惹得不少人长吁短叹。其实吧，人都有点犯事儿的欲望，例如，面对波涛汹涌的美女，大多数男人很难成为柳下惠。但有欲望不等于真犯事儿，抑制一下，用一些二百五的行径，就能轻易地掩饰那颗蠢蠢欲动的心。', '/Public/Uploads/book/2015-05-19/555add97e8e88.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432018327', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('11', '6', '玄幻之笑傲苍穹', '597', '李明得', 'xuwymi1432018399', '在这一轮国内的宏观调控中，地产业被秋风卷走的“三重茅”分别是：利率不新上调、遏制非自住购买需求以及压缩地产业融资管道。本刊深入访问数十家本土地产公司CEO及众多业内专业人士，以探求当下“安得资金千万亿，大庇健康的房地产市场俱欢颜”？', '/Public/Uploads/book/2015-05-19/555adddfd75f8.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432018399', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('12', '6', '御剑天下', '863', '李明得', 'eonsmp1432018507', '在本届的巴黎车展上，兰博基尼的4门高性能豪华概念跑车Estoque正式亮相。这对于专注于双门超级跑车的兰博基尼来说是一种对新车型的尝试，不得不说是这家意大利的超跑制造商为了更好的顺应当前潮流所作出的明智之选。', '/Public/Uploads/book/2015-05-19/555ade4be9530.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432018507', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('13', '7', '边声集续编', '665', '李明得', 'wiomqn1432018611', '三星i408整体来说可谓是秀外慧中，沉稳内敛的外形，细致周到的功能，都给使用者带来不错的感受，整机时尚的设计弥补了目前市面上S60智能电话最为缺少的外形亮点。强大的智能系统加上不错的外观设计，i408绝对值得我们期待。', '/Public/Uploads/book/2015-05-19/555adeb3beaf8.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432018611', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('14', '7', '《柯岩文集》第九卷（戏剧', '870', '李明得', 'dokmin1432018673', '忽然想起了巴乌斯托夫斯基。想起了他的《金蔷薇》。一本薄薄的小书。李时先生的译本。多年前，从朋友处借来读过，为之倾倒。遗憾的是，仅是个节译本。有点像看到了美人的眼波流转而没有看到她的腰肢。后来在书店发现了全本，赶快买下来，可是这个译本又少了点衣带当风的感觉。', '/Public/Uploads/book/2015-05-19/555adef1b1a08.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432018673', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('15', '14', '阳谋为上：官场高手过招的至', '621', '李明得', 'quaerl1432018854', '由国家发改委和信息产业部发起的“降低手机国内漫游通话费上限标准听证会”于1月22日在北京召开，但在解读了信息产业部发布的听证会相关公告后，多数业内人士对其持失望态度:手机漫游收费短期内只会下调，不会取消。手机国内漫游收费一直是我国移动通讯行业最难破除的坚冰。', '/Public/Uploads/book/2015-05-19/555adfa671794.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432018854', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('16', '14', '狼王归来', '843', '李明得', 'pbnxel1432018902', '奔奔在3款车中出道最早，奔奔系列车型有十余款，有自动和手动两种变速器，价位从3万-5万元不等，凭借较低的价位和多样的选择，目前销量居3 款车之首。', '/Public/Uploads/book/2015-05-19/555adfd6182b9.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432018902', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('17', '14', '因为尽情，所以伤心', '638', '李明得', 'sngfuy1432019058', '2008年2月以来，摩托罗拉(MOTOROLA)用一系列声明向世人表明了他们正为持续亏损的手机部门寻找出路，甚至为此目的不惜出售这一极具辉煌经历的业务。对于现在的摩托罗拉来说，选择出售手机业务的举措应该会强于分拆或内部重组。', '/Public/Uploads/book/2015-05-19/555ae0727708e.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432019058', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('18', '30', '热钱阴谋', '660', '李明得', 'gyowpv1432019141', '通货膨胀、股市过山车、高不可攀的房价、人民币大幅度升值……这一切的背后都有一个我们看不见的影子--热钱。热钱是国际金融寡头势力潜伏在各个国家的“野狼兵团”。他们就是试图让“羊群”疼痛恐惧，四散奔逃而不得出路，再赶“群羊”跌入挖好的陷阱中，令其心理溃败，束手就擒。 　　热钱是“狼”，哪里有投机收益，哪里就会有狼群的嗜血相争，牟取暴利。热钱是造成全球金融市场动荡乃至金融危机的重要根源，无论是发生在1994年的墨西哥金融危机，还是1997年的亚洲金融危机，还有2008年的越南金融动荡，热钱都起到了推波助澜的作用。 　　热钱已经成为中国投资者和经济界关注度最高的词汇之一。中国已经改革开放了30年，但是金融和汇率体系却一直尚未完善，这给了嗜血的热钱有机可乘。热钱发动的针对中国人财富的“收割机”战争已迫在眉睫。那么，我们能够最终战胜热钱吗？', '/Public/Uploads/book/2015-05-19/555ae0c55e1c2.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432019141', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('19', '26', '左手交朋友 右手做生意', '605', '李明得', 'psbfrm1432019235', '在生意场上，如何交朋友、结交有益的朋友是一门学问。做好生意赚大钱，交好朋友成大事。一个人缘好、会选择朋友并懂得维护好朋友关系的人，一个具有良好的经商心态并且有生意头脑的人，就能够把握和利用好各种场合，轻松交益友，顺利做成生意，在生意场上如鱼得水。　　《左手交朋友 右手做生意》汇聚了众多在商海中摸爬滚打，最终走向成功的卓越商人和知名企业家的经商经验和心得体会。通过通俗易懂的语言，《左手交朋友 右手做生意》循序渐进地向读者介绍了结交朋友的重要性以及如何选择朋友、如何结交朋友、如何维护好朋友之间的友谊、如何把握好生意场上的感情投资等诸方面的方法和技巧，帮助读者在生意场上更好地结交朋友，成功做生意。', '/Public/Uploads/book/2015-05-19/555ae1230160b.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432019235', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('20', '26', '超强人脉术', '702', '李明得', 'leokpb1432019330', '人与人之间的关系可能是世界上最复杂的东两，而中国人之间的关系则更加微妙。中国人普遍认为“在家靠父母，出外靠朋友”，靠不靠得住，能不能成功，就看人脉关系如何。由此可见，如果缺乏良好的人脉关系，能力再强的销售人员，也无法在现实生活中取得成功。 所以，我们策划了这本《超强人脉术——没有好人脉，就做不了好销售》的书，希望能够帮助广大销售人员构建一张黄金般的人脉地图。 销售的成功和财富的获得，都是多方面因素的集合——资金、信息、人才、技术等缺一不可，但是拥有超强的人脉关系，将是成功的助推剂，并在关键时刻发挥着不可替代的作用。那么，如何才能打造超强的人脉关系呢？本书作者以多年的实战智慧详尽地阐述了打造和谐人脉关系的诀窍。全书内容翔实，观点鲜明，论证充分，语言优美，是一本指导广大销售人员构建良好人脉，获取成功不可多得的好书。', '/Public/Uploads/book/2015-05-19/555ae182a74a1.jpg', '0', '1', '0', '1', '0', '1', '50', '0', '1432019330', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('21', '30', '2.0时代的赢利模式', '649', '李明得', 'apsvym1432019393', '中国大大小小的企业经过十几、二十年的发展，现在均不同程度地撞到了成长天花板。 面对新经济的冲击，众多企业都已经意识到自身应该进行变化，但应该朝哪个方向变，怎么变，大家并不清楚，盲目调整带来的是亏损的剧增，焦急等待换来的是进一步恶化。 只要还能生存下去，很多企业都只是在做局部的零敲碎打，试图以此来获得赢利的增长点，其实这就像温水中的青蛙一样，等到危机真正到来时，我们再努力改变也于事无补，走在前面的企业已经占领了市场的绝对优势。 基于此，我们认为有必要对中国企业进行理念的刷新，为他们提供一种切实有效的模式，帮助他们进行系统性的提升，唯有如此，中国企业才能真正实现可持续发展，从成功走向成熟。 本书讲的就是在这样的变革的时代，中国企业如何在商业模式上得到全方位的提升，从战略提升到产品创新，从品牌重塑到渠道重构，从客户关系到员工发展……某著名财经杂志社长评价：是我迄今为止看过的经营管理类图书中本土与原创相结合最出色的一本书，也是实用性与思想性结合最完美的一本书。独特的视点、系统的构思、明白的阐述给人一种醍醐灌顶之感。', '/Public/Uploads/book/2015-05-19/555ae1c1e919d.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432019393', 'b', '1', '四川出版');
INSERT INTO `book` VALUES ('22', '24', '论语 ·孟子', '274', '李明得', 'rwybfl1432022469', '《最爱读国学书系:论语·孟子》是孔子与其弟子的语录结集，儒家重要经典之一。结集工作是由孔子门人及再传弟子完成的。', '/Public/Uploads/book/2015-05-19/555aedc52dcec.jpg', '0', '1', '1', '0', '1', '1', '50', '0', '1432022469', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('23', '24', '图解三国演义', '264', '李明得', 'oblyjr1432022548', '三国是中国最经典的一段历史，《三国演义》则是中国最受欢迎的小说之一。一直以来，对三国故事的研究解读可谓层出不穷，然而大多都停留在文字层面。本书则颠覆以往的解读方式，用“一页文字加一页图解”的全新方法为您全面解构三国的里里外外。全书分为人物篇、故事篇、寓意篇和篇外篇四大部分，既有经典人物的性格命运剖析，也有经典情节的来龙去脉解读，还涉及了《三国演义》的虚实争论、主题艺术、谋略用人等诸多热点。每一个小节都配有相应的图解内容，如人物关系谱、活动路线图、服装兵器介绍等等，力求将深入细致的分析和简洁明了的图解完美结合，为您展现一个更直观、更形象的三国。', '/Public/Uploads/book/2015-05-19/555aee14689e5.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432022548', 'b', '1', '四川出版');
INSERT INTO `book` VALUES ('24', '23', '图解红楼梦 图解红楼梦', '241', '李明得', 'wxurtz1432022615', '中国古典小说的巅峰之作： 清乾隆年间，一部未标年代、没有署名的小说《石头记》（现在通用书名《红楼梦》）问世，诸藏书家竞相抄录传阅，一时纸贵京都，更有“开谈不说红楼梦，读尽书枉然”的说法。这样，《红楼梦》不仅一举取代《金瓶梅》，而与《三国演义》《水浒传》《西游记》并称为“中国四大古典名著 ”，更被誉为中国古今第一奇书，位居“四大名著”之首。 　　迷雾重重的绝世奇书： 由于种种原因，《红楼梦》原稿只流传了80回，而现今流行的120回本则为程伟元、高鹗等人所续。这位断臂的“维纳斯“为后人留下了太多的谜团，有人毕生都在从事着红学研究，关于红学的论争更是持续了二百余年，相沿不绝。 　　换一种方式读“红楼”： 无论是对于《红楼梦》本身，还是对于支系庞杂的红学，我们都可以采用一种全新的阅读方式来征服它。本书将用大量人物形象图、人物关系谱、活动路线图、经典情节再现及谜底追踪等图解形式，让你轻松读懂《红楼梦》。', '/Public/Uploads/book/2015-05-19/555aee57b9441.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432022615', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('25', '24', '图解水浒传', '236', '李明得', 'vtozpu1432022664', '中国古典小说的巅峰之作： 清乾隆年间，一部未标年代、没有署名的小说《石头记》（现在通用书名《红楼梦》）问世，诸藏书家竞相抄录传阅，一时纸贵京都，更有“开谈不说红楼梦，读尽书枉然”的说法。这样，《红楼梦》不仅一举取代《金瓶梅》，而与《三国演义》《水浒传》《西游记》并称为“中国四大古典名著 ”，更被誉为中国古今第一奇书，位居“四大名著”之首。 　　迷雾重重的绝世奇书： 由于种种原因，《红楼梦》原稿只流传了80回，而现今流行的120回本则为程伟元、高鹗等人所续。这位断臂的“维纳斯“为后人留下了太多的谜团，有人毕生都在从事着红学研究，关于红学的论争更是持续了二百余年，相沿不绝。 　　换一种方式读“红楼”： 无论是对于《红楼梦》本身，还是对于支系庞杂的红学，我们都可以采用一种全新的阅读方式来征服它。本书将用大量人物形象图、人物关系谱、活动路线图、经典情节再现及谜底追踪等图解形式，让你轻松读懂《红楼梦》。', '/Public/Uploads/book/2015-05-19/555aee88d0dce.jpg', '0', '1', '0', '1', '1', '0', '50', '0', '1432022664', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('26', '24', '诸子百家', '741', '李明得', 'ygpuwb1432022810', '《诸子百家》选取了先秦直至清朝时期各个时代思想界的代表著作25部，涵盖了儒、道、法、墨、名、兵、小说、杂家等八个学派。在内容编排上，《诸子百家》侧重于知识点的介绍，设有“作者简介”、“思想解读”等栏目，读者可以从中了解著作的内容概要，熟悉作者的生平事迹，解读其中所蕴含的思想光芒。', '/Public/Uploads/book/2015-05-19/555aef1a1932d.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432022810', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('27', '24', '图解西游记', '366', '李明得', 'unocpt1432022887', '《西游记》小说讲的是唐僧师徒历经九九八十一难到西天取得真经的故事，自问世以来在中国及世界各地广为流传，被翻译成多种语言。不仅在中国，在亚洲部分地区《西游记》都家喻户晓，其中孙悟空、唐僧、猪八戒、沙僧等形象和大闹天宫、三打白骨精、火焰山等故事更为人们所熟识。《西游记》还被改编成了各种地方戏曲、电影、电视剧、动画片、漫画等。总之，在小说的基础上，已经形成了一个庞大的“西游文化圈”。 　　为了让读者更多的了解作为四大名著之一的《西游记》，我们出版了《图解西游记》一书。本书把小说分为人物篇、故事篇、寓意篇和篇外篇四部分，人物篇重新解析书中的神魔妖怪；故事篇详解八十一难；寓意篇从小处着手话主题； 篇外篇讲述西游外的故事。 　　本书最具特色且最让我们引以为豪的地方，是通过一张张生动的图解与表格，使您能够准确又轻松地掌握我们所想要传达的重点，不会再有枯燥乏味之感；在形象化的图表中，您会发觉原来名著可以这样读。', '/Public/Uploads/book/2015-05-19/555aef6713768.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432022887', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('28', '38', '最好的健康给孩子', '315', '李明得', 'qpcymg1432022964', '本书针对5～13岁儿童的健康现状，用通俗易懂的语言为你讲解儿童生活习惯、心理健康、身体健康、家庭安全等健康知识，从孩子健康方面存在的问题及调养知识等方面作了全面的梳理、解疑和精心的指导。', '/Public/Uploads/book/2015-05-19/555aefb4dcd51.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432022964', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('29', '38', '父母教给孩子的人生第一堂', '693', '李明得', 'gqtsdl1432023032', '俗话说：“父母是孩子最好的老师”。在现实生活中，每对父母的生活环境可能会各有不同，相同的是对孩子的爱，有了这种爱，父母就有了做最好老师的必要条件。然而，父母们应该知道，光有爱还不够，同样是父母之爱，有些爱把孩子培养成了德才兼备的人才，有些爱却把孩子带入自我毁灭的深渊。 　　《父母教给孩子的人生第一堂课（女孩篇）》从习惯、学习、情商、交际、健康、财商、美德、气质八个方面来帮父母把教育女孩当中可能出现的问题逐一击破，让父母成为女孩人生路上传道授业解惑的良师。', '/Public/Uploads/book/2015-05-19/555aeff84a973.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432023032', 'b', '1', '四川出版');
INSERT INTO `book` VALUES ('30', '39', '足球王国：巴西足球史', '637', '李明得', 'dljcoq1432023157', '《足球王国：巴西足球史》由英国著名足球评论员大卫·戈德布拉特执笔，英文版由企鹅出版集团出版。指文图书独家引进中文版，得到足球评论员段暄、詹俊、申方剑的联合推荐，并由CCTV、新浪体育官方合作伙伴搜达足球总编辑、资深足球媒体人刘晶捷担任总顾问，是一段当代最杰出的足球评论家笔下最伟大的足球王国的历史。世界上没有一个国度像巴西这般，将民族身份同踢球和观看足球比赛结合在一起。从一代球王贝利到腐败与内乱，《足球王国：巴西足球史》探讨了以足球为象征的巴西文化中的精华与糟粕。这就是整个故事——关于球员、球迷、政治家、激情的故事。足球被视为一种带来欢乐的事物，而巴西队黄色的战袍是体育与艺术的美妙结合体。《足球王国：巴西足球史》中所记录的是这个国度通过足球运动的激情所折射出来的权威而扣人心弦的历史。', '/Public/Uploads/book/2015-05-19/555af075e8e0c.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432023157', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('31', '39', '魔法塑形瑜伽', '625', '李明得', 'ybfcuj1432023207', '天天瑜伽，天天美丽。神奇瑜伽，塑形有道，现代女性首选运动方式，零基础教学，瑜伽教练亲自示范，步骤详尽，一学就会，《天天瑜伽：魔法塑形》带您走进神秘的瑜伽世界，去感受瑜伽塑形的神奇功效，让我们一起去见证瑜伽带来的美丽变化。', '/Public/Uploads/book/2015-05-19/555af0a759ff4.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432023207', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('32', '28', '商周刊', '728', '李明得', 'drbiuj1432029983', '简介：这次央行降准与以往的做法有很大不同。首先，是时间上的突然性。从刚发布的经济数据疲弱、一季度外汇占款减少导致基础货币紧缩、配合财政的账务置换等因素来看，市场早就预测央行将会降准，但却没料到会这么快，距离上次降准还不满3个月。', '/Public/Uploads/book/2015-05-19/555b0b1f25ceb.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432029983', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('33', '30', '财经', '858', '李明得', 'yorafh1432030031', '自上而下的政策倡导，和自下而上的企业实践无缝连接、良性互动，“互联网+”才能从时髦概念和美好愿景，变成推动创新创业和产业升级的滚滚洪流。', '/Public/Uploads/book/2015-05-19/555b0b4fb3075.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432030031', 'b', '2', '四川出版');
INSERT INTO `book` VALUES ('34', '75', '中国计算机报', '290', '李明得', 'fkqnbr1432030102', '十年前，英特尔发布了至强7000处理器，让x86架构通用服务器真正迈上了高端关键性业务的台阶。就在5月6日，英特尔又推出至强E7v3处理器，作为至强高端处理器的代表，E7v3到底有哪些突破呢？', '/Public/Uploads/book/2015-05-19/555b0b9682c8e.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432030102', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('35', '75', '网络世界', '406', '李明得', 'qurcsg1432030145', '近几年来，伴随云计算、大数据、物联网等从概念到实践，作为支撑这些业务发展的数据中心基础设施行业面临巨大的机遇和挑战。', '/Public/Uploads/book/2015-05-19/555b0bc1426be.jpg', '0', '1', '0', '0', '0', '0', '50', '0', '1432030145', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('36', '284', '大众网络报', '230', '李明得', 'yrdlig1432030207', '4 月初加油包活动上线以来受到了玩家的热烈追捧袁牛头怪乐园4倍经验与通关必掉落6 个高级牛头怪经验书遥', '/Public/Uploads/book/2015-05-19/555b0bffcfccb.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432030207', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('37', '75', '中国信息化周报', '622', '李明得', 'ybhwrj1432030298', '驴妈妈旅游网站创始人洪清华说：“我在创办驴妈妈时的定位就是要创立中国最好的自助游服务商。在我们之前，在线旅游市场的主要商业模式有‘机票+酒店’的商务模式以及垂直类搜索引擎，基本上没有为自助游服务的模式。”', '/Public/Uploads/book/2015-05-19/555b0c5a060ce.jpg', '0', '1', '1', '1', '1', '1', '50', '0', '1432030298', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('38', '75', '职业教育研究', '381', '李明得', 'gserwc1432030395', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/203771435398409.jpg', '0', '1', '0', '1', '1', '1', '50', '0', '1432030395', 'b', '0', '四川出版');
INSERT INTO `book` VALUES ('39', '284', '计算机世界', '826', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/203771435398409.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('40', '284', '计算机世界', '728', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/203771435398409.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('41', '284', '计算机世界', '226', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('42', '284', '职业教育研究', '535', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('43', '284', '计算机世界', '550', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('44', '284', '计算机世界', '271', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/150451748666703.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('45', '284', '职业教育研究', '261', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/150451748666703.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('46', '284', '职业教育研究', '732', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/150451748666703.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('47', '284', '计算机世界', '694', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('48', '284', '新课程研究教师教育', '766', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/150451748666703.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('49', '284', '计算机世界', '268', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/203771435398409.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('50', '284', '新课程研究教师教育', '599', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/88931703556753.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '四川出版');
INSERT INTO `book` VALUES ('51', '284', '科学大众·小诺贝尔', '623', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/203771435398409.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('52', '284', '新课程研究教师教育', '263', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/88931703556753.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('53', '284', '科学大众·小诺贝尔', '837', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('54', '284', '新课程研究教师教育', '816', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/88931703556753.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('55', '284', '计算机世界', '753', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/220092283538159.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('56', '284', '新课程研究教师教育', '667', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/88931703556753.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('57', '284', '科学大众·小诺贝尔', '808', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/88931703556753.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('58', '284', '计算机世界', '308', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('59', '285', '计算机世界', '450', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/29012661351206.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('60', '285', '新课程研究教师教育', '731', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('61', '285', '计算机世界', '772', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/29012661351206.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('62', '285', '书刊报·绿色版', '455', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/220092283538159.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('63', '285', '科学大众·小诺贝尔', '829', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/29012661351206.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('64', '285', '书刊报·绿色版', '256', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/29012661351206.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('65', '285', '科学大众·小诺贝尔', '269', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('66', '285', '计算机世界', '887', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/29012661351206.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('67', '285', '科学大众·小诺贝尔', '556', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/222862280151722.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('68', '285', '书刊报·绿色版', '799', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/24110655065269.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('69', '285', '计算机世界', '592', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/24110655065269.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('70', '285', '科学大众·小诺贝尔', '878', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/24110655065269.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('71', '285', '科学大众·小诺贝尔', '746', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/222862280151722.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('72', '285', '计算机世界', '760', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/24110655065269.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('73', '285', '大学生·能力博士', '579', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/24110655065269.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('74', '285', '计算机世界', '759', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/555b0cbb4451b.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('75', '285', '计算机世界', '766', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/24110655065269.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('76', '285', '大学生·能力博士', '292', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/24110655065269.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('77', '285', '计算机世界', '822', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/222862280151722.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('78', '285', '计算机世界', '507', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/13919747505003.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('79', '290', '大学生·能力博士', '329', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('80', '290', '计算机世界', '601', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('81', '290', '大学生·能力博士', '861', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('82', '290', '计算机世界', '451', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('83', '290', '大学生·能力博士', '203', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('84', '290', '计算机世界', '437', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('85', '290', '大学生·能力博士', '587', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('86', '290', '计算机世界', '569', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('87', '290', '计算机世界', '805', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('88', '290', '计算机世界', '305', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('89', '290', '科学大众·科学教育', '240', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('90', '290', '计算机世界', '488', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('91', '290', '计算机世界', '797', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('92', '290', '科学大众·科学教育', '358', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('93', '290', '计算机世界', '412', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('94', '290', '计算机世界', '887', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('95', '290', '科学大众·科学教育', '596', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('96', '290', '计算机世界', '398', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('97', '290', '计算机世界', '643', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('98', '290', '计算机世界', '694', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/290.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('99', '300', '计算机世界', '267', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('100', '300', '计算机世界', '579', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '湖南出版社');
INSERT INTO `book` VALUES ('101', '300', '科学大众·科学教育', '824', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('102', '300', '计算机世界', '587', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('103', '300', '计算机世界', '228', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('104', '300', '计算机世界', '705', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('105', '300', '计算机世界', '493', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('106', '300', '电子产品世界', '895', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('107', '300', '电子产品世界', '543', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('108', '300', '计算机世界', '226', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('109', '300', '电子产品世界', '244', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('110', '300', '计算机世界', '895', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('111', '300', '计算机世界', '227', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('112', '300', '电子产品世界', '348', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('113', '300', '计算机世界', '316', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('114', '300', '计算机世界', '215', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('115', '300', '计算机世界', '748', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('116', '300', '计算机世界', '524', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('117', '300', '计算机世界', '600', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('118', '300', '科学大众·科学教育', '234', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/300.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('119', '301', '计算机世界', '418', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('120', '301', '计算机世界', '556', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('121', '301', '电子产品世界', '637', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('122', '301', '计算机世界', '580', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('123', '301', '计算机世界', '706', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('124', '301', '计算机世界', '598', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('125', '301', '计算机世界', '316', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('126', '301', '电子产品世界', '531', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('127', '301', '计算机世界', '625', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('128', '301', '计算机世界', '452', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('129', '301', '计算机世界', '580', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('130', '301', '计算机世界', '414', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('131', '301', '电子产品世界', '242', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('132', '301', '计算机世界', '272', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('133', '301', '电脑时空', '618', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('134', '301', '计算机世界', '209', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('135', '301', '电脑时空', '674', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('136', '301', '计算机世界', '561', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('137', '301', '电脑时空', '671', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('138', '301', '计算机世界', '243', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/301.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('139', '305', '电脑时空', '584', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('140', '305', '科学大众·科学教育', '773', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('141', '305', '计算机世界', '629', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('142', '305', '电脑迷·学术刊', '495', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('143', '305', '电脑迷', '388', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('144', '305', '科学大众·科学教育', '709', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('145', '305', '计算机世界', '734', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('146', '305', '电脑迷·学术刊', '592', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('147', '305', '电脑迷', '854', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('148', '305', '科学大众·科学教育', '524', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('149', '305', '电脑迷', '876', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('150', '305', '电脑迷·学术刊', '512', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '南方出版社');
INSERT INTO `book` VALUES ('151', '305', '科学大众·科学教育', '294', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('152', '305', '计算机世界', '720', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('153', '305', '电脑迷·学术刊', '595', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('154', '305', '电脑迷', '585', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('155', '305', '电脑迷', '878', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('156', '305', '电脑迷·学术刊', '751', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('157', '305', '电脑迷', '482', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('158', '305', '电脑迷', '787', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/305.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('159', '306', '电脑迷', '217', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('160', '306', '电脑迷·学术刊', '419', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('161', '306', '电脑报（新闻周刊）', '779', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('162', '306', '电脑迷·学术刊', '748', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('163', '306', '电脑报（新闻周刊）', '480', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('164', '306', '计算机世界', '578', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('165', '306', '电脑爱好者', '674', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('166', '306', '电脑报（新闻周刊）', '444', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('167', '306', '电脑爱好者', '681', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('168', '306', '电脑报（新闻周刊）', '331', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('169', '306', '电脑爱好者', '410', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('170', '306', '电脑爱好者', '204', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('171', '306', '计算机世界', '887', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('172', '306', '电脑爱好者', '531', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('173', '306', '电脑爱好者', '576', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('174', '306', '电脑爱好者', '708', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('175', '306', '电脑迷', '812', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('176', '306', '电脑爱好者', '281', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('177', '306', '电脑报（新闻周刊）', '714', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('178', '306', '电脑爱好者', '881', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/306.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('179', '125', '电脑爱好者', '522', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('180', '125', '计算机应用文摘', '435', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('181', '125', '电脑爱好者', '714', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('182', '125', '电脑爱好者', '703', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('183', '125', '电脑爱好者', '433', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('184', '125', '电脑爱好者', '796', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('185', '125', '电脑爱好者', '816', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('186', '125', '电脑爱好者', '502', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('187', '125', '电脑爱好者', '611', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('188', '125', '电脑爱好者', '816', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('189', '125', '电脑爱好者', '210', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('190', '125', '电脑爱好者', '255', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('191', '125', '计算机世界', '772', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('192', '125', '电脑爱好者', '297', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('193', '125', '计算机世界', '540', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('194', '125', '电脑爱好者', '292', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('195', '125', '计算机世界', '279', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('196', '125', '电脑爱好者', '796', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('197', '125', '计算机世界', '293', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('198', '125', '电脑爱好者', '591', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/307.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('199', '122', '电脑报1000期特别报道', '251', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('200', '122', '电脑爱好者', '713', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '北京出版社');
INSERT INTO `book` VALUES ('201', '122', '计算机世界', '412', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('202', '122', '电脑爱好者', '778', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('203', '122', '电脑爱好者', '752', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('204', '122', '微型计算机', '202', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('205', '122', '微型计算机', '787', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('206', '122', '计算机世界', '833', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('207', '122', '微型计算机', '797', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('208', '122', '计算机世界', '467', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/308.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('209', '125', '电脑报1000期特别报道', '256', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('210', '125', '计算机世界', '382', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('211', '125', '微型计算机', '453', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('212', '125', '微型计算机', '259', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('213', '125', '微型计算机', '814', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('214', '125', '微型计算机', '807', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('215', '125', '计算机世界', '835', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '2', '黑龙江出版社');
INSERT INTO `book` VALUES ('216', '125', '电子竞技', '784', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('217', '125', '电脑迷', '599', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('218', '125', '微型计算机', '332', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/309.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('219', '121', '电脑迷', '608', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('220', '121', '掌机王SP', '793', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('221', '121', '大众网络报', '202', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('222', '121', '电脑报', '337', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('223', '121', '网络世界', '889', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('224', '121', '微型计算机', '790', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('225', '121', '计算机火人', '564', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('226', '121', '计算机之家', '451', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('227', '121', '微型计算机', '341', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');
INSERT INTO `book` VALUES ('228', '121', '微型计算机', '506', '李明得', 'ybhwrj1432030298', '人们都期盼享受智能家居带来的智能生活，但今天的智能家居似乎还不那么让人满意，这正是推动智能家居前行的力量。在智能家居行业巨头尚未产生的今天，市场竞争将存在更多的不确定性。', '/Public/Uploads/book/2015-05-19/310.jpg', '0', '1', '1', '1', '1', '1', '0', '0', '1432030395', 'm', '0', '黑龙江出版社');

-- ----------------------------
-- Table structure for `cate_book`
-- ----------------------------
DROP TABLE IF EXISTS `cate_book`;
CREATE TABLE `cate_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `inv` int(11) DEFAULT '0',
  `p_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate_book
-- ----------------------------
INSERT INTO `cate_book` VALUES ('1', '文学小说', '23', '0');
INSERT INTO `cate_book` VALUES ('2', '经济管理', '6', '0');
INSERT INTO `cate_book` VALUES ('3', '娱乐/时尚/生活', '4', '0');
INSERT INTO `cate_book` VALUES ('4', '人文社科', '0', '0');
INSERT INTO `cate_book` VALUES ('5', '教育科技', '4', '0');
INSERT INTO `cate_book` VALUES ('6', '玄幻', '3', '1');
INSERT INTO `cate_book` VALUES ('7', '文学理论', '2', '1');
INSERT INTO `cate_book` VALUES ('8', '侦探', '0', '1');
INSERT INTO `cate_book` VALUES ('9', '悬疑', '0', '1');
INSERT INTO `cate_book` VALUES ('10', '推理', '0', '1');
INSERT INTO `cate_book` VALUES ('11', '青春文学', '0', '1');
INSERT INTO `cate_book` VALUES ('12', '随笔', '0', '1');
INSERT INTO `cate_book` VALUES ('13', '中国古典文学', '9', '1');
INSERT INTO `cate_book` VALUES ('14', '小说', '3', '1');
INSERT INTO `cate_book` VALUES ('15', '散文', '0', '1');
INSERT INTO `cate_book` VALUES ('16', '传记', '0', '1');
INSERT INTO `cate_book` VALUES ('17', '言情', '0', '1');
INSERT INTO `cate_book` VALUES ('18', '武侠', '0', '1');
INSERT INTO `cate_book` VALUES ('19', '惊悚', '0', '1');
INSERT INTO `cate_book` VALUES ('20', '纪实', '0', '1');
INSERT INTO `cate_book` VALUES ('21', '励志', '0', '1');
INSERT INTO `cate_book` VALUES ('22', '动漫', '0', '1');
INSERT INTO `cate_book` VALUES ('23', '外国名著', '1', '1');
INSERT INTO `cate_book` VALUES ('24', '中国名著', '5', '1');
INSERT INTO `cate_book` VALUES ('25', '诗歌', '0', '1');
INSERT INTO `cate_book` VALUES ('26', '人际交往', '2', '2');
INSERT INTO `cate_book` VALUES ('27', '沟通', '0', '2');
INSERT INTO `cate_book` VALUES ('28', '商业史传', '1', '2');
INSERT INTO `cate_book` VALUES ('29', '电子商务', '0', '2');
INSERT INTO `cate_book` VALUES ('30', '经济学', '3', '2');
INSERT INTO `cate_book` VALUES ('31', '投资', '0', '2');
INSERT INTO `cate_book` VALUES ('32', '营销', '0', '2');
INSERT INTO `cate_book` VALUES ('33', '企管', '0', '2');
INSERT INTO `cate_book` VALUES ('34', '职场', '0', '2');
INSERT INTO `cate_book` VALUES ('35', '理财', '0', '2');
INSERT INTO `cate_book` VALUES ('36', '手工/DIY', '0', '3');
INSERT INTO `cate_book` VALUES ('37', '孕产妇/育儿', '0', '3');
INSERT INTO `cate_book` VALUES ('38', '家庭教育', '2', '3');
INSERT INTO `cate_book` VALUES ('39', '体育运动', '2', '3');
INSERT INTO `cate_book` VALUES ('40', '娱乐', '0', '3');
INSERT INTO `cate_book` VALUES ('41', '摄影', '0', '3');
INSERT INTO `cate_book` VALUES ('42', '美食旅游', '0', '3');
INSERT INTO `cate_book` VALUES ('43', '家庭沟通', '0', '3');
INSERT INTO `cate_book` VALUES ('44', '服饰美容', '0', '3');
INSERT INTO `cate_book` VALUES ('45', '收藏/鉴赏', '0', '3');
INSERT INTO `cate_book` VALUES ('46', '两性', '0', '3');
INSERT INTO `cate_book` VALUES ('47', '游戏', '0', '3');
INSERT INTO `cate_book` VALUES ('48', '健康', '0', '3');
INSERT INTO `cate_book` VALUES ('49', '心灵励志', '0', '3');
INSERT INTO `cate_book` VALUES ('50', '休闲/爱好', '0', '3');
INSERT INTO `cate_book` VALUES ('51', '家居', '0', '3');
INSERT INTO `cate_book` VALUES ('52', '世界文化', '0', '4');
INSERT INTO `cate_book` VALUES ('53', '书法篆刻', '0', '4');
INSERT INTO `cate_book` VALUES ('54', '法律', '0', '4');
INSERT INTO `cate_book` VALUES ('55', '中国文化', '0', '4');
INSERT INTO `cate_book` VALUES ('56', '社会学理论', '0', '4');
INSERT INTO `cate_book` VALUES ('57', '科普', '0', '4');
INSERT INTO `cate_book` VALUES ('58', '语言文字', '0', '4');
INSERT INTO `cate_book` VALUES ('59', '政治军事', '0', '4');
INSERT INTO `cate_book` VALUES ('60', '历史地理', '0', '4');
INSERT INTO `cate_book` VALUES ('61', '心理学', '0', '4');
INSERT INTO `cate_book` VALUES ('62', '哲学', '0', '4');
INSERT INTO `cate_book` VALUES ('63', '宗教艺术', '0', '4');
INSERT INTO `cate_book` VALUES ('64', '外语', '0', '5');
INSERT INTO `cate_book` VALUES ('65', '中小学教辅', '0', '5');
INSERT INTO `cate_book` VALUES ('66', '会计', '0', '5');
INSERT INTO `cate_book` VALUES ('67', '教育理论', '0', '5');
INSERT INTO `cate_book` VALUES ('68', '考试', '0', '5');
INSERT INTO `cate_book` VALUES ('69', '教材', '0', '5');
INSERT INTO `cate_book` VALUES ('70', '建筑', '0', '5');
INSERT INTO `cate_book` VALUES ('71', '农林', '0', '5');
INSERT INTO `cate_book` VALUES ('72', '交通', '0', '5');
INSERT INTO `cate_book` VALUES ('73', '机械', '0', '5');
INSERT INTO `cate_book` VALUES ('74', '医学', '0', '5');
INSERT INTO `cate_book` VALUES ('75', '计算机与网络', '4', '5');
INSERT INTO `cate_book` VALUES ('76', '化工', '0', '5');
INSERT INTO `cate_book` VALUES ('77', '作品集', '0', '1');
INSERT INTO `cate_book` VALUES ('78', '世界名著', '0', '1');
INSERT INTO `cate_book` VALUES ('79', '外国小说', '0', '1');
INSERT INTO `cate_book` VALUES ('80', '中国古典小说', '0', '1');
INSERT INTO `cate_book` VALUES ('81', '中国现代小说', '0', '1');
INSERT INTO `cate_book` VALUES ('82', '中国当代小说', '0', '1');
INSERT INTO `cate_book` VALUES ('83', '影视同期书', '0', '1');
INSERT INTO `cate_book` VALUES ('84', '历史小说', '0', '1');
INSERT INTO `cate_book` VALUES ('85', '外文原版书', '0', '1');
INSERT INTO `cate_book` VALUES ('86', '都市小说', '0', '1');
INSERT INTO `cate_book` VALUES ('87', '悬疑/推理小说', '0', '1');
INSERT INTO `cate_book` VALUES ('88', '恐怖/惊悚小说', '0', '1');
INSERT INTO `cate_book` VALUES ('89', '武侠小说', '0', '1');
INSERT INTO `cate_book` VALUES ('90', '言情小说 ', '0', '1');
INSERT INTO `cate_book` VALUES ('91', '艺术', '0', '0');
INSERT INTO `cate_book` VALUES ('92', '艺术理论', '0', '91');
INSERT INTO `cate_book` VALUES ('93', '人体艺术', '0', '91');
INSERT INTO `cate_book` VALUES ('94', '设计', '0', '91');
INSERT INTO `cate_book` VALUES ('95', '影视艺术', '0', '91');
INSERT INTO `cate_book` VALUES ('96', '建筑艺术', '0', '91');
INSERT INTO `cate_book` VALUES ('97', '舞台艺术/戏曲', '0', '91');
INSERT INTO `cate_book` VALUES ('98', '收藏鉴赏', '0', '91');
INSERT INTO `cate_book` VALUES ('99', '民间艺术', '0', '91');
INSERT INTO `cate_book` VALUES ('100', '外文原版书', '0', '91');
INSERT INTO `cate_book` VALUES ('101', '摄影', '0', '91');
INSERT INTO `cate_book` VALUES ('102', '理论/教程', '0', '91');
INSERT INTO `cate_book` VALUES ('103', '技法/器材', '0', '91');
INSERT INTO `cate_book` VALUES ('104', '作品', '0', '91');
INSERT INTO `cate_book` VALUES ('105', '美术', '0', '91');
INSERT INTO `cate_book` VALUES ('106', '理论', '0', '91');
INSERT INTO `cate_book` VALUES ('107', '技法/教程', '0', '91');
INSERT INTO `cate_book` VALUES ('108', '画谱/画册', '0', '91');
INSERT INTO `cate_book` VALUES ('109', '书法/篆刻', '0', '91');
INSERT INTO `cate_book` VALUES ('110', '技法/评述', '0', '91');
INSERT INTO `cate_book` VALUES ('111', '名家作品', '0', '91');
INSERT INTO `cate_book` VALUES ('112', '字帖', '0', '91');
INSERT INTO `cate_book` VALUES ('113', '篆刻', '0', '91');
INSERT INTO `cate_book` VALUES ('114', '音乐', '0', '91');
INSERT INTO `cate_book` VALUES ('115', '乐理/评述', '0', '91');
INSERT INTO `cate_book` VALUES ('116', '教程/考级', '0', '91');
INSERT INTO `cate_book` VALUES ('117', '演奏法/演唱法', '0', '91');
INSERT INTO `cate_book` VALUES ('118', '乐谱/歌谱  ', '0', '91');
INSERT INTO `cate_book` VALUES ('119', '动漫/幽默', '0', '0');
INSERT INTO `cate_book` VALUES ('120', '动漫学堂', '0', '119');
INSERT INTO `cate_book` VALUES ('121', '大师画集', '20', '119');
INSERT INTO `cate_book` VALUES ('122', '名著绘图本', '20', '119');
INSERT INTO `cate_book` VALUES ('123', '幽默与漫画', '20', '119');
INSERT INTO `cate_book` VALUES ('124', '笑话/打油诗', '20', '119');
INSERT INTO `cate_book` VALUES ('125', '连环画', '0', '119');
INSERT INTO `cate_book` VALUES ('126', '相声/小品/曲艺', '0', '119');
INSERT INTO `cate_book` VALUES ('127', '外文原版书', '0', '119');
INSERT INTO `cate_book` VALUES ('128', '动漫书库', '0', '119');
INSERT INTO `cate_book` VALUES ('129', '推理/侦探', '0', '119');
INSERT INTO `cate_book` VALUES ('130', '冒险', '0', '119');
INSERT INTO `cate_book` VALUES ('131', '武侠/动作', '0', '119');
INSERT INTO `cate_book` VALUES ('132', '纯情', '0', '119');
INSERT INTO `cate_book` VALUES ('133', '生活/都市', '0', '119');
INSERT INTO `cate_book` VALUES ('134', '体育', '0', '119');
INSERT INTO `cate_book` VALUES ('135', '搞笑', '0', '119');
INSERT INTO `cate_book` VALUES ('136', '科幻/奇幻/魔幻', '0', '119');
INSERT INTO `cate_book` VALUES ('137', '美容/美体/化妆', '0', '3');
INSERT INTO `cate_book` VALUES ('138', '减肥健身', '0', '3');
INSERT INTO `cate_book` VALUES ('139', '瑜伽', '0', '3');
INSERT INTO `cate_book` VALUES ('140', '服装/饰品', '0', '3');
INSERT INTO `cate_book` VALUES ('141', '丽质女人', '0', '3');
INSERT INTO `cate_book` VALUES ('142', '时尚DIY', '0', '3');
INSERT INTO `cate_book` VALUES ('143', '宠物', '0', '3');
INSERT INTO `cate_book` VALUES ('144', '占卜测试', '0', '3');
INSERT INTO `cate_book` VALUES ('145', '明星', '0', '3');
INSERT INTO `cate_book` VALUES ('146', '读图时代', '0', '3');
INSERT INTO `cate_book` VALUES ('147', '外文原版书', '0', '3');
INSERT INTO `cate_book` VALUES ('148', '游戏', '0', '3');
INSERT INTO `cate_book` VALUES ('149', '智力游戏', '0', '3');
INSERT INTO `cate_book` VALUES ('150', '网络游戏', '0', '3');
INSERT INTO `cate_book` VALUES ('151', '棋牌 ', '0', '3');
INSERT INTO `cate_book` VALUES ('152', '旅游', '0', '0');
INSERT INTO `cate_book` VALUES ('153', '旅游随笔', '0', '152');
INSERT INTO `cate_book` VALUES ('154', '旅游地图', '0', '152');
INSERT INTO `cate_book` VALUES ('155', '自助游', '0', '152');
INSERT INTO `cate_book` VALUES ('156', '自然/名胜', '0', '152');
INSERT INTO `cate_book` VALUES ('157', '人文之旅', '0', '152');
INSERT INTO `cate_book` VALUES ('158', '民俗/名物/饮食', '0', '152');
INSERT INTO `cate_book` VALUES ('159', '旅游实用外语', '0', '152');
INSERT INTO `cate_book` VALUES ('160', '老外游中国', '0', '152');
INSERT INTO `cate_book` VALUES ('161', '国家/地区概况', '0', '152');
INSERT INTO `cate_book` VALUES ('162', '生存探险', '0', '152');
INSERT INTO `cate_book` VALUES ('163', '外文原版书', '0', '152');
INSERT INTO `cate_book` VALUES ('164', '旅游指南/旅游手册', '0', '152');
INSERT INTO `cate_book` VALUES ('165', '境内', '0', '152');
INSERT INTO `cate_book` VALUES ('166', '境外', '0', '152');
INSERT INTO `cate_book` VALUES ('167', '境内外', '0', '152');
INSERT INTO `cate_book` VALUES ('168', '旅游理论/旅游实务', '0', '152');
INSERT INTO `cate_book` VALUES ('169', '旅游管理', '0', '152');
INSERT INTO `cate_book` VALUES ('170', '旅游经济与旅游市场', '0', '152');
INSERT INTO `cate_book` VALUES ('171', '旅游教育/导游 ', '0', '152');
INSERT INTO `cate_book` VALUES ('172', '地图/地理 ', '0', '0');
INSERT INTO `cate_book` VALUES ('173', '交通运输地图', '0', '172');
INSERT INTO `cate_book` VALUES ('174', '交通运输地图册/集', '0', '172');
INSERT INTO `cate_book` VALUES ('175', '历史地图', '0', '172');
INSERT INTO `cate_book` VALUES ('176', '历史地图册/集', '0', '172');
INSERT INTO `cate_book` VALUES ('177', '旅游地图', '0', '172');
INSERT INTO `cate_book` VALUES ('178', '旅游地图册/集', '0', '172');
INSERT INTO `cate_book` VALUES ('179', '生活地图', '0', '172');
INSERT INTO `cate_book` VALUES ('180', '生活地图册/集', '0', '172');
INSERT INTO `cate_book` VALUES ('181', '世界行政区划图', '0', '172');
INSERT INTO `cate_book` VALUES ('182', '世界行政区划图册/集', '0', '172');
INSERT INTO `cate_book` VALUES ('183', '中国行政区划图', '0', '172');
INSERT INTO `cate_book` VALUES ('184', '中国行政区划图册/集', '0', '172');
INSERT INTO `cate_book` VALUES ('185', '地图其他', '0', '172');
INSERT INTO `cate_book` VALUES ('186', '地理', '0', '172');
INSERT INTO `cate_book` VALUES ('187', '国家/地区概况', '0', '172');
INSERT INTO `cate_book` VALUES ('188', '购物/置业/理财', '0', '3');
INSERT INTO `cate_book` VALUES ('189', '养花', '0', '3');
INSERT INTO `cate_book` VALUES ('190', '家居装潢', '0', '3');
INSERT INTO `cate_book` VALUES ('191', '爱车一族', '0', '3');
INSERT INTO `cate_book` VALUES ('192', '实用法律', '0', '3');
INSERT INTO `cate_book` VALUES ('193', '生活百科', '0', '3');
INSERT INTO `cate_book` VALUES ('194', '饮食文化', '0', '3');
INSERT INTO `cate_book` VALUES ('195', '茶', '0', '3');
INSERT INTO `cate_book` VALUES ('196', '家居与风水', '0', '3');
INSERT INTO `cate_book` VALUES ('197', '饮食/烹饪', '0', '3');
INSERT INTO `cate_book` VALUES ('198', '家常食谱', '0', '3');
INSERT INTO `cate_book` VALUES ('199', '保健食谱/营养', '0', '3');
INSERT INTO `cate_book` VALUES ('200', '八大菜系', '0', '3');
INSERT INTO `cate_book` VALUES ('201', '西餐/料理', '0', '3');
INSERT INTO `cate_book` VALUES ('202', '酒/饮品', '0', '3');
INSERT INTO `cate_book` VALUES ('203', '甜品/家庭小制作', '0', '3');
INSERT INTO `cate_book` VALUES ('204', '餐饮指南', '0', '3');
INSERT INTO `cate_book` VALUES ('205', '烹饪理论/厨师手册', '0', '3');
INSERT INTO `cate_book` VALUES ('206', '婚恋/性', '0', '0');
INSERT INTO `cate_book` VALUES ('207', '两性之间', '0', '206');
INSERT INTO `cate_book` VALUES ('208', '恋爱', '0', '206');
INSERT INTO `cate_book` VALUES ('209', '婚姻', '0', '206');
INSERT INTO `cate_book` VALUES ('210', '性 ', '0', '206');
INSERT INTO `cate_book` VALUES ('211', '育儿/成长 ', '0', '0');
INSERT INTO `cate_book` VALUES ('212', '准父母读物', '0', '211');
INSERT INTO `cate_book` VALUES ('213', '好爸爸', '0', '211');
INSERT INTO `cate_book` VALUES ('214', '起名儿', '0', '211');
INSERT INTO `cate_book` VALUES ('215', '婴幼儿护理', '0', '211');
INSERT INTO `cate_book` VALUES ('216', '启蒙/认知卡片', '0', '211');
INSERT INTO `cate_book` VALUES ('217', '亲子读物', '0', '211');
INSERT INTO `cate_book` VALUES ('218', '图画故事/拼音读物', '0', '211');
INSERT INTO `cate_book` VALUES ('219', '游戏/智力开发', '0', '211');
INSERT INTO `cate_book` VALUES ('220', '连环画', '0', '211');
INSERT INTO `cate_book` VALUES ('221', '儿童营养健康', '0', '211');
INSERT INTO `cate_book` VALUES ('222', '育儿百科', '0', '211');
INSERT INTO `cate_book` VALUES ('223', '青春期', '0', '211');
INSERT INTO `cate_book` VALUES ('224', '好家长妙诀', '0', '211');
INSERT INTO `cate_book` VALUES ('225', '从怀孕到出生', '0', '211');
INSERT INTO `cate_book` VALUES ('226', '胎教/优生', '0', '211');
INSERT INTO `cate_book` VALUES ('227', '心理辅导', '0', '211');
INSERT INTO `cate_book` VALUES ('228', '孕产妇营养保健', '0', '211');
INSERT INTO `cate_book` VALUES ('229', '孕产百科', '0', '211');
INSERT INTO `cate_book` VALUES ('230', '儿童教育', '0', '211');
INSERT INTO `cate_book` VALUES ('231', '0-1岁', '0', '211');
INSERT INTO `cate_book` VALUES ('232', '1-3岁', '0', '211');
INSERT INTO `cate_book` VALUES ('233', '学龄前', '0', '211');
INSERT INTO `cate_book` VALUES ('234', '7-12岁', '0', '211');
INSERT INTO `cate_book` VALUES ('235', '跨年龄段 ', '0', '211');
INSERT INTO `cate_book` VALUES ('236', '外语', '0', '0');
INSERT INTO `cate_book` VALUES ('237', '英语词汇', '0', '236');
INSERT INTO `cate_book` VALUES ('238', '英语语法', '0', '236');
INSERT INTO `cate_book` VALUES ('239', '英语听力', '0', '236');
INSERT INTO `cate_book` VALUES ('240', '英语口语/语音', '0', '236');
INSERT INTO `cate_book` VALUES ('241', '英语阅读', '0', '236');
INSERT INTO `cate_book` VALUES ('242', '英语写作', '0', '236');
INSERT INTO `cate_book` VALUES ('243', '英语翻译', '0', '236');
INSERT INTO `cate_book` VALUES ('244', '生活英语/即学即用英语', '0', '236');
INSERT INTO `cate_book` VALUES ('245', '行业英语', '0', '236');
INSERT INTO `cate_book` VALUES ('246', '英语读物', '0', '236');
INSERT INTO `cate_book` VALUES ('247', '少儿英语', '0', '236');
INSERT INTO `cate_book` VALUES ('248', '中小学英语课外学习', '0', '236');
INSERT INTO `cate_book` VALUES ('249', '大学英语', '0', '236');
INSERT INTO `cate_book` VALUES ('250', '硕士英语/博士英语', '0', '236');
INSERT INTO `cate_book` VALUES ('251', '英语综合教程/学习方法', '0', '236');
INSERT INTO `cate_book` VALUES ('252', '新概念英语', '0', '236');
INSERT INTO `cate_book` VALUES ('253', '大学英语四六级', '0', '236');
INSERT INTO `cate_book` VALUES ('254', '专业英语四八级', '0', '236');
INSERT INTO `cate_book` VALUES ('255', '考研英语', '0', '236');
INSERT INTO `cate_book` VALUES ('256', '托福(TOFEL)/托业(TOEIC)', '0', '236');
INSERT INTO `cate_book` VALUES ('257', 'GRE/GMAT', '0', '236');
INSERT INTO `cate_book` VALUES ('258', '雅思(IETLS)', '0', '236');
INSERT INTO `cate_book` VALUES ('259', '全国英语等级考试(PETS)', '0', '236');
INSERT INTO `cate_book` VALUES ('260', '剑桥商务英语(BEC)', '0', '236');
INSERT INTO `cate_book` VALUES ('261', '其他英语考试', '0', '236');
INSERT INTO `cate_book` VALUES ('262', '日语', '0', '236');
INSERT INTO `cate_book` VALUES ('263', '德语', '0', '236');
INSERT INTO `cate_book` VALUES ('264', '法语', '0', '236');
INSERT INTO `cate_book` VALUES ('265', '俄语', '0', '236');
INSERT INTO `cate_book` VALUES ('266', '韩语', '0', '236');
INSERT INTO `cate_book` VALUES ('267', '其他语种', '0', '236');
INSERT INTO `cate_book` VALUES ('268', '老外学汉语', '0', '236');
INSERT INTO `cate_book` VALUES ('269', '工具书', '0', '236');
INSERT INTO `cate_book` VALUES ('270', '外文原版书', '0', '236');
INSERT INTO `cate_book` VALUES ('271', '教学光盘 ', '0', '236');
INSERT INTO `cate_book` VALUES ('272', '考试', '0', '0');
INSERT INTO `cate_book` VALUES ('273', '考研', '0', '272');
INSERT INTO `cate_book` VALUES ('274', '外语考试', '0', '272');
INSERT INTO `cate_book` VALUES ('275', '计算机考试', '0', '272');
INSERT INTO `cate_book` VALUES ('276', '财税外贸保险类职称考试', '0', '272');
INSERT INTO `cate_book` VALUES ('277', '建筑工程类职称考试', '0', '272');
INSERT INTO `cate_book` VALUES ('278', '医药卫生类职称考试', '0', '272');
INSERT INTO `cate_book` VALUES ('279', '其他类职称考试', '0', '272');
INSERT INTO `cate_book` VALUES ('280', '艺术、体育类水平考试', '0', '272');
INSERT INTO `cate_book` VALUES ('281', '自学考试', '0', '272');
INSERT INTO `cate_book` VALUES ('282', '成人高考 ', '0', '272');
INSERT INTO `cate_book` VALUES ('283', '计算机/网络', '200', '0');
INSERT INTO `cate_book` VALUES ('284', '计算机理论', '21', '283');
INSERT INTO `cate_book` VALUES ('285', '硬件/外部设备/维修', '0', '283');
INSERT INTO `cate_book` VALUES ('286', '操作系统', '0', '283');
INSERT INTO `cate_book` VALUES ('287', '数据库', '0', '283');
INSERT INTO `cate_book` VALUES ('288', '程序设计', '0', '283');
INSERT INTO `cate_book` VALUES ('289', '网络与数据通信', '0', '283');
INSERT INTO `cate_book` VALUES ('290', '图形图像/多媒体', '20', '283');
INSERT INTO `cate_book` VALUES ('291', 'CAD/CAM/CAE', '0', '283');
INSERT INTO `cate_book` VALUES ('292', '软件工程/开发项目管理', '0', '283');
INSERT INTO `cate_book` VALUES ('293', '行业软件及应用', '0', '283');
INSERT INTO `cate_book` VALUES ('294', '人工智能', '0', '283');
INSERT INTO `cate_book` VALUES ('295', '家庭与办公室用书', '0', '283');
INSERT INTO `cate_book` VALUES ('296', '认证/等级考试', '0', '283');
INSERT INTO `cate_book` VALUES ('297', '管理信息系统(MIS)', '0', '283');
INSERT INTO `cate_book` VALUES ('298', '地理信息管理系统（GIS)', '0', '283');
INSERT INTO `cate_book` VALUES ('299', '企业软件开发与实施', '0', '283');
INSERT INTO `cate_book` VALUES ('300', '信息安全', '0', '283');
INSERT INTO `cate_book` VALUES ('301', '项目管理/IT人文', '20', '283');
INSERT INTO `cate_book` VALUES ('302', '电脑杂志—合订本', '0', '283');
INSERT INTO `cate_book` VALUES ('303', '计算机体系结构', '0', '283');
INSERT INTO `cate_book` VALUES ('304', '数码全攻略', '0', '283');
INSERT INTO `cate_book` VALUES ('305', '影印版', '0', '283');
INSERT INTO `cate_book` VALUES ('306', '教学光盘', '0', '283');
INSERT INTO `cate_book` VALUES ('310', '测试大类', '20', '0');
INSERT INTO `cate_book` VALUES ('311', '测试类', '0', '310');
INSERT INTO `cate_book` VALUES ('312', '测试类2', '0', '310');

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
