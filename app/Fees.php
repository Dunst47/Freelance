<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fees extends Model
{
  protected $table="fees";
  protected $primarykey="id";

  public function stdbelong()
  {
    return $this->belongsTo('App/Student');
  }
}
