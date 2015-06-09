<?php
namespace Admin\Controller;
use Think\Controller;
class ArticleController extends MyController{
	/*
	 * 文章列表
	 */
	public function article_list(){
		$article=D('article');
		$where='a.status =0';
		if(IS_POST){
			if ($_POST['article']) $where.=' and a.title like "%'.$_POST['article'].'%"';
			if ($_POST['book_name']) $where.=' and b.name like "%'.$_POST['book_name'].'%"';
		}
		
		$count=$article->where('status=0')->count();
		//接收传过来的参数.按照参数分布
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
		
		$page=new \Common\My\Page($count,20,$param);
		$article_list=$article->relation('article')->field('a.p_id,a.id,a.title,b.name as book_name')->join('a left join book b on a.b_id=b.id')->where($where)->limit($page->firstRow.','.$page->listRows)->select();//fang($article_list);exit;
		
		//fang($article_list);exit;
		$show=$page->NewShow();
		$this->assign('param',$_REQUEST);
		$this->assign('page',$show);
		$this->assign('article_list',$article_list);
		$this->display();
	}
	/*
	 * 添加文章
	 */
	public function article_add(){
		if ($_GET['id']) $this->assign('book_id',$_GET['id']);
		$article=D('article');
		$book=D('book');
		$books=$book->select();
		//$data1=$article->getArticle();fang($data1);exit;
		$this->assign('big_title',$big_tile);
		$this->assign('books',$books);
		
		if (IS_POST){	//fang($_POST);exit;
			//ajax请求
			if ($_POST['ajax']){
				if ($_POST['b_id']) $where='b_id='.$_POST['b_id'];
				$data1=$article->getArticle(0,$where);
				$this->ajaxReturn($data1);
				exit;
			}
			if (trim($_POST['contents'])=='')alertmsg('请输入内容');
			if ($data=$article->create()){
				$data['add_time']=time();
				if ($article->add($data))alertmsg('添加成功',U('Article/article_add'));
			}
			
		}
		$this->display();
	}
	
	/*
	 * 直接通过书本点击添加文章
	 */
	public function book_article_add(){
		$id=$_REQUEST['book_id'] ? $_REQUEST['book_id'] : '';
		if (!$id) alertmsg('数据无效');
		$this->assign('book_id',$id);
		
		$article=D('article');
		$book=D('book');
		$books=$book->select();
		//$data1=$article->getArticle();fang($data1);exit;
		$this->assign('big_title',$big_tile);
		$this->assign('books',$books);
		
		if (IS_POST){	//fang($_POST);exit;
			//ajax请求
			if ($_POST['ajax']){
				if ($_POST['b_id']) $where='b_id='.$_POST['b_id'];
				$data1=$article->getArticle(0,$where);
				$this->ajaxReturn($data1);
				exit;
			}
			if (trim($_POST['contents'])=='')alertmsg('请输入内容');
			if ($data=$article->create()){
				$data['b_id']=$id;
				//fang($data);exit;
				if ($article->add($data))alertmsg('添加成功');
			}
			
		}
		$this->display();
	}
	
	/*
	 * 编辑文章
	 */
	public function article_edit(){
		$id=$_GET['id'] ? $_GET['id'] : '';
		if (!$id) alertmsg('数据无效');
		 
		$article=D('article');
		$article_info=$article->relation('article')->where('id='.$id)->find();
		$article_info['book_name']=D('book')->where('id='.$article_info['b_id'])->getField('name');//fang($article_info);exit;
		$this->assign('article_info',$article_info);
		if (IS_POST){
			if (trim($_POST['contents'])=='')alertmsg('请输入内容');
			
			if ($article->where('id='.$id)->save(array('add_time'=>time(),'title'=>$_POST['title'],'contents'=>$_POST['contents'])))alertmsg('修改成功',U('Article/article_list'));
			
		}
		$this->display();
	}
	/*
	 * 文章回收站
	 */
	public function article_recycle(){
		$article=D('article');
		$where='a.status =1';
		if(IS_POST){
			if ($_POST['article']) $where.=' and a.title like "%'.$_POST['article'].'%"';
			if ($_POST['book_name']) $where.=' and b.name like "%'.$_POST['book_name'].'%"';
		}
		
		$count=$article->where('status=1')->count();
		//接收传过来的参数.按照参数分布
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
		
		$page=new \Common\My\Page($count,20,$param);
		$article_list=$article->relation('article')->field('a.p_id,a.id,a.title,b.name as book_name')->join('a left join book b on a.b_id=b.id')->where($where)->limit($page->firstRow.','.$page->listRows)->select();//fang($article_list);exit;
		
		//fang($article_list);exit;
		$show=$page->NewShow();
		$this->assign('param',$_REQUEST);
		$this->assign('page',$show);
		$this->assign('article_list',$article_list);
		$this->display();
	}
	/*
	 * 删除文章
	 */
	public function article_remove(){
		$ids=$_GET['ids']?$_GET['ids']:'';
		if ($ids=='') alertmsg('数据无效');
		$article=D('article');
		
		if ($_GET['remove']){
			if (is_array($ids))$ids=implode(',', $ids);
			$article->relation('article_del')->delete($ids);
			$this->redirect('Article/article_recycle');
		}elseif ($_GET['restore']){
			if (is_array($ids))$ids=implode(',', $ids);
			$article->where('id in('.$ids.')')->save(array('status'=>'0'));
			alertmsg('还原成功',U('Article/article_list'));
		}else{
			if (is_array($ids)){
				foreach ($ids as $id){
					$p_id=$article->where('id='.$id)->getField('p_id');
					if($p_id == 0){
						$article->where('p_id='.$id)->save(array('status'=>'1'));
						$article->where('id='.$id)->save(array('status'=>'1'));
					}
				}
			}else{
				$p_id=$article->where('id='.$ids)->getField('p_id');
				if($p_id == 0){
					$article->where('p_id='.$ids)->save(array('status'=>'1'));
					$article->where('id='.$ids)->save(array('status'=>'1'));
				}
			}		
			alertmsg('已放入回收站',U('Article/article_list'));
		}
	}
}