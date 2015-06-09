var Absoulteurl = '';
if(typeof(MAGAZINE_LINK)!='undefined'){
	Absoulteurl = MAGAZINE_LINK;
}
function submit_comment() {
	var user = document.getElementById('user').value;
	var mag_id = document.getElementById('mag_id').value;
	var comment_content = document.getElementById('comment_content').value;
	if(user==""){
		MM_setTextOfLayer('msg1','','姓名不能为空!');
		return false;
	}
	if(comment_content==""){
		MM_setTextOfLayer('msg1','','评论内容不能为空!');
		return false;
	}
	var comment_form = document.getElementById('comment_form');
	//document.comment_form.post.disabled=true;
	//document.comment_form.post.value="正在发表..."; 
	url = 'comment.php?action=post&id=' + escape(mag_id);
	var q;
	q='user='+user+'&content='+comment_content
	ajax_post (url,q, 'comment');
}

function new_reset_comment(){
	comment_form.comment_content.value = "";
	comment_form.user.value="";
	comment_form.user.focus();
}


function recommend(mag_id){
	ajax_get('recommend.php?id='+mag_id,'recommend');
}

function bookshelf_insert(mag_id){
	ajax_get('bookshelf_insert.php?id='+mag_id,'bookshelf_insert');
}

function insertTags(tagOpen, tagClose, sampleText) {

    var txtarea = document.comment_form.comment_content;
	// IE
	if(document.selection) {
		var theSelection = document.selection.createRange().text;
		if(!theSelection) { theSelection=sampleText;}
		txtarea.focus();
		if(theSelection.charAt(theSelection.length - 1) == " "){
			theSelection = theSelection.substring(0, theSelection.length - 1);
			document.selection.createRange().text = tagOpen + theSelection + tagClose + " ";
		} else {
			document.selection.createRange().text = tagOpen + theSelection + tagClose;
		}
	// Mozilla
	} else if(txtarea.selectionStart || txtarea.selectionStart == '0') {
 		var startPos = txtarea.selectionStart;
		var endPos = txtarea.selectionEnd;
		var myText = (txtarea.value).substring(startPos, endPos);
		if(!myText) { myText=sampleText;}
		if(myText.charAt(myText.length - 1) == " "){ // exclude ending space char, if any
			subst = tagOpen + myText.substring(0, (myText.length - 1)) + tagClose + " "; 
		} else {
			subst = tagOpen + myText + tagClose; 
		}
		txtarea.value = txtarea.value.substring(0, startPos) + subst + txtarea.value.substring(endPos, txtarea.value.length);
		txtarea.focus();
		var cPos=startPos+(tagOpen.length+myText.length+tagClose.length);
		txtarea.selectionStart=cPos;
		txtarea.selectionEnd=cPos;
	// All others
	} else {
		tagOpen=tagOpen.replace(/\n/g,"");
		tagClose=tagClose.replace(/\n/g,"");
		document.infoform.infobox.value=tagOpen+sampleText+tagClose;
		txtarea.focus();
	}
	if (txtarea.createTextRange) txtarea.caretPos = document.selection.createRange().duplicate();
}

function new_submit_comment() {
	var user = document.getElementById('user').value;
	var mag_id = document.getElementById('mag_id').value;
	var addcommentid
	if(document.getElementById('addcommentid')){
		addcommentid= document.getElementById('addcommentid').value;
	}else addcommentid='';
	var comment_content = document.getElementById('comment_content').value;
	if(user==""){
		MM_setTextOfLayer('msg1','','姓名不能为空!');
		return false;
	}
	if(comment_content==""){
		MM_setTextOfLayer('msg1','','评论内容不能为空!');
		return false;
	}
	var comment_form = document.getElementById('comment_form');
	document.getElementById('sendpost').disabled=true;
	document.getElementById('postwaiting').innerHTML="正在发表，请等待..."; 
	url = Absoulteurl+'new_comment.php?action=post&id=' + escape(mag_id);
	var q;
	q='user='+user+'&addcommentid='+addcommentid+'&content='+comment_content
	ajax_post (url,q, 'comment');
	//document.comment_form.sendpost.disabled=false;
}
function add_submit(id){
	
	
	var issuetype = document.getElementById('issuetype').value;
	url = Absoulteurl+'comment_add.php?action=addcommend&commentid=' + escape(id)+'&issuetype='+issuetype;
	ajax_get (url,'precom');
	//document.comment_form.user.focus();
	//setTimeout("document.comment_form.user.focus();",   50);   
}

function new_submit_comment_v3() {
	var user = document.getElementById('user').value;
	var mag_id = document.getElementById('mag_id').value;
	var addcommentid
	if(document.getElementById('addcommentid')){
		addcommentid= document.getElementById('addcommentid').value;
	}else addcommentid='';
	var comment_content = document.getElementById('comment_content').value;
	if(user==""){
		MM_setTextOfLayer('msg1','','姓名不能为空!');
		return false;
	}
	if(comment_content==""){
		MM_setTextOfLayer('msg1','','评论内容不能为空!');
		return false;
	}
	var comment_form = document.getElementById('comment_form');
	var issuetype = document.getElementById('issuetype').value;
	document.getElementById('sendpost').disabled=true;
	document.getElementById('postwaiting').innerHTML="正在发表，请等待..."; 
	url = Absoulteurl+'new_comment.php?action=post&id=' + escape(mag_id);
	var q;
	q='user='+user+'&addcommentid='+addcommentid+'&content='+comment_content+'&issuetype='+issuetype;
	ajax_post (url,q, 'comment');
	//document.comment_form.sendpost.disabled=false;
}