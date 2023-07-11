<?php
namespace App\Http\Controllers;
use App\Models\Brand;
use App\Models\Product;
<<<<<<< Updated upstream
use Illuminate\Http\Request;

=======
>>>>>>> Stashed changes

class DemoController extends Controller
{
    public function DemoAction()
    {
<<<<<<< Updated upstream
      return Product::paginate(
          $perPage = 5,
          $columns = ['*'],
          $pageName = 'pageName'
      );
=======
       return Product::paginate(
           $perPage = 2,
           $columns = ['title', 'price'],
           $pageName = 'ItemNumber',
       );
>>>>>>> Stashed changes
    }
}
