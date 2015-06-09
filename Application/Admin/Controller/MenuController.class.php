<?php
namespace Admin\Controller;
use Think\Controller;
class MenuController extends MyController{
	
	public function menu_list(){
		$menu=D('Menu');
		$where=1;
		if(IS_POST){
			if ($_POST['menu_name']) $where.=' and menu_name like "%'.$_POST['menu_name'].'%"';
		}
		
		$count=$menu->count();
		//接收传过来的参数.按照参数分布
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
		
		$page=new \Common\My\Page($count,10,$param);
		$menus=$menu->relation('menu')->where($where)->order('id desc')->limit($page->firstRow.','.$page->listRows)->select();//fang($menus);
		
		$show=$page->NewShow();
		$this->assign('param',$_REQUEST);
		$this->assign('page',$show);
		$this->assign('menu_list',$menus);
		$this->display();
	}
	/*
	 * 添加菜单
	 */
	public function menu_add(){
		$menu=D('Menu');
		if (IS_POST){
			if($data=$menu->create()){
				$data['action']=$_POST['action']? 'http://www.readingroom.com/Admin/'.trim($_POST['action']) :'';
				if($menu->add($data)){
					"<script>window.location.reload()</script>";
					alertmsg('添加成功',U('Menu/menu_list'));
				}
			}
		}
		$menu_list=$menu->getMenu();
		$this->assign('menu_list',$menu_list);
		$this->display();
	}
	/*
	 * 编辑菜单
	 */
	public function menu_edit(){
		$menu=D('menu');
		$id=$_GET['id'];
		if (IS_POST){
			if ($menu->create()){
				if ($menu->where("id=$id")->save())alertmsg('修改成功',U('Menu/menu_list'));
			}
		}
		
		//根据id拿现数据
		$data=$menu->getMenuById($id);//fang($data);exit;
		//无限级分类
		$menus=$menu->getMenu($id);
		$this->assign('data',$data);
		$this->assign('menu_list',$menus);
		$this->display();
	}
	/*
	 * 删除菜单
	 */
	public function menu_remove(){
		$id=$_GET['id'] ? $_GET['id'] : '';
		if ($id =='') alertmsg('数据无效');
		$menu=D('menu');
		$p_id=$menu->where("id=$id")->getField('p_id');
		if ($p_id ==0){
			$menu->where("p_id=$id")->delete();
				$menu->delete($id);
				alertmsg('删除成功',U('Menu_list')); 
			
		}else {
			$menu->delete($id);
			alertmsg('删除成功',U('Menu_list'));
		}
		
	}
}