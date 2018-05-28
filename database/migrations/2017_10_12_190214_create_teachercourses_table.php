<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeachercoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::enableForeignKeyConstraints();
        Schema::create('teachercourses', function (Blueprint $table) {
            //$table->increments('teacher_id');
            $table->integer('teacher_id');
            $table->char('f_code',5);
            $table->foreign('f_code')->references('code')->on('courses');
            $table->char('section',3);
            $table->primary(['teacher_id', 'f_code','section']);
        });
        DB::statement('ALTER TABLE `teachercourses` CHANGE `teacher_id` `teacher_id` INT(11) NOT NULL AUTO_INCREMENT;');
  }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teachercourses');
    }
}
