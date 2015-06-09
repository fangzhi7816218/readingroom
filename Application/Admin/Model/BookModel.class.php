<?php
namespace Admin\Model;
use Think\Model\RelationModel;
class BookModel extends RelationModel{
	protected $_link=array(
		'cate_book'	=>array(
			'mapping_type'	=>self::BELONGS_TO,
			'mapping_name'	=>'cate_name',
			'mapping_fields'=>'name',
			'class_name'	=>'Catebook',
			'foreign_key'	=>'cate_id',
		),
	);
	//随机生成一个图书编号
	public function random_no(){
		$str="qwertyuioplkjhgfdsazxcvbnm";
		$res=substr(str_shuffle($str),0, 6);
		return $res.time();
	}
}