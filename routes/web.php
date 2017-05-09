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

Route::get('/admin', function () {
    return redirect('/login');
});

Route::get('/', function () {
    return redirect('/home');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::post('post', 'PostController@store')->middleware('auth');

Route::get('category', 'CategoryController@index')->middleware('auth');

Route::get('weblist/{id}', 'WebController@index')->middleware('auth');

Route::get('adminpost/{id}', 'PostController@index')->middleware('auth');

Route::get('post/{id}', 'PostController@user');

Route::get('create_category', 'CategoryController@create')->middleware('auth');

Route::get('create_post/{id}', 'PostController@create')->middleware('auth');

Route::post('new_category', 'CategoryController@store')->middleware('auth');

Route::post('new_post/{id}', 'PostController@store')->middleware('auth');

Route::get('edit_category/{id}', 'CategoryController@edit')->middleware('auth');

Route::get('edit_post/{id}', 'PostController@edit')->middleware('auth');

Route::post('update_category/{id}', 'CategoryController@update')->middleware('auth');

Route::post('update_post/{id}', 'PostController@update')->middleware('auth');

Route::post('update_web/{id}', 'WebController@update')->middleware('auth');

Route::post('update_course/{id}', 'CourseController@update')->middleware('auth');

Route::get('delete_category/{id}', 'CategoryController@destroy')->middleware('auth');

Route::get('delete_post/{id}', 'PostController@destroy')->middleware('auth');

Route::get('delete_file/{id}', 'FileController@destroy')->middleware('auth');

Route::get('delete_web/{id}', 'WebController@destroy')->middleware('auth');

Route::post('newcourse/{id}', 'CourseController@store')->middleware('auth');

Route::get('manage_course_post/{id}', 'CourseController@show')->middleware('auth');

Route::get('delete_course/{id}', 'CourseController@destroy')->middleware('auth');

Route::get('post_detail/{id}', 'PostController@show');

Route::post('uploadfile/{id}', 'FileController@store')->middleware('auth');

Route::post('updatefile/{id}', 'FileController@update')->middleware('auth');

Route::post('newweb/{id}', 'WebController@store')->middleware('auth');

Route::get('manage_web_post/{id}', 'WebController@show')->middleware('auth');;

Route::post('newcourse/{id}', 'CourseController@store')->middleware('auth');

Route::get('create_post', function () {
    return view('postnew')->middleware('auth');
});

Route::get('new_post', 'PostController@store')->middleware('auth');