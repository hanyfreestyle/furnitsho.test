<?php

namespace App\AppPlugin\Product\Models;


use Illuminate\Database\Eloquent\Model;

class LandingPageTranslation extends Model {

    public $timestamps = false;
    protected $table = "pro_landing_page_translations";
    protected $fillable = ['name'];

}
