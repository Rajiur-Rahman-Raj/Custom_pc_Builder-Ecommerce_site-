<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Casing extends Model
{
    protected $fillable = [
        'category_id', 'subcategory_id', 'name', 'brand', 'image', 'details','price','stock','form_factor'
    ];
}
