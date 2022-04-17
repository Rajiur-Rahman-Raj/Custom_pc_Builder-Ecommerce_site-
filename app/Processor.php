<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Processor extends Model
{
    protected $fillable = [
        'category_id', 'subcategory_id', 'name', 'ram_type', 'brand', 'socket', 'image', 'details','price','stock'
    ];
}
