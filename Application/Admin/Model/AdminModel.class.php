<?php
namespace Admin\Model;
use Think\Model;
class AdminModel extends Model {
	private $table='amdin';
	
	public function login($username,$passwd) {
		$passwd=md5(md5($passwd).$this->where("username='{$username}'")->getField('salt'));
		$userinfo=$this->where("username='{$username}' and passwd='{$passwd}'")->find();
		if ($userinfo){
			session('[start]');
			session('userinfo',$userinfo);
			return true;
		}
		return false;
	}
	


}