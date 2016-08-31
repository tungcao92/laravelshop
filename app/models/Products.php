<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table = 'tbl_products';
	protected $primaryKey = 'product_id';


	public function getList($limit = null, $start = null)
	{
		$query = \DB::table($this->table)->select('*');
		if($limit){
			$query->take($limit);
		}
		return $query->orderBy('product_order','asc')
				->get();
	}
	
	public function getListInArray($listProductId, $limit = null, $start = null,$related = null)
	{
		$query =  \DB::table($this->table)->select('*')->take($limit)->whereIn('product_id',$listProductId);
		if($related){
			$query .= " AND product_id != {$related}";
		}		
		return $query->get();		
	}
}
