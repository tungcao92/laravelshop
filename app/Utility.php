<?php

/**
* Class Utility
* @date 18/02/2016
* @author Ha Don <donhh6551@seta-asia.com.vn>
*/

namespace App;

class Utility
{
	public static function debugData($val, $die = true)
	{
		echo '<pre>';
		print_r($val);
		echo '</pre>';
		if($die)
		{
			die();
		}
	}

	/**
	* Convert unicode to eng
	* @date 18/02/2016
	* @author Ha Don <donhh6551@seta-asia.com.vn>
	*/
	public static function replaceUrl($str) {
		if(!$str) return false;
  	        $unicode = array(
        		'a'=>array('á','à','ả','ã','ạ','ă','ắ','ặ','ằ','ẳ','ẵ','â','ấ','ầ','ẩ','ẫ','ậ'),
  	            'A'=>array('Á','À','Ả','Ã','Ạ','Ă','Ắ','Ặ','Ằ','Ẳ','Ẵ','Â','Ấ','Ầ','Ẩ','Ẫ','Ậ'),
  	            'd'=>array('đ'),
				'-'=>array('-'),
  	            'D'=>array('Đ'),
  	            'e'=>array('é','è','ẻ','ẽ','ẹ','ê','ế','ề','ể','ễ','ệ'),
  	            'E'=>array('É','È','Ẻ','Ẽ','Ẹ','Ê','Ế','Ề','Ể','Ễ','Ệ'),
  	            'i'=>array('í','ì','ỉ','ĩ','ị'),
  	            'I'=>array('Í','Ì','Ỉ','Ĩ','Ị'),
  	            'o'=>array('ó','ò','ỏ','õ','ọ','ô','ố','ồ','ổ','ỗ','ộ','ơ','ớ','ờ','ở','ỡ','ợ'),
  	            '0'=>array('Ó','Ò','Ỏ','Õ','Ọ','Ô','Ố','Ồ','Ổ','Ỗ','Ộ','Ơ','Ớ','Ờ','Ở','Ỡ','Ợ'),
  	            'u'=>array('ú','ù','ủ','ũ','ụ','ư','ứ','ừ','ử','ữ','ự'),
  	            'U'=>array('Ú','Ù','Ủ','Ũ','Ụ','Ư','Ứ','Ừ','Ử','Ữ','Ự'),
  	            'y'=>array('ý','ỳ','ỷ','ỹ','ỵ'),
  	            'Y'=>array('Ý','Ỳ','Ỷ','Ỹ','Ỵ'),
				'-'=>array(', ','. '),
				'' =>array(',','.','?'),
				'-'=>array(' .',' ;','; ',' :',': '),
  	            '-'=>array(';',':'),
				'-'=>array(' - '),
  	        );

  	        foreach($unicode as $nonUnicode=>$uni){
  	        	foreach($uni as $value)
            	$str = str_replace($value,$nonUnicode,$str);
  	        }
    	return $str;
	}

	
	public static function convertToArray()
	{
		$titles = array_map(function($e) {
			return is_object($e) ? $e->Title : $e['Title'];
		}, $records);
	}

	/**
	* Upload file
	* @date 22/02/2016
	* @author Ha Don <donhh6551@seta-asia.com.vn>
	*/
	public static function uploadFile($file, $path)
	{
		//Utility::debugData($file);
		$result = array(
			'success' => false,
			'file_name' => ''
		);
		if($file)
		{
			//get file extension
			$extension = $file->getClientOriginalExtension();
			$fileName = rand(11111, 99999).'.'.$extension;

			$result['success'] = $file->move($path, $fileName);
			$result['file_name'] = $fileName;
		}

		return $result;
	}

	/**
	* Set data field model
	* @date 18/02/2016
	* @author Ha Don <donhh6551@seta-asia.com.vn>
	*/
	public static function setAttr($table, $model, $posts = array())
    {
		//get columns table
		$fields = \DB::getSchemaBuilder()->getColumnListing($table);

		//get array_intersect
		$postKey = array_keys($posts);
		$filedIntersect = array_intersect($fields, $postKey);

        foreach($filedIntersect as $key => $field)
		{
            $model->$field = (isset($posts[$field]) && $posts[$field] !== '') ? $posts[$field] : null;
        }

		return $model;
    }
}