<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'student']
,function()
{
  //add new student
Route::post('/add','StudentController@AddStudent');
//get student time table based on course and section;
Route::post('/timetable','StudentController@GetTimetable');
Route::post('/time','StudentController@GetTime');
//get all the courses of batch XXXX
Route::post('/batch',"StudentController@GetBatchCourses");
Route::get('/courses',"StudentController@GetCourses");
});
