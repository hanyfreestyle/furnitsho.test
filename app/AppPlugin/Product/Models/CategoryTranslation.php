<?php

namespace App\AppPlugin\Product\Models;

use Illuminate\Database\Eloquent\Model;

class CategoryTranslation extends Model {

    protected $table = "pro_category_translations";
    protected $fillable = ['name'];
    public $timestamps = false;

}
