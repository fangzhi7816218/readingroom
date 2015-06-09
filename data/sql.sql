CREATE TABLE `ad_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `menu_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

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

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) DEFAULT NULL COMMENT '��������',
  `name` varchar(50) DEFAULT NULL,
  `pages` int(11) DEFAULT '0',
  `author` varchar(255) DEFAULT NULL,
  `ibsn` varchar(50) DEFAULT NULL,
  `description` text,
  `img` varchar(255) DEFAULT NULL,
  `number` tinyint(10) DEFAULT '0' COMMENT 'ͼ������',
  `on_sale` tinyint(1) DEFAULT '0' COMMENT '�Ƿ��ϼ� 1Ϊ�ϼ� 0Ϊ�¼�',
  `focus` tinyint(1) DEFAULT '0' COMMENT '��ע',
  `best` tinyint(1) DEFAULT '0' COMMENT '��Ʒ',
  `hot` tinyint(1) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `order` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '�Ƿ�ɾ�� 1 Ϊɾ�� 0Ϊ��ɾ�� ',
  `add_time` int(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'b',
  `hit` int(11) NOT NULL DEFAULT '0' COMMENT '�鱾�ĵ����',
  `public` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

CREATE TABLE `cate_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `inv` int(11) DEFAULT '0',
  `p_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

CREATE TABLE `cate_mag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `inv` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT '0',
  `b_id` int(11) DEFAULT '0',
  `p_id` int(11) DEFAULT '0',
  `contents` text,
  `time` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1' COMMENT 'Ĭ��Ϊ0ʱ ��δ���� Ϊ1ʱ��ͨ������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

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

