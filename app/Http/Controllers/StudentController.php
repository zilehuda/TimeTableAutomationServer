<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;

class StudentController extends Controller
{
    public function GetCourses()
    {
      $courses = Course::where('code','BD499')->first();
      return response()->json($courses);
    }
}
