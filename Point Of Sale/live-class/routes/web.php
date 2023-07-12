<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


Route::post('/UserLogin',[UserController::class ,'UserLogin']);
Route::post('/UserRegistration',[UserController::class ,'UserRegistration']);
Route::post('/SendOTPToEmail',[UserController::class ,'SendOTPToEmail']);
Route::post('/OTPVerify',[UserController::class ,'OTPVerify']);
Route::post('/SetPassword',[UserController::class ,'SetPassword']);
Route::post('/ProfileUpdate',[UserController::class ,'ProfileUpdate']);













