<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;

class StudentController extends Controller
{
    public function TestFun()
    {
      $courses = Course::where('short','AI')->first();
      return response()->json($courses);
    }
    public function GetCourses()
    {
      $courses = Course::all();
      return response()->json($courses);
    }
}
