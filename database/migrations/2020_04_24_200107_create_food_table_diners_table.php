<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFoodTableDinersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('food_table_diners', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('food_id')->unsigned();
            $table->foreign('food_id')->references('id')->on('foods');
            $table->bigInteger('table_diner_id')->unsigned();
            $table->foreign('table_diner_id')->references('id')->on('table_diners');
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
        Schema::dropIfExists('food_table_diners');
    }
}
