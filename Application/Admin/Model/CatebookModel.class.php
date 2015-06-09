<?php
namespace Admin\Model;
use Think\Model\RelationModel;
class CatebookModel extends RelationModel{
	protected $tableName='cate_book';
	//关联查询
	protected $_link=array(
		'cate_book' =>array(
			'mapping_type' =>self::BELONGS_TO,
			'mapping_name' =>'cate_book',
			'mapping_fields'=>'name,id',
			'class_name'	=>'Catebook',
			'parent_key'	=>'p_id',
		),
		
		//关联删除
		'cate_del'	=>array(
			'mapping_type' =>self::HAS_MANY,
			'mapping_name' =>'cate_del',
			'mapping_fields' =>'name',
			'class_name'	 =>'Catebook',
			'parent_key'	 =>'p_id',
		),
	);
	
	/*
	 * 无限级分类菜单
	 */
	public  function getcate($stop_id=0,$where=1){
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
}