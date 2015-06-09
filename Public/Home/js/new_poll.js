function doPoll(point,mag_id){

   // document.getElementById('poll').innerHTML = "<span id=\"d\">正在评分...</span>"
	//pollNum = parseInt(pollNum)+1;
	//ajax_get('poll.php?act=send&id='+mag_id+'&score='+point,'poll');
	//ajax_get('poll.php?act=getnum&id='+mag_id,'poll_num');
	jQuery.getJSON("new_poll.php",{act:"send",id:mag_id,score:point},function(json){
		if(json.msg){
			showNotice(json.msg)
			//jQuery('#poll_result').html(json.msg);
		}
		jQuery('#poll').html(json.html);
	});
}

function showNotice(short_message) {
    $.blockUI({
    theme:true,
	message: short_message,
	timeout: 2000
    });
}

function closeDiv(id){
	document.getElementById(id).style.display='none';
}

function openDiv(id){
	document.getElementById(id).style.display='block';
}		
function nullIt(id){
	document.getElementById(id).innerHTML = '';
}

function showBlue(id){		
	for(var i = 1;i <= id;i++){
		document.getElementById('star'+i).src='images/poll_1.gif';
	}
	for(var j = (id+1);j <= 5;j++){
		document.getElementById('star'+j).src='images/poll_2.gif';
	}
}

function showGary(id,star){

	for(var i = (star+1);i <=5;i++){
		document.getElementById('star'+i).src='images/poll_2.gif';
	}
	for(var j = 1 ;j <=star;j++){
		document.getElementById('star'+j).src='images/poll_1.gif';
	}
	
	
	
}