<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTimetableTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::enableForeignKeyConstraints();
        Schema::create('timetable', function (Blueprint $table) {
            $table->increments('id');
            $table->char('f_code',5);
            $table->foreign('f_code')->references('code')->on('courses');
            $table->string('day');
            $table->char('slot',10);
            $table->char('section',20);
            $table->time('starttime');
            $table->time('endtime');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('timetable');
    }
}
