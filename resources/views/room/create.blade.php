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
                    Add Room
                  </h4>
          </div>
          <div class="offset-2 col-2">
            <a href="{{route('room.index')}}" class="btn btn-info btn-sm btn-block float-right">
              <i class="fas fa-backward"></i>
                    Go Back
                  </a>
          </div>
        </div>

        </div>
        <div class="card-body">
          <div class="row">
          <div class="col-lg-12">
            <form method="post" action="{{route('room.store')}}" class="m-5" enctype="multipart/form-data">
              @csrf


                    <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> Price </label>
                  <div class="col-sm-10">
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="price" value="{{ old('price') }}">
                       @error('price')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>


              <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> Photo </label>
                  <div class="col-sm-10">
                    <input type="file" class="form-control-file" id="exampleFormControlInput1" placeholder="" name="photo">
                  </div>
              </div>

              <div class="form-group row">
                  <label for="name" class="col-sm-2 col-form-label mmfont"> Description </label>
                  <div class="col-sm-10">
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="description">{{ old('description') }}</textarea>

                      @error('description')
                      <div class=" alert alert-danger">
                        <ul>
                          <li>{{ $message }}</li>
                        </ul>
                      </div>
                  @enderror
              </div>
            </div>

              <div class="form-group row">
                  <label for="price" class="col-sm-2 col-form-label mmfont"> Room Type</label>
                  <div class="col-sm-10">
                    <select name="roomtype_id" class="custom-select">
                      @foreach($roomtype as $row)
                      <option value="{{$row->id}}">{{$row->name}}</option>
                      @endforeach
                    </select>
                        @error('roomtype_id')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                  </div>



                  <div class="form-group row">

                  <label class="col-sm-2 col-form-label mmfont"> Service </label>
               
                  <div class="row">
                  <div class="col-sm-10 col-lg-12 form-check form-check-inline">
                    
                    
                    
                   
                      @foreach($service as $subject)
                      
                       <input class="form-check form-check-input" type="checkbox" id="gridCheck{{$subject->id}}" value="{{$subject->id}}" name="services[]">
  <label for="gridCheck{{$subject->id}}" class=" mr-3">{{$subject->name}}</label>

                      @endforeach
                   
                    
                    
                  </div>
                </div>
                  
              </div>
              

              <div class="form-group row">
                  <label for="category" class="col-sm-2 col-form-label mmfont"> Township  </label>
                  <div class="col-sm-10">
                    <select name="township_id" class="custom-select">
                        @foreach($roomtownship as $row)
                        <option value="{{$row->id}}">{{$row->name}}</option>
                        @endforeach
                      </select>
                          @error('township_id')
                          <div class=" alert alert-danger">
                            <ul>
                              <li>{{ $message }}</li>
                            </ul>
                          </div>
                      @enderror
              </div>
            </div>


            <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> Size </label>
                  <div class="col-sm-10">
                        <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="" name="size" value="{{ old('size') }}">
                       @error('price')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>

                    <div class="form-group row">
                  <label for="photo" class="col-sm-2 col-form-label mmfont"> Capacity </label>
                  <div class="col-sm-10">
                        <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="" name="capacity" value="{{ old('capacity') }}">
                       @error('price')
                        <div class=" alert alert-danger">
                          <ul>
                            <li>{{ $message }}</li>
                          </ul>
                        </div>
                    @enderror
                      </div>
                    </div>


              <!-- <div class="form-group row">

                  <label class="col-sm-2 col-form-label mmfont"> Service Id </label>
               
                  
                  <div class="col-sm-10">
                    
                   <select class="js-example-basic-multiple form-control" name="services[]" multiple="multiple">
                      @foreach($service as $subject)
                      <option value="{{$subject->id}}">{{$subject->name}}</option>
                      @endforeach
                    </select>
                    
                  </div>
                  
              </div> -->


              

              <div class="form-group row">
                <div class="offset-2 col-sm-10">
                  
                      <button type="submit" class="btn btn-outline-primary btn-sm">
                        <i class="fas fa-save"></i> Save
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