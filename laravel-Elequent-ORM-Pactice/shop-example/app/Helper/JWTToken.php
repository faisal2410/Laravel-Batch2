<?php

namespace App\Helper;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;
use Exception;

class JWTToken
{
    public static function CreateToken($UserEmail):string
    {
        $key = env('JWT_KEY');
        $payload = [
            'UserEmail' =>$UserEmail,
            'iat' => time(),
            'nbf' => time()+3,
            'exp'=> time()+24*60*60
        ];
        return JWT::encode($payload, $key, 'HS256');
    }

    public static function ReadToken($jwt):string
    {
        try {
            $key = env('JWT_KEY');
            $decoded = JWT::decode($jwt, new Key($key, 'HS256'));
            return  $decoded->UserEmail;
        }
        catch(Exception $e){
            return  "unauthorized";
        }
    }
}
