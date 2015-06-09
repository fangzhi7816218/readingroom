//图书原版杂志切换
function nTabshow_new(id,id1,obj)
{
	var ul = $(obj).parent().parent();
	var ul_lis = ul.children();
	var li = $(obj).parent();
	ul_lis.each(function(){
		$(this).removeClass('on');
	});
	li.addClass('on');
	$('#'+id).show();
	$('#'+id1).hide(); 
	$("#fulltext_result_contents").css('display','block');
	if(id != 'search_mag')
	{
		$("#fulltext_result_contents").css('display','none');
	}
	
}

function nTabshow_new1(id,id1,obj)
{
	$('#'+id).show();
	$('#'+id1).hide();
	if(id == 'hot_attention'){
		$('#li02').addClass('on');
		$('#li01').removeClass('on');
	}else{
		$('#li01').addClass('on');
		$('#li02').removeClass('on');
	}
}

//图书原版杂志切换
function nTabshow_index(id,id1,id2,obj)
{
	var ul = $(obj).parent().parent();
	var ul_lis = ul.children();
	var li = $(obj).parent();
	ul_lis.each(function(){
		$(this).removeClass('on');
	});
	li.addClass('on');
	$('#'+id).show();
	$('#'+id1).hide();
	$('#'+id2).hide();
	$("#fulltext_result_contents").css('display','block');
	if(id != 'search_mag')
	{
		$("#fulltext_result_contents").css('display','none');
	}
}

function check_book_new()
{
if(document.form1.title.value=="" && document.form1.author.value==""  && document.form1.isbn.value==""&& document.book_press.value=="")
	{
		alert("请输入相关信息再进行搜索！");
		document.form1.title.select();//让文本框中的内容高亮
		document.form1.title.focus();//让光标聚集在文本框中
		return false;
	}
	else{
        return true;
	}
}

function check_mag_new()
{
	if(document.formsearch2.magtitle.value=="" && document.formsearch2.mag_issn.value=="")
	{
		alert("请输入相关信息再进行搜索！");
		document.formsearch2.magtitle.select();//让文本框中的内容高亮
		document.formsearch2.magtitle.focus();//让光标聚集在文本框中
		return false;
	}
	else{
        return true;
	}
}

//重置图书
var resetinputbook_new=function(){
	document.form1.reset();
	
}


//重置原版杂志
var resetinputmag_new=function(){
	document.formsearch2.reset();
	
}


//全文搜索
function show_down_more(magid){
		$('#show_more_'+magid).show();
		$('#show_mod_more_'+magid).hide();
		$('#show_mod_xg_'+magid+' li').css('background-color','#f7f7f7');
	}
function hide_up_more(magid){
		$('#show_more_'+magid).hide();
		$('#show_mod_more_'+magid).show();
		$('#show_mod_xg_'+magid+' > li').css('background-color','#FFFFFF');
}	
function search_link_new(url,q){	
	$('#fulltext_result_contents').css('display','none');
	$('#search_loading').css('display','block');
	
	var l = url+'&q='+escape(q);
	
	$.get(l, function(content){
			$("#fulltext_result_contents").html(content);
			$('#search_loading').css('display','none');
			$('#fulltext_result_contents').slideDown("slow");
	});
}

function search_list_new(url,id){
	$("#"+id+"_more").html('<div class=\"openmore\" style=\"height:40px;\"><br><center><p>加载中...</p></center><br></div>');
	$.get(url, function(content){
			$("#"+id).html(content);
			$('#'+id).slideDown("slow");
	});
}

/*function show_down_more(magid){
		$('#show_more_'+magid).show();
		$('#show_mod_more_'+magid).hide();
		$('#show_mod_xg_'+magid).addClass('openmore');
	}
function hide_up_more(magid){
		$('#show_more_'+magid).hide();
		$('#show_mod_more_'+magid).show();
		$('#show_mod_xg_'+magid).addClass('openmore');
}*/





function fulltext_search(q){
		jQuery('#normal_result').removeClass("now");
		jQuery('#fulltext_result').addClass("now");
		var url = "fulltext_search.php?q="+escape(q)+"&num=100";
		
		jQuery('#normal_result_contents').css('display','none');
		jQuery('#search_loading').css('display','block');
		jQuery('#search_order').css('display','none');
		
		jQuery.get(url, function(content){
			jQuery("#fulltext_result_contents").html(content);
			jQuery('#search_loading').css('display','none');

		});
}
	
function normal_search(){
	jQuery('#normal_result').addClass("now");
	jQuery('#fulltext_result').removeClass("now");
	jQuery('#fulltext_result_contents').html('');
	jQuery('#normal_result_contents').css('display','block');
	jQuery('#search_order').css('display','block');
}

function add_favorites(id){//收藏
		jQuery.get('add_fav_v3.php?id='+id ,{},function(json){
			alert( '收藏成功！' );
		});
}
	