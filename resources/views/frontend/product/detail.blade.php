@extends('frontend.layouts.master')
	@section('title')
		<title>{{$product -> title}}</title>
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
                                <h1 class="breadcrumb-hrading">{{$product -> title}}</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="{{url('/')}}">Trang chủ</a></li>
                                    <li>{{$product -> title}}</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- Shop details Area start -->
            <section class="product-details-area mtb-60px">
                <div class="container">
                    <div class="row">
                    	<!-- hinh anh -->
                        <div class="col-xl-6 col-lg-6 col-md-12">
                            <div class="product-details-img product-details-tab">
                                <div class="zoompro-wrap zoompro-2">
                                    <div class="zoompro-border zoompro-span">
                                    	<!-- get image dau tien trong gallery -->
                                    	{{-- @php $productGalleryFirst = $product -> gallery -> first(); @endphp
                                        <img class="zoompro" src="{{asset('uploads/'.$product->id.'/large/'.$productGalleryFirst -> image)}}" data-zoom-image="{{asset('uploads/'.$product->id.'/large/'.$productGalleryFirst -> image)}}" alt="{{$product -> title}}" /> --}}

                                        @php 
                                			//khai bao storage google
								            $googleDriveStorage_large = Storage::disk('large_google_drive');
								            $googleDriveStorage_small = Storage::disk('small_google_drive');
								            //get lay image dau tien cho hieu ung gallery
                                			$productGalleryFirst = $product -> gallery -> first();
                                			
								            //get lay file info tu google storage large
					                        $fileinfo_large = collect($googleDriveStorage_large->listContents('/', false))
					                            ->where('type', 'file')
					                            ->where('name', $productGalleryFirst -> image)
					                            ->first(); 
                                			 //echo $googleDriveStorage_large -> url($fileinfo_large['path']);

                                		@endphp
                                		
						          			
						            			
						            			<img class="zoompro" src="{{asset($googleDriveStorage_large -> url($fileinfo_large['path']))}}" data-zoom-image="{{asset($googleDriveStorage_large -> url($fileinfo_large['path']))}}" alt="{{$product -> title}}" />
						          			
					          			
                                    	
                                    </div>
                                </div>
                                <div id="gallery" class="product-dec-slider-2">
                                	<!--galerry -->
                                	@forelse($product -> gallery as $index => $imageGallery)
                                		@php 
					                        //get image small from gg storage
					                        $fileinfo_small = collect($googleDriveStorage_small->listContents('/', false))
					                            ->where('type', 'file')
					                            ->where('name', $imageGallery -> image)
					                            ->first(); 
					                        //fileinfo large
					                        $fileinfo_big = collect($googleDriveStorage_large->listContents('/', false))
					                            ->where('type', 'file')
					                            ->where('name', $imageGallery -> image)
					                            ->first(); 
				                    	@endphp
				                    	
	                                    <a class="{{$index == 0?'active':''}}" data-image="{{asset($googleDriveStorage_small -> url($fileinfo_small['path']))}}" data-zoom-image="{{asset($googleDriveStorage_large -> url($fileinfo_big['path']))}}">
	                                        <img src="{{asset($googleDriveStorage_small -> url($fileinfo_small['path']))}}" alt="{{$imageGallery -> image}}" />
	                                    </a>
                                    @empty
                                    	<p> Chưa có gallery </p>
                                    @endforelse
                                    <!-- end gallery -->
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12">
                        	<!--hien thi thong bao -->
							@if(Session::has('flash_message_error'))
								<div class="alert alert-danger alert-dark alert-round alert-inline">
                                    
                                    {!! session('flash_message_error')!!}
                                    <button type="button" class="btn btn-link btn-close">
                                        <i class="d-icon-times"></i>
                                    </button>
                                </div>
							@endif
                        	<!-- form dung de add to cart -->
							<form name = "addToCart" method = "post" action = "{{url('/add-cart')}}" id="myform">
									@csrf
									<!-- cac input field dể add đến cart -->
									<input type="hidden" name="product_id" value="{{ $product -> id }}">
									<input type="hidden" name="product_name" value="{{ $product -> title }}">
									<input type="hidden" name="product_code" value="{{ $product -> product_code }}">
									<!-- end input field -->
	                            <div class="product-details-content">
	                                <h2>{{$product -> title}}</h2>
	                                <p class="reference">Danh mục:<a href="{{url('danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id)}} " class="color-cate-product-detail" > {{$product -> category -> title}}</a></p>
	                                <div class="pro-details-rating-wrap">
	                                    <div class="rating-product">
	                                    	<!-- hien thi rating -->
											<?php 
												$avg_rating = 0;
												if($product -> pro_total_rating){
													// tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
													$total_number = $product -> pro_total_number - 1;
													$total_rating = $product -> pro_total_rating - 1 ;
													if($total_number <> 0 && $total_rating <> 0){
														$avg_rating = round($total_number/$total_rating,2);
													}
													
												}
												
											?>

											<span class="rating-stars selected">
												@for($i = 1; $i <= 5; $i++)
												<a class="star-{{$i}} {{$i <= $avg_rating ? 'active':''}} ">{{$i}}</a>
												@endfor
												
											</span>
											<!-- end hien thi rating -->
	                                        
	                                    </div>
	                                    <span class="read-review"><a class="reviews" href="{{url() -> current()}}?r='des-details3'" >Xem đánh giá ({{$product -> reviews -> count()}})</a></span>
	                                </div>
	                                <div class="pricing-meta">
	                                    <ul>
	                                        
	                                         <!-- hien thi gia -->
	                                        @if(!empty($product -> discount))
	                                       
	                                            <li class="old-price">{{formatMoney($product -> price)}}</li>
	                                            <!-- class new-price lay ket qua tu xu ly ajax change price -->
	                                            <li class="current-price new-price">
	                                            	<!-- danh cho reset gia ban dau -->
				                                    <?php $product_price_reset = $product -> price * (100 - $product -> discount)/100; ?>
	                                            	{{formatMoney($product -> price * (100 - $product -> discount)/100) }}
	                                            	<!-- price xu ly cho form -->
	                                            	<input type="hidden" id = "product_price" name="product_price" value="{{ $product -> price * (100 - $product -> discount)/100 }}">

	                                            </li>
	                                            
	                                            <li class="discount-price">-{{$product -> discount}}%</li>
	          
	                                        	
	                                        @else
	                                         	<!-- class new-price lay ket qua tu xu ly ajax change price -->
	                                            <li class="old-price not-cut new-price">
	                                            	<!-- danh cho reset gia ban dau -->
				                                 	 <?php $product_price_reset = $product -> price; ?>
	                                            	{{formatMoney($product -> price)}}
	                                            	  	<!-- price xu ly cho form -->
	                                            		
	                                            	<input type="hidden" id = "product_price" name="product_price" value="{{ $product -> price }}">
	                                            </li>
	                                          
	                                            
	                                        	
	                                        	
	                                        @endif
	                                        <!-- end hien thi gia -->
	                                    </ul>
	                                </div>
	                                {!!$product -> description_short!!}...
	                                <!-- mau va kich co san pham -->
	                                @if($categoryFeatures)
		                                <div class="pro-details-size-color d-flex">
		                                	@if($check_color == 1)
			                                    <div class="pro-details-color-wrap">
			                                        <span>Màu sắc</span>
			                                        <div class="pro-details-color-content">
			                                            <ul>
			                                            	@forelse($categoryFeatures  as $categoryColorFeature)
			                                            		@if($categoryColorFeature -> field_type == 2)
					                                                <li class="{{$categoryColorFeature -> field_title}} change-color" data-value ="{{$categoryColorFeature -> field_title}}"></li>
					                                                
				                                                @endif
				                                            @empty
				                                            	Chưa có màu sắc
				                                            @endforelse	    
			                                            </ul>
			                                        </div>
			                                    </div>
		                                    @endif
		                                    @if($check_size == 1)
			                                    <div class="product-size">
			                                        <span>Kích cỡ</span>
			                                        <select class="change-price">
			                                        	<option value="{{ $product_price_reset}}">Size</option>
			                                        	@forelse($categoryFeatures  as $categorySizeFeature)
			                                            	@if($categorySizeFeature -> field_type == 1)
					                                            <option value="{{ route('change-price',['value' => $categorySizeFeature -> id])}}" data-url="" >{{$categorySizeFeature -> field_title}}</option>

					                                        @endif
					                                    @empty
					                                    	Chưa có kích cỡ
					                                    @endforelse    
			                                        </select>
			                                    </div>
			                                @endif
		                                </div>
		                            @endif    
	                                <!-- mau va kich co san pham -->
	                                <div class="pro-details-quality">
	                                    <div class="cart-plus-minus">
	                                        <input class="cart-plus-minus-box" type="text" name="product_quantity" value="1" />
	                                    </div>
	                                    <div class="pro-details-cart btn-hover">
	                                        <a href="#" onclick="document.getElementById('myform').submit(); return false;"> + Thêm vào giỏ hàng</a>

	                                    </div>
	                                </div>
	                                
	                                <div class="pro-details-social-info">
	                                    <span>Chia sẻ</span>
	                                    <div class="social-info">
	                                        <ul>
	                                            <li>
	                                                <a href="#"><i class="ion-social-facebook"></i></a>
	                                            </li>
	                                            <li>
	                                                <a href="#"><i class="ion-social-twitter"></i></a>
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
	                                <div class="pro-details-policy">
	                                    <ul>
	                                    	@forelse($settings as $setting)
	                                    	<li>
	                                    		@if($setting -> setting_key == 'Vận chuyển')
		                                    		<img src="{{asset('images/icons/policy.png')}}" alt="Vận chuyển">
		                                    	
		                                        	<span>{{$setting -> setting_value}}</span>
		                                        @elseif($setting -> setting_key == 'Đổi trả hàng')
		                                        	<img src="{{asset('images/icons/policy-2.png')}}" alt="Đổi trả hàng">
		                                    	
		                                        	<span>{{$setting -> setting_value}}</span>
		                                        @else
		                                        	<img src="{{asset('images/icons/policy-3.png')}}" alt="Bảo mật">
		                                    	
		                                        	<span>{{$setting -> setting_value}}</span>
		                                        @endif				
	                                        </li>
	                                        @empty
	                                        	Chưa có setting
	                                        @endforelse
	                                       
	                                    </ul>
	                                </div>
	                            </div>
	                        </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Shop details Area End -->
            <!-- product details description area start -->
            <div class="description-review-area mb-60px">
                <div class="container">
                    <div class="description-review-wrapper">
                        <div class="description-review-topbar nav">
                            <a  data-toggle="tab" href="#des-details1" >Mô tả</a>
                            <a  class="{{ request()-> has('r')?'':'active' }}" data-toggle="tab" href="#des-details2">Thông tin thêm</a>
                            <a  class="{{ request()-> has('r')?'active':'' }}"data-toggle="tab" href="#des-details3" >Đánh giá ({{ $reviews -> count() }})</a>
                        </div>
                        <div class="tab-content description-review-bottom">
                            
                            <div id="des-details2" class="tab-pane {{ request()-> has('r')?'':'active' }}">
                                <div class="product-description-wrapper">
                                    {!!$product -> description!!}
                                </div>
                            </div>
                            <div id="des-details1" class="tab-pane">
                                <div class="product-anotherinfo-wrapper">
                                    {!!$product -> additional!!}
                                </div>
                            </div>
                            
                            <div id="des-details3" class="tab-pane {{ request()-> has('r')?'active':'' }}">
                                <div class="row">
                                	<!-- hien thi danh gia -->
                                    <div class="col-lg-7">
                                        <div class="review-wrapper">
                                        	@if($reviews -> count() > 0)
                                        		@foreach($reviews as $review)
                                            		<div class="single-review">
		                                                <div class="review-img">
		                                                    <img src="{{ url('uploads/users/' . $review -> user -> image) }}" alt="{{$review -> user -> name}}" width="100px" height="100px" 
		                                                     />
		                                                </div>
		                                                <div class="review-content">
		                                                    <div class="review-top-wrap">
		                                                        <div class="review-left">
		                                                            <div class="review-name">
		                                                                <h4>{{$review -> user -> name}}</h4>
		                                                            </div>
		                                                            <div class="rating-product">
		                                                                <div class="comment-rating ratings-container mb-0">
																			<span class="rating-stars selected">
																				@for($i = 1; $i <= 5; $i++)
																				<a class="star-{{$i}} {{$i <= $review -> rating ? 'active-tab-review':''}} ">{{$i}}</a>
																				@endfor
																				
																			</span>
																			
																		</div>
		                                                            </div>
		                                                        </div>
		                                                        
		                                                    </div>
		                                                    <div class="review-bottom">
		                                                        <p>
		                                                            {{$review -> comment}}
		                                                        </p>
		                                                    </div>
		                                                </div>
                                            		</div>
                                            	@endforeach
                                            @else
												<p>Chưa có đánh giá</p>
											@endif
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="ratting-form-wrapper pl-50">
                                        	<!-- kiem tra dang nhap rui thi cho danh gia san pham -->
                                        	@if(Auth::check())
                                            	<h3>Thêm đánh giá</h3>
	                                            <div class="ratting-form">
	                                                <form action="#">
	                                                    <div class="star-box">
	                                                        <span>Đánh giá của bạn:</span>
	                                                        <span class="rating-stars selected">
																@for($i = 1; $i <= 5; $i++)
																<a class="star-{{$i}} start-a" href="#" data-key = "{{$i}}">{{$i}}</a>
																@endfor
																
															</span>


															<select name="rating" id="rating" required="" style="display: none;">
																<option value="">Rate…</option>
																<option value="5">Tuyệt vời quá</option>
																<option value="4">Rất tốt</option>
																<option value="3">Bình thường</option>
																<option value="2">Tạm được</option>
																<option value="1">Không thích</option>
															</select>
	                                                    </div>
	                                                    <div class="row">
	                                                        
	                                                        <div class="col-md-12">
	                                                            <div class="rating-form-style form-submit">
	                                                               <input type="hidden"  class="number_rating">
																	<textarea id="reply-message" cols="30" rows="4"
																		class="form-control mb-4" placeholder="Đánh giá của bạn"
																		required></textarea>
																	
																	
																	<a href="{{route('post.review.product',$product -> id)}}" class="btn btn-primary btn-md btn-khala" id="submit_review">Gửi<i
																			 ></i></a>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	                                                </form>
	                                            </div>
                                            @else
                                            	<h3>Đăng nhập để thêm đánh giá</h3>
                                            	<div class="ratting-form">
	                                                <form method="POST" action="{{ route('front-login') }}">
	                                                    @csrf
	                                                    <div class="row">
	                                                    	@if($errors)
										                        <div class="col-md-12 mb-4">
										                           
										                            {!! $errors->first('email', '<p class="help-block" style="color:red;">:message</p>') !!}
										                            {!! $errors->first('password', '<p class="help-block" style="color:red;">:message</p>') !!}
										                        </div>
										                    @endif
	                                                        <div class="col-md-12">
	                                                            <div class="rating-form-style mb-10">
	                                                                <input type="email" name = "email"  placeholder="Email *" value = "{{old('email')}}" required>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12">
	                                                            <div class="rating-form-style mb-10">
	                                                                <input type="password" name = "password"  placeholder="Mật khẩu *" required>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12">
	                                                            <div class="rating-form-style form-submit">
	                                                                
	                                                                <input type="submit" value="Đăng nhập" />
	                                                            </div>
	                                                        </div>
	                                                        
	                                                    </div>
	                                                </form>
	                                            </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product details description area end -->
            <!-- Recent Add Product Area Start -->
           	@include('frontend.product.products_like')
            <!-- Recent product area end -->
            <!-- Recent Add Product Area Start -->
            @include('frontend.product.products_relate')
            <!-- Recent product area end -->
		
	
	

	@endsection

	
	