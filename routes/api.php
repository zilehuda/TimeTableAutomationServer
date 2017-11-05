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

Route::group(['prefix' => 'student']
,function()
{
  //save student courses and section
Route::post('/{id}','StudentController@SetStudent')->where(['id'=>"k[0-9]+"]);
//get all the courses of batch XXXX
Route::get('/{batch}',"StudentController@GetStudentCourses")->where(['batch'=>"[0-9]+"]);
Route::get('/courses',"StudentController@GetCourses");
});
