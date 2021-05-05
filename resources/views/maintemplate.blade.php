<!DOCTYPE html>
<html>
<head>
  <title>Quiet Place</title>

  
  <!-- Bootstrap Css -->
  <link rel="stylesheet" type="text/css" href="{{asset('design/css/bootstrap.min.css')}}">


  <!-- JQuery -->
  <script type="text/javascript" src="{{asset('design/js/jquery.min.js')}}"></script>

  <!-- Bootstrap JS -->
  <script type="text/javascript" src="{{asset('design/js/bootstrap.bundle.min.js')}}"></script>
  <link rel="stylesheet" type="text/css" href="{{asset('design/font.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('design/style.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('design/fontawesome/css/all.min.css')}}">
  <script type="text/javascript" src="{{asset('design/custom.js')}}"></script>
  <script type="text/javascript">

    $(document).ready(function(){
      $(window).scroll(function () {
        if ($(this).scrollTop() > 500) {
          $('#back-to-top').fadeIn();
        } else {
          $('#back-to-top').fadeOut();
        }
      });
    // scroll body to 0px on click
    $('#back-to-top').click(function () {
      $('body,html').animate({
        scrollTop: 0
      }, 400);
      return false;
    });
  });   
</script>
<!-- start-smoth-scrolling -->
<script src="{{asset('design/js/SmoothScroll.min.js')}}"></script>
<script type="text/javascript" src="{{asset('design/js/move-top.js')}}"></script>
<script type="text/javascript" src="{{asset('design/js/easing.js')}}"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $(".scroll").click(function(event){   
      event.preventDefault();
      $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
    });
  });
</script>
<!-- here stars scrolling icon -->

    <!-- //here ends scrolling icon -->
    <!-- start-smoth-scrolling -->
  
</head>
  <body>





<span id="home">
    <div id="banner">
      <nav class="navbar navbar-expand-lg navbar-light navbar-primary fixed-top navbardefault" style="background: #B7D8D6;">
        <div class="container">
          <span class="logofont">Quiet Place</span>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link scroll" href="#home">Home <span class="sr-only">(current)</span></a>
              </li>
               <li class="nav-item active">
                <a class="nav-link scroll" href="#about">About</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link scroll" href="#room">Rooms</a>
              </li>
             
              <li class="nav-item active">
                <a class="nav-link scroll" href="#contact">Contact</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="login">Login | Register</a>
              </li>
              
            </ul>
          </div>
        </div>
      </nav>





       






      <div class="container" style="padding-top: 200px">
        <div class="row justify-content-center">
          <div class="col-lg-10">
            <h1 class="text-white display-3 navtitle text-center">Welcome to our Quiet Place...</h1>
            
          </div>

          
        </div>
      </div>
    </div>
  </span>

    <!-- about-->
    <section class="wthree-row py-5" id="about">
      <div class="container py-lg-5">
        <div class="row about-main">
          <div class="col-lg-6 about-right">
            <img src="{{asset('design/image/g12.jpg')}}" class="img-fluid" alt="" />
          </div>
          <div class="col-lg-6 about-text-grid text-left">
            <div class="title-desc">
              <h3 class="main-title-w3pvt text-capitalize">Come Visit us To Enjoy Yourself</h3>
            </div>
            <p class="my-sm-4 mt-2 mb-4">A place of modern oasis for youths and students.Our aim is to fulfill the satisfaction and comfort of people,looking for a place to study and chill with peace and quietness.</p>
            <a href="about" class="btn submit btn-dark mt-sm-5 mt-2" style="background: #B7D8D6;color: black;">Read More</a>
          </div>
        </div>
      </div>
    </section>
    <!-- //about -->



    <div id="counter">
      <div class="container p-5">
        <div class="row">
          <div class="col-lg-4 col-md-12 col-sm-12">
            <h1>30</h1>
            <p>Best Reviews</p>
          </div>

          <div class="col-lg-4 col-md-12 col-sm-12">
            <h1>23</h1>
            <p>Rooms</p>
          </div>

          <div class="col-lg-4 col-md-12 col-sm-12">
            <h1>4</h1>
            <p>Team Member</p>
          </div>
        </div>
      </div>
    </div>  


    

    <div class="jumbotron" id="room">
      <h1 class="text-center pt-3 pb-3">Rooms</h1>
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-12 col-sm-12 p-3 ">
            <div class="card">
              <img src="{{asset('design/image/s3.jpg')}}" class="card-img-top">
              <div class="card-body">
                <h3 class="card-title">Single Room</h3>
                <p class="card-text">2,000 MMK</p>
                <ul class="style-lists">
                  <li class="text-dark">Only 10 rooms are available </li>
                  <li class="text-dark">wifi included </li>
                  <li class="text-dark">Price does not include VAT & services fee </li>
                </ul>
                <a href="book" class="btn submit btn-dark mt-2" style="background: #B7D8D6;color: black;">Book Now</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-12 col-sm-12 p-3 ">
            <div class="card">
              <img src="{{asset('design/image/s1.jpg')}}" class="card-img-top">
              <div class="card-body">
                <h3 class="card-title">Double Room</h3>
                <p class="card-text">2000 MMK</p>
                <ul class="style-lists">
                  <li class="text-dark">Only 8 rooms are available </li>
                  <li class="text-dark">wifi included </li>
                  <li class="text-dark">Price does not include VAT & services fee </li>
                </ul>
                <a href="book" class="btn submit btn-dark mt-2" style="background: #B7D8D6;color: black;">Book Now</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-12 col-sm-12 p-3">
            <div class="card">
              <img src="{{asset('design/image/g15.jpg')}}" class="card-img-top">
              <div class="card-body">
                <h3 class="card-title">Group Room</h3>
                <p class="card-text">5,000 MMK</p>
                <ul class="style-lists">
                  <li class="text-dark">Only 5 rooms are available </li>
                  <li class="text-dark">Projector and wifi included </li>
                  <li class="text-dark">Price does not include VAT & services fee </li>
                </ul>
                <a href="book" class="btn submit btn-dark mt-2" style="background: #B7D8D6;color: black;">Book Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <!-- contact page -->
    <div class="address" id="contact">
      <div class="container py-xl-5 py-lg-3">
        <div class="title text-center mb-5">
          <h2 class="text-dark mb-2">Contact Us</h2>
          <p>Want to get in touch?We'd love to hear from you.Here how you can reach us...</p>
        </div>
        <div class="row address-row">
          <div class="col-lg-6 address-right">
            <div class="address-info wow fadeInRight animated" data-wow-delay=".5s">
              <h4 class="font-weight-bold mb-3">Address</h4>
              <p>No.39,Pwal Sar Street,Kyimyindine Township,Yangon.</p>
            </div>
            <div class="address-info address-mdl wow fadeInRight animated" data-wow-delay=".7s">
              <h4 class="font-weight-bold mb-3">Phone </h4>
              <p>+959 421099378</p>
              <p>+959 421099377</p>
            </div>
            <div class="address-info agileits-info wow fadeInRight animated" data-wow-delay=".6s">
              <h4 class="font-weight-bold mb-3">Mail</h4>
              <p>
                <a href="mailto:http://www.gmail.com/" style="color: black;"> quietplace@gmail.com</a>
              </p>
              <p>
                <a href="mailto:http://www.gmail.com/" style="color: black;"> quietplace2@gmail.com</a>
              </p>
            </div>
          </div>
          <div class="col-lg-6 address-left mt-lg-0 mt-5">
            <div class="address-grid">
              <h4 class="font-weight-bold mb-3">Get In Touch</h4>
              <form action="#" method="post">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Name" name="name" required="">
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Email" name="email" required="">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control " placeholder="Subject" name="subject" required="">
                </div>
                <div class="form-group">
                  <textarea placeholder="Message" class="form-control" required=""></textarea>
                </div>
                <input type="submit" class="btn submit btn-dark" value="SEND" style="background: #B7D8D6;color: black;">
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- map -->
    <div class="map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3819.4349542060286!2d96.12171401429798!3d16.804764888430203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1eb3b94d02e73%3A0x26b9e09b7915c2ab!2sPwal%20Sarr%20St%2C%20Yangon!5e0!3m2!1sen!2smm!4v1579592541627!5m2!1sen!2smm" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    </div>
    <!--// map -->
    <!-- //contact page -->

    <!-- Modal -->
    

    <footer>
      <div class="primary1">
        <div class="container">


          <div class="row pt-5">
            <div class="col-lg-3 col-md-6 col-sm-12 text-left">

             <h5>Partner With Us</h5>
             <img src="{{asset('design/image/visa2.png')}}" width="45" height="45">
             <img src="{{asset('design/image/paypal.png')}}" width="25" height="25">
             <img src="{{asset('design/image/master.png')}}" width="50" height="50">
             <img src="{{asset('design/image/ali2.png')}}" width="35" height="35">


           </div>
           <div class="col-lg-3 col-md-6 col-sm-12 text-left">

            <h5>Get In Touch</h5>
            <span>Support</span><br>
            <span>Accessibility</span><br>
            <span>Returns</span><br>
            <span>General</span><br>
            <span>Media</span>


          </div>
          <div class="col-lg-3 col-md-6 col-sm-12 text-left">


            <h5>About</h5>
            <span>Careers</span><br>
            <span>About Us</span><br>
            <span>Quiet Place</span><br>
            <span>Gifts</span><br>


          </div>
          <div class="col-lg-3 col-md-6 col-sm-12 text-left">

            <h5>Have A Questions</h5>

            <span>For Business</span><br>
            <span>Retailers</span><br>
            <span>Brands</span><br>
            <span>Datas</span><br>
            <span>Become An Affiliate</span><br>




          </div>
          <div class="col-lg-12 text-center">
            <p class="team">Design By | @Team Astro</p>
            <span class="social">
              <a href="https://www.facebook.com/"><img src="{{asset('design/image/fblogo.png')}}" width="21" height="21"></a>
              <a href="https://www.facebook.com/"><img src="{{asset('design/image/iglogo.png')}}" width="30" height="30"></a>
              <a href="https://www.facebook.com/"><img src="{{asset('design/image/ttlogo.png')}}" width="28" height="28"></a>
            </span>
            <div>    
            </div>
          </div>
        </div>

      </footer>

  <div class="scroll-to-top position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded bg-secondary" href="#page-top" >
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>



    </body>
    </html>
