<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    //
    protected $fillable=['user_name','email','phone_no','address','room_id','booking_date','time','status'];

     public function room()
    {
      return $this->belongsTo('App\Room');
    }

     public function roomtype()
    {
      return $this->belongsTo('App\Roomtype');
    }

    public function township()
    {
      return $this->belongsTo('App\Township');
    }

}
