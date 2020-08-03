<?php

use Illuminate\Support\Facades\Route;
use App\Car;
use App\Brand;
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

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', function () {
   return redirect('/all');
});

Route::resource('all', 'CarsController');

Route::get('/car/{id}', function ($id) {
    $car = Car::find($id);
    return view('car',compact('car'));
})->name('car');

Route::post('/check', function () {
    if(Auth::check()){
        return 1;
    }
    return 0;
});
Route::get('/cars/test', function () {
    $cars = Car::where('brand_id',1)->paginate(15);
    return view('welcome',compact('cars'));
});