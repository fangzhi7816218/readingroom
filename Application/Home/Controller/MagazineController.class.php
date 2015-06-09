<?php
namespace Home\Controller;
use Think\Controller;
class MagazineController extends Controller {
	//杂志区
	public function index() {
		$cate=M('cate_book');
		$book=D('book');
		//首页左侧边
    	$big_cate=$cate->where('p_id=0')->limit(7)->select();
    	$small_cate=$cate->where('p_id !=0')->limit()->select();
    	$this->assign('big_cate',$big_cate);
    	$this->assign('small_cate',$small_cate);
    	
    	//首页中间部分
    	$book_new=$book->where('new=1 and type="m"')->order('rand()')->limit(16)->select();//fang($book_best);exit;
    	$this->assign('book_new',$book_new);
    	$book_new2=$book->where('hot=1 and type="m"')->order('rand()')->limit(12)->select();//fang($book_best);exit;
    	$this->assign('book_new2',$book_new2);
    	//右边更新推荐
    	$book_new_r=$book->where('new=1 and type="m"')->order('rand()')->select();//fang($book_best);exit;
    	$this->assign('book_new_r',$book_new_r);
    	//阅读排行
    	$book_m_r=$book->where('((hot=1 or best=1 or new=1)) and type="m"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_r',$book_m_r);
    	$book_m_r1=$book->where('(hot=1 or best=1 or new=1) and type="m"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_r1',$book_m_r1);
    	$book_m_r2=$book->where('(hot=1 or best=1 or new=1) and type="m"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_r2',$book_m_r2);
    	$book_m_r3=$book->where('(hot=1 or best=1 or new=1) and type="m"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_r3',$book_m_r3);
		$this->display();
	}
	
	/*
	 * 书本详情
	 */
	public function mag_detail(){
	//ajax请求
		if($_POST['ajax']){
			$username=$_POST['username'];
			$passwd=md5(md5($_POST['passwd']).M('user')->where("username='{$username}'")->getField('salt'));
			
			if($userdata=M('user')->field('username,id')->where("username='{$username}' and passwd='{$passwd}'")->find()){
				session('[start]');
				session('userdata',$userdata);
				$this->ajaxReturn(1);
			}else {
				$this->ajaxReturn(0);
			}
		
			
		}
		$book_id=$_GET['mag_id'] ? $_GET['mag_id'] : '';
		if (!$book_id){
			writeLog('book_id无效');
		}
		$comment=D('comment');
		$cate=M('cate_book');
		$book=D('book');
		//首页左侧边
    	$big_cate=$cate->where('p_id=0')->limit(7)->select();
    	$small_cate=$cate->where('p_id !=0')->select();
    	$this->assign('big_cate',$big_cate);
    	$this->assign('small_cate',$small_cate);
    	
    	//图书部分
		$book_detail=$book->relation('cate_name')->where('id='.$book_id)->find();
		$book_detail['big_cate']=$cate->where('id='.$book_detail['cate_name']['p_id'])->find();
		$this->assign('book_detail',$book_detail);
		//为你推荐
		$book_put=$book->where('type="m"')->order('rand()')->limit(5)->select();
		$this->assign('book_put',$book_put);
		//目录
		$article=D('article');
		$book_dir=$article->getArticle(0,'b_id='.$book_detail['id']);
		$this->assign('book_dir',$book_dir);
		
		//评论模块
		if (IS_POST){
			if ($_POST['comment_sub']){
				$data['contents']=$_POST['comment_content'] ? $_POST['comment_content']:'';
				$data['u_id']=$_POST['u_id'] ? $_POST['u_id']:'';
				$data['b_id']=$_POST['book_id'] ? $_POST['book_id']:'';
				$data['time']=time();
				M('comment')->add($data);
			}
		}
		if ($count=$comment->where('b_id='.$book_id.' and p_id=0 and status=1')->count()){
			$page= new \Common\My\Page($count,10);
			$page->setConfig('prev', '<');
			$page->setConfig('next', '>');
			$page->setConfig('first', '首');
			$page->setConfig('last', '末');
			$com_b=$comment->relation('u_name')->where('b_id='.$book_id.' and p_id=0 and status=1')->order('id desc')->limit($page->firstRow.','.$page->listRows)->select();
			$com_s=$comment->relation('u_name')->where('b_id='.$book_id.' and p_id!=0 and status=1')->select();//fang($com_b);exit;
			$show=$page->Newshow();
			$this->assign('page',$show);
			$this->assign('count',$count);
			$this->assign('com_b',$com_b);
			$this->assign('com_s',$com_s);
		}
		//fang($book_detail);exit;
		$this->display();
	}
	
	/*
	 * 杂志排行榜
	 */
	public function mag_top(){
		$this->display();
	}
}