<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电子阅览室</title>

<link rel="shortcut icon" href="fav.ico" />

<link href="/Public/Home/css/nav_foot.css?v21" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/sytle.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/magazine.css?v3" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/book.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/nav_foot2012.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/main2012.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/book2011.css?v1" rel="stylesheet" type="text/css" />
<link rel="icon" href="favfortask.ico" type="/Public/Home/images/x-icon">
<script type="text/javascript" src="/Public/Home/js/ajax.js" ></script>

<script type="text/javascript" src="/Public/Home/js/jquery.js"></script>
<script type="text/javascript" src="/Public/Home/js/jquery.min.js"></script>
<script type="text/javascript" src="/Public/Home/js/jquery.coda-slider-2.0.js"></script>
<script type="text/javascript" src="/Public/Home/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/Public/Home/js/marquee.js"></script>
<script type="text/javascript" src="/Public/Home/js/swfobject.js"></script>
<script type="text/javascript" src="/Public/Home/js/jquery.autocomplete.js"></script>
<script type="text/javascript" src="/Public/Home/js/ScrollText.js"></script>

<script type="text/javascript" src="/Public/Home/js/new_index_common.js?v6.3"></script>
<script>
function is_null(){
	if($('#s_text').val() == '在这里搜索杂志或图书...'){
		alert('请填写要搜索的书本');
		return false;
	}
}
</script>
</head>
<body>

<!--  header  begin====================-->
<div id="header_2011news">
    	<div id="header_top_2011news" class="base_box" >
        	<div class="logo"><a href=""><img src="/Public/Home/images/logo.jpg" alt="电子阅览室logo" title="读览天下" /></a></div>
<!-- 判断是否已经登录了-->
<?php if(!empty($_SESSION['userdata'])): $userdata = $_SESSION['userdata']; endif; ?>

 <?php if(empty($userdata)): ?><div class="header_login" id="index_login">
            	<ul>
            	<div style="float:right;">
            	
            	<li><a href="/Home/Index/login.html" class="fg">登录</a></li><li><a href="/Home/Index/register.html" class="free">注册账号</a></li></div>
		
				<div style="float:right;">
				
				
				
				</div>
				</ul>
				</div>
				
 <?php else: ?>
 			<div class="header_login" id="index_login">
 			<ul>
            	<div style="float:right;">
            	
            	<li><a  style="cursor:auto;" class="" >您好：</a></li>
            	<li><a href="/Home/Personal.html" style="cursor:pointer;" class="" ><?php echo ($userdata["username"]); ?></a></li>
            	<li><a onclick="AddToFavorite(document.URL,document.title);" href="javascript:void(0);" class="fg">收藏</a></li>
            	<li><a href="/Home/Personal/logout.html" class="free">退出</a></li></div>
		
				<div style="float:right;">
				
				</div>
				</ul>
				</div>
			 <div id="headmenuhome" class="my_menu_2011news mybg" onMouseOver="showheadhome()" onMouseOut="hideheadhome()"><a href="/Home/Personal.html" class="my_bg">个人中心</a>
                
                <div class="menu_2011news" id="headhome" style="display:none;height:auto;">
                <div class="bg" ></div>
                <ul>
                
                <li><a href="/Home/Personal/collect.html">我的收藏</a></li>
                <li><a href="/Home/Personal/record.html">阅读记录</a></li>
               	<li><a href="/Home/Personal.html">我的主页</a></li>
                <li><a href="/Home/Personal/change_info.html">修改个人信息</a></li>
                </ul>
                </div>
                </div><?php endif; ?>
              
  <div class="clear"></div>
                <div class="search_botm"> 
                                <div class="search_02">
                                    <div class="search_text1"></div>
                                    <form action="/Home/Index/book_search.html" method="post" >
                                        <div class="search_text2"><input name="book_name" type="text" id="s_text" class="search_text2" value="在这里搜索杂志或图书..." onFocus="if(this.value=='在这里搜索杂志或图书...'){this.value='';}" onBlur="if(this.value==''){this.value='在这里搜索杂志或图书...';}" />
                                        </div >
                                        <div id="search" onMouseOver="show_s_book_new('show');" onMouseOut="show_s_book_new('hide');">
                                        <div class="search_03 magazine_bg" style="cursor:pointer;" >全站</div>
                                        </div>
                                        <input type="submit" class="search_04" style="cursor:pointer;" value="搜索" onclick="return is_null()">
                                   </form>                   	
                                </div>
                                <div style="display: none; position: absolute;" class="ac_results_2011" id="ac_results"></div>
                               <div class="search_05"><a href="/Home/Index/search_high.html">高级搜索</a></div>
                 </div>
        </div>
    
    
<div id="nav_2011news">
	<div id="nemu" style="width:990px; margin:0 auto; position:relative; z-index:99;">
            	<div id="nav_content_2011news" class="base_box">
                	<ul>
                	
                    <li class="sy fg"><a  href="<?php echo SITE_URL ?>">首页</a></li>
                    <li onMouseOver="javascript:show_tag('mag_other');" onMouseOut="javascript:show_tag('mag_other');" style="width:83px;" class="fg"><a  href="/Home/Magazine.html" >杂志</a>
                    
                    </li>
                    <li class="fg"><a  href="/Home/Book.html">图书导航</a></li>
                    <li class="fg"><a href="/Home/Book/book_new.html">新上架</a><img src="/Public/Home/images/newico3.gif" class="na"></li>
                    <li class="fg"><a href="/Home/Book/book_hot.html">热门</a></li>
                  <!--   <li class="fg"><a target="_blank" href="customer_buy.php">会员VIP</a></li> -->
                  
                    <li class="fg"><a href="/Home/Book/book_top.html">排行榜</a></li>
                    <li ><a  href="/Home/Index/about.html">关于本站</a></li>
                    </ul>
                    	
                </div>
                
                
                </div>
                       
        </div>
</div>
<div id="showMyalert" style="display:none;"></div>
<script>
var showMyalert = function(accessType) {
	var theMyalert = $('#showMyalert');
	if(theMyalert.html() == '') {
		var a = arguments[0] ? '?access_type='+arguments[0] : '';
		theMyalert.load('QQlogin/qqlogin_div.php' + a).show(1000);
	}else {
		$('#layout').show();
	}
};
</script>

<!--  header  end====================-->



<link rel="stylesheet" href="/Public/Home/css/css_top/zm_base.css?v=20150225" />
<link rel="stylesheet" href="/Public/Home/css/css_top/lhl_base.css?v=20150225" />
<link rel="stylesheet" href="/Public/Home/css/css_top/lhl_End.css?v=20150225" />
<link rel="stylesheet" href="/Public/Home/css/css_top/ranking2012.css?v=20150225" />
<link rel="stylesheet" href="/Public/Home/css/css_top/zm_top2011.css?v=20150225" />
<link rel="stylesheet" href="/Public/Home/css/css_top/lhl_common.css?v=20150225" />

<style>
	.about{
		width:908px;
		height:800px;
		margin:30px auto;
		padding:20px; 
		border:1px solid #c7c7c7;
		border-radius:15px;
	}
	.about .left{
		float:left;
		width:160px;
		height:760px;
		padding:20px;
		padding-top: 0px;
		border-right:1px solid #c7c7c7;

	}
	.about .left .gogao{
		width:100%;
		height:60px;
		text-align:center;
		line-height:91px;
		font-size:150%;
		border-bottom:1px solid #c7c7c7;
		margin-bottom:20px;
	}
	.left-buttom{
		width:100%;
		height:700px;
		overflow:scroll;
	}
	.about .right{
		float:right;
		width:680px;

		height:786px;

	}
	.about .right .top{
		width:100%;
		height:40px;
		border-bottom:1px solid #c7c7c7;
		background:#86;
		text-align:center;
		line-height:50px;
		font-size:150%;
		font-weight:bold;
	}
	.about .right .nav{
		width:100%;
		text-align:center;
		height:25px;
		padding-top: 2px;
		font:small-caption;
	}
	.about .right .centents{
		width:100%;
		margin-top:20px;
		height:700px;
		overflow:scroll;
	}
	.book_dir{line-height:22px;}
	.book_dir a{color:#6C6A67}
</style>
<div id="pagetop">您现在位置 > <?php echo ($book_info['cate_name']['name']); ?> > <?php echo ($book_info['name']); ?></div>
<!--主体内容 开始-->
<div class="about">
		<div class="left">
			<div class="gogao">目录</div>
			<div class="left-buttom">
				<?php if(is_array($book_dir)): foreach($book_dir as $key=>$vo): ?><span class="book_dir"><a href="/Home/Book/book_reading.html?a_id=<?php echo ($vo['id']); ?>&book_id=<?php echo ($param['book_id']); ?>"><?php echo (str_repeat("&nbsp;&nbsp;",$vo['level'])); echo ($vo['title']); ?></a></span><br><?php endforeach; endif; ?>
			</div>
		</div>
		<div class="right">
		<?php if(!empty($a_info)): ?><div class="top"><?php echo ($a_info['title']); ?></div>
				<div class="nav">更新时间：<?php echo (date("Y年m月",$a_info['title'])); ?></div>
				<div class="centents"><?php echo ($a_info['contents']); ?></div>
			
		<?php else: ?>
		本书暂无内容<?php endif; ?>
		</div>
</div>
<!--主体内容 结束-->

<!--  footer begin   ====================-->
<div id="footer_2011news">
	<div id="bottom">
    	<a style="margin-left: 0pt;" href="http://corp.dooland.com/" target="_blank">关于我们</a> |
    	 <a href="http://corp.dooland.com/relation.html" target="_blank">联系我们</a> | 
    	 <a href="help.php?template=035" target="_blank">帮助中心</a> |  <a href="help/helpuserguide.htm" target="_blank">新手指南</a> | 
    	    
    	  <a href="http://corp.dooland.com/about_6.html" target="_blank">免责声明</a>  |  

    	  <a target="_blank" href="friendlink.php" target="_blank">友情链接</a> | 

    	    <a href="#top2">返回顶部</a>

    </div>
    
   
        
        	<div class="bottom3">
           版权所有 &copy; <?php echo date("Y-m-d") ?> 河池学院2011级信息与计算科学1班-方智 毕业设计答辩。
            </div>
            
            
</div>
<!--  footer end   ====================-->
</body>
</html>