<?php

namespace App\Http\Controllers;

use App\Township;
use Illuminate\Http\Request;

class TownshipController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $township=Township::all();
        return view('township.index', compact('township'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('township.create');
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

        $township=new Township;
        $township->name=request('name');
        
        $township->save();

        // Return

        return redirect()->route('township.index');
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
        $township=Township::find($id);
        return view('township.edit',compact('township'));
    
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
            "name"=>'required|max:100',
            
        ]);

        // If exist file, upload file


        // Save Data

        $township= Township::find($id);
        $township->name=request('name');
        

        $township->save();

        // Return

        return redirect()->route('township.index');
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
        $township=Township::find($id);
        $township->delete();
        return redirect()->route('township.index');
    }
}
