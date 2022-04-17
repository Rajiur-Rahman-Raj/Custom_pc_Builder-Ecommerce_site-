<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MotherBoard extends Model
{
    protected $fillable = [
        'category_id', 'subcategory_id', 'name', 'ram_type', 'brand', 'socket', 'image', 'details','price','stock','storage_type','form_factor'
    ];
}
