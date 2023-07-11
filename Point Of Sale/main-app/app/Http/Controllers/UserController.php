<?php
namespace App\Http\Controllers;
use App\Helper\JWTToken;
use App\Mail\OTPEmail;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;


class UserController extends Controller
{

    function UserLogin(Request $request){
          $res=User::where($request->input())->count();
          if($res==1){
              $token=JWTToken::CreateToken($request->input('email'));
              return response()->json(['msg'=>"success",'data'=>$token]);
          }
          else{
              return response()->json(['msg'=>"fail",'data'=>'unauthorized']);
          }
    }

    function UserRegistration(Request $request){
       return User::create($request->input());
    }

    function SendOTPToEmail(Request $request){
            $UserEmail=$request->input('email');
            $otp=rand(1000,9999);
            $res=User::where($request->input())->count();
            if($res==1) {
                // Mail Send
                Mail::to($UserEmail)->send(new OTPEmail($otp));
                // Database Update
                User::where($request->input())->update(['otp'=>$otp]);

                return response()->json(['msg'=>"success",'data'=>'OTP sent to your email']);
            }
            else {
                return response()->json(['msg'=>"fail",'data'=>'unauthorized']);
            }
    }

    function OTPVerify(Request $request){
        $res=User::where($request->input())->count();
        if($res==1) {
            User::where($request->input())->update(['otp'=>"0"]);
            //Tag->
            return response()->json(['msg'=>"success",'data'=>'Verified']);
        }
        else{
            return response()->json(['msg'=>"fail",'data'=>'unauthorized']);
        }
    }

    function SetPassword(Request $request){
        User::where($request->input())->update(['password'=>$request->input('password')]);
        return response()->json(['msg'=>"success",'data'=>'updated']);
    }

    // After Login
    function ProfileUpdate(){

    }


}
