<?php
namespace Admin\Model;
use Think\Model\RelationModel;
class MenuModel extends RelationModel{
	protected  $tableName='ad_menu';

	//关联模型
	protected $_link=array(
		'Menu'	=>array(
			'mapping_type' =>self::BELONGS_TO,
			'mapping_name' =>'menu',
			'mapping_fields' =>'menu_name',
			'class_name'	 =>'Menu',
			'parent_key'	 =>'p_id',
		),
		//关联删除
		'Menu_del'	=>array(
			'mapping_type' =>self::HAS_MANY,
			'mapping_name' =>'menu_del',
			'mapping_fields' =>'menu_name',
			'class_name'	 =>'Menu',
			'parent_key'	 =>'p_id',
		),
	);
	
	/*
	 * 无限级分类菜单
	 */
	public  function getMenu($stop_id=0,$where=1){
		$menu=$this->where($where)->select();
		$arr= array();
		$this->noLimt($menu,0,0,$stop_id,$arr);
		//print_r($arr);
		return $arr;
	}
	/*
	 * 无限级分类
	 */
	private function noLimt($menu,$p_id=0,$level=0,$stop_id=0,&$arr){
		//print_r($arr);
		//static $arr=array();
		foreach ($menu as $v){
			if($v['p_id'] == $p_id){
				if($v['id'] !=$stop_id){
					$v['level']=$level;
					$arr[]=$v;
					$this->noLimt($menu,$v['id'],$level+1,$stop_id,$arr);
				}
			}
		}
		//return $arr;
	}
	
	/*
	 * 根据id拿出对应数据
	 */
	public function getMenuById($id){
		return $this->where("id=$id")->find();
	}
}