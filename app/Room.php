<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    //
    protected $fillable=['price','photo','description','roomtype_id','township_id','size','capacity'];

    public function services()
    {
      return $this->belongsToMany('App\Service')->withTimestamps();
    }

     public function roomtype()
    {
      return $this->belongsTo('App\Roomtype');
    }

    public function township()
    {
      return $this->belongsTo('App\Township');
    }

    public function bookings()
    {
      return $this->hasMany('App\Booking');
    }
}
