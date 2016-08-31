<?php namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesCommands;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesResources;

abstract class Controller extends BaseController {

	
	public function getListCategory()
	{
		$modelCate = new \App\models\Category();
		$listCate = $modelCate->getListCate(null, null, 0);
		$listAllCate = array();
		foreach($listCate as $key => $value){
			$listAllCate[$key]['cate_id'] = $value->cate_id;
			$listAllCate[$key]['cate_name'] = $value->cate_name;
			$listAllCate[$key]['cate_rewrite'] = $value->cate_rewrite;
			$listAllCate[$key]['cate_info'] = $value->cate_info;
			$listAllCate[$key]['subCate'] = $modelCate->getListCate(null, null, $value->cate_id);
		}
		
		return $listAllCate;
	}

}
