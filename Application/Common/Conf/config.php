<?php
defined('SITE_URL') 			or define('SITE_URL', 'http://www.readingRoom.com');
return array(
	//'配置项'=>'配置值'
	 'URL_MODEL'             =>  2,       // URL访问模式,可选参数0、1、2、3,代表以下四种模式：
	'URL_ROUTER_ON'   => true,			//开启路由规则
	'URL_PARAMS_BIND'       =>  true, // URL变量绑定到操作方法作为参数
	'URL_PARAMS_BIND_TYPE'  =>  1, // URL变量绑定的类型 0 按变量名绑定 1 按变量顺序绑定
    // 0 (普通模式); 1 (PATHINFO 模式); 2 (REWRITE  模式); 3 (兼容模式)  默认为PATHINFO 模式
    'TMPL_TEMPLATE_SUFFIX'  =>  '.html',     // 默认模板文件后缀
    'URL_HTML_SUFFIX'       =>  'html',  // URL伪静态后缀设置
    
	'DEFAULT_MODULE'        =>  'Home',  // 默认模块
    'DEFAULT_CONTROLLER'    =>  'Index', // 默认控制器名称
    'DEFAULT_ACTION'        =>  'index', // 默认操作名称
    
 /* 数据库设置 */
    'DB_TYPE'               =>  'mysql',     // 数据库类型
    'DB_HOST'               =>  'localhost', // 服务器地址
    'DB_NAME'               =>  'reading',          // 数据库名
    'DB_USER'               =>  'root',      // 用户名
    'DB_PWD'                =>  'admin',          // 密码
    'DB_PORT'               =>  '3306',        // 端口
    'DB_PREFIX'             =>  '',    // 数据库表前缀
    
	TMPL_PARSE_STRING =>array(			
			'__UPLOADS__' => __ROOT__.'/Public/Uploads',
		),
	//define('READINGROOM', 'www.readingRoom.com'),
);