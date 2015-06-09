<?php
namespace Admin\Controller;
use Think\Controller;
class CommentController extends MyController{
	
	public function com_list(){
		$com=D('comment');
		$where=1;
		if(IS_POST){
			//ajax请求
			if ($_POST['ajax']){
				if ($_POST['act']=='yes') $com->where('id='.$_POST['com_id'])->save(array('status'=>1));
				if ($_POST['act']=='no') $com->where('id='.$_POST['com_id'])->save(array('status'=>0));
				$this->ajaxReturn(1);
			}
			if ($_POST['user_name']) $where.=' and u.username like "%'.$_POST['user_name'].'%"';
			if ($_POST['book_name']) $where.=' and b.name like "%'.$_POST['book_name'].'%"';
		}
		
		$count=$com->count();
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
		$page= new \Common\My\Page($count,20,$param);
		$coms=$com->relation('reply_id')->field('a.*,b.name book_name,b.img b_img,u.username,u.img u_img')->join('a left join book b on a.b_id=b.id left join user u on a.u_id=u.id')->where($where)->limit($page->firstRow.','.$page->listRows)->select();//fang($coms);exit;
		$show=$page->NewShow();
		$this->assign('page',$show);
		$this->assign('coms',$coms);
		$this->assign('param',$_REQUEST);
		$this->display();
	}
	
	public function com_remove(){
		$ids=$_GET['ids'] ? $_GET['ids'] : '';
		if (is_array($ids))$ids=implode(',', $ids);
		if(D('comment')->relation('com_del')->delete($ids))
		alertmsg('删除成功',U('Comment/com_list'));
	}
}