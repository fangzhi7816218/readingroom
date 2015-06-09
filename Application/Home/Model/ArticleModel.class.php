<?php
namespace Home\Model;
use Think\Model\RelationModel;
class ArticleModel extends RelationModel{
	protected $_link=array(
		'article'	=>array(
			'mapping_type' =>self::BELONGS_TO,
			'mapping_name' =>'article',
			'mapping_fields' =>'title',
			'class_name'	 =>'Article',
			'parent_key'	 =>'p_id',
		),
		
		'book_name'	=>array(
			'mapping_type' =>self::BELONGS_TO,
			'mapping_name' =>'book_name',
			'mapping_fields' =>'name',
			'class_name'	 =>'Book',
			'foreign_key'	 =>'b_id',
		),
		//
		'article_del'	=>array(
			'mapping_type' =>self::HAS_MANY,
			'mapping_name' =>'article_del',
			'mapping_fileds'=>'id',
			'class_name'	 =>'Article',
			'parent_key'	 =>'p_id',
		),
	);
	
/*
	 * 无限级分类菜单
	 */
	public  function getArticle($stop_id=0,$where=1){
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
	public function getArticleById($id,$b_id){//exit('as');
		if (!$id) return $this->where('b_id='.$b_id)->find();
		else return $this->where('b_id='.$b_id.' and id='.$id)->find();
	}
}