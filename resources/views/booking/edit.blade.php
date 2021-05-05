@extends('backend')
  @section('content')




  {{--@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif--}}





<div class="container-fluid">

      <div class="card shadow mb-4" id="Newdiv">
        <div class="card-header">
              <div class="row">
          <div class="col-8">
            <h4 class="m-0 font-weight-bold text-info mmfont"> 
                    Update Existing Booking List
                  </h4>
          </div>
          <div class="offset-2 col-2">
            <a href="{{route('book.index')}}" class="btn btn-info btn-sm btn-block float-right">
              <i class="fas fa-backward"></i>
                    Go Back
                  </a>
          </div>
        </div>

        </div>
        <div class="card-body">
          <div class="row">
          <div class="col-lg-12">
            <form method="post" action="{{route('book.update',$book->id)}}" class="m-5">
              @csrf
              @method('PUT')
              <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> User Name </label>
                  <div class="col-sm-10">
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="uname" value="{{$book->user_name}}">
                       @error('uname')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>


              <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> Email </label>
                  <div class="col-sm-10">
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="email" value="{{$book->email}}">
                       @error('email')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>



                    <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> Phone No. </label>
                  <div class="col-sm-10">
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="phone" value="{{$book->phone_no}}">
                       @error('phone')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>




              <div class="form-group row">
                  <label for="name" class="col-sm-2 col-form-label mmfont"> Address </label>
                  <div class="col-sm-10">
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="address">{{$book->address}}</textarea>

                      @error('address')
                      <div class=" alert alert-danger">
                        <ul>
                          <li>{{ $message }}</li>
                        </ul>
                      </div>
                  @enderror
              </div>
            </div>

             
             <div class="form-group row">
                  <label for="price" class="col-sm-2 col-form-label mmfont"> Room Id </label>
                  <div class="col-sm-10">
                    <select name="room_id" class="custom-select">
                      @foreach($room as $row)
                      <option value="{{$row->id}}">{{$row->id}}</option>
                      @endforeach
                    </select>
                        @error('room_id')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                  </div>
              

              <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> Booking Date </label>
                  <div class="col-sm-10">
                        <input type="Date" class="form-control" id="exampleFormControlInput1" placeholder="" name="bdate" value="{{$book->booking_date}}">
                       @error('bdate')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>

             <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> Booking Time </label>
                  <div class="col-sm-10">
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="btime" value="{{$book->time}}">
                       @error('btime')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>


                    <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont">Status</label>
                  <div class="col-sm-10">
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="status" value="{{$book->status}}">
                       @error('status')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>

              <div class="form-group row">
                <div class="offset-2 col-sm-10">
                  
                      <button type="submit" class="btn btn-outline-primary btn-sm">
                        <i class="fas fa-save"></i> Save Changes
                      </button>
                </div>
              </div>
            </form>
          </div>
        </div>
        </div>
      </div>

  </div>


  @endsection