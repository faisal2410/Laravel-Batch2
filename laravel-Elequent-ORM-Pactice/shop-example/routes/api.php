<?php

use App\Http\Controllers\DemoController;
use Illuminate\Support\Facades\Route;


Route::get('/delete-brand/{id}', [DemoController::class, 'DemoAction']);






Route::post('/create-brand', [DemoController::class, 'DemoAction']);
