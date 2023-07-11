<?php
namespace App\Helper;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class JWTToken{

    public static function CreateToken($userEmail):string{
        $key=env('JWT_KEY');
        $payload = [
            'iss' => "laravel-jwt",
            'iat' => time(),
            'exp' => time() + 60*60,
            'userEmail' => $userEmail
        ];
        return JWT::encode($payload, $key,'HS256');
    }

    public static function DecodeToken($token){
        try {
            $key=env('JWT_KEY');
            $decoded=JWT::decode($token, new Key($key,'HS256'));
            return $decoded->userEmail;
        }
        catch(Exception $e){
            return "unauthorized";
        }
    }

}
