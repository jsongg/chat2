<?php
namespace app\index\controller;

use think\Controller;

class Index extends Controller
{
    public function index()
    {
    	$from_id=input("get.from_id/d","0");
    	$to_id=input("get.to_id/d","0");
    	$this->assign("from_id",$from_id);
    	$this->assign("to_id",$to_id);
        return $this->fetch();
    }
}
