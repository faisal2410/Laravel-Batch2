<?php
namespace App\Http\Controllers;
use App\Helper\ResponseHelper;
use App\Models\Product;
use App\Models\ProductCart;
use App\Models\ProductDetails;
use App\Models\ProductReview;
use App\Models\ProductSlider;
use App\Models\ProductWish;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function ListProductByCategory(Request $request):JsonResponse{
        $data=Product::where('category_id',$request->id)->with('brand','category')->get();
        return ResponseHelper::Out('success',$data,200);
    }

    public function ListProductByRemark(Request $request):JsonResponse{
        $data=Product::where('remark',$request->remark)->with('brand','category')->get();
        return ResponseHelper::Out('success',$data,200);
    }

    public function ListProductByBrand(Request $request):JsonResponse{
        $data=Product::where('brand_id',$request->id)->with('brand','category')->get();
        return ResponseHelper::Out('success',$data,200);
    }

    public function ListReviewByProduct(Request $request):JsonResponse{
        $data=ProductReview::where('product_id',$request->id)->with('profile')->get();
        return ResponseHelper::Out('success',$data,200);
    }

    public function ProductDetailsById(Request $request):JsonResponse{
        $data=ProductDetails::where('product_id',$request->id)->with('product','product.brand','product.category')->get();
        return ResponseHelper::Out('success',$data,200);
    }

    public function ListProductSlider():JsonResponse{
        $data=ProductSlider::all();
        return ResponseHelper::Out('success',$data,200);
    }


    public function CreateProductReview(Request $request):JsonResponse{
        $UserEmail=$request->header('UserEmail');
        $request->merge(['email' =>$UserEmail]);
        $data=ProductReview::updateOrCreate(
            ['email' => $UserEmail,'product_id'=>$request->input('product_id')],
            $request->input()
        );
        return ResponseHelper::Out('success',$data,200);
    }

    public function ProductWishList(Request $request):JsonResponse{
        $UserEmail=$request->header('UserEmail');
        $data=ProductWish::where('email',$UserEmail)->with('product')->get();
        return ResponseHelper::Out('success',$data,200);
    }

    public function CreateWishList(Request $request):JsonResponse{
        $UserEmail=$request->header('UserEmail');
        $data=ProductWish::updateOrCreate(
            ['email' => $UserEmail,'product_id'=>$request->id],
            ['email' => $UserEmail,'product_id'=>$request->id],
        );
        return ResponseHelper::Out('success',$data,200);
    }


    public function CreateCartList(Request $request):JsonResponse{
        $UserEmail=$request->header('UserEmail');
        $request->merge(['email' =>$UserEmail]);
        $data=ProductCart::updateOrCreate(
            ['email' => $UserEmail,'product_id'=>$request->input('product_id')],
            $request->input()
        );
        return ResponseHelper::Out('success',$data,200);
    }

    public function CartList(Request $request):JsonResponse{
        $UserEmail=$request->header('UserEmail');
        $data=ProductCart::where('email',$UserEmail)->with('product')->get();
        return ResponseHelper::Out('success',$data,200);
    }


    public function DeleteCartList(Request $request):JsonResponse{
        $UserEmail=$request->header('UserEmail');
        $data=ProductCart::where('email',$UserEmail)->where('product_id',$request->id)->delete();
        return ResponseHelper::Out('success',$data,200);
    }



}
