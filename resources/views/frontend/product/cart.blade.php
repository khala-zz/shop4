@extends('frontend.layouts.master')
	@section('title')
		<title>Shop | Giỏ hàng</title>
	@endsection
	
	@section('content')
	<!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Giỏ hàng</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                    <li>Giỏ hàng</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- cart area start -->
            <div class="cart-main-area mtb-60px">
                <div class="container">
                    <h3 class="cart-page-title">Giỏ hàng của bạn</h3>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        	<!--hien thi thong bao -->
							@if(Session::has('flash_message_error'))
								<div class="alert alert-dark alert-danger alert-round alert-inline">
                                    
                                    {!! session('flash_message_error')!!}
                                    <button type="button" class="btn btn-link btn-close">
                                        <i class="d-icon-times"></i>
                                    </button>
                                </div>
							@endif

							@if(Session::has('flash_message_success'))
								<div class="alert alert-dark alert-success alert-round alert-inline">
                                    
                                    {!! session('flash_message_success')!!}
                                    <button type="button" class="btn btn-link btn-close">
                                        <i class="d-icon-times"></i>
                                    </button>
                                </div>
							@endif
							<!-- end hien thi thong bao -->
                            <form action="#">
                                <div class="table-content table-responsive cart-table-content">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>Hình ảnh</th>
                                                <th>Sản phẩm</th>
                                                <th>Giá</th>
                                                <th>Số lượng</th>
                                                <th>Tổng</th>
                                                <th>Xóa</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<!-- show du lieu cart -->
											<?php 
												//khai báo biến tổng để tính tổng
												$total_amount = 0;
                                                $cart_id = [];
											?>
											@foreach($userCart as $item)
                                                @php $cart_id[] = $item -> id ;@endphp
	                                            <tr>
	                                                <td class="product-thumbnail">
	                                                    <a href="{{ route('product.detail',['slug' => slugify($item -> product_name,'-'),'id' => $item -> product_id]) }}"><img src="{{ asset('uploads/products-daidien/'.$item -> image) }}" alt="{{$item -> product_name}}" width="98" height="98" /></a>
	                                                </td>
	                                                <td class="product-name">
	                                                	<a href="{{ route('product.detail',['slug' => slugify($item -> product_name,'-'),'id' => $item -> product_id]) }}">{{$item -> product_name}}
	                                                	</a>
	                                                </td>
	                                                <td class="product-price-cart"><span class="amount">{{formatMoney($item -> price)}}</span></td>
	                                                <td class="product-quantity">
	                                                	<!-- tang giam so luong -->
	                                                    <div class="cart-plus-minus-khala">
	                                                    	@if($item -> quantity > 0)
																<div class="dec qtybutton"><a href="{{url('/cart/update-quantity/'.$item -> id.'/-1')}}" >-</a></div>
															@endif
	                                                        <input class="cart-plus-minus-box" type="text" name="qtybutton" value="{{$item -> quantity}}" />
	                                                        <div class="inc qtybutton"><a href="{{url('/cart/update-quantity/'.$item -> id.'/1')}}">+</a></div>
	                                                    </div>
	                                                </td>
	                                                <td class="product-subtotal">{{formatMoney($item -> price * $item -> quantity)}}</td>
	                                                <td class="product-remove">
	                                                    
	                                                    <a href="{{url('/cart/delete-product/'.$item -> id)}}"><i class="fa fa-times"></i></a>
	                                                </td>
	                                            </tr>
	                                            <!-- tinh tong -->
									            <?php $total_amount = $total_amount + ($item -> price * $item -> quantity);?>	
                                            @endforeach
                                            
                                        </tbody>
                                    </table>
                                    
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="cart-shiping-update-wrapper">
                                            <div class="cart-shiping-update">
                                                <a href="{{ url('cua-hang') }}">Tiếp tục mua sắm</a>
                                            </div>
                                            <!-- xoa toan bo product cart -->
                                            <div class="cart-clear">
                                                
                                                <a href="{{ route('delete.all.product',['cart_id' => $cart_id]) }}">Xóa giỏ hàng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <div class="row">
                                <!-- coupon -->
                                <div class="col-lg-6 col-md-6">
                                    <div class="discount-code-wrapper">
                                        <div class="title-wrap">
                                            <h4 class="cart-bottom-title section-bg-gray">Sử dụng mã khuyến mãi</h4>
                                        </div>
                                        <div class="discount-code">
                                            <p>Nhập mã khuyến mãi tại đây.</p>
                                            <form action="{{ url('/cart/apply-coupon') }}" method="post">
                                            	@csrf
                                                <input type="text" required="" name="coupon_code"  placeholder="Nhập mã giảm giá"/>
                                                <button class="cart-btn-2" type="submit">Gửi</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12">
                                    <div class="grand-totall">
                                        <div class="title-wrap">
                                            <h4 class="cart-bottom-title section-bg-gary-cart">Giỏ hàng</h4>
                                        </div>
                                        <h5>Tổng tiền <span><?php echo formatMoney($total_amount); ?></span></h5>
                                        <!-- kiem tra neu có coupon thi hiện ra -->
                                        @if(!empty(Session::get('CouponAmount')))
	                                        <div class="total-shipping">
	                                            <h5>Giảm giá<span> <?php echo formatMoney(Session::get('CouponAmount')); ?></span></h5>
	                                            
	                                        </div>
                                        	<h4 class="grand-totall-title">Tổng tiền thanh toán <span><?php echo formatMoney($total_amount - Session::get('CouponAmount')); ?></span></h4>
                                        @else
                                        	<h4 class="grand-totall-title">Tổng tiền thanh toán <span><?php echo formatMoney($total_amount); ?></span></h4>
                                        @endif
                                        <a href="{{ url('/checkout') }}">Thanh toán</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- cart area end -->
	
	

	@endsection

	
	