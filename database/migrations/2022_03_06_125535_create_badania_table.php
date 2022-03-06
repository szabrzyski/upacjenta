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
        Schema::create('badania', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('kategoria_badania_id');
            $table->string('nazwa')->unique();
            $table->string('kod_icd');
            $table->string('czas_oczekiwania');
            $table->text("skrocony_opis");
            $table->mediumText("opis");
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
        Schema::dropIfExists('badania');
    }
};
