<?php
namespace Admin\Controller;
use Think\Controller;
class UserController extends MyController{
	public function user_list() {
		$user=D('user');
		$where=1;
		if(IS_POST){
			if ($_POST['username']) $where.=' and username like "%'.$_POST['username'].'%"';
		}
		
		$count=$user->count();
		//接收传过来的参数.按照参数分布
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
		
		$page=new \Common\My\Page($count,20,$param);
		$users=$user->where($where)->limit($page->firstRow.','.$page->listRows)->select();//fang($menus);
		
		$show=$page->NewShow();
		$this->assign('param',$_REQUEST);
		$this->assign('page',$show);
		$this->assign('user_list',$users);
		$this->display();
	}
}