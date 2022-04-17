<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ram extends Model
{
    protected $fillable = [
        'category_id', 'subcategory_id', 'name', 'ram_type', 'brand', 'bus_speed', 'image', 'details','price','stock'
    ];
}
