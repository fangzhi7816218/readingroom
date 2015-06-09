<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
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



<!--  header  end====================-->
<link href="/Public/Home/css/yonghu.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/individual_center.css" type="text/css" rel="stylesheet" />

<div class="mainlaycenter">

  <div class="user_left">
<div class="top"><img src="/Public/Home/images/personal/personal_center_top.jpg" /></div>
<div class="leftlaycenter">
	<div id="myTab1">
	<h3 class="sortleftttcenter bgicon01_center">我的书架：</h3>
         <ul>
          <li id="7" class="linormal_center"><a href="/Home/Personal/collect.html">我的收藏</a></li>
          <li id="8" class="linormal_center"><a href="/Home/Personal/record.html">阅读记录</a></li>
           
         </ul>
     	<div style="clear:both"></div>


  		<h3 class="sortleftttcenter bgicon04_center">个人信息:</h3>
         <ul  style="border-bottom:none;">
			<li id="6" class="linormal_center"><a href="/Home/Personal/index.html">个人中心</a></li>
          <li id="3" class="linormal_center"><a href="/Home/Personal/change_info.html">修改个人信息</a></li>
          <li id="4" class="linormal_center"><a href="/Home/Personal/logout.html">退出登录</a></li>
         </ul>
		<div style="clear:both"></div>
		<!--
		<h3 class="sortleftttcenter bgicon04_center">最新活动:</h3>
         <ul>

          <li id="19" class="linormal_center"><a href="customer_commend.php">推荐用户</a></li>
         </ul>

     	<div style="clear:both"></div>
		-->

    </div>


     <div style="clear:both;"></div>
  </div>
  <div class="bottom"><img src="/Public/Home/images/personal/personal_center_bottom.gif" /></div>
  </div>
<script>
var tid = '7';

if(tid == ''){ tid = 6;}

function nTabs(tid){
	document.getElementById(tid).className = "liactive_center";
/*
	for(i=3; i <=30; i++)
	{
	  if (i == tid)
	  {
		if(document.getElementById(i)){
		document.getElementById(i).className = "liactive_center";
		}
	  }else{
		if(document.getElementById(i)){
			document.getElementById(i).className = "linormal_center";
		}

	  }
	}
*/
}
nTabs(tid);
</script>  <div class="content_center" id="content" >
      <!-- <div class="addiv_r"><a href="customer_commend.php"><img src="/Public/Home/images/center_banner.gif" /></a></div> -->
      <div id="rght">
	  
	  
<div class="ent_c2">
        <!--
							 <div class="bq2">
								  <ul id="oUlTab">
								
		<li id="aLiTab_2" class="on"><a href="#">看过的杂志</a></li>                         
							   </ul><div class="bqr" style="width:587px;"></div>
			  </div>
         -->
		
		<div class="ent_c2">
                <div class="progress">
<div class="pro_left"></div>
<div class="center">
<!--月号-->

<h1 style="text-align:left;">
看过的杂志
</h1>


<!--月号-->

</div><div class="pro_right"></div>


</div>
<div class="clear"></div>
        </div>

        
							  <!---多窗口操作--->
		
		<div class="bq_d" id="oDivTab2">
							
			<div class="shjcontent" >
			
			<?php if(!empty($books)): if(is_array($books)): foreach($books as $key=>$vo): ?><div class="bookcontainer">
				<div class="booktu">
				  <a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" title="<?php echo ($vo['name']); ?>" target="_blank"><img src="<?php echo ($vo['img']); ?>" alt="<?php echo ($vo['name']); ?>" /></a></div>
				<div class="bookright">
				<ul>
				<li><span><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" title="<?php echo ($vo['name']); ?>" target="_blank"><?php echo ($vo['name']); echo (date("Y年m月",$vo['add_time'])); ?></a></span></li>
				
				</ul>
				</div>
				</div><?php endforeach; endif; ?>
			<?php else: ?>
				<span style="margin-left:300px;">暂没有阅读记录</span><?php endif; ?>			
			
			<div style="clear:both"></div>
		  </div>		 
		 </div>
		 
		<div style="clear:both"></div> 
		</div>
		
		<div style="clear:both"></div>
		</div>

          
  </div>
<div class="center_right">
<div class="top">快速导航</div>
<div class="list">
<ul>
<li><a href="http://www.dooland.com">杂志首页</a></li>
<li><a href="http://www.dooland.com/magazine/category.php?act=list&p_id=6">新闻人物</a></li>
<li><a href="http://www.dooland.com/magazine/category.php?act=list&p_id=5">商业财经</a></li>
<li><a href="http://www.dooland.com/magazine/category.php?act=list&p_id=3">运动健康</a></li>
<li><a href="http://www.dooland.com/magazine/category.php?act=list&p_id=1">时尚生活</a></li>
<li><a href="http://www.dooland.com/magazine/category.php?act=list&p_id=2">娱乐休闲</a></li>
<li><a href="http://www.dooland.com/magazine/category.php?act=list&p_id=4">教育科技</a></li>
<li><a href="http://www.dooland.com/magazine/category.php?act=list&p_id=7">文化艺术</a></li>
</ul>
<div class="clear"></div>
</div>
<div><img src="/Public/Home/images/personal/center_right_bottom.gif" /></div>




</div>
  
   <div style="clear:both"></div>
</div>


<!--  footer begin   ====================-->

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