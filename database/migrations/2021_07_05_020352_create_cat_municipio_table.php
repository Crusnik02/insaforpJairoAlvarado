<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatMunicipioTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cat_municipio', function (Blueprint $table) {
            
            $table->increments('id');
            $table->string('nombre',50);
            $table->boolean('estado')->default(true);
            $table->integer('cat_departamento_id')->unsigned();
            $table->foreign('cat_departamento_id')->references('id')->on('cat_departamento');
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
        Schema::dropIfExists('cat_municipio');
    }
}
