<?php

use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use App\Http\Middleware\TokenAuthenticate;
use Illuminate\Support\Facades\Route;



Route::get('/UserLogin/{UserEmail}', [UserController::class, 'UserLogin']);
Route::get('/VerifyLogin/{UserEmail}/{OTP}', [UserController::class, 'VerifyLogin']);
Route::post('/CreateProfile', [ProfileController::class, 'CreateProfile'])->middleware([TokenAuthenticate::class]);
Route::get('/ReadProfile', [ProfileController::class, 'ReadProfile'])->middleware([TokenAuthenticate::class]);
Route::get('/logout',[UserController::class,'UserLogout']);



Route::get('/', [HomeController::class, 'page']);

Route::get('/BrandList', [BrandController::class, 'BrandList']);
Route::get('/CategoryList', [CategoryController::class, 'CategoryList']);


Route::get('/ListProductByCategory/{id}', [ProductController::class, 'ListProductByCategory']);
Route::get('/ListProductByBrand/{id}', [ProductController::class, 'ListProductByBrand']);
Route::get('/ListProductByRemark/{remark}', [ProductController::class, 'ListProductByRemark']);

Route::post('/CreateProductReview', [ProductController::class, 'CreateProductReview'])->middleware([TokenAuthenticate::class]);
Route::get('/ListReviewByProduct/{id}', [ProductController::class, 'ListReviewByProduct']);
Route::get('/ProductDetailsById/{id}', [ProductController::class, 'ProductDetailsById']);
Route::get('/ListProductSlider', [ProductController::class, 'ListProductSlider']);
Route::get('/ProductWishList', [ProductController::class, 'ProductWishList'])->middleware([TokenAuthenticate::class]);
Route::get('/CreateWishList/{id}', [ProductController::class, 'CreateWishList'])->middleware([TokenAuthenticate::class]);


Route::post('/CreateCartList', [ProductController::class, 'CreateCartList'])->middleware([TokenAuthenticate::class]);
Route::get('/CartList', [ProductController::class, 'CartList'])->middleware([TokenAuthenticate::class]);
Route::get('/DeleteCartList/{id}', [ProductController::class, 'DeleteCartList'])->middleware([TokenAuthenticate::class]);


