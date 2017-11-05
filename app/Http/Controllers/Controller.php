<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Course;
use App\Timetable;
Use Excel;
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public $json;
    public function index()
    {
      $str = "AI-Gr1 Ali Naqvi";
      $new = explode(" ",$str);
      print_r ($new[0]);
      $section = explode("-",$new[0]);
      print_r ($section[0]);
      //$this->UpdateTimetableDB('CL101','mon','E2','C','8:00','8:55','asdad');
    }
    public function UploadTimetable()
    {
      $address = 'resources/assets/monday.xlsx';

        Excel::load($address, function($reader) {
          foreach ($reader->toArray() as $row) {
          $bb[] = $row;
      }
      $json = json_encode($bb);
      //dd($bb);
      $i = 0;
      foreach ($bb[0] as $key) {
        $slot = $key['venuestime'];
        if(false == (empty($key['09_0955'])))
        {
          $new = explode(" ",$key['09_0955']);
          $more_new = explode("-",$new[0]);
          $section = $more_new[0];
          $short = $more_new[1];
          //echo $short;
        }
        }


      });
    }

    public function UploadTeacher()
    {
      $address = 'resources/assets/2014.xlsx';

        Excel::load($address, function($reader) {
          foreach ($reader as $row) {

          //$bb[] = $row;

          dd($row);
      }
      $json = json_encode($bb);
      //dd($bb);
      $i = 0;
      foreach ($bb[0] as $key) {
          print $key['code']." ";
          print $key['instructors'];
          echo "<br>";
      }
      });
    }
    public function UploadCourses()
    {
      $address = 'resources/assets/2014.xlsx';

        Excel::load($address, function($reader) {
          foreach ($reader->toArray() as $row) {
          $bb[] = $row;
      }
      $json = json_encode($bb);
      //dd($bb);
      $i = 0;
      foreach ($bb[0] as $key) {

        $this->UpdateCourseDB($key['code'],$key['course_title'],$key['short'],$key['batch']);
          print $key['batch'];
      }
      });
    }

    public function UpdateTimetableDB($f_code,$day,$slot,$section,$starttime,$endtime,$teacher_name)
    {
      $timetable = new Timetable;
      $timetable->f_code = $f_code;
      $timetable->day = $day;
      $timetable->slot = $slot;
      $timetable->section = $section;
      $timetable->starttime = $starttime;
      $timetable->endtime = $endtime;
      $timetable->teacher_name = $teacher_name;
      $timetable->save();
    }

    public function UpdateCourseDB($code,$title,$short,$batch)
    {
      $course = new Course;
      $course->code = $code;
      $course->title = $title;
      $course->batch = $batch;
      $course->short = $short;
      $course->save();
    }

}
