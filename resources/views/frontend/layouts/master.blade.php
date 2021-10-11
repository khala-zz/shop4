<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
     <meta name="keywords" content="shop online" />
    <meta name="description" content="khala chuyen shop online">
    <meta name="author" content="khala">
    <!-- dung cho ajax token -->
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    @yield('title')
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon/favicon.png" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800&amp;display=swap" rel="stylesheet" />

    

    <link href="{{ asset('css/vendor/plugins.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/responsive.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/khala.css') }}" rel="stylesheet">
    @yield('css')
</head>

<body class="home-5 home-6 home-8 home-9 home-furniture">

   <!-- main layout start from here -->
        <!--====== PRELOADER PART START ======-->

        <!-- <div id="preloader">
        <div class="preloader">
            <span></span>
            <span></span>
        </div>
    </div> -->

        <!--====== PRELOADER PART ENDS ======-->
        <div id="main">
            <!-- Header Start -->
            @include('frontend.components.header')
            <!-- Header End -->
            <!-- content -->
            @yield('content')
            <!-- end content -->
            @include('frontend.components.footer')
            <!--  Footer Area End -->
        </div>

        
         <!-- Modal -->
        @include('frontend.components.modal')
        <!-- Modal end -->
    <!--====== Vendors js ======-->
    <script src="{{ asset('js/vendor/jquery-3.5.1.min.js') }}"></script>
    <script src=" {{ asset('js/vendor/modernizr-3.7.1.min.js') }} "></script>
       
        
    <!--====== Plugins js ======-->
    <!-- <script src="assets/js/plugins/bootstrap.min.js"></script>
    <script src="assets/js/plugins/popper.min.js"></script>
    <script src="assets/js/plugins/meanmenu.js"></script>
    <script src="assets/js/plugins/owl-carousel.js"></script>
    <script src="assets/js/plugins/jquery.nice-select.js"></script>
    <script src="assets/js/plugins/countdown.js"></script>
    <script src="assets/js/plugins/elevateZoom.js"></script>
    <script src="assets/js/plugins/jquery-ui.min.js"></script>
    <script src="assets/js/plugins/slick.js"></script>
    <script src="assets/js/plugins/scrollup.js"></script>
    <script src="assets/js/plugins/range-script.js"></script> -->

    <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->        
    <script src="{{ asset('js/khala.js') }}"></script>
    <script src="{{ asset('js/plugins.min.js') }}"></script>
    <!-- Main Activation JS -->
    <script src="{{ asset('js/main.js') }}"></script>
    
    
    @yield('js')
    
<!--   Loading Icon add to cart -->
    <div class="ss-loading" style="display: none;"></div>
   
</body>
</html>