<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableDinersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_diners', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('diner_id')->unsigned();
            $table->foreign('diner_id')->references('id')->on('diners');
            $table->bigInteger('table_id')->unsigned();
            $table->foreign('table_id')->references('id')->on('tables');
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
        Schema::dropIfExists('table_diners');
    }
}
