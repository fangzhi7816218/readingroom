<?php
namespace Admin\Controller;
use Think\Controller;
class EmptyController extends MyController{
	public function index(){
		 $cityName = CONTROLLER_NAME;
		 $this->city($cityName);
		$this->display('index');
	}
	protected function city($name){
 	
         //和$name这个城市相关的处理         
 		echo '当前城市' . $name;
    }
}