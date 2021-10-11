@extends('frontend.layouts.master')
	@section('title')
		<title>{{$category -> title}}</title>
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
	<!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">{{$category -> title}}</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="{{url('/')}}">Trang chủ</a></li>
                                  
                                    <li>{{$category -> title}}</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- Shop Category Area End -->
            <div class="shop-category-area">
                <div class="container">
                    <div class="row">
                        <!-- cot phai list product -->
                        @include('frontend.category.right_shop')
                        <!-- Sidebar Area Start -->
                       	@include('frontend.category.filter_shop')
                        <!-- Sidebar Area End -->
                    </div>
                </div>
            </div>
            <!-- Shop Category Area End -->
		</main>
	
	

	@endsection

	
	