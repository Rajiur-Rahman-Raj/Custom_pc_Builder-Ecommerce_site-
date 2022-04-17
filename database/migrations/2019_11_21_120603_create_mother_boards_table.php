<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMotherBoardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mother_boards', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('category_id');
            $table->bigInteger('subcategory_id');
            $table->longText('name');
            $table->string('brand');
            $table->string('image');
            $table->longText('details');
            $table->string('socket');
            $table->string('ram_type');
            $table->string('storage_type');
            $table->string('form_factor');
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
        Schema::dropIfExists('mother_boards');
    }
}
