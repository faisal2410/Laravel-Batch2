<?php
namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Profile;
use App\Models\Tag;
use App\Models\User;

class DemoController extends Controller
{
    function DemoAction(){

        return Tag::with('post')->get();

    }
}
