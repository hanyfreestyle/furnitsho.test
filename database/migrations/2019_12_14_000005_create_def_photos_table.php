<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {

    public function up(): void {
        Schema::create('config_def_photos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('cat_id');
            $table->string('photo')->nullable();
            $table->string('photo_thum_1')->nullable();
            $table->string('photo_thum_2')->nullable();
            $table->integer('postion')->default(0);
            $table->timestamps();
        });

        Schema::create('config_ads_photos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('cat_id');
            $table->string('photo')->nullable();
            $table->string('link')->nullable();
            $table->string('col')->nullable();
            $table->integer('is_active')->default(1);
            $table->integer('position')->default(0);
        });

    }


    public function down(): void {
        Schema::dropIfExists('config_ads_photos');
        Schema::dropIfExists('config_def_photos');
    }
};
