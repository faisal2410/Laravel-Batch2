<?php

use App\Http\Controllers\DemoController;
use Illuminate\Support\Facades\Route;






Route::post('/create-brand', [DemoController::class, 'DemoAction']);
