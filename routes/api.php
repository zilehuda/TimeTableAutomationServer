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
Route::get('/tt','StudentController@TestFun');
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group(['prefix' => 'timetable']
,function()
{
//idher all route define karo
Route::get('/test',function(){
     return "ok";
});
});

Route::get('posting','StudentController@testing');
Route::group(['prefix' => 'student']
,function()
{
  //get student time table based on course and section;
Route::post('/timetable','StudentController@GetTimetable');
//get all the courses of batch XXXX
Route::post('/',"StudentController@GetBatchCourses");
Route::get('/courses',"StudentController@GetCourses");
});
