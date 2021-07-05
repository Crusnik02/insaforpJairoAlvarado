<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatDepartamentoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cat_departamento', function (Blueprint $table) {
            
            $table->increments('id');
            $table->string('nombre',50);
            $table->char('ISOcode', 5);
            $table->boolean('estado')->default(true);
            $table->integer('cat_zona_id')->unsigned();
            $table->foreign('cat_zona_id')->references('id')->on('cat_zona');            
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
        Schema::dropIfExists('cat_departamento');
    }
}
