<?php

namespace App\AppCore\AdsPhoto;


use Illuminate\Database\Eloquent\Model;

class AdsBanner extends Model {
    protected $table = "config_ads_photos";
    protected $fillable = [];
    public $timestamps = false;
}
