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
    return redirect('/category');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::post('post', 'PostController@store');

Route::get('category', 'CategoryController@index');

Route::get('weblist/{id}', 'WebController@index');

Route::get('post/{id}', 'PostController@index');

Route::get('create_category', 'CategoryController@create');

Route::get('create_post/{id}', 'PostController@create');

Route::post('new_category', 'CategoryController@store');

Route::post('new_post/{id}', 'PostController@store');

Route::get('edit_category/{id}', 'CategoryController@edit');

Route::get('edit_post/{id}', 'PostController@edit');

Route::post('update_category/{id}', 'CategoryController@update');

Route::post('update_post/{id}', 'PostController@update');

Route::post('update_web/{id}', 'WebController@update');

Route::post('update_course/{id}', 'CourseController@update');

Route::get('delete_category/{id}', 'CategoryController@destroy');

Route::get('delete_post/{id}', 'PostController@destroy');

Route::get('delete_file/{id}', 'FileController@destroy');

Route::get('delete_web/{id}', 'WebController@destroy');

Route::post('newcourse/{id}', 'CourseController@store');

Route::get('manage_course_post/{id}', 'CourseController@show');

Route::get('delete_course/{id}', 'CourseController@destroy');

Route::get('post_detail/{id}', 'PostController@show');

Route::post('uploadfile/{id}', 'FileController@store');

Route::post('updatefile/{id}', 'FileController@update');

Route::post('newweb/{id}', 'WebController@store');

Route::get('manage_web_post/{id}', 'WebController@show');

Route::post('newcourse/{id}', 'CourseController@store');

Route::get('create_post', function () {
    return view('postnew');
});

Route::get('new_post', 'PostController@store');