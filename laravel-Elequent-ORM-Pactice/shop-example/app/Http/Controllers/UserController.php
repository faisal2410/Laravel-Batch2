<?php
namespace App\Http\Controllers;
use App\Helper\JWTToken;
use App\Helper\ResponseHelper;
use App\Mail\OTPMail;
use App\Models\User;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class UserController extends Controller
{

    public function UserLogin(Request $request):JsonResponse
    {
        try {
            $UserEmail=$request->UserEmail;
            $OTP=rand (1000,9999);
            $details = ['code' => $OTP];
            Mail::to($UserEmail)->send(new OTPMail($details));
            $data=User::updateOrCreate(['email' => $UserEmail], ['email'=>$UserEmail,'otp'=>$OTP]);
            return ResponseHelper::Out('success',"A 4 Digit OTP has been send to your email address",200);
        } catch (Exception $e) {
            return ResponseHelper::Out('fail',$e,200);
        }
    }



    public function VerifyLogin(Request $request):JsonResponse
    {
            $UserEmail=$request->UserEmail;
            $OTP=$request->OTP;
            $verification= User::where('email',$UserEmail)->where('otp',$OTP)->count();
            if($verification>0){
                User::updateOrCreate(['email' => $UserEmail], ['email'=>$UserEmail,'otp'=>'0']);
                $token=JWTToken::CreateToken($UserEmail);
                return  ResponseHelper::Out('success',$token,200);
            }
            else{
                return  ResponseHelper::Out('fail',null,401);
            }
    }
}

