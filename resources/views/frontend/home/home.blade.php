@extends('frontend.layouts.master')
	@section('title')
		<title>Trang chủ</title>
	@endsection
	
    @section('js')
       
        <script type="text/javascript">
            //dung cho ajax review
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        </script>
    @endsection
	

	@section('content')
	  <!-- Slider Arae Start -->
            @include('frontend.home.components.slider')
            <!-- Slider Arae End -->
            <!-- Category Area Start -->
             <!-- hien thi thong bao -->
            @if(Session::has('flash_message_success'))
                <div class="alert alert-success alert-dark alert-round alert-inline">
                    <h4 class="alert-title">Thành công :</h4>
                    {!! session('flash_message_success')!!}
                    <button type="button" class="btn btn-link btn-close">
                        <i class="d-icon-times"></i>
                    </button>
                </div>
            @endif
            @if(Session::has('flash_message_error'))
                <div class="alert alert-dark alert-danger alert-round alert-inline">
                    
                    {!! session('flash_message_error')!!}
                    <button type="button" class="btn btn-link btn-close">
                        <i class="d-icon-times"></i>
                    </button>
                </div>
            @endif
            @include('frontend.home.components.categories')
            <!-- Category Area End  -->
            <!-- Banner Area Start -->
            @include('frontend.home.components.banner')
            <!-- Banner Area End -->
            <!-- Recent Add Product Area Start -->
            @include('frontend.home.components.new_arrivals')
            <!-- Recent product area end -->
            <!-- Blog area Start -->
            @include('frontend.home.components.blog')
            <!-- Blog Area End -->
            <!-- Brand area start -->
            @include('frontend.home.components.brand')
            <!-- Brand area end -->
            <!-- Category Product  Area start-->
            @include('frontend.home.components.list_product')
            <!-- Category Product  Area end-->
            <!-- Footer Area start -->
        </main>
	
	

	@endsection


