<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::post('post', 'PostController@store');

Route::get('category', 'CategoryController@index');

Route::get('create_category', function () {
    return view('categorynew');
});

Route::post('new_category', 'CategoryController@store');

Route::get('edit_category/{id}', 'CategoryController@edit');

Route::post('update_category/{id}', 'CategoryController@update');

Route::get('delete_category/{id}', 'CategoryController@destroy');