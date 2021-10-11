@extends('frontend.layouts.master')
	@section('title')
		<title>Liên hệ</title>
	@endsection

	@section('content')

        <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Liên hệ</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                    <li>Liên hệ</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- contact area start -->
            <div class="contact-area mtb-60px">
                <div class="container">
                    <div class="contact-map mb-10">
                        <div class="grey-section google-map" id="googlemaps" style="height: 386px"></div>
                    </div>
                    <div class="custom-row-2">
                        <div class="col-lg-4 col-md-5">
                            <div class="contact-info-wrap">
                                <div class="single-contact-info">
                                    <div class="contact-icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <div class="contact-info-dec">
                                        <p>0909090909</p>
                                        <p>0808080808</p>
                                    </div>
                                </div>
                                <div class="single-contact-info">
                                    <div class="contact-icon">
                                        <i class="fa fa-globe"></i>
                                    </div>
                                    <div class="contact-info-dec">
                                        <p><a href="#">dokhaclam@gmail.com</a></p>
                                        <p><a href="#">khala.com</a></p>
                                    </div>
                                </div>
                                <div class="single-contact-info">
                                    <div class="contact-icon">
                                        <i class="fa fa-map-marker"></i>
                                    </div>
                                    <div class="contact-info-dec">
                                        <p>346 Mã Lò </p>
                                        <p>BTĐ A, Bình Tân.</p>
                                    </div>
                                </div>
                                <div class="contact-social">
                                    <h3>Theo dõi chúng tôi</h3>
                                    <div class="social-info">
                                        <ul>
                                            <li>
                                                <a href="#"><i class="ion-social-facebook"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="ion-social-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="ion-social-youtube"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="ion-social-google"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="ion-social-instagram"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-7">
                            <div class="contact-form">
                                <div class="contact-title mb-30">
                                    <h2>Liên hệ</h2>
                                </div>
                                <form class="contact-form-style" id="contact-form" action="{{route('contact.store')}}" method="post">
                                    @csrf
                                    
                                         <!-- hien thi thong bao -->
                                        @if(Session::has('flash_message_success'))
                                            <div class="alert alert-success alert-dark alert-round alert-inline">
                                                <h4 class="alert-title">Thành công :</h4>
                                                {!! session('flash_message_success')!!}
                                                
                                            </div>
                                        @endif
                                        <!-- end hien thi thong bao -->
                                    
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <input class="{{ $errors->has('name') ? 'error' : '' }}" name="name" placeholder="Tên*" type="text" required/>
                                            <!-- Error -->
                                            @if ($errors->has('name'))
                                                <div class="error">
                                                    {{ $errors->first('name') }}
                                                </div>
                                            @endif
                                        </div>
                                        <div class="col-lg-6">
                                            <input class="{{ $errors->has('email') ? 'error' : '' }}" name="email" placeholder="Email*" type="email" required />
                                            <!-- error -->
                                            @if ($errors->has('email'))
                                                <div class="error">
                                                    {{ $errors->first('email') }}
                                                </div>
                                            @endif
                                        </div>
                                        <div class="col-lg-12">
                                            <input class="{{ $errors->has('mobile') ? 'error' : '' }}" name="mobile" type="text" placeholder="Điện thoại *" required />
                                            <!-- Error -->
                                            @if ($errors->has('mobile'))
                                                <div class="error">
                                                    {{ $errors->first('mobile') }}
                                                </div>
                                            @endif
                                        </div>
                                        <div class="col-lg-12">
                                            <textarea class="{{ $errors->has('message') ? 'error' : '' }}" required
                                                placeholder="Nội dung *" name="message"></textarea>
                                                <!-- error -->
                                                @if ($errors->has('message'))
                                                    <div class="error">
                                                        {{ $errors->first('message') }}
                                                    </div>
                                                @endif
                                            <button class="submit" type="submit">Gửi</button>
                                        </div>
                                        
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div> 

	@endsection

	@section('js')
    <script src="{{ asset('js/jquery-gmap/jquery.gmap.min.js') }}"></script>
    <!-- nhap key khi dua len host -->
    <script src="https://maps.googleapis.com/maps/api/js?key="></script>
    <script>

        /*
        Map Settings

            Find the Latitude and Longitude of your address:
                - https://www.latlong.net/
                - http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude/

        */

        // Map Markers
        var mapMarkers = [{
            address: "346 Mã Lò Phường Bình Trị Đông A,Quận Bình Tân,TPHCM",
            html: "<strong>Văn phòng chính</strong><br>346 Mã Lò Bình Trị Đông A,Bình Tân,TPHCM",
            popup: true
        }];

        // Map Initial Location
        var initLatitude = 10.775430;
        var initLongitude = 106.601280;

        // Map Extended Settings
        var mapSettings = {
            controls: {
                //draggable: !window.Donald.isMobile,
                draggable: !window.isMobile,
                panControl: true,
                zoomControl: true,
                mapTypeControl: true,
                scaleControl: true,
                streetViewControl: true,
                overviewMapControl: true
            },
            scrollwheel: false,
            markers: mapMarkers,
            latitude: initLatitude,
            longitude: initLongitude,
            zoom: 11
        };

        var map = $('#googlemaps').gMap(mapSettings);

        // Map text-center At
        var mapCenterAt = function (options, e) {
            e.preventDefault();
            $('#googlemaps').gMap("centerAt", options);
        }

    </script>
    @endsection


	