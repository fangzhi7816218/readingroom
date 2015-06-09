<?php
namespace Home\Model;
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
}