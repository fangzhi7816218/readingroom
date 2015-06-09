<?php
namespace Admin\Controller;
use Think\Controller;
class CatebookController extends MyController{
	/*
	 * 图书分类列表
	 */
	Public function cate_list(){
		$cate=D('catebook');
		
		$where=1;
		if(IS_POST){
			if ($_POST['cate_name']) $where.=' and name like "%'.$_POST['cate_name'].'%"';
		}
		$count=$cate->count();
		//接收传过来的参数.按照参数分布
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
		
		$page=new \Common\My\Page($count,20,$param);
		$cates=$cate->relation('cate_book')->where($where)->limit($page->firstRow.','.$page->listRows)->select();//fang($cates);
		
		$show=$page->NewShow();
		$this->assign('param',$_REQUEST);
		$this->assign('page',$show);
		$this->assign('cate_list',$cates);
		$this->display();
	}
	/*
	 * 添加分类
	 */
	Public function cate_add(){
		
		$cate=D('catebook');
		if (IS_POST){
			if($cate->create()){
				if($cate->add()){
					alertmsg('添加成功',U('Catebook/cate_add'));
				}
			}
		}
		$cate_list=$cate->getcate();
		$this->assign('cate_list',$cate_list);
		$this->display();
	}
	/*
	 * 编辑分类
	 */
	Public function cate_edit(){
		$cate=D('catebook');
		$id=$_GET['id'];
		if (IS_POST){
			if ($data1=$cate->create())
			if ($cate->where("id=$id")->save($data1)) alertmsg('编辑成功',U('Catebook/cate_list'));

		}
		//根据id拿现数据
		$data=$cate->where("id=$id")->find();
		//无限级分类
		$cates=$cate->getCate($id);
		$this->assign('data',$data);
		$this->assign('cate_list',$cates);
		$this->display();
	}
	/*
	 * 删除分类
	 * 功能1.当删除大分类时，它下面的子分类也会被删除，
	 * 功能2.当该分类下面有书时，它下面的所有书本也将会被删除
	 */
	public function cate_remove(){
		$ids=$_GET['ids'] ? $_GET['ids'] : '';
		if ($ids =='') alertmsg('数据无效');
		$cate=D('catebook');
		//删除所删分类的所有书本
		if (is_array($ids)){
			$im_ids=implode(',', $ids);
			foreach ($ids as $vid){
				$p_id=$cate->where("id=$vid")->getField('p_id');
				 if($p_id == '0'){
				 	$id=$cate->where("p_id=$vid")->select();
				 	foreach ($id as $v) {
				 		$book=D('book');
				 		//删除cate_id 为这个的图书 同时还要删除 他的图片
				 		$books=$book->where('cate_id='.$v['id'])->select();
				 		foreach ($books as $v1){
				 			$book->delete($v1['id']);
				 			unlink($v1['img']);
				 		}
				 	}
				 	
				 }else{
				 	$book=D('book');
				 	//删除cate_id 为这个的图书 同时还要删除 他的图片
				 	$books=$book->where('cate_id='.$vid)->select();
				 	foreach ($books as $v1){
				 		$book->delete($v1['id']);
				 		unlink($v1['img']);
				 	}
			 	}
			}
		} else{
			//负责删除书本
			$p_id=$cate->where("id=$ids")->getField('p_id');
			 if($p_id == 0){
			 	$id=$cate->where("p_id=$ids")->select();
			 	foreach ($id as $v) {
			 		$book=D('book');
			 		//删除cate_id 为这个的图书 同时还要删除 他的图片
			 		$books=$book->where('cate_id='.$v['id'])->select();
			 		foreach ($books as $v1){
			 			$book->delete($v1['id']);
			 			unlink($v1['img']);
			 		}
			 	}
			 	
			 }else{
			 	$book=D('book');
			 	//删除cate_id 为这个的图书 同时还要删除 他的图片
			 	$books=$book->where('cate_id='.$ids)->select();
			 	foreach ($books as $v1){
			 		$book->delete($v1['id']);
			 		unlink($v1['img']);
			 	}
			 }
		}
		
		if($cate->relation('cate_del')->delete($im_ids))alertmsg('删除成功',U('Catebook/cate_list'));
	}
}