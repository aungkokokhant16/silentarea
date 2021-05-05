<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Title -->
    <title>Quiet Place</title>

    <!-- Favicon -->
    <link rel="icon" href="{{asset('design/img/core-img/meeting-room.png')}}">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="{{asset('design/style.css')}}">

</head>

<body>
  

@yield('content')

 <footer class="footer-area section-padding-80-0">
    <!-- Main Footer Area -->
    <div class="main-footer-area">
        <div class="container">
            <div class="row align-items-baseline justify-content-between">
                <!-- Single Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <h5 class="widget-title">Partner With Us</h5>
                        <img src="{{asset('design/img/bg-img/visa2.png')}}" width="45" height="45">
                        <img src="{{asset('design/img/bg-img/paypal.png')}}" width="25" height="25">
                        <img src="{{asset('design/img/bg-img/master.png')}}" width="50" height="50">
                        <img src="{{asset('design/img/bg-img/ali2.png')}}" width="35" height="35">
                    </div>
                </div>

                <!-- Single Footer Widget Area -->
                <div class="col-12 col-sm-4 col-lg-2">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h5 class="widget-title">Get In Touch</h5>

                        <!-- Footer Nav -->
                        <ul class="footer-nav">
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> Support</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> Accessibility</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> General</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> Media</a></li>
                        </ul>
                    </div>
                </div>


                <!-- Single Footer Widget Area -->
                <div class="col-12 col-sm-4 col-lg-2">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h5 class="widget-title">Links</h5>

                        <!-- Footer Nav -->
                        <ul class="footer-nav">
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> About Us</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> Our Room</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> Career</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> FAQs</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Single Footer Widget Area -->
                <div class="col-12 col-sm-8 col-lg-4">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h5 class="widget-title">Have a Questions?</h5>
                        <!-- Footer Nav -->
                        <ul class="footer-nav">
                            <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> 39,Pwal Sar Street,Kyimyindaing,Yangon</a></li>
                            <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i> +95 9421099378</a></li>
                            <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i> Quietplace@gmail.com</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Copywrite Area -->
    <div class="container">
        <div class="copywrite-content">
            <div class="row align-items-center">
                <div class="col-12 col-md-8">
                    <!-- Copywrite Text -->
                    <div class="copywrite-text">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | by <a href="#" target="_blank">Team Astro</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <!-- Social Info -->
                        <div class="social-info">
                            <a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="https://www.twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->

    <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="{{asset('design/js/jquery.min.js')}}"></script>
    <!-- Popper -->
    <script src="{{asset('design/js/popper.min.js')}}"></script>
    <!-- Bootstrap -->
    <script src="{{asset('design/js/bootstrap.min.js')}}"></script>
    <!-- All Plugins -->
    <script src="{{asset('design/js/roberto.bundle.js')}}"></script>
    <!-- Active -->
    <script src="{{asset('design/js/default-assets/active.js')}}"></script>

    @yield('script')

</body>

</html>