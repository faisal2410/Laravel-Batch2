<?php
namespace App\Http\Middleware;
use App\Helper\JWTToken;
use App\Helper\ResponseHelper;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class TokenAuthenticate
{
    public function handle(Request $request, Closure $next): Response
    {
        $token=$request->header('token');
        $tokenResult=JWTToken::ReadToken($token);
        if($tokenResult=="unauthorized"){
            return ResponseHelper::Out('fail',"unauthorized",401);
        }
        else{
            $request->headers->set('UserEmail',$tokenResult);
            return $next($request);
        }
    }
}
