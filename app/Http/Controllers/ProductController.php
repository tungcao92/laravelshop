<?php
namespace App\Http\Controllers;
use \App\Http\Controllers\Controller;
use App\models\Category;

class ProductController extends \App\Http\Controllers\Controller
{
	public function index()
	{
		die('1');
		$slugUrl = trim(str_replace('.html', '', \Request::segment(2)));
		$rewriteArr = explode('-', $slugUrl);
		$id = end($rewriteArr);
		\App\Utility::debugData($id);
		$data['listCate'] = $this->getListCategory();
		//$modelProduct = new ProductController();
		$data['listProducts'] = \App\models\Products::find($id);
		if(!$data['listProducts']){
			echo 'trang trống';
		}
		//getlist related
		//$related = $modelProduct->getListInArray()
		//\App\Utility::debugData($data['listProducts']);
		return view('products.details',$data);
	}
}
