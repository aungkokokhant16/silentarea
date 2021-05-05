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
    
    <!-- Breadcrumb Area End -->
    <!-- Welcome Area Start -->
    <section class="welcome-area">
     <!-- Single Welcome Slide -->
     <!-- Welcome Content -->
     <div class="welcome-content h-100">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <!-- Welcome Text -->
                <div class="col-12">
                    <div class="hotel-search-form-area pt-3">
                        <div class="container-fluid">
                            <div class="hotel-search-form">
                                <form action="{{route('frontend_room')}}" method="post">
                                    @csrf
                                    <div class="row justify-content-between align-items-end">
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-3">
                                            <label for="township">Township</label>
                                            <select name="township" id="township" class="form-control">
                                                @foreach($township as $row)
                                                <option value="{{$row->id}}" <?php if($townships==$row->id) {?>selected <?php } ?>   >{{$row->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-3">
                                            <label for="room">Room Type</label>
                                            <select name="roomtype" id="room" class="form-control">
                                                @foreach($roomtype as $row)
                                                <option value="{{$row->id}}" <?php if($roomtypes==$row->id) {?>selected <?php } ?> >{{$row->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-3">
                                            <label for="bdate">Booking Date</label>
                                            <input type="date" class="form-control" id="bdate" name="bdate" value="{{$bookdate}}" >
                                        </div>
                                        <!-- <div class="col-6 col-md-2 col-lg-2">
                                            <label for="time">Time</label>
                                            <select name="time" id="time" class="form-control">
                                                <option value="9am-12am">9am-12am</option>
                                                <option value="12am-3pm">12am-3pm</option>
                                                <option value="3pm-5pm">3pm-5pm</option>
                                            </select>
                                        </div> -->



                                        <div class="col-12 col-sm-12 col-md-12 col-lg-3">
                                            <button type="submit" class="form-control btn roberto-btn w-100">Search</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Welcome Area End -->

<!-- Rooms Area Start -->
<div class="roberto-rooms-area section-padding-100-0">
    <div class="container">
        <div class="row">
            @foreach($rooms as $row)
            <div class="col-12 col-lg-6">
                <!-- Single Room Area -->

                
                <div class="single-room-area d-flex align-items-center mb-50 wow fadeInUp" data-wow-delay="100ms">
                    <!-- Room Thumbnail -->
                    <div class="room-thumbnail">
                        <!-- <a href="{{route('frontend_viewdetail',$row->id)}}"> -->
                            <img src="{{asset($row->photo)}}" alt=""><!-- </a> -->
                    </div>
                    <!-- Room Content -->
                    <div class="room-content">
                        <h2>{{$row->roomtype->name}}</h2>
                        <h4>{{$row->price}} MMK <span>/ Period</span></h4>
                        <div class="room-feature">
                            <h6>Size: <span>{{$row->size}} ft</span></h6>
                            <h6>Capacity: <span>Max person {{$row->capacity}}</span></h6><br><br>
                            <h6>Township: <span>{{$row->township->name}}</span></h6>
                        </div>
                         <form method="get" action="{{route('frontend_viewdetail',$row->id)}}">
                            <input type="hidden" value="{{$bookdate}}" name="bookdate">
                        <button type="submit" class="btn view-detail-btn">View Details <i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                    </form>
                    </div>
                </div>
                

                <!-- Single Room Area -->
                

                <!-- Pagination -->
                
            </div>
            @endforeach
            
            </div>
        </div>
    </div>
    <!-- Rooms Area End -->

    <!-- Call To Action Area Start -->
    <section class="roberto-cta-area">
        <div class="container">
            <div class="cta-content bg-img bg-overlay jarallax" style="background-image: url({{asset('design/img/bg-img/c5.jpg')}});">
                <div class="row align-items-center">
                    <div class="col-12 col-md-7">
                        <div class="cta-text mb-50">
                            <h2>Contact us now!</h2>
                            <h6>Contact (+95) 9421099378 to book directly</h6>
                        </div>
                    </div>
                    <div class="col-12 col-md-5 text-right">
                        <a href="#" class="btn roberto-btn mb-50">Contact Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Call To Action Area End -->

    <!-- Footer Area Start -->
    @endsection