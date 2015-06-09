<?php
//对话框
function alertmsg($message,$url_forward=0){
	header('Content-Type: text/html; charset=utf-8');
	if($url_forward == 1) $message = '<script type="text/javascript">alert("'.$message.'");location.href=document.referrer;</script>';			
	elseif($url_forward == 2) $message = '<script type="text/javascript">alert("'.$message.'");window.close();</script>';
	elseif($url_forward) $message = '<script type="text/javascript">alert("'.$message.'");window.location.href = "'.$url_forward.'";</script>';
	else $message = '<script type="text/javascript">alert("'.$message.'");history.back(-1);</script>';	
	echo $message;
	exit;
}

function msubstr($str, $start=0, $length, $charset="utf-8", $suffix=false){
 if(function_exists("mb_substr")){
  if($suffix)
   return mb_substr($str, $start, $length, $charset)."...";
  else
   return mb_substr($str, $start, $length, $charset);
 }elseif(function_exists('iconv_substr')) {
  if($suffix)
   return iconv_substr($str,$start,$length,$charset)."...";
  else
   return iconv_substr($str,$start,$length,$charset);
 }
 $re['utf-8'] = "/[x01-x7f]|[xc2-xdf][x80-xbf]|[xe0-xef][x80-xbf]{2}|[xf0-xff][x80-xbf]{3}/";
 $re['gb2312'] = "/[x01-x7f]|[xb0-xf7][xa0-xfe]/";
 $re['gbk'] = "/[x01-x7f]|[x81-xfe][x40-xfe]/";
 $re['big5'] = "/[x01-x7f]|[x81-xfe]([x40-x7e]|xa1-xfe])/";
 preg_match_all($re[$charset], $str, $match);
 $slice = join("",array_slice($match[0], $start, $length));
 if($suffix) return $slice."…";
 return $slice;
}

function writeLog($message){
	$time=date('Y-m-d H:i:s',time());
	$message=$time.'-------------'.$message."\r\n";
	$res=file_put_contents('Public/', $message,FILE_APPEND);
	
}


function fang($data){
	echo '<pre>';
	print_r($data);
	//t;
}
function fang2($data){
	echo '<pre>';
	var_dump($data);
	exit;
}