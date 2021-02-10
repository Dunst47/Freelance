<?php

namespace App\Http\Controllers;

use App\Fee;
use App\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FeeController extends Controller
{
    //


    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index(){
        return view('101054.searchfees');
    }

    public function searchstudent(){

    }

    public  function payFees(){
        $fees= new Fee();

        $fees->student_id=request('student_id');
        $fees->amount=request('amount');

        DB::table('students')->where('stdno','=', $fees->student_id)->decrement('Balance',$fees->amount);

        $fees->save();
        return redirect('/');
    }
    public function searchPayment(){
        return view('101054.searchpayments');
    }

    public function getPayment(){
        $id= $_GET['id'];

        $name=Student::find($id)->fullName;

        $fees = Fee::where('student_id',$id)->get(['id', 'student_id', 'amount', 'created_at']);


        return view('101054.payresults', compact('name','fees'));


    }
}
