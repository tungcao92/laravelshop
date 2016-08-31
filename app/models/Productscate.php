<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Productscate extends Model
{
    protected $table = 'tbl_product_cate';
	
	public function getListByProductId($productId)
	{
		return \DB::table($this->table)
				->select('*')
				->where('product_id', $productId)
				->get();
	}
	
	
	public function getListByCateId($cateId)
	{
		return \DB::table($this->table)
				->select('*')
				->where('cate_id', $cateId)
				->get();
	}
}
