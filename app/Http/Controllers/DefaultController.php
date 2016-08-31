<?php

namespace App\Http\Controllers;

use \App\Http\Controllers\Controller;
use App\models\News;
use App\models\Category;

class DefaultController extends Controller
{
	public function index()
	{
		$modelProduct = new \App\models\Products();
		$productCate = new \App\models\Productscate();
		$modelCate = new Category();
		$data['listCate'] = $this->getListCategory();
		$data['listCateProduct'] = $modelCate->getListCate(4,0,0);
		//\App\Utility::debugData($data['listCateProduct']);
		$listProducts = array();
		foreach($data['listCateProduct'] as $key => $value){
			$data['listProducts'][$key]['cate_id'] = $value->cate_id;
			$data['listProducts'][$key]['cate_name'] = $value->cate_name;
			$data['listProducts'][$key]['cate_rewrite'] = $value->cate_rewrite;
			$data['listProducts'][$key]['cate_info'] = $value->cate_info;
			
			$listProduct = $productCate->getListByCateId($value->cate_id);
			$listProductId = array();
			
			foreach($listProduct as $k => $v){
				$listProductId[] = $v->product_id;
			}
			
			if($listProductId){
				$data['listProducts'][$key]['products'] = $modelProduct->getListInArray($listProductId,4,0);
			}
		}
		
		//\App\Utility::debugData($data['listProducts']);
		return view('partials.content',$data);
	}
}

