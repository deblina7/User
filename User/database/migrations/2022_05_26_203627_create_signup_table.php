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
        Schema::create('signup', function (Blueprint $table) {
            $table->id();
            $table->string('FullName');
            $table->string('UserName')->unique();
            $table->string('Number');
            $table->string('Email');
            $table->string('Password')->unique();
            $table->string('CPassword');


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
        Schema::dropIfExists('signup');
    }
};
