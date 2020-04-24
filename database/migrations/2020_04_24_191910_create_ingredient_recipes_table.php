<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIngredientRecipesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ingredient_recipes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('ingredient_id')->unsigned();
            $table->foreign('ingredient_id')->references('id')->on('ingredients');
            $table->bigInteger('drink_id')->unsigned();
            $table->foreign('drink_id')->references('id')->on('drinks');
            $table->bigInteger('food_id')->unsigned();
            $table->foreign('food_id')->references('id')->on('foods');
            $table->string('ingretient_unit');
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
        Schema::dropIfExists('ingredient_recipes');
    }
}
