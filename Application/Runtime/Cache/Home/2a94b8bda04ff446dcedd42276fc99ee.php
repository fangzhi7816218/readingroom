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



<script type="text/javascript">
$(function(){
	//首页左侧导航显示JS
	//Author:xuying 
	$(".category > ul > li").hover(function () {
		var x=$(this).children("ul").offset().top;
		var xx=x+275;
	$(this).addClass("selected");
	$(this).children("a:eq(0)").addClass("h2-tit");
	$(this).children("ul").show().css('top', "-" + ($(this).offset().top - xx) + "px");
	},function(){
		$(this).removeClass("selected");
		$(this).children(".tit").removeClass("h2-tit");
		$(this).children("ul").hide();
	});
　 
	changePanel('m_hot',$('#test_id5'),'on','hot_bott', 'changeDID');
	changePanel('b_hot',$('#test_id8'),'on','hot_bott2', 'changeHID');
	
	
	

});

//2011-7-26 hgds
window.onload = getMsg;
window.onresize = resizeDiv;
window.onerror = function(){}
function $_(id) {return document.getElementById(id);}

var divT,divL,divW,divH,docH,docW,docST,docSL,objTimer,i = 0;
function getMsg()
{
try{
divT = parseInt($_("eMeng").style.top,10); //层top位置
divL = parseInt($_("eMeng").style.left,10); //层left位置
divH = parseInt($_("eMeng").offsetHeight,10);//层宽
divW = parseInt($_("eMeng").offsetWidth,10);//层高
docW = document.documentElement.clientWidth;//窗口宽
docH = document.documentElement.clientHeight;//窗口高
docST=document.documentElement.scrollTop;
docSL=document.documentElement.scrollLeft;
$_("eMeng").style.top = parseInt(docST,10) + docH + 10+"px";
$_("eMeng").style.left = parseInt(docSL,10) + docW - divW+"px";
$_("eMeng").style.visibility="visible";
objTimer = setInterval("moveDiv()",10);
}
catch(e){}
}
function resizeDiv()
{
try{
divH = parseInt($_("eMeng").offsetHeight,10);
divW = parseInt($_("eMeng").offsetWidth,10);
docW = document.documentElement.clientWidth;
docH = document.documentElement.clientHeight;
$_("eMeng").style.top = docH - divH + parseInt(document.documentElement.scrollTop,10)+"px";
$_("eMeng").style.left = docW - divW + parseInt(document.documentElement.scrollLeft,10)+"px";
}
catch(e){}
}
function moveDiv()
{
try{
if(parseInt($_("eMeng").style.top,10) <= (docH - divH + parseInt(document.documentElement.scrollTop,10)))
{
window.clearInterval(objTimer)
objTimer = setInterval("resizeDiv()",1)
}
divT = parseInt($_("eMeng").style.top,10);
$_("eMeng").style.top = divT - 3+"px";//速度越大越快
}
catch(e){}
}
function closeDiv()
{
$_('eMeng').style.visibility='hidden';
if(objTimer) window.clearInterval(objTimer)
}
</script>
<div id="layout"><!--  bd1 第一块 begin====================-->
<div id="bd1" class="base_box" style="height:565px;"><!--  left begin  -->
<div class="left">
		<div class="category" >
		<div class="category_sound"><a href="/Home/Book/book_new.html" title="新书抢看>新书抢看</a></div>
		<div class="category_top"><a href="/Home/Book/book_hot.html">热门参与</a></div>
		<h1>图书分类</h1>
		
		<ul>
			<?php if(is_array($book_cate)): foreach($book_cate as $key=>$vo): ?><li><a href="/Home/Index/book_search.html?cate_id=<?php echo ($vo['id']); ?>" class="tit" title="时尚生活"><?php echo ($vo['name']); ?></a></li><?php endforeach; endif; ?>
			
		</ul>
		<h2>杂志分类</h2>
		<ul>
			<?php if(is_array($mag_cate)): foreach($mag_cate as $key=>$vo): ?><li><a href="/Home/Index/book_search.html?cate_id=<?php echo ($vo['id']); ?>" class="tit" title="时尚生活"><?php echo ($vo['name']); ?></a></li><?php endforeach; endif; ?>
		</ul>
		
		<dt>
		<div class="mun_magazine"><a href="/Home/Magazine.html">精选报刊</a>
		</div>
		</dt>
		</div>
</div>
<div class="center margin_left12" >

<div class="recommend">
<div class="title">
<ul>
	<li class="one_jx"><a href="javascript:void(0);" onMouseOver="changePanel('day',this,'toHover','cont', 'changePanelID')" is_load="1">每月精选</a></li>
</ul>
</div>
<div class="cont" id="day_jx" changePanelID="cont_0">
<div class="cont_jx_top cont_jx_top_c coda-slider preload" id="day_mag">
<div class="panel">
<!-- 每日精选 -->


<?php if(is_array($book_best)): foreach($book_best as $key=>$vo): ?><div class="jx_magazine">
		<div class="cover">
			<a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="意林">
				<img style="height: 152px;" src="<?php echo ($vo['img']); ?>" />
			</a>
		</div>
		<div class="index_title"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="意林"> <?php echo ($vo['name']); ?> </a>
		</div>
		<h5><?php echo (date('Y年m月',$vo['add_time'] )); ?>版</h5>
	</div><?php endforeach; endif; ?>





</div>
</div>

<script type="text/javascript">$('#day_mag').codaSlider();</script></div>
<div style="clear: both;"></div>

</div>

</div>
<!-- ========================== center end ========================== -->

<!-- ========================== right begin ========================== -->

<div class="right" >

<div class="gg margin_top12" style="height:185px;">
		<div class="title">
		<ul>
			<li class="on"><a href="javascript:void(0);" is_load="1">热门书</a></li>
		</ul>
		</div>
		
		<div class="content" changeBID="content_0" style="height: 10px; display: block; overflow: hidden; border-bottom: 0px; border-right: 1px #D7D7D7 solid; border-left: 1px #D7D7D7 solid;"></div>
		
		<div class="content" changeBID="content_0" id="new_action_marquee" style="overflow: hidden;height:140px;">
		<ul>
			<?php if(is_array($book_hot)): foreach($book_hot as $key=>$vo): ?><li><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank"title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a></li><?php endforeach; endif; ?>
		</ul>
		</div>
		
		
		<!-- ------------------ -->
		<script type="text/javascript">
		                var new_action = new Marquee("new_action","new_action_marquee","up",60,1);
		</script>
</div>

<div class="editor_recom margin_top12">
<div class="title">
<ul>
	<li class="on"><a href="javascript:void(0);" onMouseOver="changePanel('editor',this,'on','maga_cover', 'changeCID')" is_load="1">本周推荐</a></li>
</ul>
</div>
<div class="maga_cover" changeCID="maga_cover_0" style="overflow: hidden;">
<ul>

	<?php if(is_array($book_hot)): foreach($book_hot as $k=>$vo): if($k+1 == 1): ?><li class="ico_1">
				<span>15年第10</span>
					<a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a>
				</li>
				<li class="cont_1">
					<a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>">
					<img style="width: 55px; height: 75px;" src="<?php echo ($vo['img']); ?>" /></a>
				<div class="reason">
					<dt><img src="/Public/Home/images/new.gif" /></dt>
		
				</div>
			</li>
		<?php else: ?>
			<li class="ico_<?php echo ($k+1); ?> ico_margin"><span><?php echo (date('Y年m月',$vo['add_time'])); ?></span><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>"><?php echo (msubstr($vo['name'],0,5)); ?></a></li><?php endif; ?>
		<?php if($k+1 == 10): ?>break;<?php endif; endforeach; endif; ?>
</ul>
</div>
</div>

</div>
<!-- ========================== right end ========================== -->
</div>
<!--  bd1 第一块 end  ====================-->

 <!--  bd2 第二块 begin  ====================-->
<div class="margin_top12" id="bd2" >

<div class="bd2_title">

<div class="more"><a id="m_type" href="/Home/Magazine.html">更多</a></div>
</div>
<div class="bd2_right" changeEID="bd2_right_1">
<div class="magazine_list">
<ul>
<?php if(is_array($book_m)): foreach($book_m as $key=>$vo): ?><li>
	<div class="pic"><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>">
	<img style="height: 200px;"	src="<?php echo ($vo['img']); ?>" /></a>
		</div>
	<div class="txt"><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a>
	<p><?php echo (date('Y年m月',$vo['add_time'])); ?></p>
	
	</div>
	</li><?php endforeach; endif; ?>
</ul>
</div>
</div>
<div class="bd2_left">
<div class="hot">
<div>
<ul class="hot_title">
	<li><a id="test_id5" href="javascript:void(0);"
		onMouseOver="changePanel('m_hot',this,'on','hot_bott', 'changeDID')"
		is_load="1">热门榜</a></li>
	<li><a href="javascript:void(0);"
		onMouseOver="changePanel('m_search',this,'on','hot_bott', 'changeDID')"
		is_load="0"></a></li>
	<li><a href="javascript:void(0);"
		onMouseOver="changePanel('m_attention',this,'on','hot_bott', 'changeDID')"
		is_load="0"></a></li>
</ul>

<div class="small_title"></div>
</div>
<div class="hot_bott" id="hot_bott_0_week" changeDID="hot_bott_0" >
<ul>
	
	
	<?php if(is_array($book_m_l)): foreach($book_m_l as $k=>$vo): if(($k+1 == 1) or ($k+1 == 2) or ($k+1 == 3)): ?><li class="ico<?php echo ($k+1); ?>">
		<div class="pic"><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>"><img	style="width: 59px; height: 77px;" src="<?php echo ($vo['img']); ?>" /></a>
			<div class="sTit"><img src="/Public/Home/images/hot.gif" /></div>
			<b><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a></b> <b>
			<h3><?php echo (date("Y年m月",$vo['add_time'])); ?></h3>
		</div>
	</li>
	<?php else: ?>
		<li class="ico<?php echo ($k+1); ?>"><span><?php echo (date("Y年m月",$vo['add_time'])); ?></span><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" target="_blank" title="三联生活周刊"><?php echo (msubstr($vo['name'],0,5)); ?></a></li><?php endif; endforeach; endif; ?>
</ul>
</div>
<div class="hot_bott" id="hot_bott_0_mouth" style="display: none;" changeDID="hot_bott_0_mouth">
<?php if(is_array($book_m_l2)): foreach($book_m_l2 as $k=>$vo): if(($k+1 == 1) or ($k+1 == 2) or ($k+1 == 3)): ?><li class="ico<?php echo ($k+1); ?>">
		<div class="pic"><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>"><img	style="width: 59px; height: 77px;" src="<?php echo ($vo['img']); ?>" /></a>
			<div class="sTit"><img src="/Public/Home/images/hot.gif" /></div>
			<b><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a></b> <b>
			<h3><?php echo (date("Y年m月",$vo['add_time'])); ?></h3>
		</div>
	</li>
	<?php else: ?>
		<li class="ico<?php echo ($k+1); ?>"><span><?php echo (date("Y年m月",$vo['add_time'])); ?></span><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" target="_blank" title="三联生活周刊"><?php echo (msubstr($vo['name'],0,5)); ?></a></li><?php endif; endforeach; endif; ?>
</div>
</div>

<div class="hot_2">
<div class="hot_2_tit red_top">
<h4>特别推荐</h4>

</div>
<?php $book_tetui_m=D('book')->where('type="m"')->order('rand()')->find(); $book_m_buttom=D('book')->where('type="m"')->limit(7)->select(); ?>

<div class="magazine_cont" id="magazine_cont_2_2" ">
<a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($book_tetui_m['id']); ?>" target="_blank" title="<?php echo ($book_tetui_m['name']); ?>"><img
	style="width: 82px; height: 108px;"
	src="<?php echo ($book_tetui_m['img']); ?>" /></a>
<div class="title"><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($book_tetui_m['id']); ?> target="_blank" title="<?php echo ($book_tetui_m['name']); ?>"><?php echo ($book_tetui_m['name']); ?></a></div>
<br><?php echo (date("Y年m月",$vo['add_time'])); ?>
	</div>
</div>

<div class="hot_3">

<ul>
<?php if(is_array($book_m_buttom)): foreach($book_m_buttom as $key=>$vo): ?><li><a href="/Home/Magazine/mag_detail.html?mag_id=<?php echo ($vo['id']); ?>" target="_blank"	title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo (date("Y年m月",$vo['add_time'])); ?></li><?php endforeach; endif; ?>
</ul>
</div>
</div>


<div style="clear: both"></div>

</div>
<!--  bd2 第二块 end    ====================--> <!--  banner02 begin  ====================-->

<!--  banner02 end  ====================--> <!--  bd3 第三块 begin   ====================-->
<div id="bd3" style="margin-top:30px;">
<div class="bd3_title margin_top12">

<div class="more"><a href="/Home/Book.html">更多</a></div>
</div>

<div class="bd3_left" changeGID="bd3_left_1">
<div class="magazine_list">
<ul>
<?php if(is_array($book_b)): foreach($book_b as $key=>$vo): ?><li>
		<div class="pic"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="手机短信中的语言学"><img style="height: 200px;" src="<?php echo ($vo['img']); ?>" /></a></div>
		<div class="txt"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" title="手机短信中的语言学"><?php echo ($vo['name']); ?></a>
		<p><?php echo (date("Y年m月",$vo['add_time'])); ?></p>
	</li><?php endforeach; endif; ?>
	
</ul>
</div>
</div>
<div class="bd3_right">
<div class="hot">
<div>
<ul class="hot_title">
	<li><a id="test_id8" href="javascript:void(0);"
		onMouseOver="changePanel('b_hot',this,'on','hot_bott2', 'changeHID')"
		is_load="1">热门榜</a></li>
	<li><a href="javascript:void(0);"
		onMouseOver="changePanel('b_search',this,'on','hot_bott2', 'changeHID')"
		is_load="0">热搜排行</a></li>
	<li><a href="javascript:void(0);"
		onMouseOver="changePanel('b_attention',this,'on','hot_bott2', 'changeHID')"
		is_load="0">最受关注</a></li>
</ul>
<div class="small_title clear" id="new_small"></div>
</div>
<div class="hot_bott2" id="hot_bott2_0_week" changeHID="hot_bott2_0">
<ul>
	
	<?php if(is_array($book_b_r)): foreach($book_b_r as $k=>$vo): if(($k+1 == 1) or ($k+1 == 2) or ($k+1 == 3)): ?><li class="bule_ico<?php echo ($k+1); ?>">
		<div class="pic"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>"><img style="width: 59px; height: 77px;"	src="<?php echo ($vo['img']); ?>" /></a>
		<div class="sTit"><img src="/Public/Home/images/hot.gif" /></div>
		<b><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" 22418" target="_blank" title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a></b> <b>
		<h3><?php echo (date("Y年m月",$vo['add_time'])); ?></h3>
		</div>
	</li>
	<?php else: ?>
		<li class="ico4"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" 21830" target="_blank" title="《XBOX ONE专辑》Vol.1"><?php echo ($vo['name']); ?></a></li><?php endif; endforeach; endif; ?>
</ul>
</div>
<div class="hot_bott2" style="display: none;" id="hot_bott2_0_mouth" changeHID="hot_bott2_0_mouth">
<ul>
	<?php if(is_array($book_b_r2)): foreach($book_b_r2 as $k=>$vo): if(($k+1 == 1) or ($k+1 == 2) or ($k+1 == 3)): ?><li class="bule_ico<?php echo ($k+1); ?>">
		<div class="pic"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>"  target="_blank" title="<?php echo ($vo['name']); ?>"><img style="width: 59px; height: 77px;"	src="<?php echo ($vo['img']); ?>" /></a>
		<div class="sTit"><img src="/Public/Home/images/hot.gif" /></div>
		<b><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" 22418" target="_blank" title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a></b> <b>
		<h3><?php echo (date("Y年m月",$vo['add_time'])); ?></h3>
		</div>
	</li>
	<?php else: ?>
		<li class="ico4"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></a></li><?php endif; endforeach; endif; ?>
</ul>
</div>
</div>

<div class="hot_2">
<div class="hot_2_tit bule_top">
<h4>特别推荐</h4>

</div>
<?php $book_tetui_b=D('book')->where('type="b"')->order('rand()')->find(); $book_b_buttom=D('book')->where('type="b"')->limit(7)->select(); ?>
<div class="magazine_cont2" id="magazine_cont2_0_0"	style="display: block;">
<a href="/Home/Book/book_detail.html?book_id=<?php echo ($book_tetui_b['id']); ?>"  target="_blank" title="<?php echo ($book_tetui_b['name']); ?>">
<img style="width: 82px; height: 108px;" src="<?php echo ($book_tetui_b['img']); ?>" /></a>
<div class="title"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($book_tetui_b['id']); ?>" target="_blank"	title="中国当代青年作家选集"><?php echo ($book_tetui_b['name']); ?>"</a></div>
<div class="title"><b><?php echo (date("Y年m月",$book_tetui_b['add_time'])); ?>"</b></div>

</div>


</div>

<div class="hot_3">
<ul>
	<?php if(is_array($book_b_buttom)): foreach($book_b_buttom as $key=>$vo): ?><li><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank"	title="<?php echo ($vo['name']); ?>"><?php echo (msubstr($vo['name'],0,5)); ?></a>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo (date("Y年m月",$vo['add_time'])); ?></li><?php endforeach; endif; ?>
</ul>
</div>
</div>
</div>

</div>
<div></div>
<!--  bd3 第三块 end   ====================-->

</div>
<script type="text/javascript">

	$(document).ready(function(){
		get_adcode('45','');


	});
</script>

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