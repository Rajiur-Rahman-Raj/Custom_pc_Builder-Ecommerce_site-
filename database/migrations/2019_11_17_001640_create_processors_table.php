<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProcessorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('processors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('category_id')->nullable();
            $table->bigInteger('subcategory_id')->nullable();
            $table->string('name')->nullable();
            $table->string('brand')->nullable();
            $table->string('image')->nullable();
            $table->longText('details')->nullable();
            $table->string('socket')->nullable();
            $table->string('ram_type')->nullable();
            $table->string('graphics')->nullable();
            $table->string('price')->nullable();
            $table->string('stock')->nullable();
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
        Schema::dropIfExists('processors');
    }
}
