@extends('frontend_template')
@section('content')

<body>
  <!-- Preloader -->
  <div id="preloader">
    <div class="loader"></div>
  </div>
  <!-- /Preloader -->

  <!-- Header Area Start -->
  <header class="header-area">


    <!-- Main Header Start -->
    <div class="main-header-area">
      <div class="classy-nav-container breakpoint-off">
        <div class="container">
          <!-- Classy Menu -->
          <nav class="classy-navbar justify-content-between" id="robertoNav">

            <!-- Logo -->
             <a class="nav-brand" href="/"><!-- <img src="./img/core-img/logo.png" alt=""> --><span class="logofont">Quiet Place</span></a>
            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
              <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>

            <input type="hidden" name="" id="room_id" value="{{$room->id}}">

            <!-- Menu -->
            <div class="classy-menu">
              <!-- Menu Close Button -->
              <div class="classycloseIcon">
                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
              </div>
              <!-- Nav Start -->
              <div class="classynav">
                                <ul id="nav">
                                    <li class="active"><a href="/">Home</a></li>
                                    
                                    <li><a href="/contact">Contact</a></li>
                                </ul>
                            </div>
              <!-- Nav End -->
            </div>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- Header Area End -->

  
      <!-- Breadcrumb Area End -->

 <form method="post" action="{{route('book.store')}}" class="m-5" enctype="multipart/form-data">
              @csrf
     <section class="ftco-section">

        <div class="container">
          
          <div class="row">
            <div class="col-lg-8">
             <div class="row">
              <div class="col-md-12 ftco-animate">
               <div class="about-right">

                <img src="{{asset($room->photo)}}" class="img-fluid" alt="" />
              </div>
              <h2 class="mb-4 mt-3 d-inline">{{$room->roomtype->name}}</h2>
             <!--  <a href="#" class="btn roberto-btn float-lg-right mt-1 mb-50" data-toggle="modal" data-target="#exampleModalLong">Book</a> -->
              <!-- Modal -->
              <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">

               


                <div class="modal-dialog" role="document">

                  

                  <div class="modal-content">
                    <img src="{{asset($room->photo)}}" class="img-fluid" alt="" width="500">
                    <div class="modal-body">
                      <h2 class="text-center">Booking Form</h2>
                      <form>
                        <div class="form-group">
                          <label for="room">Room Type</label>
                          <input type="text" class="form-control" id="room" value="{{$room->roomtype->name}}" readonly="readonly">
                        </div>
                        <div class="form-group">
                          <label for="room">Township</label>
                          <input type="text" class="form-control" id="room" value="{{$room->township->name}}" readonly="readonly">
                        </div>
                        <div class="form-group">
                          <label for="date">Booking Date</label>
                          <input type="date" class="form-control" id="date" name="bdate" value="{{$bookdate}}" readonly="readonly">
                        </div>
                        <div class="form-group">
                          <label for="time">Booking Time</label>
                          <input type="text" class="form-control btime" readonly="readonly">
                        </div>
                        <div class="form-group">
                          <label for="name">User Name</label>
                          <input type="text" class="form-control name" id="name" name="uname" required="required">
                        </div>
                        <div class="form-group">
                          <label for="email">Email address</label>
                          <input type="email" class="form-control email" id="email" aria-describedby="emailHelp" name="email" required="required">
                          <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                          <label for="phone">Phone Number</label>
                          <input type="phone" class="form-control phone" id="phone" name="phone" required="required">
                        </div>
                        <div class="form-group">
                          <label for="room">Address</label>
                          <textarea class="form-control addressbox" id="exampleFormControlTextarea1" rows="3" name="address" required="required">{{ old('address') }}</textarea>
                        </div>
                        <div class="form-group">
                         <!--  <label for="room">Room Id</label> -->
                          <input type="hidden" class="form-control" id="room" value="{{$room->id}}" readonly="readonly" name="room_id">
                        </div>
                        
                      
                    </div>
                    <div class="modal-footer justify-content-center">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="submit" class="btn" style="background: #1cc3b2;color: white;" id="bookshow">Book</button>
                    </div>
                  </div>
                
                </div>

                
              </div>
              <hr>
            </div>
            <div class="col-md-12 room-single mt-2 mb-5 ftco-animate">
              <h4>Accommodates</h4>
              <div class="d-md-flex mt-4 mb-5">
                <div class="row">
                  <div class="col-lg-6 p-3">
                  <span class="fa fa-users" aria-hidden="true"></span>&nbsp&nbsp<span>Maximum total:</span> {{$room->capacity}} Persons</div>
                  <div class="col-lg-6 p-3">
                  <span class="fa fa-building" aria-hidden="true"></span>&nbsp&nbsp<span>Size:</span> {{$room->size}} ft
                  </div>
                  @foreach($room->services as $room_s)
                  <div class="col-lg-6 p-3">
                    
               <img src="{{asset($room_s->s_photo)}}" alt="" width="22  " height="22"> {{$room_s->name}}
               
                  </div>
                  @endforeach
                  </div>
               
                
              </div>
              <hr>
              <h4>About this place</h4>
              <p>{{$room->description}}</p>
            </div>

          </div>
        </div><!-- .col-md-8 -->
        <div class="col-12 col-lg-4 order-2">
          
          <div class="hotel-reservation--area mb-100">
           <div class="sidebar-wrap bg-light ftco-animate">
           <!--  <h3 class="heading mb-4">Booking Date</h3>
                                            <input type="date" class="form-control" id="date" name="bdate" value="{{$bookdate}}"><br> -->
                                            
            <h3 class="heading mb-4">Time</h3>
            <!-- <form method="post" class="star-rating"> -->
              <div class="form-check">
                <input type="radio" class="form-check-input" id="time1" name="btime" value="9 am - 12 pm">
                <label class="form-check-label" for="time1">
                  <p class="rate"><span>9 am - 12 pm</span></p>
                </label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" id="time2" name="btime" value="12 pm - 3 pm">
                <label class="form-check-label" for="time2">
                 <p class="rate"><span>12 pm - 3 pm</span></p>
               </label>
             </div>
             <div class="form-check">
              <input type="radio" class="form-check-input" id="time3" name="btime" value="3 pm - 6 pm">
              <label class="form-check-label" for="time3">
                <p class="rate"><span>3 pm - 6 pm</span></p>
              </label>
            </div>
          
        </div>


        <div class="sidebar-wrap bg-light ftco-animate">
        <div class="panel panel-default">
          <div class="panel-heading text-center">
            <h3>Booking Information</h3>
          </div>
          <div class="panel-body">
            <table class="table table-striped table-sm">
              <tbody>
                <tr class="d-flex">
                  <td class="col-4 text-myp">
                    Agent Name
                  </td>
                  <td class="col-8 text-myp">
                    Quiet Place
                  </td>
                </tr>

                <tr class="d-flex">
                  <td class="col-4 text-my">
                    Room Type
                  </td>
                  <td class="col-8 text-my">

                    {{$room->roomtype->name}}

                  </td>
                </tr>
                <tr class="d-flex">
                  <td class="col-5 text-my">
                    Township
                  </td>
                  <td class="col-7">
                    {{$room->township->name}}
                  </td>
                </tr>
                <tr class="d-flex">
                  <td class="col-4 text-my">
                   Date
                  </td>
                  <td class="col-8">
                    {{$bookdate}}
                  </td>
                </tr>
                <tr class="d-flex">
                  <td class="col-4 text-my">
                    Time
                  </td>
                  <td class="col-8">
                    <span class="btimed"></span>
                  </td>
                </tr>
                 <tr class="d-flex">
                  <td class="col-4 text-my">
                   Total Cost
                  </td>
                  <td class="col-8">
                    {{$room->price}} MMK
                  </td>
                </tr>
              </tbody>
            </table>
            <hr/>

            <!-- <h3 class="text-my text-muted text-center">Please select 3 Rooms.</h3> -->

            <h1 id="selectedSeatNumbers" class="text-primary text-center">
            </h1>



            <!-- <form action="" method="GET" class="form"> -->


             
<button type="button" class="btn roberto-btn btn-block checkout">Checkout</button>
<!-- </form> -->

</div>
</div>
</div>

            </div>


        </div>

    </div>
</div>

        
        
      </div>
    </div>
  </div>
</div>
</section>
</form>  <!-- .section -->






<div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">

               


                <div class="modal-dialog" role="document">

                  

                  <div class="modal-content">
                    <div class="modal-header" style="background: #1cc3b2;color: white;">
                      Warning!
                    </div>
                    
                    <div class="modal-body">
                      <h3 class="text-center text-danger">Please Select Time!. Thank You.</h3>
                      
                        
                      
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger roberto-btn" data-dismiss="modal" name="ok">Ok</button>
                      <!-- <button type="submit" class="btn" style="background: #1cc3b2;color: white;">Book</button> -->
                    </div>
                  </div>
                
                </div>

                
              </div>







              <div class="modal fade" id="exampleModalLong2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">

               


                <div class="modal-dialog" role="document">

                  

                  <div class="modal-content">
                    <div class="modal-header roberto-btn">
                      Confirm Box
                    </div>
                    
                    <div class="modal-body">
                      <h3 class="text-center"  style="color: #1cc3b2;">Your Booking is Successfully!</h3>
                      
                        
                      
                    </div>
                    <!-- <div class="modal-footer">
                      <button type="button" class="btn btn-danger roberto-btn" data-dismiss="modal">Ok</button> -->
                      <!-- <button type="submit" class="btn" style="background: #1cc3b2;color: white;">Book</button> -->
                    <!-- </div> -->
                  </div>
                
                </div>

                
              </div>

<!-- Footer Area Start -->








@endsection

@section('script')
<script type="text/javascript">
  $(document).ready(function(){
   var time1= $('#time1').val();
   var time2= $('#time2').val();
   var time3= $('#time3').val();

   var id=$('#room_id').val();

   var date=$('#date').val();
   //console.log(id);

   
    $.get("{{url('getBookingByid')}}"+`/${id}`,function(response){
    $.each(response,function(i,v){
      console.log(v.time);

        if(time1==v.time && date==v.booking_date){
          $('#time1').prop('disabled',true);
        }

        if(time2==v.time && date==v.booking_date){
          $('#time2').prop('disabled',true);
        }

        if(time3==v.time && date==v.booking_date){
          $('#time3').prop('disabled',true);
        }
    })
   })
   

   


   $('.checkout').click(function()
   {
      // $('#exampleModalLong').modal('show');
      var radioValue = $(".form-check-input:checked").val();
      // alert(radioValue);
      if(radioValue)
      {
        $('.btime').val(radioValue);

        if(date==""){
          alert("hello");
        }
        else
        {
          // $('#date').click(function()
          $('#exampleModalLong').modal('show');
        }
      
      }
      else
      {
        // alert("Please Select Time!");
        $('#exampleModalLong1').modal('show');

      }
      
   })


   $('#bookshow').click(function()
   {
    var username=$('.name').val();
    var email=$('.email').val();
    var phone=$('.phone').val();
    var address=$('.addressbox').val();
    if(username=="" || email=="" || phone=="" || address=="")
    {

    }
    else
    {
      $('#exampleModalLong2').modal('show');
      $('#exampleModalLong').modal('hide');

    }
    
    
   })



   $('#time2').click(function()
   {
      // $('#exampleModalLong').modal('show');
      var radioValue = $(".form-check-input:checked").val();
      // alert(radioValue);
      $('.btimed').text(radioValue);
      // $('#exampleModalLong').modal('show');
   })
   $('#time3').click(function()
   {
      // $('#exampleModalLong').modal('show');
      var radioValue = $(".form-check-input:checked").val();
      // alert(radioValue);
      $('.btimed').text(radioValue);
      // $('#exampleModalLong').modal('show');
   })
   $('#time1').click(function()
   {
      // $('#exampleModalLong').modal('show');
      var radioValue = $(".form-check-input:checked").val();
      // alert(radioValue);
      $('.btimed').text(radioValue);
      // $('#exampleModalLong').modal('show');
   })

  })

</script>
@endsection