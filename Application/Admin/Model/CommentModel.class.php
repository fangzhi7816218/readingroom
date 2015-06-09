<?php
namespace Admin\Model;
use Think\Model\RelationModel;
class CommentModel extends RelationModel{
	protected $_link=array(
		'article'	=>array(
			'mapping_type' =>self::BELONGS_TO,
			'mapping_name' =>'article',
			'mapping_fields' =>'title',
			'class_name'	 =>'Article',
			'parent_key'	 =>'p_id',
		),
		
		'reply_id'	=>array(
			'mapping_type' =>self::BELONGS_TO,
			'mapping_name' =>'reply_id',
			'mapping_fields' =>'u_id',
			'class_name'	 =>'Comment',
			'parent_key'	 =>'p_id',
		),
		//
		'com_del'	=>array(
			'mapping_type' =>self::HAS_MANY,
			'mapping_name' =>'com_del',
			'mapping_fileds'=>'id',
			'class_name'	 =>'Comment',
			'parent_key'	 =>'p_id',
		),
	);
}