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

<!-- @if(session('message'))
    
                            <div class="alert alert-info alert-sm" role="alert">
  <p class="text-dark">{{session('message')}}</p>
</div>



   
                                
                            @endif -->


  
    <!-- Header Area End -->

    <!-- Welcome Area Start -->
    <section class="welcome-area">
        <!-- @if(session('message'))
                                <p class="text-success">{{session('message')}}</p>
                            @endif -->
     <!-- Single Welcome Slide -->
     <div class="single-welcome-slide bg-img bg-overlay" style="background-image: url({{asset('design/img/bg-img/ba9.jpg')}});" data-img-url="{{asset('design/img/bg-img/16.jpg')}}">
        <!-- Welcome Content -->
        <div class="welcome-content h-100">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <!-- Welcome Text -->
                    <div class="col-12">
                        <div class="welcome-text">
                             
                            <h3>Welcome To Quiet Place</h3>
                        </div>

                        <div class="hotel-search-form-area">
                            <div class="container-fluid">
                                <div class="hotel-search-form">
                                    <form action="{{route('frontend_room')}}" method="post">
                                        @csrf
                                        <div class="row justify-content-between align-items-end">
                                            <div class="col-6 col-sm-6 col-md-6 col-lg-3">
                                                <label for="township">Township</label>
                                                <select name="township" id="township" class="form-control">
                                                 @foreach($township as $row)
                                                      <option value="{{$row->id}}">{{$row->name}}</option>
                                                      @endforeach
                                                </select>
                                            </div>
                                            <div class="col-6 col-sm-6 col-md-6 col-lg-3">
                                                <label for="room">Room Type</label>
                                                <select name="roomtype" id="room" class="form-control">
                                                    @foreach($roomtype as $row)
                                                      <option value="{{$row->id}}">{{$row->name}}</option>
                                                      @endforeach
                                                </select>
                                            </div>

                                            <div class="col-12 col-sm-12 col-md-12 col-lg-3">
                                            <label for="bdate">Booking Date</label>
                                            <input type="date" class="form-control" id="bdate" name="bdate">
                                        </div>


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
    </div>
</section>
<!-- Welcome Area End -->


<!--/ab -->
    <section class="about ">
        <div class="container">
            <div class="inner-sec-w3pvt py-lg-5 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3 px-lg-5">Let's Book The Room With Us. </h3>
                <div class="feature-grids row mt-3 mb-lg-5 mb-3 mt-lg-5 text-center">
                    <div class="col-lg-3" data-aos="fade-up">
                        <div class="bottom-gd px-3">
                            <span class="fa fa-clock-o" aria-hidden="true"></span>
                            <h3 class="my-2"> Instant Booking</h3>
                            <p>Book your room in less than 5 min. Instant confirmation after payment.</p>
                            <i class="far fa-clock"></i>
                        </div>
                    </div>
                    <div class="col-lg-3" data-aos="fade-up">
                        <div class="bottom-gd px-3">
                            <span class="fa fa-building" aria-hidden="true"></span>
                            <h3 class="my-2"> Rooms</h3>
                            <p>At quiet place,you can find suitable rooms for your business.</p>
                        </div>
                    </div>
                    <div class="col-lg-3" data-aos="fade-up">
                        <div class="bottom-gd2-active px-3">
                            <span class="fa fa-shield" aria-hidden="true"></span>
                            <h3 class="my-2"> Secure Payment</h3>
                            <p>Pay with VISA, MASTER, Paypal, Ali.</p>
                        </div>
                    </div>
                    <div class="col-lg-3" data-aos="fade-up">
                        <div class="bottom-gd px-3">
                            <span class="fa fa-question" aria-hidden="true"></span>
                            <h3 class="my-2">Help 24/7</h3>
                            <p>Our support center is available 24/7 for your questions and concerns.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- //services -->
    </section>
    <!-- //ab -->

    <section class="about pb-5">
    <div class="container">
        <div class="inner-sec-w3pvt">
            <h3 class="tittle text-center mb-lg-5 mb-3 px-lg-5">Popular Rooms</h3>
        <div class="row">
            <div class="col-lg-3 col-md-6 p-3">
                <div class="card">
                    <img src="{{asset('design/img/bg-img/ee.jpg')}}" class="card-img-top">
                    <div class="card-footer">
                        <h6 class="text-center">Class Room</h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 p-3">
                <div class="card">
                    <img src="{{asset('design/img/bg-img/eventmore.jpg')}}" class="card-img-top">
                    <div class="card-footer">
                        <h6 class="text-center">Event Room</h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 p-3">
                <div class="card">
                    <img src="{{asset('design/img/bg-img/classmore2.jpg')}}" class="card-img-top">
                    <div class="card-footer">
                        <h6 class="text-center">Class Room</h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 p-3">
                <div class="card">
                    <img src="{{asset('design/img/bg-img/emeet3.jpg')}}" class="card-img-top">
                    <div class="card-footer">
                        <h6 class="text-center">Meeting Room</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

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



