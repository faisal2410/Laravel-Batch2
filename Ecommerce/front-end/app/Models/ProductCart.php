<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class ProductCart extends Model
{

    protected $fillable = ['email','product_id','color','size'];

    public function product(): HasOne
    {
        return $this->hasOne(Product::class);
    }
}
