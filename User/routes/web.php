<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
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



Route::get('/', [App\Http\Controllers\ProductController::class, 'products'])->name('products');

Route::get('/account', function () {
    return view('account');
});

Route::post("/login",[UserController::class,'login']);
Route::get('/login', function () {
    return view('login');
});

Route::post("/signup",[UserController::class,'signup']);
Route::get('/signup', function () {
    return view('signup');
});



Route::get("/about", function () {
    return view('about');
});

Route::get('/contact', function () {
    return view('contact');
});

Route::get('/cart', function () {
    return view('cart');
});

// Route::get('/account', 'accountControler@account')->name('account');
// echo route('account');
