// JScript 文件
function TopAd()
{
    var strTopAd="";
	
	//定义小图片内容
    var topSmallBanner="<div><a href=\"\" target=_blank></a></div>";
	
	//判断在那些页面上显示大图变小图效果，非这些地址只显示小图（或FLASH）
    if (location == "http://www.dooland.com/index.php" || true)
    {
		
		//定义大图内容
        strTopAd="<div id=adimage style=\"margin:0px auto; width:990px;\">"+
                    "<div id=adBig><a href=\"http://www.dooland.com/magazine/special/xiyue_wy/\" " +
                    "target=_blank><img title=51提前放价喜阅平板直降510元 "+
                    "src=\"http://www.dooland.com/magazine/images/xiyue_wy.png?v1\" " +
                    "border=0></A></div>"+
                    "<div id=adSmall style=\"display: none\">";				
					
      //  strTopAd+=  topFlash;     
		strTopAd+=  topSmallBanner;  
        strTopAd+=  "</div></div>";
    }
    else
    {
        //strTopAd+=topFlash;
		strTopAd+=  topSmallBanner;  
    }
    strTopAd+="<div style=\"height:7px; clear:both;overflow:hidden\"></div>";
    return strTopAd;
}
document.write(TopAd());
$(function(){
	//过两秒显示 showImage(); 内容
    setTimeout("showImage();",10000);
    //alert(location);
});
function showImage()
{
    $("#adBig").slideUp(1000,function(){$("#adSmall").slideDown(1000);});
}

