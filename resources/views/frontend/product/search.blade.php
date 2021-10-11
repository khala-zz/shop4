@extends('frontend.layouts.master')
	@section('title')
		<title>{{ $keyword }}</title>
	@endsection

	
    
	
	@section('content')
	 <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Tìm kiếm</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                    <li><a href="#">Từ khóa</a></li>
                                    <li>{{ $keyword }}</li>
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
                        <div class="col-lg-12 col-md-12">
                            <!-- Shop Top Area Start -->
                            <div class="shop-top-bar">
                                <!-- Left Side start -->
                                <div class="shop-tab nav mb-res-sm-15">
                                    
                                    <p>Hiển thị {{ $products->firstItem() }} đến {{ $products->lastItem() }} của tổng {{$products->total()}} sản phẩm</p>
                                </div>
                                <!-- Left Side End -->
                                <!-- Right Side Start -->
                                <div class="select-shoing-wrap">
                                    <div class="shot-product">
                                        <p>Sắp xếp:</p>
                                    </div>
                                    <div class="shop-select">
                                    	<form method ="get" action="{{url() -> current()}}">
	                                        <select name="orderby" class="form-control" onchange="this.form.submit()">
	                                            <option value="created_at" {{Request::get('orderby') == 'created_at'?'selected':''}}>Mới nhất</option>
						                        <option  value="title_tang" {{Request::get('orderby') == 'title_tang'?'selected':''}}>A đến Z</option>
						                        <option  value="title_giam" {{Request::get('orderby') == 'title_giam'?'selected':''}}> Z đến A</option>
	                                        </select>
	                                        <input type="hidden" name="search_product" value="{{Request::get('search_product')?Request::get('search_product') : ''}}">
                    						<input type="hidden" name="poscats" value="{{Request::get('poscats')?Request::get('poscats') : ''}}">
                                    	</form>
                                    </div>
                                </div>
                                <!-- Right Side End -->
                            </div>
                            <!-- Shop Top Area End -->

                            <!-- Shop Bottom Area Start -->
                            <div class="shop-bottom-area mt-35">
                                <!-- Shop Tab Content Start -->
                                <div class="tab-content jump">
                                    <!-- Tab One Start -->
                                   
                                    <!-- Tab One End -->
                                    <!-- Tab Two Start -->
                                    <div id="shop-2" class="tab-pane active">
                                    	@forelse($products as $product)
                                        	<div class="shop-list-wrap mb-30px scroll-zoom">
                                            <div class="row list-product m-0px">
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                                            <div class="left-img">
                                                                <div class="img-block">
                                                                    <a href="{{url('/san-pham/'.slugify($product  -> title,'-').'/'.$product ->  id)}}" class="thumbnail">
                                                                        <img class="first-img" src="{{asset('uploads/products-daidien/'.$product -> image)}}" alt="{{$product  -> title}}" />
                                                                       
                                                                    </a>
                                                                    <div class="quick-view">
                                                                        <a class="quick_view" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal">
                                                                            <i class="ion-ios-search-strong"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                @if(!empty($product -> new))
										                            <ul class="product-flag">
										                                <li class="new">Mới</li>
										                            </ul>
									                            @endif
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                            <div class="product-desc-wrap">
                                                                <div class="product-decs left-search-khala">
                                                                    <a class="inner-link" href="{{url('/danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id)}}"><span>{{$product -> category -> title}}</span></a>
                                                                    <h2><a href="{{url('/san-pham/'.slugify($product  -> title,'-').'/'.$product ->  id)}}" class="product-link">{{$product  -> title}}</a></h2>
                                                                    <div class="rating-product padding-left-start-khala">
	                                                                     <!-- hien thi rating -->
										                                    <?php 
											                                    $avg_rating = 0;
											                                    if($product -> pro_total_rating)
											                                    {
											                                                               // tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
											                                        $total_number = $product -> pro_total_number - 1;
											                                        $total_rating = $product -> pro_total_rating - 1 ;
											                                        if($total_number <> 0 && $total_rating <> 0){
											                                           $avg_rating = round($total_number/$total_rating,2);
											                                       }
											                                       
											                                   }
											                                   
											                                ?>

										                                   <span class="rating-stars selected" >
										                                    @for($i = 1; $i <= 5; $i++)
										                                    <a class="star-{{$i}} {{$i <= $avg_rating ? 'active':''}} ">{{$i}}</a>
										                                    @endfor
										                                    
										                                </span>
										                            </div>
									                                <!-- end hien thi rating -->
									                               
                                                                    <div class="pricing-meta">
                                                                        <ul>
											                                 <!-- hien thi gia -->
											                                 @if(!empty($product -> discount))
											                                 
												                                 <li class="old-price">{{formatMoney($product -> price)}}</li>
												                                 <li class="current-price">{{formatMoney($product -> price * (100 - $product -> discount)/100) }}</li>
												                                 
												                                 <li class="discount-price">-{{$product -> discount}}%</li>
												                                 @php
											                                 		$product_price = $product -> price * (100 - $product -> discount)/100
											                                 	 @endphp
											                                 @else
											                                 
											                                 	<li class="old-price not-cut">{{formatMoney($product -> price)}}</li>
											                                 	@php
											                                 		$product_price = $product -> price
											                                 	@endphp
											                                 
											                                 @endif
											                                 <!-- end hien thi gia -->
											                             </ul>
                                                                    </div>
                                                                    <div class="product-intro-info">
                                                                        {!!$product -> description_short!!}...
                                                                    </div>
                                                                    <div class="in-stock">Còn trong kho: <span>{{$product -> amount}} sản phẩm</span></div>
                                                                </div>
                                                                <div class="add-to-link">
                                                                    <a class="cart-btn btn-add-cart" href="{{url('add-cart')}}" value = "{{$product -> id.'khala'.$product -> product_code.'khala'.$product -> title.'khala'.$product_price}}">THÊM VÀO GIỎ HÀNG </a>
                                                                        
                                                                    
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @empty
                                        	<p> Không có kết quả trùng với từ khóa</p>
                                        @endforelse

                                    </div>
                                    <!-- Tab Two End -->
                                </div>
                                <!-- Shop Tab Content End -->
                                <!--  Pagination Area Start -->
                                <div class="text-center">
                                    {!! $products -> links() !!}
                                </div>
                                <!--  Pagination Area End -->
                            </div>
                            <!-- Shop Bottom Area End -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Shop Category Area End -->
	
	

	@endsection

	
	