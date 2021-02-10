<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\Fees;
use App\Student;
use Session;

class FeesController extends Controller
{
  public function index()
  {
    $fees= Fees::all();
    return view('fees.index')->with('fees',$fees);
  }

  public function save(Request $request)
  {
    $this->validate($request,[
      'stdnumber' => 'required',
      'amount'=>'required',
    ]);

    $fees= new Fees;

    $fees->stdnumber=$request->input('stdnumber');
    $fees->amount=$request->input('amount');
    $fees->save();

    return redirect('/fees')->with('success','Paid Succesfully');
  }

  public function show(Request $request)
  {
    $fees= new Fees;
    $total=$fees->sum('amount');
    $request->session()->put('show', $total);
    return view('welcome');
  }
}
