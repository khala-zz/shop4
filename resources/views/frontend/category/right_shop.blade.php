<div class="col-lg-9 order-lg-last col-md-12 order-md-first">
    <!-- Shop Top Area Start -->
    <div class="shop-top-bar">
        <!-- Left Side start -->
        <div class="shop-tab nav mb-res-sm-15">
            
            <a href="#" onclick="location.href='{{url()->current()}}';" style="color:#ef1e1e;">Bỏ lọc</a>
            <p>Hiển thị {{ $products->firstItem() }} đến {{ $products->lastItem() }} của tổng {{$products->total()}} sản phẩm</p>
            @if(Request::get('price'))
            <p>Giá từ <b style="color: red;">{{ Request::get('price')}}</b></p>
            @endif
        </div>
        <!-- Left Side End -->
        <!-- Right Side Start -->
        <div class="select-shoing-wrap">
            <div class="shot-product">
                <p>Sắp xếp:</p>
            </div>
            <div class="shop-select">
                <form method ="get" action="{{url()->current()}}">
                    <select name="orderby" class="form-control" onchange="this.form.submit()">
                        <option value="created_at" {{Request::get('orderby') == 'created_at'?'selected':''}}>Mới nhất</option>
                        <option  value="title_tang" {{Request::get('orderby') == 'title_tang'?'selected':''}}>A đến Z</option>
                        <option  value="title_giam" {{Request::get('orderby') == 'title_giam'?'selected':''}}> Z đến A</option>
                        
                    </select>
                    <!-- gan filter theo nhan hieu và tổng sản phẩm hiện theo trang -->
                    <input type="hidden" name="count" value="{{Request::get('count')?Request::get('count') : 12}}">
                    <input type="hidden" name="brand_filter" value="{{Request::get('brand_filter')?Request::get('brand_filter') : 0}}">
                    <input type="hidden" name="price" value="{{Request::get('price')?Request::get('price') : 0}}">
                    
                    <!-- end gan filter theo nhan hieu và tổng sản phẩm hiện theo trang -->
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
            <div id="shop-1" class="tab-pane active">
                <div class="row">
                    @forelse($products as $product)
                    <!-- kiem tra xem product co giam gia hay khong? -->
                    @if(!empty($product -> discount))
                    @php $product_price = $product -> price * (100 - $product -> discount)/100; @endphp        
                    @else
                    @php $product_price = $product -> price; @endphp
                    @endif
                    <!-- end kiem tra xem product co giam gia hay khong? -->
                    <div class="col-xl-3 col-md-6 col-lg-4 col-sm-6 col-xs-12">
                        <article class="list-product">
                            <div class="img-block">
                                <a href="{{url('/san-pham/'.slugify($product -> title,'-').'/'.$product -> id)}}" class="thumbnail">
                                    <img class="first-img" src="{{asset('uploads/products-daidien/'.$product -> image)}}" alt="{{$product -> title}}" />
                                    
                                </a>
                               {{--  <div class="quick-view">
                                    <a class="quick_view khala-quickview" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal" value = "{{$product ->  id}}">
                                        <i class="ion-ios-search-strong"></i>
                                    </a>
                                </div> --}}
                            </div>
                            @if(!empty($product -> new))
                                <ul class="product-flag">
                                    <li class="new">Mới</li>
                                </ul>
                            @endif
                            <div class="product-decs">
                                <a class="inner-link" href="{{url('/danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id)}}"><span>{{$product -> category -> title}}</span></a>
                                <h2><a href="{{url('/san-pham/'.slugify($product -> title,'-').'/'.$product -> id)}}" class="product-link">{{$product -> title}}</a></h2>
                                <div class="padding-left-start-khala">
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

                                   <span class="rating-stars selected" >
                                    @for($i = 1; $i <= 5; $i++)
                                    <a class="star-{{$i}} {{$i <= $avg_rating ? 'active':''}} ">{{$i}}</a>
                                    @endfor
                                    
                                </span>
                                <!-- end hien thi rating -->
                            </div>
                            <div class="pricing-meta">
                                <ul>
                                 <!-- hien thi gia -->
                                 @if(!empty($product -> discount))
                                 
                                 <li class="old-price">{{formatMoney($product -> price)}}</li>
                                 <li class="current-price">{{formatMoney($product -> price * (100 - $product -> discount)/100) }}</li>
                                 
                                 <li class="discount-price">-{{$product -> discount}}%</li>
                                 @else
                                 
                                 <li class="old-price not-cut">{{formatMoney($product -> price)}}</li>
                                 
                                 @endif
                                 <!-- end hien thi gia -->
                             </ul>


                         </div>
                     </div>
                     <div class="add-to-link">
                        <ul>
                            <li class="cart"><a class="cart-btn btn-add-cart" href="{{url('add-cart')}}" value = "{{$product -> id.'khala'.$product -> product_code.'khala'.$product -> title.'khala'.$product_price}}">THÊM VÀO GIỎ HÀNG </a></li>
                            
                        </ul>
                    </div>
                </article>
            </div>
            @empty
            <p>Chưa có sản phẩm</p>
            @endforelse
            
        </div>
    </div>
    <!-- Tab One End -->
    
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