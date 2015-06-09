<?php
namespace Admin\Controller;
use Think\Controller;
class BookController extends MyController{
	/*
	 * 图书列表
	 */
	public function book_list(){
		$book=D('book');
		$where=1;
		if(IS_POST){
			//ajax请求
			if ($_POST['ajax']){
				if ($_POST['act']=='yes'){
					if ($_POST['type']=='on_sale')$book->where('id='.$_POST['book_id'])->save(array('on_sale'=>1));
					if ($_POST['type']=='focus')$book->where('id='.$_POST['book_id'])->save(array('focus'=>1));
					if ($_POST['type']=='new')$book->where('id='.$_POST['book_id'])->save(array('new'=>1));
					if ($_POST['type']=='hot')$book->where('id='.$_POST['book_id'])->save(array('hot'=>1));
					if ($_POST['type']=='best')$book->where('id='.$_POST['book_id'])->save(array('best'=>1));
				} 
				if ($_POST['act']=='no'){
					if ($_POST['type']=='on_sale')$book->where('id='.$_POST['book_id'])->save(array('on_sale'=>0));
					if ($_POST['type']=='focus')$book->where('id='.$_POST['book_id'])->save(array('focus'=>0));
					if ($_POST['type']=='new')$book->where('id='.$_POST['book_id'])->save(array('new'=>0));
					if ($_POST['type']=='hot')$book->where('id='.$_POST['book_id'])->save(array('hot'=>0));
					if ($_POST['type']=='best')$book->where('id='.$_POST['book_id'])->save(array('best'=>0));
				} 
				$this->ajaxReturn(1);
			}
			if ($_POST['book_ibsn']) $where.=' and ibsn like "%'.$_POST['book_ibsn'].'%"';
			if ($_POST['book_name']) $where.=' and name like "%'.$_POST['book_name'].'%"';
		}
		
		$count=$book->where('status=0')->count();
		//接收传过来的参数.按照参数分布
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
		
		$page=new \Common\My\Page($count,20,$param);
		$book_list=$book->relation('cate_name')->where($where.' and status=0')->limit($page->firstRow.','.$page->listRows)->select();//fang($menus);;fang($book_list);exit;
		
		//fang($book_list);exit;
		$show=$page->NewShow();
		$this->assign('param',$_REQUEST);
		$this->assign('page',$show);
		$this->assign('book_list',$book_list);
		
		$this->display();
	}
	/*
	 * 图书回收站
	 */
	public function book_recycle(){
		$book=D('book');
		$where=1;
		if(IS_POST){
			if ($_POST['book_ibsn']) $where.=' and ibsn like "%'.$_POST['book_ibsn'].'%"';
			if ($_POST['book_name']) $where.=' and name like "%'.$_POST['book_name'].'%"';
		}
		
		$count=$book->where('status=1')->count();
		//接收传过来的参数.按照参数分布
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
		
		$page=new \Common\My\Page($count,20,$param);
		$book_list=$book->relation('cate_name')->where($where.' and status=1')->limit($page->firstRow.','.$page->listRows)->select();//fang($menus);;fang($book_list);exit;
		
		//fang($book_list);exit;
		$show=$page->NewShow();
		$this->assign('param',$_REQUEST);
		$this->assign('page',$show);
		$this->assign('book_list',$book_list);
		
		$this->display();
	}
	/*
	 * 图书添加
	 */
	public function book_add(){
		$book=D('book');
		$cate=D('catebook');
		if (IS_POST){
			//ajax请求
			if ($_POST['ajax']){
				if ($_POST['p_id'])
				$data1=$cate->where("p_id=$_POST[p_id]")->select();
				$this->ajaxReturn($data1);
				exit;
			}
			if(!$_POST['cate_id'])alertmsg('请选择分类');
			//创建数据对象
			if ($data=$book->create()){
				//上传图片
				
				 $upload=new \Think\Upload();
				
				 $upload->maxSize   =     3145728 ;// 设置附件上传大小    
				 $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
				 $upload->savePath  =      'book/'; // 设置附件上传目录    // 上传文件 
				    
				 if ($info=$upload->uploadOne($_FILES['book_img'])){
				 	 $data['img']='/Public/Uploads/'.$info['savepath'].$info['savename'];
				 }    
				
				 $data['add_time']=time();
				 if($_POST['ibsn']=='') $data['ibsn']=$book->random_no();
				//fang($data);exit;
				if ($book->add($data)){
					$cate->where("id=".$data['cate_id'])->setInc('inv',1);
					$p_id=$cate->where("id=".$data['cate_id'])->getField('p_id');
					$cate->where("id=".$p_id)->setInc('inv',1);
					alertmsg('添加成功',U('book_add'));
				}
			}
		}
		$cates=$cate->where("p_id=0")->select();//fang2($cates);exit;
		$this->assign('cates',$cates);
		$this->display();
	}
	/*
	 * 图书编辑
	 */
	public function book_edit(){
		$book=D('book');
		$cate=D('catebook');
		$id=$_GET['id'] ? $_GET['id'] : '';
		if (!$id) alertmsg('数据无效');
		$books=$book->where("id=$id")->find();
		$book_cate=$cate->relation('cate_book')->where('id='.$books['cate_id'])->find();
		$book_cates=$cate->where('p_id='.$book_cate['cate_book']['id'])->select();//fang($book_cate);exit;
		$this->assign('book_cates',$book_cates);
		$this->assign('book_cate',$book_cate);
		$this->assign('books',$books);
		if (IS_POST){
			//ajax请求
			if ($_POST['ajax']){
				if ($_POST['p_id'])
				$data1=$cate->where("p_id=$_POST[p_id]")->select();
				$this->ajaxReturn($data1);
				exit;
			}
			//创建数据对象
			if ($data=$book->create()){
				//上传图片
				
				 $upload=new \Think\Upload();
				
				 $upload->maxSize   =     3145728 ;// 设置附件上传大小    
				 $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
				 $upload->savePath  =      'book/'; // 设置附件上传目录    // 上传文件 
				    
				if ($info=$upload->uploadOne($_FILES['book_img'])){
				 	 $data['img']='/Public/Uploads/'.$info['savepath'].$info['savename'];
				 } 
				 $data['add_time']=time();
				 if($_POST['ibsn']=='') $data['ibsn']=$book->random_no();
				//fang($data);exit;
				if ($book->where('id='.$id)->save($data)){
					alertmsg('修改成功',U('book_add'));
				}
			}
		}
		
		$cates=$cate->where("p_id=0")->select();
		$this->assign('cates',$cates);
		$this->display();
	}
	/*
	 * 删除图书
	 */
	public function book_remove(){
		$ids=$_GET['ids'] ? $_GET['ids'] : '';
			if ($ids =='') alertmsg('数据无效');
			$book=D('book');
			$cate=D('catebook');
			
		if ($_GET['remove']){
			if (is_array($ids))$ids=implode(',', $ids);
			$book->delete($ids);
			alertmsg('删除成功',U('Book/book_recycle'));
		}elseif ($_GET['restore']){
			if (is_array($ids)){
				foreach ($ids as $id){
					$info=$book->where("id=$id")->find();
					$cate->where("id=".$info['cate_id'])->setInc('inv',$info['number']);
					$p_id=$cate->where("id=".$info['cate_id'])->getField('p_id');
					$cate->where("id=".$p_id)->setInc('inv',$info['number']);
					$book->where("id=$id")->save(array('status'=>'0'));
				}
			}else {
				$info=$book->where("id=$ids")->find();
				$cate->where("id=".$info['cate_id'])->setInc('inv',$info['number']);
				$p_id=$cate->where("id=".$info['cate_id'])->getField('p_id');
				$cate->where("id=".$p_id)->setInc('inv',$info['number']);
				$book->where("id=$ids")->save(array('status'=>'0'));
			}
			alertmsg('还原成功',U('Book/book_list'));
		}else {
			if (is_array($ids)){
				foreach ($ids as $id){
					$info=$book->where("id=$id")->find();
					$cate->where("id=".$info['cate_id'])->setDec('inv',$info['number']);
					$p_id=$cate->where("id=".$info['cate_id'])->getField('p_id');
					$cate->where("id=".$p_id)->setDec('inv',$info['number']);
					$book->where("id=$id")->save(array('status'=>'1'));
				}
			}else {
				$info=$book->where("id=$ids")->find();
				$cate->where("id=".$info['cate_id'])->setDec('inv',$info['number']);
				$p_id=$cate->where("id=".$info['cate_id'])->getField('p_id');
				$cate->where("id=".$p_id)->setDec('inv',$info['number']);
				$book->where("id=$ids")->save(array('status'=>'1'));
			}
			alertmsg('已放入回收站',U('Book/book_list'));
		}
	}
}