<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFindDataTblsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('find_data_tbls', function (Blueprint $table) {
            $table->id();
            $table->string('url');
            $table->string('ip_address');
            $table->string('Reputation');
            $table->string('country');
            $table->string('user_ip');
            $table->datetime('datetime');
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
        Schema::dropIfExists('find_data_tbls');
    }
}
