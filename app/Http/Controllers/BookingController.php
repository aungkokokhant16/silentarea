<?php

namespace App\Http\Controllers;

use App\Room;
use App\Roomtype;
use App\Township;
use App\Service;
use App\Booking;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $booking=Booking::all();
        return view('booking.index',compact('booking'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $room=Room::all();
        return view('booking.create',compact('room'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //


        //  $request->validate([
            
        //     "uname"=>'required',
        //     "email"=>'required',
        //     "phone"=>'required|max:100',
        //     "address"=>'required|max:100',
        //     "room_id"=>'required',
        //     "bdate"=>'required',
        //     "btime"=>'required',
        //     "status"=>'required'
        // ]);
         // dd($request);

         $book=new Booking;
        
        
        // $course->logo=$logo;
        $book->user_name=request('uname');
        $book->email=request('email');
        $book->phone_no=request('phone');
        $book->address=request('address');
        $book->room_id=request('room_id');
        $book->booking_date=request('bdate');
        $book->time=request('btime');
        $book->status='ok';
        // $room->service_id=request('service');
        $book->save();

        return redirect()->route('frontend.name')->with('message','Great! Booking Successfully!');
        
        // Save student_subject
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //

        $room=Booking::find($id);
        // dd($room);
        
        return view('booking.details',compact('room'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $book=Booking::find($id);
        $room=Room::all();
        return view('booking.edit',compact('book','room'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $request->validate([
            
            "uname"=>'required',
            "email"=>'required',
            "phone"=>'required|max:100',
            "address"=>'required|max:100',
            "room_id"=>'required',
            "bdate"=>'required',
            "btime"=>'required',
            "status"=>'required'
        ]);

         // dd(request('photo'));

        // If exist file, upload file
        




       

        $book=Booking::find($id);
        
        $book->user_name=request('uname');
        $book->email=request('email');
        $book->phone_no=request('phone');
        $book->address=request('address');
        $book->room_id=request('room_id');
        $book->booking_date=request('bdate');
        $book->time=request('btime');
        $book->status=request('status');
        // $room->service_id=request('service');
        $book->save();


        

        // Return

        return redirect()->route('book.index')->withSuccess('Great! Booking Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $booking=Booking::find($id);
        $booking->delete();
        return redirect()->route('book.index');
    }


    //getBookingByid for ajax
    public function getBookingByid($id){
        $books=Booking::where('room_id',$id)->get();
        // dd($books);
        return $books;
    }
}
