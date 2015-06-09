var Absoulteurl = '';
if(typeof(MAGAZINE_LINK)!='undefined'){
	Absoulteurl = MAGAZINE_LINK;
}
F_out=null
function auto_show_it(){
	clearInterval(F_out);
	//var obj = document.getElementById('float_cart_container');
	//new Effect.BlindDown(obj);
	
//	jQuery('#float_cart_container').slideDown("slow");
	
	document.getElementById('float_cart_container').style.display='block';
	//document.getElementById('headshop').className='headshop';
	//F_out = setInterval("auto_close_it()", 3000);
	SHOP_CLOSE = false;
	SHOP_SHOW=true;
	//setTimeout("enableCloseshopcar()", 200);
}
function enableCloseshopcar() {
	SHOP_CLOSE = true;
}
function auto_close_it(){
	//var obj = document.getElementById('float_cart_container');
	//new Effect.BlindUp(obj);
	//jQuery('#float_cart_container').slideUp("slow");
	document.getElementById('float_cart_container').style.display='none';
	clearInterval(F_out);
	//document.getElementById('headshop').className=''
	SHOP_SHOW=false;
}

function click_show_it(){
	reset_cart_xy();
	clearInterval(F_out);
	//var obj = document.getElementById('float_cart_container');
	//new Effect.Appear(obj);
	//jQuery('#float_cart_container').slideDown("slow");
	document.getElementById('float_cart_container').style.display='block';
	//document.getElementById('headshop').className='headshop';
	SHOP_CLOSE = false;
	SHOP_SHOW=true;
	setTimeout("enableCloseshopcar()", 200);
}

function click_close_it(){
	//var obj = document.getElementById('float_cart_container');
	//new Effect.Puff(obj);
	//jQuery('#float_cart_container').slideUp("slow");
	document.getElementById('float_cart_container').style.display='none';
	clearInterval(F_out);
	
	//document.getElementById('headshop').className='';
	SHOP_SHOW=false;
}

window.onload = function(){
	setTimeout("reset_cart_xy()", 1000);
};

function reset_cart_xy(){
	if(document.getElementById('shop_cart_text')){
		var text_t = document.getElementById('shop_cart_text').offsetTop;
		var text_l = document.getElementById('shop_cart_text').offsetLeft;
		
		if(navigator.appName.indexOf("Explorer") > -1){
			/*
			if(text_t>123){
				document.getElementById('float_cart_container').style.top = text_t+20;
			}else{
				document.getElementById('float_cart_container').style.top = 121;
			}
			*/
			var e = document.getElementById('shop_cart_text');
			var t=e.offsetTop;
			var l=e.offsetLeft;
			
			while(e=e.offsetParent){
				t+=e.offsetTop;
				l+=e.offsetLeft;
			}
	
			document.getElementById('float_cart_container').style.top = t+20;
			
			/*
			if(text_l>545){
				document.getElementById('float_cart_container').style.left = text_l-115;
			}else{
				document.getElementById('float_cart_container').style.left = 644-115;
			}
			*/
			
			document.getElementById('float_cart_container').style.left = l-117;
			
		}else{
			document.getElementById('float_cart_container').style.top = text_t+20+'px';
			document.getElementById('float_cart_container').style.left = text_l-117+'px';
		}
	}

}
	
	function del_float_cart(id){
		
		//ajax_get(Absoulteurl+'float_cart_op.php?mod=del&id='+id,'float_cart');
		
		jQuery.get(Absoulteurl+'float_cart_op.php?mod=del&id='+id,{},function(json){
			show_cart_num();freshCart();													   	
		});
		auto_show_it();
	}
	
	function del_float_fav(id){
		//ajax_get(Absoulteurl+'float_check_fav.php?mod=del&id='+id,'float_fav');
		jQuery('#float_fav').load(Absoulteurl+'float_check_fav.php?mod=del&id='+id);
	}
	
	function AddtoCar_float(id){
		
		jQuery('#pkg_sale').load(Absoulteurl+'show_pkg_sale.php?id='+id);
		show_float_layer("float_pkg_layer","open");
		
	}	
	
	function AddtoCar_floatnew(id,op){
		doOk();

		if(op=="pkg"){
			
			jQuery.get(Absoulteurl+'float_cart_op.php?t=pkg&id='+id,{},function(json){
				show_cart_num();freshCart();	
				
			});
		}else{
			
			jQuery.get(Absoulteurl+'float_cart_op.php?id='+id,{},function(json){
				show_cart_num();freshCart();	
													   	
			});
		}
		auto_show_it();

	}
	
	function AddtoCar_combin(id,div_id)
	{
	   if(chk(div_id))
	   {
	   jQuery.get(Absoulteurl+'float_cart_op_combin.php?ids='+id,{},function(json){show_cart_num();freshCart();});
		auto_show_it();
	   }
	}
	
	function freshCart(){
		jQuery('#float_cart').load(Absoulteurl+'float_check_cart.php');
	}
	function show_cart_num(){
		ajax_get(Absoulteurl+'Ajax_InterFace.php?act=ajax_getCartNum'+'&t='+Math.random(),'shopnum');
	}
	function AddtoFav_float(id){
		ajax_get(Absoulteurl+'float_check_fav.php?mod=add&id='+id,'float_fav');
		show_float_layer("float_fav_layer","close");
	}
	
	function Pkg_buy_float(id){
		ajax_get(Absoulteurl+'show_pkg_sale.php?id='+id,'pkg_sale');
		show_float_layer("float_pkg_layer","open");
	}
	
	function one_buy_float(id){
		ajax_get(Absoulteurl+'one_check_out.php?id='+id,'one_layer');
		show_float_layer("float_one_layer","open");
	}
	
	function go_login(id){
		
		window.top.location.href="http://www.dooland.com/magazine/login.php?jurl=http%3A%2F%2Fwww.dooland.com%2Fmagazine%2Fmag.php%3Fid%3D"+id+"%26nocache%3D1%26buyone%3D1";
		
	}
	
	function Buymag_byfdesir(id){
		window.top.location.href= Absoulteurl+'buy_mag_by_fdesir.php?mod=buymag&id='+id;
	}
	
	function Buymag_byweek(id){
		window.top.location.href= Absoulteurl+'buy_mag_by_week.php?mod=buymag&id='+id;
	}
	function Buymag_byweek_xp(id){
		window.top.location.href= Absoulteurl+'buy_mag_by_week.php?mod=buymag&type=xpress&id='+id;
	}

	function show_float_layer(div,op){
		var eSrc=(document.all)?window.event.srcElement:arguments[1];
		var shield = document.createElement("DIV");
		shield.id = "shield";
		shield.style.position = "absolute";
		shield.style.left = "0px";
		shield.style.top = "0px";
		shield.style.width = "100%";
		shield.style.height = ((document.documentElement.clientHeight>document.documentElement.scrollHeight)?document.documentElement.clientHeight:document.documentElement.scrollHeight)+"px";
		shield.style.background = "";
		shield.style.textAlign = "center";
		shield.style.zIndex = "10";
		shield.style.filter = "alpha(opacity=0)";
		shield.style.opacity = 0;
	
		document.body.appendChild(shield);
		document.getElementById(div).style.display='block';
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
			c = c+5;
			if (c > 20){clearInterval(ad);return 0;}
			setOpacity(shield,c);
		}
		var ad = setInterval("doAlpha()",1);
		this.doOk = function(){
			//alertFram.style.display = "none";
			//shield.style.display = "none";
			//document.body.removeChild(alertFram);
			document.getElementById(div).style.display='none';
			document.body.removeChild(shield);
			//eSrc.focus();
			document.body.onselectstart = function(){return true;}
			document.body.oncontextmenu = function(){return true;}
		}
		//document.getElementById("do_OK").focus();
		//eSrc.blur();
		document.body.onselectstart = function(){return false;}
		//document.body.oncontextmenu = function(){return false;}
		if(op=="close"){
			setTimeout("doOk()", 2000);
		}
	}