<?php
namespace Home\Controller;
use Think\Controller;
class BookController extends Controller {
	//图书导航
	public function index(){
		$cate=M('cate_book');
		$book=D('book');
		//首页左侧边
    	$big_cate=$cate->where('p_id=0')->limit(7)->select();
    	$small_cate=$cate->where('p_id !=0')->limit()->select();
    	$this->assign('big_cate',$big_cate);
    	$this->assign('small_cate',$small_cate);
    	
    	//首页中间部分
    	$book_new=$book->where('new=1 and type="b"')->order('rand()')->limit(16)->select();//fang($book_best);exit;
    	$this->assign('book_new',$book_new);
    	$book_new2=$book->where('hot=1 and type="b"')->order('rand()')->limit(12)->select();//fang($book_best);exit;
    	$this->assign('book_new2',$book_new2);
    	//右边更新推荐
    	$book_new_r=$book->where('new=1 and type="b"')->order('rand()')->select();//fang($book_best);exit;
    	$this->assign('book_new_r',$book_new_r);
    	//阅读排行
    	$book_m_r=$book->where('(hot=1 or best=1 or new=1) and type="b"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_r',$book_m_r);
    	$book_m_r1=$book->where('(hot=1 or best=1 or new=1) and type="b"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_r1',$book_m_r1);
    	$book_m_r2=$book->where('(hot=1 or best=1 or new=1) and type="b"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_r2',$book_m_r2);
    	$book_m_r3=$book->where('(hot=1 or best=1 or new=1) and type="b"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_r3',$book_m_r3);
		$this->display();//b_bd1_title
	}
	
	/*
	 * 新书上架
	 */
	public function book_new(){
		$cate=M('cate_book');
		$book=D('book');
		//首页左侧边
    	$big_cate=$cate->where('p_id=0')->limit(7)->select();
    	$small_cate=$cate->where('p_id !=0')->limit()->select();
    	$this->assign('big_cate',$big_cate);
    	$this->assign('small_cate',$small_cate);
    	
    	//分页
		
    	$count=$book->where('type="b"')->count();
    	$page=new \Common\My\Page($count,28);
    	
    	//新书
    	$book_new=$book->where('type="b"')->limit($page->firstRow.','.$page->listRows)->order('add_time desc')->select();//fang($book_new);exit;
    	$show=$page->NewShow();
    	$this->assign('page',$show);
    	$this->assign('book_new',$book_new);
    	
    	//右边排行榜
    	$book_r=$book->where('type="b"')->order('hit desc')->limit(10)->select();
    	$this->assign('book_r',$book_r);
		$this->display();
	}
	
	/*
	 * 热门书籍
	 */
	public function book_hot(){
		$cate=M('cate_book');
		$book=D('book');
		//首页左侧边
    	$big_cate=$cate->where('p_id=0')->limit(7)->select();
    	$small_cate=$cate->where('p_id !=0')->limit()->select();
    	$this->assign('big_cate',$big_cate);
    	$this->assign('small_cate',$small_cate);
    	
    	//分页
		/*$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}*/
    	$count=$book->where('type="b"')->count();
    	$page=new \Common\My\Page($count,28);
    	
    	//新书
    	$book_new=$book->where('type="b"')->limit($page->firstRow.','.$page->listRows)->order('hit desc')->select();//fang($book_new);exit;
    	$show=$page->NewShow();
    	$this->assign('page',$show);
    	$this->assign('book_new',$book_new);
    	
    	//右边排行榜
    	$book_r=$book->where('type="b"')->order('add_time desc')->limit(10)->select();
    	$this->assign('book_r',$book_r);
		$this->display();
	}
	
	/*
	 * 书本详情
	 */
	public function book_detail(){
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
		$book_id=$_GET['book_id'] ? $_GET['book_id'] : '';
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
				$data['p_id']=$_POST['p_id'] ? $_POST['p_id']:'';
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
			$com_s=$comment->relation('u_name')->where('b_id='.$book_id.' and p_id!=0 and status=1')->select();//fang($com_s);exit;
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
	 * 阅读书本
	 */
	public function book_reading(){
		$id=$_GET['book_id'] ? $_GET['book_id'] :'';
		if (!$id){
			writeLog('book_reading 找不到id ');
		}
		
		$book=D('book');
		$article=D('article');
		
		//图书信息
		$book_info=$book->relation('cate_name')->where('id='.$id)->find();
		$this->assign('book_info',$book_info);
		//目录
		
		$book_dir=$article->getArticle(0,'b_id='.$id);//fang($book_dir);exit;
		$this->assign('book_dir',$book_dir);
		
		//文章
		$a_id=0;
		if ($_GET['a_id'])$a_id=$_GET['a_id'];
		$a_info=$article->getArticleById($a_id,$id);
		
		$this->assign('a_info',$a_info);
		//fang($a_info);exit;
		$this->assign('param',$_REQUEST);
		
		//最后给点击量加1
		$book->where('id='.$id)->setInc('hit');
		//阅读记录
		if($_SESSION['record_ids']){
			$_SESSION['record_ids'].=','.$id;
		}else{
			$_SESSION['record_ids']=$id;
		}
		$this->display();
	}
	
	/*
	 * 图书排行榜
	 */
	public function book_top(){
		$cate=M('cate_book');
		$book=D('book');
		//首页左侧边
    	$big_cate=$cate->where('p_id=0')->limit()->select();
    	$small_cate=$cate->where('p_id !=0')->limit()->select();
    	$this->assign('big_cate',$big_cate);
    	$this->assign('small_cate',$small_cate);
    	//点击排行榜
    	$top_hit=$book->order('hit desc')->select();
    	$top_collect=$book->order('add_time desc')->select();
    	$top_atten=$book->order('id desc')->select();
    	$top_comm=$book->order('rand()')->select();
    	//$hit_top=$book->order('rand()')->select();
    	$this->assign('top_hit',$top_hit);
    	$this->assign('top_collect',$top_collect);
    	$this->assign('top_atten',$top_atten);
    	$this->assign('top_comm',$top_comm);
		$this->display();
	}
}