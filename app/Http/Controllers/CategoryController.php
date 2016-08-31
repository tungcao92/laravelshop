<?php
namespace App\Http\Controllers;
use \App\Http\Controllers\Controller;
use App\models\Category;
class CategoryController extends \App\Http\Controllers\Controller
{
	public function index()
	{
		
		$id = \Request::segment(1);
		$data['rewriteUrl'] = trim(str_replace('.html', '', $id));
		
		$data['cate_info'] = \App\models\Category::where('cate_rewrite', $data['rewriteUrl'])->first();
		//\App\Utility::debugData($data['cate_info']);
		if(!$data['cate_info']){
			echo 'trang ko co';
		}
		$data['listCate'] = $this->getListCategory();
		$modelCate =new \App\models\Category();
		$modelProCate =new \App\models\Productscate();
		$modelProduct =new \App\models\Products();
		$data['listSubCate'] = $modelCate->getListCate(null, null, $data['cate_info']->cate_id);
		$listProducts = array();
		if($data['listSubCate']){
			foreach($data['listSubCate'] as $key => $value){
				$data['listProducts'][$key]['cate_id'] = $value->cate_id;
				$data['listProducts'][$key]['cate_name'] = $value->cate_name;
				$data['listProducts'][$key]['cate_rewrite'] = $value->cate_rewrite;
				$data['listProducts'][$key]['cate_info'] = $value->cate_info;

				$listProduct = $modelProCate->getListByCateId($value->cate_id);
				//\App\Utility::debugData($listProduct);
				$listProductId = array();
				foreach($listProduct as $k => $v){
					$listProductId[] = $v->product_id;
				}
				if($listProductId){
				$data['listProducts'][$key]['products'] = $modelProduct->getListInArray($listProductId,4,0);
				}
				//\App\Utility::debugData($data['listProducts']);
				
			}
		}else{
			$listProductIdArr = $modelProCate->getListByCateId($data['cate_info']->cate_id);
			//\App\Utility::debugData($listProductIdArr);
			$listProductId = array();
			foreach($listProductIdArr as $key => $value){
				$listProductId[] = $value->product_id;
				if($listProductId){
				$data['listProducts'][$key]['products'] = $modelProduct->getListInArray($listProductId,4,0);
				//\App\Utility::debugData($data['listProducts']);
				}
			}
		}
		
		
		//\App\Utility::debugData($data['listProducts']);
		
		//$data['listProducts'] = $modelProduct->getListInArray($listProductId, 12, 0);
		//\App\Utility::debugData($data['listSubCate']);
		return view('category.index',$data);
	}
}
