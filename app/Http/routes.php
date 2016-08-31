<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'DefaultController@index');

Route::get('home', 'HomeController@index');
Route::group(array('prefix' => 'category'), function(){
	Route::get('/index/', array('as' => 'category', 'uses' => 'CategoryController@index'));
	Route::get('/index/{id}/', array('as' => 'input', 'uses' => 'CategoryController@index'));
});
Route::group(array('prefix' => 'product'), function(){
	Route::get('/index/', array('as' => 'product', 'uses' => 'productController@index'));
	Route::get('/index/{id}/', array('as' => 'input', 'uses' => 'productController@index'));
});

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
Route::get('/{category}.html', ['uses' => 'CategoryController@index',function($category) {
}])->where(['category' => '[a-zA-Z0-9-_]+']);
Route::get('/{category}/{product}-{id}.html', ['uses' => 'ProductController@index',function($category, $product, $id) {
}])->where(['category' => '[a-zA-Z0-9-_]+', 'product' => '[a-zA-Z0-9-_]+', 'id' => '[0-9]+']);