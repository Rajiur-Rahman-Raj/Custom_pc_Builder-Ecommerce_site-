<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Others extends Model
{
    protected $fillable = [
        'category_id', 'subcategory_id', 'name', 'brand', 'image', 'details','price','stock'
    ];
}
