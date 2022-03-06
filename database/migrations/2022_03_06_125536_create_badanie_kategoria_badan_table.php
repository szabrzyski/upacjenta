<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('badanie_kategoria_badan', function (Blueprint $table) {
            $table->unsignedBigInteger('badanie_id');
            $table->unsignedBigInteger('kategoria_badan_id');
            $table->foreign('badanie_id')->references('id')->on('badania')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('kategoria_badan_id')->references('id')->on('kategorie_badan')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('badanie_kategoria_badan');
    }
};
