<?php
namespace Home\Model;
use Think\Model\RelationModel;
class CommentModel extends RelationModel{
	//关联查询
	protected $_link=array(
		'u_name' =>array(
			'mapping_type' =>self::BELONGS_TO,
			'mapping_name' =>'u_name',
			'mapping_fields'=>'username,img',
			'class_name'	=>'User',
			'foreign_key'	=>'u_id',
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