<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;
use App\Student;
use App\Coursessection;
use App\Timetable;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{

  public function testing(Request $req)
  {
    $db = DB::table('courses')
                  ->join('timetable','courses.code','=','timetable.f_code')
                  ->select('courses.code','timetable.section')
                  ->distinct('courses.code','Timetable.section')->get();

    foreach ($db as $key => $value) {
      $c = new Coursessection;
      $c->f_code = $value->code;
      $c->section = $value->section;
      //$c->save();
    }
    //return response()->json($db);
  }
    public function GetBatchCourses(Request $req)
    {
      //$courses = Course::select('title')->where('batch',$batch)->get();
      //echo $courses;
      $courses_code = DB::table('courses')
                    ->join('Coursessection','courses.code','=','Coursessection.f_code')
                    ->where('courses.batch','=',$req->batch)
                    ->select('courses.*' )
                    ->distinct('courses.code')->get();
      $courses_section = DB::table('courses')
                    ->join('Coursessection','courses.code','=','Coursessection.f_code')
                    ->where('courses.batch','=',$req->batch)
                    ->select('courses.code','Coursessection.section' )
                    ->distinct('courses.code')->get();

      $items = array();
      $i = 0;

      foreach($courses_section as $section => $value) {


        if($courses_code[$i]->code == $value->code)
        {
          //echo $courses_code[$i]->code." ".$value->code."<br>";
          $items[] = $value->section;

        }

        else {
          $courses_code[$i]->section = $items;
          $items = array();
          $items[] = $value->section;
          $i++;
        }


        }

      return response()->json($courses_code);
    }
    public function AddStudent(Request $request)
    {

      $student = new Student;
      $student->id = $request->id;
      $student->f_code = $request->f_code;
      $student->section = $request->section;
      $student->save();
      return response()->json($student);
      //$courses = Course::all();
      //return response()->json($courses);
    }
    public function GetTimetable(Request $req)
    {
      $t = Timetable::where('section',$req->section)
                      ->where('f_code',$req->f_code)
                      ->get();
      return response()->json($t);
    }
    public function GetCourses()
    {
      $courses = Course::where('section','F')->get();
      return response()->json($courses);
    }
}
