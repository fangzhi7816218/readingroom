<?php
namespace Home\Model;
use Think\Model\RelationModel;
class BookModel extends RelationModel{
	protected $_link=array(
		'cate_book'	=>array(
			'mapping_type'	=>self::BELONGS_TO,
			'mapping_name'	=>'cate_name',
			'mapping_fields'=>'name,p_id,id',
			'class_name'	=>'Catebook',
			'foreign_key'	=>'cate_id',
		),
	);
}