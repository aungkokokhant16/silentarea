<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BackendController extends Controller
{
    //
    public function backend($value='')
    {
    	# code...
    	return view('rooms.index');
    }
}
