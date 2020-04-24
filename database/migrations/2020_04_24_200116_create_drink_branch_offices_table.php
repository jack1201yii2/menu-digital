<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDrinkBranchOfficesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('drink_branch_offices', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('drink_id')->unsigned();
            $table->foreign('drink_id')->references('id')->on('drinks');
            $table->bigInteger('branch_office_id')->unsigned();
            $table->foreign('branch_office_id')->references('id')->on('branch_offices');
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
        Schema::dropIfExists('drink_branch_offices');
    }
}
