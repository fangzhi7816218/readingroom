<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends MyController {
	/*
	 * 进来后台加载主页
	 */
    public function index(){
        $this->display();
    }
    /*
     * 后台右主页
     */
	public function main(){
        $this->display();
    }
    /*
     * 后台菜单栏
     */
	public function menu(){
		$menu=D('Menu');
		$userinfo=session('userinfo');
		$where=1;
		//验证权限
		if ($userinfo['root'] =='1')$where=1;
		else $where.=' and id in('.$userinfo['root_ids'].')';
		$menu1=$menu->where($where.' and p_id=0')->select();
		$menu2=$menu->where($where.' and p_id !=0')->select();
		$this->assign('menu1',$menu1);
		$this->assign('menu2',$menu2);
        $this->display();
    }
    /*
     * 管理员列表
     */
	public function admin_list(){
		$admin=D('admin');
		$where=1;
		$param='';
		
		//搜索 查找
		if (IS_POST){
			if($_POST['root']) $param.=' and root="'.$_POST['root'].'"';
			if($_POST['username']) $param.=' and username like "%'.$_POST['username'].'%"';
			if ($param)$where.=$param;
		}

		$count=$admin->count();
		$arrparame='';
   			foreach($_REQUEST as $key=>$val){
                if($key=='_URL_' || !$val) continue;
                else $arrparame.='&'.$key.'='.urlencode($val);
            }
		$Page=new \Common\My\Page($count,10,$arrparame);
		
		$show=$Page->NewShow();
		$list=$admin->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
		
		$this->assign('show',$show);
		$this->assign('admin_list',$list);
		$this->assign('param',$_REQUEST);
        $this->display();
    }
	/*
	 * 添加管理员
	 */
	public function admin_add(){
		$menu=D('menu');
		$admin=D('admin');
		
		if (IS_POST){
			if ($admin->where('username="'.$_POST['username'].'"')->find()) alertmsg('管理员名称已存在');

			if($data=$admin->create()){
				$data['root_ids']=implode(',', $_POST['menu_ids']);
				$data['root']=$_POST['power'];
				$data['salt']=uniqid();
				$data['passwd']=md5(md5($data['passwd']).$data['salt']);
				if ($admin->add($data)) alertmsg('添加成功',U('Index/admin_list'));
			}
		}
		
		$menu1=$menu->where('p_id=0')->select();
		$menu2=$menu->where('p_id !=0')->select();
		$this->assign('menu1',$menu1);
		$this->assign('menu2',$menu2);
        $this->display();
    }
    /*
     * 编辑管理员
     */
    public function admin_edit(){
    	$admin=D('admin');
    	$id=$_GET['id'] ? $_GET['id'] : '';
    	$data=$admin->where("id=$id")->find();
    	//echo $aa='username="'.$_POST['username'].'" and id !='.$id;exit;
    	if (IS_POST){
    		if ($admin->where('username="'.$_POST['username'].'" and id !='.$id)->find()) alertmsg('管理员名称已存在');

			if($data=$admin->create()){
				$data['root_ids']=implode(',', $_POST['menu_ids']);
				$data['root']=$_POST['power'];
				if ($admin->where("id=$id")->save($data)) alertmsg('修改成功',U('Index/admin_list'));
			}
    	}
    	
    	$menu=D('menu');
    	$menu1=$menu->where('p_id=0')->select();
		$menu2=$menu->where('p_id !=0')->select();
		$this->assign('data',$data);
		$this->assign('menu1',$menu1);
		$this->assign('menu2',$menu2);
    	$this->display();
    }
    /*
     *删除、批量删除管理员
     */
    public function admin_remove(){
    	$ids=$_GET['ids'] ? $_GET['ids'] : '';
    	if (!$ids) alertmsg('请选择要删除的管理员');
    	if(is_array($ids)) $ids=implode(',', $ids);//fang2($ids);
    	if (M('admin')->delete($ids)) alertmsg('删除成功',U('Index/admin_list'));
    }
    /*
     * 关于本站
     */
    public function about(){
    	if (IS_POST){
    		$date['title']=$_POST['title'] ? $_POST['title'] : '';
    		$date['contents']=$_POST['contents'] ? $_POST['contents'] : '';
    		if ($date['contents']=='')alertmsg('请填写内容');
    		$date['save_time']=time();
    		if(M('about')->where('id=1')->save($date)){
    			alertmsg('修改成功',U('Index/about'));
    		}
    	}
    	if (M('about')->count()>0){
    		$about=M('about')->find();//fang($about);exit;
    		$this->assign('about',$about);
    	}
    	$this->display();
    }
}