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



<link href="/Public/Home/css/book_det.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/jqzoom2012.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/css/polltxt.css" rel="stylesheet" type="text/css" />
<script src="/Public/Home/js/comment.js" type="text/javascript"></script>
<script type="text/javascript" src="/Public/Home/js/jquery.jqzoom.min.js"></script>
<script src="/Public/Home/js/new_poll.js?v3.1" type="text/javascript"></script>
<script src="/Public/Home/js/jquery_block.js?v3.1" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	show_mag('0');
	change_combin('#combin_nav','1')
	$(".jqzoom").jqueryzoom({
		xzoom: 440, //zooming div default width(default width value is 200)
		yzoom: 400, //zooming div default width(default height value is 200)
		xOffset :10,
		yOffset :10,
		position: "right", //zooming div position(default position value is "right")
		preload:1,
		lens:0
	});

	 get_adcode2('52','');
});

var price=4;
	if(price>0){
		var Request=new UrlSearch(); 
		if(Request.m=='clientbuy'){
			window.onload=function(){
				AddtoCar_float('book_22946');
			}
		}
	}
</script>
<div id="book_detailed_main">
	<div class="local">
    您所在的位置：<a href="<?php echo SITE_URL ?>" class="ico">首页</a>
    <a href="/Home/Book.html" class="ico">图书</a>
    <a href="/Home/Index/book_search.html?cate_id=<?php echo ($book_detail['big_cate']['id']); ?>" class="ico"><?php echo ($book_detail['big_cate']['name']); ?></a>
    <a href="/Home/Index/book_search.html?cate_id=<?php echo ($book_detail['cate_name']['id']); ?>" class="ico"><?php echo ($book_detail['cate_name']['name']); ?></a><a href="javascript:void(0);"><?php echo ($book_detail['name']); ?></a>
    </div>
    
    <!--==================== book_detailed_left begin   ====================-->
    <div id="book_detailed_left">
    	     <!--===== bd1_left 杂志分类 begin   =====--> 
    	<div class="m_sort">
            <h1></h1>
    <h2 style=" width:120px;padding: 0 15px;height:30px; line-height:30px; font-size:14px;color: #FC7A2B;">
    <a href="/Home/Book/index.html" style="color: #FC7A2B; text-decoration:none;" title="有声读物">所有图书</a></h2>
               
            <?php if(is_array($big_cate)): foreach($big_cate as $key=>$vo): ?><dl class="sort-on"><dt class="orange"><a href="/Home/Index/book_search.html?cate_id=<?php echo ($vo['id']); ?>" ><?php echo ($vo['name']); ?></a></dt>
             		<dd>
             	<?php if(is_array($small_cate)): foreach($small_cate as $key=>$vo1): if($vo1['p_id'] == $vo['id'] ): ?><a href="/Home/Index/book_search.html?cate_id=<?php echo ($vo1['id']); ?>" > <?php echo ($vo1['name']); ?> </a><?php endif; endforeach; endif; ?>
             		</dd></dl><?php endforeach; endif; ?>  
                
        
        
     </div>
     <!--===== bd1_left 杂志分类 end   =====--> 
  

         
    </div>
    <!--==================== book_detailed_left end     ====================-->
    
    <!--==================== book_detailed_right begin     ====================-->
    <div id="book_detailed_right">
        
        <!--**********  杂志详情 begin   **********-->
        <div class="magazine_detailed margin_top12">
        	<div class="pic"><div class="jqzoom"><img src="<?php echo ($book_detail['img']); ?>"></div></div>
            <div class="deta_content">
            	<div class="tit">
                	<div class="tit_date_left">
                    <h2><?php echo ($book_detail['name']); ?></h2>
                    <b>
                                                            </b>
                    </div>
                    
                    <div class="tit_date_right">
                    	<div class="share" id="dofav"><a href="/Home/Personal/collect.html?book_id=<?php echo ($book_detail['id']); ?>" title="">收藏</a></div>
                    </div>
                </div>
                
                <div style="clear:both"></div>
                <div class="deta_left margin_top12">
                	<div class="table_ui">
                    	<ul>
                        <li>作者：<a href="#" target="_blank" ><?php echo ($book_detail['author']); ?></a></li>
                        <li class="fg">页数：<?php echo ($book_detail['pages']); ?></li>
                        </ul>
                    </div>
                    <div class="Publi">
                    <ul>
                    <li>出版社：<a href="" target="_blank">四川文艺出版社</a></li>
                    </ul>
                    </div>
                    
                    
                	<div class="book_intro">
                    	<ul>
           					<li>所属分类：<a href="/Home/Index/book_search.html?cate_id=<?php echo ($book_detail['big_cate']['id']); ?>"><?php echo ($book_detail['big_cate']['name']); ?></a>><a href="/Home/Index/book_search.html?cate_id=<?php echo ($book_detail['cate_name']['id']); ?>"><?php echo ($book_detail['cate_name']['name']); ?></a></li>
                        </ul>
                    </div>
       
                    
                    
                    <div class="mag_down">
                    	<a href="/Home/Book/book_reading.html?book_id=<?php echo ($book_detail['id']); ?>"><img src="/Public/Home/images/mag_det/mag_down1.jpg" /></a>
                        <!--**********<a href="javascript:void(0);" id="downloadurl" onclick="js_showShared();" target="_blank"><img src="/Public/Home/images/mag_det/mag_down2.jpg" /></a>**********-->
                        <a href="#"><img src="/Public/Home/images/mag_det/mag_down3.jpg" /></a>
                    </div>
              </div>
                
              <div class="deta_right">
      
        
              </div>
                
            </div>
        </div>
        <!--**********  杂志详情 end   **********-->
        
        <!--**********  最佳组合 begin   **********-->
        <div class="mag_zuhe clear">
        	<div class="zuhe_tit">
            	<h3>为您推荐</h3>
   
            </div>
            
            <div class="zuhe_cont clear">
            	<div class="magazine-left clear">
                    	<div class="zuhe-center" id="zuhe_1">
						
                          <?php if(is_array($book_put)): foreach($book_put as $key=>$vo): ?><div class="zuhe_magazine zuhe_magazine_sel" >
                            <a  class="mag_id" combin_id="book_22946" href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" title="" target="_blank"><img width="111" src="<?php echo ($vo['img']); ?>" /></a>
                            <div class="tit"><a href="/Home/Book/book_detail.html?book_id=<?php echo ($vo['id']); ?>" target="_blank" title="茵梦湖"><?php echo ($vo['name']); ?></a></div>
                            <h5><?php echo (date("Y年m月",$vo['add_time'])); ?></h5>
                           </div><?php endforeach; endif; ?>
                                
                         
						 </div>
                    	
                    	
                </div>
       
            </div>
        </div>
        <!--**********  最佳组合 end   **********-->
        
        <!-- <div class="right-banner margin_top12"></div>-->
        
        <!--**********  图书详情 begin   **********-->
        <div class="mag_comment margin_top12">
        	<div class="comment_title">
            <ul>
            <li class="on" id="li003"><a href="javascript:void(0);" onclick="mag_user_pl('li003');">图书详情</a></li>
          
            </ul>
            </div>
          
          <div class="comment_conter clear" >
          	<!--**********  图书简介 begin     **********-->
            <div class="comment_about">
            	<div class="comment_Cycle">
                	<ul>
                    <li>出版时间：2013-02-10</li>
                    <li class="fg">ISBN：<?php echo ($book_detail['ibsn']); ?></li>
                    </ul>
                    <ul>
                    
                    <li class="fg">语言：中文</li>
                    <li class="fg">出版社：<?php echo ($book_detail['public']); ?></li>
                    </ul>
                </div>
                
                <div class="Intr-content">
                	<div class="title">简介：</div>
                    <p><?php echo ($book_detail['description']); ?></p>
                </div>
                
                   <div class="Intr-content">
                	<div class="title">作者简介：</div>
                    <p>暂无</p>
                	</div>
                	
                    <div class="Directory">
                    	<div class="title">目录：</div>
                        <p>
                        <?php if(is_array($book_dir)): foreach($book_dir as $key=>$vo): echo (str_repeat("&nbsp;&nbsp;",$vo['level'])); echo ($vo['title']); ?><br><?php endforeach; endif; ?>
                      
                        </p>
                        </div>
                    <div class="clear"></div>
            </div>
           <!--**********  图书简介 begin     **********-->
           
          </div>
        <!--**********  图书详情 end     **********-->
        
          <!--**********  用户评论  begin     **********-->

<div class="clear"></div>
         <div class="comment_title margin_top12">
            <ul>
            <li class="on" ><a href="javascript:void(0);">图书评论</a></li>
          
            
            </ul>
            </div>
          
         
         <div class="mag_user_pl">
          <a name="commenttop"></a>
            <div class="message" id="comment">
            <div class="top">
<span>评论</span>共<?php echo ($count); ?>条数据
</div>

<ul>

<?php if(is_array($com_b)): foreach($com_b as $k=>$vo): ?><li class="cmt_f1" class="">
				 <!--会员头像-->
	                <div class="user_list">
	        			<div class="user_ico_s">
	        			                	<img src="<?php if(!empty($vo['img'])): echo ($vo['img']); else: ?>/Public/Home/images/user_img/user_default.png<?php endif; ?>" width="50px" height="45px" />
	                	        				
	        			</div>
	                 </div>
	                 <div class="intro">
	           	<div class="item_content">
	                <div class="tool_bar">
	                	<div class="date"> 
	                	     <?php echo ($vo['u_name']['username']); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo (date("Y年m月",$vo['time'] )); ?>
	                	 </div>
	                	 
	                	<div class="tool_button cmt_f1_hover_show">
		                	<a href="#pre" onclick="reply_to(<?php echo ($vo["id"]); ?>);">我要回复</a>
		                </div>
		                
	                </div>
	                
	                <div class="content" id="comment_102"> <?php echo ($vo['contents']); ?> </div>
	                </div>
	<?php if(is_array($com_s)): foreach($com_s as $key=>$vo1): if($vo1['p_id'] == $vo['id']): ?><div class="post_item cmt_f2">
                	<!--会员头像-->
                    <div class="user_list">
	        			<div class="user_ico_s">
	        		                	<img src="<?php if(!empty($vo['img'])): echo ($vo['img']); else: ?>/Public/Home/images/user_img/user_default.png<?php endif; ?>" width="30px" height="25px" />
                		
	        			
	        			</div>
                    </div>
                    <!--会员头像结束-->
                    <!--回复内容-->
                    <div class="reply">
	                    <div class="tool_bar">
	                		<div class="date">                 	<?php echo ($vo1['username']); ?>                	                	<?php echo (date("Y年m月",$vo1['time'] )); ?> </div>
	                		<div class="tool_button cmt_f2_hover_show">								
															</div>
		                </div>
                    </div>
                    
                    <div class="content" id="comment_103"><?php echo ($vo1['contents']); ?> </div>
				
                	<div class="clear">
                </div>
                                <!--引用回复结束-->
            </div><?php endif; endforeach; endif; ?>
	 		
	    </div>
	</li><?php endforeach; endif; ?>

	            <!--会员头像结束-->
	            
	            
	                
	                
				     
	           
	
</ul>


<div class="clear"></div>
<!--page-->
				<div class="page">
						<div style="width:380px;">
						<?php echo ($page); ?>
						</div>
				</div>
<!--page-->
<div class="clear"></div>
<!--submit-->
<a name="pre" id="pre"></a>
<div id="precom"></div>
<form name="comment_form" action="" method="post" id="comment_form">
	<div class="submit">
		<div class="title">
			<div class="tit">我要发表评论</div>
			<div class="picture">
				<div class="choose"><!--选择表情</div><div class="pic"><img src="images_v3/dooland_final_01_10.jpg" />--></div>
			</div>
		</div>
		<div class="input">
			<textarea name="comment_content" id="comment_content" cols="" rows="" class="text"></textarea>
			<div class="clear"></div>
			<div class="table">
			
				<?php if(empty($_SESSION['userdata'])): ?><div id="comment_login">
					帐户：<input id="comment_name" name="username" type="text" class="txt">
					密码：<input id="comment_password" name="userpassword" type="password" class="txt">
					<input name="提交" type="button" class="but" value="登 录" onclick="comment_login();">
					<span><a href="/Home/Index/register.html" target="_blank">注册新帐户</a></span>
				</div><?php endif; ?>
				
				<input type="hidden" id="user" name="u_id" value="<?php echo ($_SESSION['userdata']['id']); ?>">
				<input type="hidden" name="issuetype" id="issuetype" value="mag">
				<input type="hidden" id="mag_id" name="book_id" value="<?php echo ($book_detail['id']); ?>">
				<input type="hidden" id="parent_id" name="p_id" value="">
				<input  type="submit" name="comment_sub" class="but" value="发 表" onclick="return check_comment_login();" id="sendpost">
			</div>
		</div>
	
	</div>
</form>
<!--submit-->
</div>
         </div>
          <!--**********  用户评论  end       **********-->
        
        </div>
        
</div>
	<!--==================== book_detailed_right end       ====================-->
<div class="clear"></div>
</div>




<script language="javascript" type="text/javascript"><!--

	function comment_login(){
		var name=document.getElementById("comment_name").value;
		var passwd=document.getElementById("comment_password").value;//alert(window.location.href);
		if(name&&passwd){
			$.post('',{username:name,passwd:passwd,ajax:'ajax'},function(msg){
				if(msg){
					history.go(0);
				}else{
					alert('用户名或密码错误');
				}
			},'json');
		}else{
			alert('帐户或密码不能为空');
		}
		
	}
	function check_comment_login(){
		var u_id=document.getElementById("user").value;
		if(u_id=='') {
			alert("请先登录！");
			document.getElementById("comment_name").focus();
			return false;
		}
		if($('#comment_content').val().trim() == ''){
			alert('写两个字吧');
			return false;
		}
		//else{
			//var contents=$('#common_contents').val();
			//var data={
				//	u_id:u_id,
					//contents:contents,
				//}
			//$.post('',data,function(){
				
		//	},'json');
		//}
	}
	function reply_to(p_id){
		document.getElementById("parent_id").value=p_id;
		alert("请输入内容");
		document.getElementById("comment_content").focus();
	}
	
	
--></script>

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