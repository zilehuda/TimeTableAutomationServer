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
      $d = Course::all();
      dd($d);
    }
    public function UploadTimetable()
    {
      $address = 'resources/assets/wednesday.xlsx';
      $day = 'Wednesday';

        Excel::load($address, function($reader) {
          foreach ($reader->toArray() as $row) {
          $bb[] = $row;
      }
      //dd($bb);
      $i = 0;
      foreach ($bb[0] as $key) {
        $slot = $key['venuestime'];
        if(false == (empty($key['08_855'])))
        {
          $new = explode(" ",$key['08_855'],2);
          $more_new = explode("-",$new[0]);
          $short = $more_new[0];
          $section = $more_new[1];
          //echo $short;
          $code = Course::where('short',$short)->first();
          //echo $courses['code']." ".$courses['title']."<br>";

        $this->UpdateTimetableDB($code['code'],'Wednesday',$slot,$section,'8:00','8:55',$new[1]);
        }
        if(false == (empty($key['09_0955'])))
        {
          $new = explode(" ",$key['09_0955'],2);
          $more_new = explode("-",$new[0]);
          $short = $more_new[0];
          $section = $more_new[1];
          //echo $short;
          $code = Course::where('short',$short)->first();
          //echo $courses['code']." ".$courses['title']."<br>";

        $this->UpdateTimetableDB($code['code'],'Wednesday',$slot,$section,'9:00','9:55',$new[1]);
        }
        if(false == (empty($key['10_1055'])))
        {
          $new = explode(" ",$key['10_1055'],2);
          $more_new = explode("-",$new[0]);
          $short = $more_new[0];
          $section = $more_new[1];
          //echo $short;
          $code = Course::where('short',$short)->first();
          //echo $courses['code']." ".$courses['title']."<br>";

        $this->UpdateTimetableDB($code['code'],'Wednesday',$slot,$section,'10:00','10:55',$new[1]);
        }
        if(false == (empty($key['11_1155'])))
        {
          $new = explode(" ",$key['11_1155'],2);
          $more_new = explode("-",$new[0]);
          $short = $more_new[0];
          $section = $more_new[1];
          //echo $short;
          $code = Course::where('short',$short)->first();
          //echo $courses['code']." ".$courses['title']."<br>";

        $this->UpdateTimetableDB($code['code'],'Wednesday',$slot,$section,'11:00','11:55',$new[1]);
        }

if(false == (empty($key['12_1255'])))
        {
          $new = explode(" ",$key['12_1255'],2);
          $more_new = explode("-",$new[0]);
          $short = $more_new[0];
          $section = $more_new[1];
          //echo $short;
          $code = Course::where('short',$short)->first();
          //echo $courses['code']." ".$courses['title']."<br>";

        $this->UpdateTimetableDB($code['code'],'Wednesday',$slot,$section,'12:00','12:55',$new[1]);
        }
        if(false == (empty($key['1_155'])))
        {
          $new = explode(" ",$key['1_155'],2);
          $more_new = explode("-",$new[0]);
          $short = $more_new[0];
          $section = $more_new[1];
          //echo $short;
          $code = Course::where('short',$short)->first();
          //echo $courses['code']." ".$courses['title']."<br>";

        $this->UpdateTimetableDB($code['code'],'Wednesday',$slot,$section,'01:00','01:55',$new[1]);
        }
        if(false == (empty($key['2_255'])))
        {
          $new = explode(" ",$key['2_255'],2);
          $more_new = explode("-",$new[0]);
          $short = $more_new[0];
          $section = $more_new[1];
          //echo $short;
          $code = Course::where('short',$short)->first();
          //echo $courses['code']." ".$courses['title']."<br>";

        $this->UpdateTimetableDB($code['code'],'Wednesday',$slot,$section,'02:00','02:55',$new[1]);
        }
        if(false == (empty($key['3_355'])))
        {
          $new = explode(" ",$key['3_355'],2);
          $more_new = explode("-",$new[0]);
          $short = $more_new[0];
          $section = $more_new[1];
          //echo $short;
          $code = Course::where('short',$short)->first();
          //echo $courses['code']." ".$courses['title']."<br>";

        $this->UpdateTimetableDB($code['code'],'Wednesday',$slot,$section,'03:00','03:55',$new[1]);
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
