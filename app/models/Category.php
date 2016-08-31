<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'tbl_categories';
	protected $primaryKey = 'cate_id';
	
	public function getListCate($limit = null, $start = null,$parentId = null)
	{
		$query = \DB::table($this->table)
				->select('*');
		if($parentId){
			$query->where('parent_id', $parentId);
		}
		
		if($parentId === 0){
			$query->where('parent_id', 0);
		}
		if($limit){
			$query->take($limit);
		}
		
		return $query->orderBy('cate_order','asc')
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
