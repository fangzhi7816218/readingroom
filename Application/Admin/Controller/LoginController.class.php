<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller{
	public function login() {
		if (IS_POST) {
			$username=I('post.username');
			$passwd=I('post.password');
			$admin=D('admin');
			if (!$admin->login($username,$passwd)){
				alertmsg('用户名或密码错误');
			}elseif (!$this->check_veriry(I('post.verify'))){
				alertmsg('验证码错误');
			} else{
				$data['last_time']=time();
				$data['last_ip']=$_SERVER['REMOTE_ADDR'];
				$admin->where("username='{$username}'")->save($data);
				$this->redirect('Index/index');
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
    
    public function logout(){
    	session(null);
    	alertmsg('退出成功',U('login'));
    }

}