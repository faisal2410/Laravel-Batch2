<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\PostTag;
use App\Models\Profile;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Http\Request;

class DemoController extends Controller
{
    function DemoAction(){
        return User::with('post')->get();
    }
}
