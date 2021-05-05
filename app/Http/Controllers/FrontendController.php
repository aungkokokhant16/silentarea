<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Township;
use App\Roomtype;
use App\Room;
use App\Service;
use App\Booking;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    //
    public function home($value='')
    {
    	# code...
    	return view('maintemplate');
    }

    public function index(Request $request)
    {
    	# code...
        $township=Township::all();
        $roomtype=Roomtype::all();        

        return view('frontend.index', compact('township','roomtype'));
    	// return view('frontend.index');
    }

    public function contact($value='')
    {
    	# code...
    	return view('frontend.contact');
    }

    public function frontend_room(Request $request)
    {
        # code...
        // dd($request);
        $township=Township::all();
        $roomtype=Roomtype::all();
        // $book=Booking::all();

        

        $townships=request('township');
        $roomtypes=request('roomtype');
        $bookdate=request('bdate');

        // dd($bookdate);
         // $rooms = DB::table('rooms')
         //    ->join('roomtypes', 'rooms.roomtype_id', '=', 'roomtypes.id')
         //    ->join('townships', 'rooms.township_id', '=', 'townships.id')
            
         //    ->where([
         //            ['townships.id', '=', $townships],
         //            ['roomtypes.id', '=', $roomtypes],
         //        ])
         //    // ->orwhere('rooms.roomtype_id','=',$roomtypes)
         //    ->select('rooms.*','townships.name as tname','townships.id as tid','roomtypes.name as rname')
            
         //    ->get();
             // foreach ($rooms as $row) {
             //            $row->services;
             //        }
       
             // $room=Room::

        // $rooms = Room::where('township_id',$townships)
        //             ->orWhere('roomtype_id',$roomtypes)
        //             ->get();
        // $book_date=0;
        $date = Booking::all();
        foreach ($date as $b_date) {
            $book_date = $b_date->booking_date;
            // dd($book_date);
        }


        $rooms = Room::where(function ($query) use ($townships,$roomtypes,$bookdate,$book_date) {
                    $query->where('township_id', $townships)
                        ->where('roomtype_id', $roomtypes);
                })
                ->whereHas('bookings', function ($query) use ($bookdate){
                    $query->where('booking_date', $bookdate);
                }, '<', 3)
                ->get();

         // $data=Room::with('booking');       

        // dd($rooms);


        // $rooms = Room::where(function ($query) use ($townships,$roomtypes,$bookdate,$book_date) {
        //             $query->where('township_id', $townships)
        //                 ->where('roomtype_id', $roomtypes);
        //         })->with(['bookings'=>function($data) use ($bookdate) {$data->where('id','%'.'2020-01-29'.'%');}])->get();

        // // dd($rooms);


          // $rooms = Booking::where('booking_date','=', $bookdate)->with(['room'=>function ($query) use ($townships,$roomtypes,$bookdate,$book_date) {
          //           $query->where('township_id', $townships)
          //               ->where('roomtype_id', $roomtypes);
          //       }])->get();

          //dd($rooms);


        return view('frontend.room', compact('townships','roomtype','rooms','township','roomtypes','bookdate'));
        // return view('frontend.room');
    }


    public function frontend_viewdetail(Request $request, $id)
    {
        // dd($id);
        $room=Room::find($id);
        $roomtype=Roomtype::all();
        $roomtownship=Township::all();
        $service=Service::all();
        $rooms=Room::all();
        $bookdate=request('bookdate');

        // $room_service = $room->services()->wherePivot('room_id','=',$id)->get();

        // dd($room_service);
    
        return view('frontend.view_detail',compact('roomtype','roomtownship','service','room','rooms','bookdate'));
        // return view('frontend.view_detail',compact('room'));
    }



   
}

