<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePedidosTable extends Migration
{

    public function up()
    {
        Schema::create('pedidos', function(Blueprint $table) {
            $table->increments('id');
            $table->string('estado');
            $table->boolean('facturado');
            $table->integer('cliente_id')->unsigned();
            $table->foreign('cliente_id')->references('id')->on('clientes');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::drop('pedidos');
    }
}