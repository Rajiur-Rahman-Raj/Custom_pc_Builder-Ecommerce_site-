<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Storage extends Model
{
    protected $fillable = [
        'category_id', 'subcategory_id', 'name', 'capacity', 'brand', 'storage_type', 'image', 'details','price','stock'
    ];
}
