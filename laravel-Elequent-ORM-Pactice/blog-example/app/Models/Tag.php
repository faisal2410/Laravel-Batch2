<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{

    function post(){
       return $this->belongsToMany(Post::class,'post_tags');
    }


}
