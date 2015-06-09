// JavaScript Document


var Absoulteurl = '';
if(typeof(MAGAZINE_LINK)!='undefined'){
	Absoulteurl = MAGAZINE_LINK;
}
function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) {
    if (obj.style) {obj=obj.style;}
	v=args[i+2];
	if(v){v=(v=='show')?'visible':(v=='hide')?'hidden':v;}
	else {v=obj.visibility; v=(v=='hidden')?'visible':(v=='visible')?'hidden':v;}
    obj.visibility=v; }
}

function doselectAll(theBox){
  	xState=theBox.checked;
  	elm=theBox.form.elements;
  	for(i=0;i<elm.length;i++) {
   		if(elm[i].type=="checkbox") {
			elm[i].checked=xState;
		}
	}    
}

function MM_setTextOfLayer(objName,x,newText) { //v4.01
  if ((obj=MM_findObj(objName))!=null) with (obj)
    if (document.layers) {document.write(unescape(newText)); document.close();}
    else innerHTML = unescape(newText);
}

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}


function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.id; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' 必须是一个EMAIL地址.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' 必须包含一个数字.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' 必须在数字 '+min+' 和 '+max+'之间.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' 是必填的.\n'; }
  } if (errors) alert('有以下错误发生:\n'+errors);
  document.MM_returnValue = (errors == '');
}

function MM_changeProp(objName,x,theProp,theValue) { //v6.0
  var obj = MM_findObj(objName);
  if (obj && (theProp.indexOf("style.")==-1 || obj.style)){
    if (theValue == true || theValue == false)
      eval("obj."+theProp+"="+theValue);
    else eval("obj."+theProp+"='"+theValue+"'");
  }
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

// Example:
// writeCookie("myCookie", "my name", 24);
// Stores the string "my name" in the cookie "myCookie" which expires after 24 hours.
function writeCookie(name, value, hours)
{
  var expire = "";
  if(hours != null)
  {
    expire = new Date((new Date()).getTime() + hours * 3600000);
    expire = "; expires=" + expire.toGMTString();
  }
  document.cookie = name + "=" + value + expire;
}

// Example:
// alert( readCookie("myCookie") );
function readCookie(name)
{
  var cookieValue = "";
  var search = name + "=";
  if(document.cookie.length > 0)
  { 
    offset = document.cookie.indexOf(search);
    if (offset != -1)
    { 
      offset += search.length;
      end = document.cookie.indexOf(";", offset);
      if (end == -1) end = document.cookie.length;
      cookieValue = unescape(document.cookie.substring(offset, end))
    }
  }
  return cookieValue;
}

function switchTab(tabid,flag)
{
 	if(flag!=true) clearTimeout(jingpin);
    var obj;
    var obj2;
	for(i=1; i <=5; i++)
	{
		obj=document.getElementById("navtab_"+i);
		obj2=document.getElementById("tabcontent"+i);
		if (obj!=null)
		{
   		   if (i==tabid)
		   {
		     obj.className="onhover";
		     if (obj2!=null){
				// if(document.getElementById("tabcontent"+i).innerHTML=='' || document.getElementById("tabcontent"+i).innerHTML=='<div style=\"padding:20px; text-align:center\">数据加载中...</div>'){
			 		 //document.getElementById("tabcontent"+switch_jingpin_now).style.filter = "alpha(opacity=50)";
					 document.getElementById("tabcontent"+i).innerHTML='<div style=\"padding:20px; text-align:center\">数据加载中...</div>';
					 ajax_get('index_area_new.php?mod=jp&typeid='+i,'tabcontent'+i);	
					 ajax_get('index_area_link.php?id='+i,'index_area_link');
				 //}
				//document.getElementById("tabcontent"+switch_jingpin_now).style.filter = "";
				obj2.style.display='block';
			 }
		   }
		   else
		   {
   		     obj.className="normal";
		     if (obj2!=null)
		        obj2.style.display='none';
		   }
		}
    } 
	switch_jingpin_now = tabid;
}

function daodu_switchTab(tabid,flag)
{
	if(flag!=true) clearTimeout(daodu);
    var obj;
    var obj2;
	for(i=1; i <=10; i++)
	{
		obj=document.getElementById("nav_daodu_tab_"+i);
		obj2=document.getElementById("daodu_tabcontent"+i);
		if (obj!=null)
		{
   		   if (i==tabid)
		   {
		     obj.className="onhover";
		     if (obj2!=null){
		       	//if(document.getElementById("daodu_tabcontent"+i).innerHTML=='' ||document.getElementById("daodu_tabcontent"+i).innerHTML=='<div style=\"padding:20px; text-align:center\">数据加载中...</div>'){
					document.getElementById("daodu_tabcontent"+i).innerHTML='<div style=\"padding:20px; text-align:center\">数据加载中...</div>';
					ajax_get('index_area.php?mod=dd&typeid='+i,'daodu_tabcontent'+i);	 
				//}
			    obj2.style.display='block';
			 }
		   }
		   else
		   {
   		     obj.className="normal";
		     if (obj2!=null)
		        obj2.style.display='none';
		   }
		}
    } 
}

function zuixin_switchTab(tabid,flag)
{
	if(flag!=true) clearTimeout(zuixin);
    var obj;
    var obj2;
	for(i=1; i <=5; i++)
	{
		obj=document.getElementById("nav_zuixin_tab_"+i);
		obj2=document.getElementById("zuixin_tabcontent"+i);
		if (obj!=null)
		{
   		   if (i==tabid)
		   {
		     obj.className="onhoverright";
		     if (obj2!=null){
				if(document.getElementById("zuixin_tabcontent"+i).innerHTML=='' || document.getElementById("zuixin_tabcontent"+i).innerHTML=='<div style=\"padding:20px; text-align:center\">数据加载中...</div>'){
					document.getElementById("zuixin_tabcontent"+i).innerHTML='<div style=\"padding:20px; text-align:center\">数据加载中...</div>';
					ajax_get('index_area.php?mod=zx&typeid='+i,'zuixin_tabcontent'+i);	 
				} 
		        obj2.style.display='block';
			 }
		   }
		   else
		   {
   		     obj.className="normalright";
		     if (obj2!=null)
		        obj2.style.display='none';
		   }
		}
    } 
}


function rexiao_switchTab(tabid,flag)
{
	if(flag!=true) clearTimeout(rexiao);
    var obj;
    var obj2;
	for(i=1; i <=5; i++)
	{
		obj=document.getElementById("nav_rexiao_tab_"+i);
		obj2=document.getElementById("rexiao_tabcontent"+i);
		if (obj!=null)
		{
   		   if (i==tabid)
		   {
		     obj.className="onhoverright";
		     if (obj2!=null){
		        
					document.getElementById("rexiao_tabcontent"+i).innerHTML='<div style=\"padding:20px; text-align:center\">数据加载中...</div>';
					
					ajax_get(Absoulteurl+'index_area_rx.php?typeid='+i,'rexiao_tabcontent'+i);	 
				
				obj2.style.display='block';
			 }
		   }
		   else
		   {
   		     obj.className="normalright";
		     if (obj2!=null)
		        obj2.style.display='none';
		   }
		}
    } 
}

function tuijian_switchTab(tabid)
{
    var obj;
    var obj2;
	for(i=1; i <=4; i++)
	{
		obj=document.getElementById("nav_tuijian_tab_"+i);
		obj2=document.getElementById("tuijian_tabcontent"+i);
		if (obj!=null)
		{
   		   if (i==tabid)
		   {
		     obj.className="tuijian_nav_on";
		     if (obj2!=null)
		        obj2.style.display='block';
		   }
		   else
		   {
   		     obj.className="tuijian_nav";
		     if (obj2!=null)
		        obj2.style.display='none';
		   }
		}
    } 
}

function confirm_redirect(url,text)
{
	if (confirm(text)) {
			window.location = url;
	}
}
function   myAddPanel(title,url,desc)   {   
  if   ((typeof   window.sidebar   ==   'object')   &&   (typeof   window.sidebar.addPanel   ==   'function'))//Gecko   
  {   
  window.sidebar.addPanel(title,url,desc);   
  }   
  else//IE   
  {   
  window.external.AddFavorite(url,title);   
  }   
}   

function show_layer(){
	var eSrc=(document.all)?window.event.srcElement:arguments[1];
	var shield = document.createElement("DIV");
	shield.id = "shield";
	shield.style.position = "absolute";
	shield.style.left = "0px";
	shield.style.top = "0px";
	shield.style.width = "100%";
	shield.style.height = ((document.documentElement.clientHeight>document.documentElement.scrollHeight)?document.documentElement.clientHeight:document.documentElement.scrollHeight)+"px";
	shield.style.background = "#333";
	shield.style.textAlign = "center";
	shield.style.zIndex = "10000";
	shield.style.filter = "alpha(opacity=0)";
	shield.style.opacity = 0;

	document.body.appendChild(shield);
	document.getElementById("download_layer").style.display='block';
	this.setOpacity = function(obj,opacity){
		if(opacity>=1)opacity=opacity/100;
		try{ obj.style.opacity=opacity; }catch(e){}
		try{ 
			if(obj.filters.length>0&&obj.filters("alpha")){
				obj.filters("alpha").opacity=opacity*100;
			}else{
				obj.style.filter="alpha(opacity=\""+(opacity*100)+"\")";
			}
		}catch(e){}
	}
	var c = 0;
	this.doAlpha = function(){
		if (++c > 20){clearInterval(ad);return 0;}
		setOpacity(shield,c);
	}
	var ad = setInterval("doAlpha()",1);
	this.doOk = function(){
		//alertFram.style.display = "none";
		//shield.style.display = "none";
		//document.body.removeChild(alertFram);
		document.getElementById("download_layer").style.display='none';
		document.body.removeChild(shield);
		//eSrc.focus();
		document.body.onselectstart = function(){return true;}
		document.body.oncontextmenu = function(){return true;}
	}
	//document.getElementById("do_OK").focus();
	//eSrc.blur();
	document.body.onselectstart = function(){return false;}
	document.body.oncontextmenu = function(){return false;}
}

function  openWindows(url)   {  
  //window.location.href=url;
  window.open(url);
  //bschitchat=window.open(url,'bschitchat','fullscreen=yes,toolbar=no,Status=no,scrollbars=yes,resizable=yes');
  return;
} 

function pep_download(pid,uid)
{
	/*
	window.scrollTo(0,0);
	show_float_layer("new_down_layer","");
	document.getElementById('new_down_msg').innerHtml = '';
	ajax_get('new_dl_select.php?pid='+pid,'new_down_msg');
	*/
	window.location.href='down_select.php?pid='+pid;
	/*
	var DooX;
	//alert("downloading...");
	try
	{
		DooX = document.createElement("OBJECT");
		DooX.classid = "CLSID:C6D3941B-8B86-4B91-8067-42813A9B90EC";
		//show_float_layer("float_down_layer","close");
	}
	catch(e)
	{
		document.getElementById('down_msg').innerHtml = '您可能尚未安装客户端，或者您所使用的浏览器不支持客户端。<BR>请在软件下载页面下载安装客户端。';
		//show_float_layer("float_down_layer","close");
		alert("您可能尚未安装客户端，或者您所使用的浏览器不支持客户端。\n请在软件下载页面下载安装客户端。");
		document.getElementById('down_soft').style.display='block';
		return;
	}

	try
	{
		DooX.Init();
		DooX.StartDownLoad('<i c="down" p="'+pid+'" t="mag" u="'+uid+'" />');
	}
	catch(e)
	{
		 document.getElementById('down_msg').innerHtml = '您可能尚未安装客户端，或者您所使用的浏览器不支持客户端。<BR>请在软件下载页面下载安装客户端。';
		//show_float_layer("float_down_layer","close");
		 alert("您可能尚未安装客户端，或者您所使用的浏览器不支持客户端。\n请在软件下载页面下载安装客户端。");
		document.getElementById('down_soft').style.display='block';
		 return;
	}
	*/
}

var menuDisplayed = false;
var canCloseMenu = true;
var menuDisplayed1 = false;
var canCloseMenu1 = true;
var nowLetter;
var lastLetter;
var firstTime = true;

function enableCloseMenu() {
	canCloseMenu = true;
}

function enableCloseMenu1() {
	canCloseMenu1 = true;
}

function head_brand(l){
	if(nowLetter==l){
		document.getElementById('head_brand').style.display='none';
		nowLetter = '';
		menuDisplayed = false;
	}else{
		canCloseMenu = false;
		menuDisplayed = true;
		
		if(!firstTime){
			
			document.getElementById('h_'+lastLetter).className ='';
			
		}
		document.getElementById('h_'+l).className ='active_name';
		document.getElementById('head_brand').style.display='block';
		ajax_get(Absoulteurl+'mag_head_brand.php?l='+l+'&t='+Math.random(),'head_brand');
		setTimeout("enableCloseMenu()", 200);
		nowLetter = l;
		lastLetter = l;
		firstTime = false;
	}
}


function head_sort_brand(l){

		canCloseMenu1 = false;
		menuDisplayed1 = true;
		clickHandler();
		document.getElementById('head_sort_brand').style.display='block';
		ajax_get(Absoulteurl+'head_sort_brand.php?id='+l+'&t='+Math.random(),'head_sort_brand');
		setTimeout("enableCloseMenu1()", 200);

}

function head_sort_brand_v3(l){

		canCloseMenu1 = false;
		menuDisplayed1 = true;
		clickHandler();
		document.getElementById('head_sort_brand').style.display='block';
		ajax_get(Absoulteurl+'head_sort_brand_v3.php?id='+l+'&t='+Math.random(),'head_sort_brand');
		setTimeout("enableCloseMenu1()", 200);

}

// 添加到收藏夹
function AddToFavorite(url,title)   
{   
   try{
		if(document.all)
        {
			window.external.addfavorite(url,title,"");
        }
        else if(window.sidebar)
        {
			window.sidebar.addPanel(title, url, "");
		}
		else
		{
			window.external.AddToFavoritesBar(url,title,"");
		}
   }
   catch(e)
   {
			alert("加入收藏失败，请使用ctrl+d进行添加");
   }
}   

function clickHandler() {
	
	$('#ac_results').html('').hide();
		
	if(canCloseMenu && menuDisplayed){
		document.getElementById('head_brand').style.display='none';
		if(nowLetter) document.getElementById('h_'+nowLetter).className ='';
		nowLetter = '';
	}
	
	if(canCloseMenu1 && menuDisplayed1){
		document.getElementById('head_sort_brand').style.display='none';
	}
	
	if(SHOP_CLOSE && SHOP_SHOW){
		document.getElementById('float_cart_container').style.display='none';
		/*document.getElementById('headshop').className='';*/
	}
}

function openFullWin(url){
	mywin=window.open(url,"","fullscreen=1,resizeable=1,scrollbars=yes");
	return false;
}

function pagetrack(block,id,type){
	jQuery.post(Absoulteurl+'ReadStat/stat_page_click.php',{block:block,id:id,type:type});
}


function forwardarticle(type){
	var mag_title=document.getElementById("mag_title").value;
	var mag_description=document.getElementById("mag_description").value;
	var locationhref=window.location.href;
	var href='';
	
	
	if(type=='kaixin'){
		mag_description=mag_description+"...";
		href="http://www.kaixin001.com/~repaste/repaste.php?rtitle="+escape("电子杂志——"+mag_title)+"&rurl="+escape(locationhref)+"&rcontent="+escape("【"+mag_title+"】 简介："+mag_description+" 来源 "+locationhref);
	}
	
	if(type=='renren'){
		mag_description=mag_description+"...";
		href="http://share.renren.com/share/buttonshare.do?link="+escape(locationhref)+"&title="+escape("【"+mag_title+"】 简介："+mag_description);
	}
	
	if(type=='sina'){
		mag_description=mag_description.substring(0,90);
		mag_description=mag_description+"...";
		href="http://v.t.sina.com.cn/share/share.php?url="+escape(locationhref)+"&title="+"【"+mag_title+"】 简介："+mag_description+"&source=bookmark";
	}
	
	if(type=='douban'){
		mag_description=mag_description+"...";
		href="http://www.douban.com/recommend/?url="+escape(locationhref)+"&title="+"【"+mag_title+"】 简介："+mag_description;	
	}
	
	if(href) window.open(href);
	
}

function UrlSearch() 
{
   var name,value; 
   var str=location.href; //取得整个地址栏
   var num=str.indexOf("?") 
   str=str.substr(num+1); //取得所有参数
   var arr=str.split("&"); //各个参数放到数组里
   for(var i=0;i < arr.length;i++){ 
    num=arr[i].indexOf("="); 
    if(num>0){ 
     name=arr[i].substring(0,num);
     value=arr[i].substr(num+1);
     this[name]=value;
     } 
    } 
} 





/*header js start*/
function check_search(){
	if(document.getElementById('search_key').value==''){
		alert("请输入杂志名称再搜索");
		return false;
	}else{
		if(document.getElementById('search_key').value=='搜索7000多本杂志！'){
			alert("请输入杂志名称再搜索");
			document.getElementById('search_key').value = '';
			return false;
		}else{
			return true;
		}
	}
}
/*function showhottag(){
	
	headhottag.style.display="block";
	canclose=false;
	tag_show=true;
	setTimeout("enableClose()", 200);
}
function hidehottag(){
	
	headhottag.style.display="none";
	tag_show=false;
}
*/
function clearin(obj,search_intivalue){
	if(obj.value==search_intivalue){
		obj.value="";
	}
}
function body_click(){
	if(tag_show&&canclose){
		hidehottag();			
	}if(home_show&&canclosehome){
		hideheadhome();			
	}
}
function enableClose() {
	canclose = true;
}

function show_articletext(){
	articletext.style.display="block";
}
function hide_articletext(){
	articletext.style.display="none";
}
function showheadhome(){
	//headhome.style.display="block";
	$('#headhome').css('display','block');
	canclosehome=false;
	home_show=true;
	$('#headmenuhome').addClass("my_menu_hover");		
	setTimeout("enableClosehome()", 200);
}
function hideheadhome(){
	$('#headhome').css('display','none');
	home_show=false;
	$('#headmenuhome').removeClass("my_menu_hover");		
}

function show_s_book(id)
{
	if(id == 'show')
	{
		$('.s_book').show();
	}
	else
	{
		$('.s_book').hide();
	}
}

/**
*author luyong
*
*by 2012年3月7日
*
*修改头部搜索的类型
*/
function show_s_book_new(id)
{
	if(id == 'show')
	{
		$('.s_book').show();
		$('.s_mag').show();
	}
	else
	{
		$('.s_book').hide();
		$('.s_mag').hide();
	}
}
function change_s_tag_index(id)
{
	if(id == 'mag')
	{
		$('#s_text').attr('name','magtitle'); 
		$('#s_tag').val('5');
		$('#s_act').val('search_post_mag');
		$('.search_03').html('杂志');
		$('.s_book').html('图书');			
		$('.s_book').attr('onClick','change_s_tag_index(\'book\');');
		$('.s_mag').html('全站');			
		$('.s_mag').attr('onClick','change_s_tag_index(\'all\');');
	}
	if(id == 'book')
	{
		$('#s_text').attr('name','title'); 
		$('#s_tag').val('4');
		$('#s_act').val('search_post');
		$('.search_03').html('图书');
		$('.s_book').html('杂志');
		$('.s_book').attr('onClick','change_s_tag_index(\'mag\');');
		$('.s_mag').html('全站');
		$('.s_mag').attr('onClick','change_s_tag_index(\'all\');');
	}
	if(id == 'all')
	{
		$('#s_text').attr('name','title'); 
		$('#s_tag').val('7');
		$('#s_act').val('search_post_all');
		$('.search_03').html('全站');
		$('.s_book').html('杂志');
		$('.s_book').attr('onClick','change_s_tag_index(\'mag\');');
		$('.s_mag').html('图书');
		$('.s_mag').attr('onClick','change_s_tag_index(\'book\');');
	}
	
}



/**
*author xuying
*
*by 2011年11月15日10:40:11
*
*修改头部搜索的类型
*/
function change_s_tag()
{
  if($('#s_tag').val() == '6')
  {
   $('#s_tag').val('5');
   $('#s_act').val('search_post_mag');
   $('.search_03').html('杂志');
   $('.s_book').html('图书');
  }
  else
  {
   $('#s_tag').val('6');
   $('#s_act').val('search_post');
   $('.search_03').html('图书');
   $('.s_book').html('杂志');
  }
  
}

/**
*显示隐藏登陆提示图片
*
*by xuying  2011年11月15日10:41:38
*/

function show_notice(id)
{
   	if(id == '1')
	{
	    $('.qq_login_xf').show();	
	}
	else
	{
	    $('.qq_login_xf').hide();	
	}
}
/**
*记录会员关闭图标
*
*
*
*by xuying  2011年11月15日10:41:38
*
*/
function close_vip()
{
data = 'action=send';
$.ajax({
	'url': MAGAZINE_LINK+'tag_ajax.php',
	'type':'post',
	'data':data,
	'success':function()
	{	
	$('.tag_vip').remove();
	}
});
}
/**
*ajax切换
*
*author:xuying
*
*by 2011年12月22日16:50:31
*/
function changePanel(data, obj, selected, childDiv, idName,s_id)
{
	var ul = $(obj).parent().parent();
	var ul_lis = ul.children();
	var li = $(obj).parent();
		
	var is_wait = $(obj).attr('is_wait');
	
	if(is_wait == 1)
	{
		return false;
	}
	
	ul_lis.each(function(i){
		$(this).find('a').attr('nid', i);
	});
	
	ul_lis.removeClass(selected);
	if(data != 'day')
	li.addClass(selected);
		
	var is_load = $(obj).attr('is_load');
	var id = $(obj).attr('nid');
	
	if(data == 'm_fenlei' && s_id)
	{
		$('#mag_sort_id').html('<a href="sort.php?act=sort&p_id='+s_id+'">更多</a>')	;
	}
	
	if(data == 'b_heavy' && s_id)
	{
		$('#book_sort_cat_id').html('<a href="category.php?act=list&secp_id='+s_id+'">更多</a>')	;
	}
	
	if(data == 'bcategory' && s_id)
	{
		var secp_id = s_id.split(' ');
		$('.m_more').html('<a href="category.php?act=list&secp_id='+secp_id[0]+'">更多</a>');	
	}
	
	if(data == 'b_fenlei' && s_id)
	{
		$('#book_sort_id').html('<a href="sort.php?act=sort&p_id='+s_id+'">更多</a>');	
	}
    if(data == 'm_new')
	{
		$('#m_type').attr('href','http://www.dooland.com/magazine/category.php?act=new');	
	}
	if(data == 'm_free')
	{
		$('#m_type').attr('href','http://www.dooland.com/magazine/category.php?act=free');	
	}
	if(data == 'm_rank' || data == 'm_edit')
	{
		$('#m_type').attr('href','http://www.dooland.com/magazine/mag_index.php');	
	}
	
	data = 'action='+data;
	data += '&divClass='+childDiv;
	data += '&id='+id;
	data += '&idname='+idName;
	data += '&s_id='+s_id;
	
	
	if(childDiv == 'hot_bott')
	{
		$('.small_title').html('<ul><li><a class="on" href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'week\',this);">每周</a></li><li><a href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'mouth\',this);">每月</a></li></ul>');	
	}
	else if(childDiv == 'hot_bott2')
	{
		$('#new_small').html('<ul><li><a class="bule_on" href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'week\',this);">每周</a></li><li><a href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'mouth\',this);">每月</a></li></ul>');	
	}
	else if(childDiv == 'xs_cursor_cont')
	{
		$('.xs_cursor_week02').html('<ul><li><a class="week_on" href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'new\',this);">新闻</a></li><li><a href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'business\',this);">商业</a></li><li><a href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'finance\',this);">教育</a></li><li><a href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'fashion\',this);">时尚</a></li></ul>');	
	}
	else if(childDiv == 'xs_cursor_cont2')
	{
		$('.small_title').html('<ul><li><a class="on" href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'week\',this);">每周</a></li><li><a href="javascript:void(0);" onClick="change_show(\''+childDiv+'\','+id+',\'mouth\',this);">每月</a></li></ul>');	
	}
		
	if(is_load == 0)
	{
		$(obj).attr('is_wait', 1);
		$.ajax({
			'url': MAGAZINE_LINK+'index_ajax.php',
			'type':'post',
			'data':data,
			'beforeSend':function(){
			 $('.'+childDiv).hide();
			 if(childDiv == 'news_cont' || childDiv == 'xs_cursor_cont' || childDiv == 'xs_cursor_cont2')
			 {
				 ul.parent().parent().after('<div id="loading" class="'+childDiv+'" style="text-align:center; padding-top:50px;"><img src="'+MAGAZINE_LINK+'images/loading.gif"  /></div>');
			 }
			 else
			 {
				 ul.parent().after('<div id="loading" class="'+childDiv+'" style="text-align:center; padding-top:50px;"><img src="'+MAGAZINE_LINK+'images/loading.gif"  /></div>');			
			 }
			},			
			'success':function(res)
			{
				$(obj).attr('is_wait', 0);
				if(childDiv == 'news_cont' || childDiv == 'xs_cursor_cont' || childDiv == 'xs_cursor_cont2')
				{
					ul.parent().parent().after(res);
				}
				else
				{
					ul.parent().after(res);
				}
				$(obj).attr('is_load', 1);
			    $('.'+childDiv).hide();
				$('div['+idName+'="'+childDiv+'_'+id+'"]').show();
			},
			'complete':function(){
				$('#loading').remove();	
			}
		});
		
	}
	else
	{
		$('.'+childDiv).hide();
		$('div['+idName+'="'+childDiv+'_'+id+'"]').show();
	}
	
}
/**
*
*首页切换2
*
*
*/
function change_show(idname,id,tag,obj)
{
	var ul = $(obj).parent().parent();
	var ul_lis = ul.children();
	$('.'+idname).hide();
	$('#'+idname+'_'+id+'_'+tag+'').show();
	if(idname == 'magazine_cont2')
	{
		ul_lis.each(function(){
		$(this).children().removeClass('bule_on');
		});
		$(obj).addClass('bule_on');
	}
	else if(idname == 'hot_bott2')
	{
		ul_lis.each(function(){
		$(this).children().removeClass('bule_on');
		});
		$(obj).addClass('bule_on');
	}
	else if(idname == 'xs_cursor_cont')
	{
		ul_lis.each(function(){
		$(this).children().removeClass('week_on');
		});
		$(obj).addClass('week_on');
	}
	else if(idname == 'brand_cont')
	{
		ul_lis.removeClass('toHover');
		$(obj).parent().addClass('toHover');
	}
	else
	{
		ul_lis.each(function(){
		$(this).children().removeClass('on');
		});
		$(obj).addClass('on');
	}
}

//图片大分类切换
function change_sort_show(id1,id2,obj)
{
	var ul = $(obj).parent().parent();
	var ul_lis = ul.children();
	var li = $(obj).parent();
	ul_lis.each(function(){
		$(this).removeClass('on');
	});
	li.addClass('on');
	$('#'+id1).show();
	$('#'+id2).hide(); 
}


/**
*首页回头部JS
*
*
*
*/
function rtop()
{
	$('html,body').animate({'scrollTop': '0px'}, 500)
};
/*
显示杂志下拉列表
*/
function show_tag(id)
{
  if($('#'+id+'').css('display') == 'none')	
  {
	  $('#'+id+'').show();
  }
  else
  {
	  $('#'+id+'').hide();
  }
}


function enableClosehome() {
	canclosehome = true;
}

function show_mag(id)
{	
	$('.pic_show').hide();
	$('.txt_show').show();
	$('#pic_'+id+'').show();
	$('#txt_'+id+'').hide();
}


function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
	var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
	if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
	d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
/*header js end*/



function get_adcode(ad_id,sort,brand){
	var id_name;

	$.getJSON(Absoulteurl+"Ajax_InterFace.php",{act:"ajax_getADcode",ad_id:ad_id},function(json){
		for(i=0;i<json.length;i++){
			row = json[i];
			
			//alert(json[i].name);
			if(row.slide!=1){
				html_div = '';
				id_name = "#area_"+row.area_id+"";
				$(id_name).removeClass("hidden");
				if(row.type==2){
					html_div = "<div id=xhad style=width:"+row.ad_w+"px;height:"+row.ad_h+"px;float:left><div id=xhad_1 style=position:absolute;z-index:0;>"
					 if(row.href){
						html_div +=  "<a href='"+row.href+"' target=_blank>";
					 }
					html_div += "<img src='"+row.kong+"' width="+row.ad_w+" height='"+row.ad_h+"' border=0>";
					if(row.href){
						html_div += "</a>";
					}
					html_div += "</div><div style='z-index:-1'><object classid=clsid:D27CDB6E-AE6D-11CF-96B8-444553540000 id=obj1 codebase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0 border=0 width='"+row.ad_w+"' height='"+row.ad_h+"'><param name=movie value="+row.file+"><param name=src value='"+row.file+"'><param name=quality value=High><param name=wmode value=transparent><embed src='"+row.file+"' pluginspage=http://www.macromedia.com/go/getflashplayer wmode='transparent' type=application/x-shockwave-flash name=obj1 width='"+row.ad_w+"'' height='"+row.ad_h+"'></object></div>";
				}else if(row.type==1){
					
					if(row.area_id==94){
						html_div = "<div id=xhad style=width:"+row.ad_w+"px;float:left><div id=xhad_1 style=position:absolute;left:auto;z-index:0>";
					}else if(row.area_id==95){
						html_div = "<div id=xhad style=width:"+row.ad_w+"px;height:"+row.ad_h+"px;float:left;margin-top:9px;><div id=xhad_1 style=position:absolute;left:auto;z-index:0>";
					}else{
					    html_div = "<div id=xhad style=width:"+row.ad_w+"px;height:"+row.ad_h+"px;float:left><div id=xhad_1 style=position:absolute;left:auto;z-index:0>";
					}
					
					if(row.href) html_div +=  "<a href='"+row.href+"' target=_blank>";
					html_div += "<img src='"+row.kong+"' border=0 width="+row.ad_w+" height="+row.ad_h+">";
					if(row.href) html_div += "</a>";
					html_div += "</div><img width="+row.ad_w+" height="+row.ad_h+" src="+row.file+" alt="+row.name+"></div>";
					
				}
				//alert(id_name);
				$("#area_"+row.area_id+"").html(html_div);
				$("#txt_"+row.area_id+"").html("<a href='"+row.href+"' target=_blank>"+row.name+"</a>")
			}else{
				//幻灯片
								

			}
		}
	});
}

(function(jQuery) {
	jQuery.fn.SlideShow = function(options) {
		var settings = {
			data:{},
			delay: 4000,
			target:"_blank"
		};
		return this.each(function() {
			function proloadAd (it) {
				it.attr('resource') && it.attr({src:it.attr('resource')}).attr({resource:""});
			}
			function preloadImg (index) {
				index = index || 0;
				$('#adsname').html(adsname[index]);
				proloadAd(slider.find("li").eq(index).find('.adSource'));
			}
			function showImg(index){
		        var adHeight = container.height();
				slider.stop(true,false).animate({top : -adHeight*index},400);
				nums.removeClass("on").eq(index).addClass("on");
				preloadImg( index );
				setTimeout(function() {
					preloadImg( index + 1 );
					$('#adsname').html(adsname[index]);
				},1500);
			}
			
			var o = $.extend(settings,options);
			
			var c = $(this);
			c.addClass("SlideShow");
			var container = $('<div></div>').appendTo(c).addClass("ad");
			var slider = $('<ul></ul>').appendTo(container).addClass('slider');
			var numContainer = $('<ul></ul>').appendTo(container).addClass('num');
			var title = $('<div></div>').appendTo(container).addClass('adstitle');
		    var title_txt = $('<div></div>').appendTo(container).addClass('title_txt');
			$('.title_txt').append('<a id="adsname"></a>');
			var adsname = new Array();
			
			for(var i=0, row=null,ad=null; i< o.data.length; i++ ) {
				row = o.data[i];
				
				ad = $('<li><a><img class="adSource" width="640" height="170"/></a></li>');
				
				row.href ? ad.find('a').attr({ 
					href : row.href,
					target : o.target
				})
				: ad.find("a").click(function() {return false;})
				
				ad.find("img").attr('resource',row.file);
				slider.append(ad);
				numContainer.append($("<li></li>"));
			    adsname[i] = row.name;
			}
						
			var nums = numContainer.find('li');
			var index = 0;
			var adTimer;
			
			nums.mouseover(function(){
				index  =   nums.index(this);
				showImg(index);
				$('#adsname').html(adsname[index]);
			});
			container.hover(function(){
				clearInterval(adTimer);
			},
			function(){
				adTimer = setInterval(function(){
					showImg( index );
					index ++;
					if( index == nums.length ){
							index=0;
					}
				} ,o.delay);
			});
			container.trigger("mouseleave");
			c.show();
			preloadImg();
		});
	};
	jQuery.fn.AreaAd = function(options) {
		var settings = {
			data:{},
			target:"_blank"
		};
		return this.each(function() {
			function proloadAd (it) {
				it.attr('resource') && it.attr({src:it.attr('resource')}).attr({resource:""});
			}
			var o = $.extend(settings,options);
			var c = $(this);
			c.show();
			var data = o.data;
			var rect = {
				width:Number(data.ad_w),
				height:Number(data.ad_h)
			};
			var ad = $('<div style="float:left;"><div style="position:absolute;left:auto;z-index:0"><img style="border:none;" class="blank"/></div></div>');
			ad.css(rect).find('.blank').attr({src:data.kong}).css(rect);
			data.href && ad.find('.blank').wrap('<a target="' + o.target + '"href="' + data.href + '"></a>');
			
			//flash
			data.type == 2 &&
			$('<div class="adSource" style="z-index:-1"></div>')
			.attr('resource','<object classid=clsid:"D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="' + data.ad_w + '" height="' + data.ad_h +'"><param name="movie" value="' + data.file +'"><param name=src value="' + data.file + '"><param name="quality" value="High"><param name="wmode" value="transparent"><embed src="' + data.file + '" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" type="application/x-shockwave-flash" name="obj1" width="' + data.ad_w + '" height="' + data.ad_h + '"></object>')
			.appendTo(ad);
				
			// image
			if(window.location.href!='http://www.dooland.com/' && window.location.href!='http://www.dooland.com/index.php'){
				data.type == 1 &&
				$('<img class="adSource"/>').css(rect).attr({
					src:data.kong,
					resource: data.file,
					alt:data.name
				}).appendTo(ad);
				
				c.append(ad);
			}
			c.css({display:"block"})
				//$("#area_"+row.area_id+"").css("display","block");
			proloadAd(ad.find('.adSource'));
		});
	};
})($);

function get_adcode2(ad_id,sort,brand){
	function onSuccess (json) {
		var scrollAdData = [];
		for(var i=0,row; i<json.length; i++ ) {
			row = json[i];
			if (row.slide == "1") {
				scrollAdData.push(row);
			}else{
				$("#area_"+row.area_id).AreaAd({data:row});
			}
		}
		scrollAdData.length && $("#ScrollAd1").SlideShow({data:scrollAdData});
	}
	
	
	$.getJSON( Absoulteurl+"Ajax_InterFace.php",{
		act:"ajax_getADcode",
		ad_id:ad_id,
		sort:sort,
		brand:brand
	},onSuccess);
	
}
//ie png
function fixPng() {
  var arVersion = navigator.appVersion.split("MSIE")
  var version = parseFloat(arVersion[1])

  if ((version >= 5.5 && version < 7.0) && document.body && document.body.filters) {
    for(var i=0; i<document.images.length; i++) {
      var img = document.images[i];
      var imgName = img.src.toUpperCase();
      if (imgName.indexOf(".PNG") > 0) {
        var width = img.width;
        var height = img.height;
        var sizingMethod = (img.className.toLowerCase().indexOf("scale") >= 0)? "scale" : "image"; 
        img.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + img.src.replace('%23', '%2523').replace("'", "%27") + "', sizingMethod='" + sizingMethod + "')";
        img.src = "http://www.dooland.com/static/images/blank.gif";
        img.width = width;
        img.height = height;
        }
      }
    }
  }

fixPng();
