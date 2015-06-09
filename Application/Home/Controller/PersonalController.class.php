<?php
namespace Home\Controller;
use Think\Controller;
class PersonalController extends Controller{
	public function __construct(){
		parent::__construct();
		//防止未登陆而进入个人模块
		if (!session('userdata')) alertmsg('请先登陆',U('Index/login'));
	}
	
	/*
	 * 个人中心
	 */
	public function index(){
		$this->display();
	}
	
	/*
	 * 我的收藏
	 */
	public function collect(){
		$user=M('user');
		$userinfo=$_SESSION['userdata'];
		$collect=$user->where('id='.$userinfo['id'])->getField('collect');
		if ($_GET['book_id']){
			$collect.=$_GET['book_id'].',';
			if($user->where('id='.$userinfo['id'])->save(array('collect'=>$collect))){
				alertmsg('收藏成功');
			}
		}
		$books=M('book')->where('id in('.rtrim($collect,',').')')->select();
		$this->assign('books',$books);
		$this->display();
	}
	
	/*
	 * 阅读记录
	 */
	public function record(){
		$book=M('book');
		//$arr=explode(',', $_SESSION['record_ids']);
		$books=$book->where('id in('.$_SESSION['record_ids'].')')->select();
		//fang2($_SESSION);EXIT;
		$this->assign('books',$books);
		$this->display();
	}
	
	/*
	 * 修改个人信息
	 */
	public function change_info(){
		$user=M('user');
		$userinfo=session('userdata');
		$userinfo=M('user')->where('id='.$userinfo['id'])->find();//fang($userinfo);exit;
		$this->assign('userinfo',$userinfo);
		if (IS_POST){
			$passwd=md5(md5($_POST['passwd_old']).$userinfo['salt']);
			if ($passwd==$userinfo['passwd']){
				if ($data=$user->create()){
					$data['passwd']=md5(md5($_POST['passwd']).$userinfo['salt']);
					$upload=new \Think\Upload();
					
					 $upload->maxSize   =     3145728 ;// 设置附件上传大小    
					 $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
					 $upload->savePath  =      'user/'; // 设置附件上传目录    // 上传文件 
					    
					 if ($info=$upload->uploadOne($_FILES['img'])){
					 	 $data['img']='/Public/Uploads/'.$info['savepath'].$info['savename'];
					 }
					 if ($user->where('id='.$userinfo['id'])->save($data)){
					 	alertmsg('修改成功',U('change_info'));
					 }
					//fang($data);exit;
				}
			}else {
				alertmsg('输入的原始密码不正确');
			}
			//fang($_POST);fang($_FILES);exit;
		}
		$this->display();
	}
	
	/*
	 * 退出登录
	 */
	public function logout(){
		session('[destroy]');
		$this->redirect('Index/index');
	}
}