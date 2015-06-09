<?php
namespace Admin\Controller;
use Think\Controller;
class MyController extends Controller{
	public function _initialize(){
		if (!$this->isLogin()){
			alertmsg('请先登录',U('Login/login'));
		}
	}
	private function isLogin() {
		$userinfo=session('userinfo');
		return ($userinfo['username'] && $userinfo['id']&&$userinfo['id']>0);
	}
}