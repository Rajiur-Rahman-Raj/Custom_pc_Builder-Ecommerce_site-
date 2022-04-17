<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOthersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('others', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('category_id');
            $table->bigInteger('subcategory_id');
            $table->longText('name');
            $table->string('brand');
            $table->string('image');
            $table->longText('details');
            $table->string('price');
            $table->string('stock');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('others');
    }
}
