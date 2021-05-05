<?php

namespace App\Http\Controllers;

use App\Roomtype;
use Illuminate\Http\Request;

class RoomtypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $room=RoomType::all();
        return view('room_type.index', compact('room'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('room_type.create');
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
        $request->validate([
            "name"=>'required|min:5|max:100',
            
        ]);

        // If exist file, upload file
        // if($request->hasfile('logo'))
        // {
        //     $logo=$request->file('logo');
        //     $upload_dir=public_path().'/storage/images/';
        //     $name=time().'.'.$logo->getClientOriginalExtension();
        //     $logo->move($upload_dir,$name);
        //     $path=$upload_dir.$name;
        // }
        // else
        // {
        //     $path='';
        // }

        // dd($upload_dir,$path);
        // Save Data

        $room=new RoomType;
        $room->name=request('name');
        
        $room->save();

        // Return

        return redirect()->route('roomtype.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Roomtype  $roomtype
     * @return \Illuminate\Http\Response
     */
    public function show(Roomtype $roomtype)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Roomtype  $roomtype
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //

       $room=RoomType::find($id);
        return view('room_type.edit',compact('room'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Roomtype  $roomtype
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $request->validate([
            "name"=>'required|max:100',
            
        ]);

        // If exist file, upload file


        // Save Data

        $room= RoomType::find($id);
        $room->name=request('name');
        

        $room->save();

        // Return

        return redirect()->route('roomtype.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Roomtype  $roomtype
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $room=RoomType::find($id);
        $room->delete();
        return redirect()->route('roomtype.index');
    }
}
