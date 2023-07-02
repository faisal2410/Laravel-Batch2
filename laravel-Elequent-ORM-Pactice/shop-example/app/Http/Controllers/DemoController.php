<?php
namespace App\Http\Controllers;
use App\Models\Brand;

class DemoController extends Controller
{
    public function DemoAction()
    {
       return Brand::all();
    }
}
