<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * @method static where(string $string, mixed $id)
 */
class Product extends Model
{
    public function brand(): HasOne
    {
        return $this->hasOne(Brand::class);
    }
    public function category(): HasOne
    {
        return $this->hasOne(Category::class);
    }
}
