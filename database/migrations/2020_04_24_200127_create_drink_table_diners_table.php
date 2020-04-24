<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDrinkTableDinersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('drink_table_diners', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('drink_id')->unsigned();
            $table->foreign('drink_id')->references('id')->on('drinks');
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
        Schema::dropIfExists('drink_table_diners');
    }
}
