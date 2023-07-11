<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{

    function user(){
       return $this->belongsTo(User::class);
    }


    function tag(){
        return $this->belongsToMany(Tag::class,'post_tags');
    }


}
