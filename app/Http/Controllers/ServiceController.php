<?php

namespace App\Http\Controllers;

use App\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $service=Service::all();
        return view('service.index', compact('service'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('service.create');
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

        $service=new Service;
        $service->name=request('name');
        $service->s_photo=$path;
        
        $service->save();

        // Return

        return redirect()->route('service.index');
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
        $service=Service::find($id);
        return view('service.edit',compact('service'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        //
       // dd($request);
         $request->validate([
            "name"=>'required|max:100',
            
        ]);

        // If exist file, upload file

         if($request->hasfile('sphoto'))
        {
            $s_photo=$request->file('sphoto');
            // $upload_dir=public_path().'/storage/images/';

            // $upload_dir=public_path().'/storage/images/';
            $upload_dir='storage/image/';
            // $name=time().'.'.$logo->getClientOriginalExtension();
            $name = $s_photo->getClientOriginalName();
            $s_photo->move($upload_dir,$name);
            $path=$upload_dir.$name;
        }
        else
        {
            // $photo=$request->file('oldphoto');
            
            $path=request('oldphoto');
        }


        // Save Data

        $service= Service::find($id);
        $service->name=request('name');
        $service->s_photo=$path;

        $service->save();

        // Return

        return redirect()->route('service.index');
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
        $service=Service::find($id);
        $service->delete();
        return redirect()->route('service.index');
    }
}
