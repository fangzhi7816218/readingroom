<?php
namespace Home\Controller;
use Think\Image;

use Think\Page;

use Think\Controller;
class IndexController extends Controller {
	//首页图书
    public function index(){
    	$book=D('book');
    	$cate=M('cate_book');
    	//首页左侧边
    	$book_cate=$cate->where('p_id=0')->limit(7)->select();
    	$mag_cate=$cate->where('p_id=0')->limit(6)->order('id desc')->select();
    	$this->assign('book_cate',$book_cate);
    	$this->assign('mag_cate',$mag_cate);
    	
    	//首页中间部分
    	$book_best=$book->where('best=1 and type="b"')->order('rand()')->limit(8)->select();//fang($book_best);exit;
    	$this->assign('book_best',$book_best);
    	
    	//右边热闹、精品、新书
    	$book_hot=$book->where('hot=1 or best=1 or new=1 and type="b"')->limit(8)->select();//fang($book_best);exit;
    	$this->assign('book_hot',$book_hot);
    	
    	//中间杂志区
    	$book_m=$book->where('hot=1 or best=1 or new=1 and type="m"')->order('rand()')->limit(12)->select();
    	$this->assign('book_m',$book_m);
    	$book_m_l=$book->where('hot=1 or best=1 or new=1 and type="m"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_l',$book_m_l);
    	$book_m_l2=$book->where('hot=1 or best=1 or new=1 and type="m"')->order('rand()')->limit(10)->select();
    	$this->assign('book_m_l2',$book_m_l2);
    	
    	//中间图书区
    	$book_b=$book->where('hot=1 or best=1 or new=1 and type="b"')->order('rand()')->limit(12)->select();
    	$this->assign('book_b',$book_b);
    	$book_b_r=$book->where('hot=1 or best=1 or new=1 and type="b"')->order('rand()')->limit(10)->select();
    	$this->assign('book_b_r',$book_b_r);
    	$book_b_r2=$book->where('hot=1 or best=1 or new=1 and type="b"')->order('rand()')->limit(10)->select();
    	$this->assign('book_b_r2',$book_b_r2);
        $this->display();
    }
    /*
     * 图书搜索
     */
	public function book_search(){
		
		$cate=M('cate_book');
		$book=D('book');
		//首页左侧边
    	$big_cate=$cate->where('p_id=0')->limit()->select();
    	$small_cate=$cate->where('p_id !=0')->limit()->select();
    	
    	$this->assign('big_cate',$big_cate);
    	$this->assign('small_cate',$small_cate);
    	
    	$where=1;
    	if ($_GET['cate_id']){
    		$cate_id=$_GET['cate_id'] ? $_GET['cate_id'] :'';
	    	if ($cate->where('id='.$cate_id)->getField('p_id') ==0){
	    		$cate_id=$cate->where('p_id='.$cate_id)->field('id')->select();
	    		foreach ($cate_id as $v){
	    			$arr[]=$v['id'];
	    		}
	    		$cate_id=implode(',', $arr);
	    		
	    	}
	    	$where.=' and cate_id in('.$cate_id.')';
    	}
    	
    	
    	
    	//搜索栏输入的值
    		if (trim($_REQUEST['book_name']))$where.=' and name like "%'.$_REQUEST['book_name'].'%"';
    		if (trim($_REQUEST['title']))$where.=' and name like "%'.$_REQUEST['title'].'%"';
    		if (trim($_REQUEST['isbn']))$where.=' and isbn like "%'.$_REQUEST['isbn'].'%"';
    		if (trim($_REQUEST['book_press']))$where.=' and public like "%'.$_REQUEST['book_press'].'%"';
    		if (trim($_REQUEST['author']))$where.=' and author like "%'.$_REQUEST['author'].'%"';
    		
    		if (trim($_REQUEST['magtitle']))$where.=' and name like "%'.$_REQUEST['magtitle'].'%"';
    		if (trim($_REQUEST['mag_issn']))$where.=' and isbn like "%'.$_REQUEST['mag_issn'].'%"';
    	
    	
    	//echo $where;exit;
    	//fang($_REQUEST);
    	if ($_REQUEST['s'])unset($_REQUEST['s']);
    	if ($_REQUEST['act'])unset($_REQUEST['act']);
    	if ($_REQUEST['x'])unset($_REQUEST['x']);
    	if ($_REQUEST['y'])unset($_REQUEST['y']);
    	//fang($_REQUEST);exit;
		$param='';
		foreach ($_REQUEST as $k=>$v){
			if($v == '__URL__' || !$v)continue;
			else $param.='&'.$k.'='.urlencode($v);
		}
    	$count=$book->where($where)->count();
    	$page=new \Common\My\Page($count,24,$param);
    	//搜索出来的书
    	$book_new=$book->where($where)->limit($page->firstRow.','.$page->listRows)->order('add_time desc')->select();//fang($book_new);exit;
    	$show=$page->NewShow();
    	$this->assign('page',$show);
    	$this->assign('book_new',$book_new);
    	//fang($big_cate);exit;
    	//右边排行榜
    	$book_r=$book->where('type="b"')->order('hit desc')->limit(10)->select();
    	$this->assign('book_r',$book_r);
        $this->display();
    }
    //高级搜索功能
    public function search_high(){
    	$book=D('book');
    	$cate=M('cate_book');
    	//首页左侧边
    	$book_cate=$cate->where('p_id=0')->limit(7)->select();
    	$mag_cate=$cate->where('p_id=0')->limit(6)->order('id desc')->select();
    	$this->assign('book_cate',$book_cate);
    	$this->assign('mag_cate',$mag_cate);
    	
    	//热搜排行
    	$book_hot=$book->where('hot=1')->order('rand()')->limit(6)->select();
    	$book_atten=$book->where('hot=1')->order('rand()')->limit(6)->select();
    	$this->assign('book_atten',$book_atten);
    	$this->assign('book_hot',$book_hot);
    	$this->display();
    }
    
	/*
     * 登录
     */
	public function login(){
		if (IS_POST){
			$username=I('post.username');
			$passwd=md5(md5(I('post.password')).M('user')->where("username='{$username}'")->getField('salt'));
			if (!$this->check_veriry(I('post.verify'))) alertmsg('验证码错误');
			if($userdata=M('user')->field('username,id')->where("username='{$username}' and passwd='{$passwd}'")->find()){
				session('[start]');
				session('userdata',$userdata);
				$this->redirect('index');
			}else {
				alertmsg('用户名或密码错误');
			}
		}
        $this->display();
    }
    public function verify(){
    	$config =    array(
    	'imageW'	  =>'150px',
    	'imageH'	  =>'50px',
    	'fontSize'    =>    25,    // 验证码字体大小    
    	'length'      =>    3,     // 验证码位数    
    	'useNoise'    =>    false, // 关闭验证码杂点
    	'useImgBg'	  =>	true,
    	);
    	$verify= new \Think\Verify($config);
		$verify->entry();
    }
    public function check_veriry($code){
    	$verify= new \Think\Verify();
    	return $verify->check($code);
    }
    
	/*
     * 注册
     */
	public function register(){
		if (IS_POST){
			$user=M('user');
			$username=I('post.username');
			$email=I('post.email');
			if ($user->where("username='{$username}'")->getField('username')){
				alertmsg('用户名已存在');
				exit;
			}
			if ($user->where("email='{$email}'")->getField('email')) alertmsg('该邮箱已被用');
			
			if(!$this->check_veriry(I('post.verify'))) alertmsg('验证码错误');
			
			if ($data=$user->create()){
				$data['salt']=uniqid();
				$data['passwd']=md5(md5(I('post.password')).$data['salt']);
				if($user->add($data)){
					$userdata=$user->field('id,username')->where("username='{$username}'")->find();
					session('[start]');
					session('userdata',$userdata);
					alertmsg('注册成功',U('Personal/index'));
				}else{
					alertmsg('注册失败');
				}
				
			}
		}
        $this->display();
    }
    //关于本站
    public function about(){
    	$about=M('about')->find();
    	$this->assign('about',$about);
    	$this->display();
    }
}