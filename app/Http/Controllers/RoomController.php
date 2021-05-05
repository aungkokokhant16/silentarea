<?php

namespace App\Http\Controllers;


use App\Room;
use App\Roomtype;
use App\Township;
use App\Service;
use Illuminate\Http\Request;

class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $room=Room::with('services')->get();
        // dd($room);
        // foreach ($room as $row) {
        //     $row->services;
        // };
        // die();

        return view('room.index', compact('room'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        // return view('room.create');
        $roomtype=Roomtype::all();
        $roomtownship=Township::all();
        $service=Service::all();
        return view('room.create',compact('roomtype','roomtownship','service'));
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
        // $request->validate([
            
        //     "price"=>'required',
        //     "description"=>'required',
        //     "roomtype_id"=>'required|max:100',
        //     "township_id"=>'required|max:100',
        //     "size"=>'required',
        //     "capacity"=>'required',
        //     "services"=>'required'
        // ]);

        // If exist file, upload file
        if($request->hasfile('photo'))
        {
            $photo=$request->file('photo');
            // $upload_dir=public_path().'/storage/images/';

            // $upload_dir=public_path().'/storage/images/';
            $upload_dir='storage/image/';
            // $name=time().'.'.$logo->getClientOriginalExtension();
            $name = $photo->getClientOriginalName();
            $photo->move($upload_dir,$name);
            $path=$upload_dir.$name;
        }
        else
        {
            $path='';
        }




        //  $destinationPath = 'public/image/'; // upload path
        //    $profileImage = date('YmdHis') . "." . $files->getClientOriginalExtension();
        //    $files->move($destinationPath, $profileImage);
        //    $insert['image'] = "$profileImage";
        // }
        // $check = Image::insertGetId($insert);
 
        // return Redirect::to("image")
        // ->withSuccess('Great! Image has been successfully uploaded.');



        // dd($upload_dir,$path);
        // Save Data

        $room=new Room;
        
        $room->photo=$path;
        // $course->logo=$logo;
        $room->price=request('price');
        $room->description=request('description');
        $room->roomtype_id=request('roomtype_id');
        $room->township_id=request('township_id');
        $room->size=request('size');
        $room->capacity=request('capacity');
        // $room->service_id=request('service');
        $room->save();

        $subjects=request('services');
        // Save student_subject
        $room->services()->attach($subjects);


        

        // Return

        return redirect()->route('room.index')->withSuccess('Great! Image has been successfully uploaded.');

        // if(app('router')->getRoutes()->match(app('request')->create(URL::previous()))->getName()=='students.create')
        // {

        // return redirect()->route('students.index');
        // }
        // else
        // {
        //     return back()->with('status','Register successfully');
        // }
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

        $room=Room::find($id);
        return view('room.details',compact('room'));
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


        $room=Room::find($id);
        $roomtype=Roomtype::all();
        $roomtownship=Township::all();
        $service=Service::all();

        $room_service = $room->services()->wherePivot('room_id','=',$id)->get();

        // dd($room_service);
    
        return view('room.edit',compact('roomtype','roomtownship','service','room','room_service'));
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
            
            "price"=>'required',
            "description"=>'required',
            "roomtype_id"=>'required',
            "township_id"=>'required',
            "size"=>'required',
            "capacity"=>'required'
            // "services"=>'required'
            // "services"=>'required'
        ]);
         // dd($request);

        // If exist file, upload file
        if($request->hasfile('photo'))
        {
            $photo=$request->file('photo');
            // $upload_dir=public_path().'/storage/images/';

            // $upload_dir=public_path().'/storage/images/';
            $upload_dir='storage/image/';
            // $name=time().'.'.$logo->getClientOriginalExtension();
            $name = $photo->getClientOriginalName();
            $photo->move($upload_dir,$name);
            $path=$upload_dir.$name;
        }
        else
        {
            // $photo=$request->file('oldphoto');
            
            $path=request('oldphoto');
        }




       

        $room=Room::find($id);
        
        $room->photo=$path;
        // $course->logo=$logo;
        $room->price=request('price');
        $room->description=request('description');
        $room->roomtype_id=request('roomtype_id');
        $room->township_id=request('township_id');
        $room->size=request('size');
        $room->capacity=request('capacity');
        // $room->service_id=request('service');
        $room->save();


        // if (request('services'))
        // {
        //     $subjects=[];
        //    $subjects=request('services'); 
        // }

        $subjects=request('services');
        
        // Save student_subject
        $room->services()->detach();
        $room->services()->attach($subjects);


        

        // Return

        return redirect()->route('room.index')->withSuccess('Great! Image has been successfully uploaded.');





        // mmmmmmmmmmmmmmm
       
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

        $room=Room::find($id);
        $room->delete();
        return redirect()->route('room.index');
    }

    public function room_service(Request $request)
    {
        $id=request('id');

        $services=Room::find($id)->services();

        dd($services);
    }


}
