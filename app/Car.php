<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    protected $fillable = ['name','year','price','photo'];

    public function brand(){
        return $this->belongsTo('App\Brand');
    }
}
