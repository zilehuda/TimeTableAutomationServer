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
  protected $a;

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
      $t = DB::table('timetable')
                    ->join('courses','courses.code','=','timetable.f_code')
                    ->where('section',$req->section)
                    ->where('f_code',$req->f_code)
                    ->select('timetable.*','courses.title','courses.short')
                    ->get();
      return response()->json($t);
    }
    public function GetTime(Request $req)
    {
      $output = print_r($req->getContent(), true);
      file_put_contents('main.txt', $output);
      $item = [];
      //return response()->json($item);
      $obj = json_decode($req->getContent(), true);

      foreach ($obj as $key => $value) {
        $t = DB::table('timetable')
                      ->join('courses','courses.code','=','timetable.f_code')
                      ->where('section',$value['section'])
                      ->where('f_code',$value['f_code'])
                      ->select('timetable.*','courses.title','courses.short')
                      ->get();
        foreach ($t as $key) {
          $item[]=$key;
          //return response()->json($key);
        }


      }
      return response()->json($item);
        //return response()->json($req->section);


    }
    public function GetCourses()
    {
      $courses = Course::all();
      return response()->json($courses);
    }

    public function GetCoursesPost(Request $req)
    {
      $courses = Course::select("code","title","short")
                  ->where("code",$req->code)
                  ->get();
      return response()->json($courses);
    }
}
