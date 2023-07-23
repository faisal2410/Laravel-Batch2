<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;


// Page Routes
Route::get('/', [HomeController::class,'page']);

