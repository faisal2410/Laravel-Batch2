<?php
namespace App\Http\Controllers;
class HomeController extends Controller
{
    function HomePage(){
        return view('pages.home-page');
    }
}
