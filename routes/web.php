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

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/home', function () {
//     return view('m');
// });

Route::get('/home', 'FrontendController@home');

Route::get('/', 'FrontendController@index')->name('frontend.name');

Route::get('/contact', 'FrontendController@contact');

Route::post('/frontend_room', 'FrontendController@frontend_room')->name('frontend_room');

Route::get('/frontend_viewdetail/{id}', 'FrontendController@frontend_viewdetail')->name('frontend_viewdetail');

Route::get('/login', 'FrontendController@login');

Route::get('/backend', 'BackendController@backend');

Route::get('fullcalendar','FullCalendarController@index');

Route::post('fullcalendar/create','FullCalendarController@create');

Route::post('fullcalendar/update','FullCalendarController@update');

Route::post('fullcalendar/delete','FullCalendarController@destroy');



Route::post('/room_service','RoomController@room_service')->name('room.services');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('/book','BookingController');//7

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//getBookingByid for ajax
Route::get('/getBookingByid/{id}','BookingController@getBookingByid')->name('getBookingByid');


Route::group(['middleware' => ['role:Admin']], function () {
    Route::resource('/roomtype','RoomtypeController');//7

Route::resource('/township','TownshipController');//7

Route::resource('/service','ServiceController');//7

Route::resource('/room','RoomController');//7


});