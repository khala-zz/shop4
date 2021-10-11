 <!-- dung chep de css so san pham tron gio hang -->
 <style>
     .count-cart::after{
        content:"{{count(getProductCart())}}";
    }  
</style>

<header class="main-header home-10 home-14 responsive">
    <!-- Header Top Start -->
    <div class="header-top-nav">
        <div class="container">
            <div class="row">
                <!--Left Start-->
                <div class="col-lg-4 col-md-4">
                    <div class="left-text">
                        <p>Chào mừng bạn đến cửa hàng Khala!</p>
                    </div>
                </div>
                <!--Left End-->
                <!--Right Start-->
                <div class="col-lg-8 col-md-8 text-right">
                    <div class="header-right-nav">
                        <div class="dropdown-navs">
                            <ul>
                             <!-- link dang nhap,dang ki -->
                             @if(empty(Auth::check()))
                             <li>
                                <a href="{{ url('/front-login?login=1') }}">Đăng nhập</a>
                            </li>
                            <li>
                                <a href="{{ url('/front-login?login=0') }}">Đăng kí</a>
                            </li>

                            @else
                            <li>
                                <a href="{{ url('/my-account') }}">Tài khoản</a>
                            </li>
                            <li>
                                <a  href="{{ url('/front-logout') }}">Đăng xuất</a>
                            </li>
                            @endif

                        </ul>
                    </div>
                </div>
            </div>
            <!--Right End-->
        </div>
    </div>
</div>
<!-- Header Top End -->
<!-- Header Buttom Start -->
<div class="header-navigation d-none d-lg-block sticky-nav">
    <div class="container">
        <div class="row">
            <!-- Logo Start -->
            <div class="col-md-2 col-sm-2">
                <div class="logo">
                    <a href="{{ url('/') }}"><img src="{{asset('images/logo/logo.png')}}" alt="" /></a>
                </div>
            </div>
            <!-- Logo End -->
            <div class="col-md-10 col-sm-10">
                <!--Header Bottom Account Start -->
                <div class="header_account_area">
                    <!--Main Navigation Start -->
                    <div class="main-navigation d-none d-lg-block">
                        <ul>
                            <li >
                                <a href="{{ url('/') }}">Trang chủ </a>
                                
                            </li>

                            <li class="menu-dropdown">
                                <a href="#">Danh mục sản phẩm <i class="ion-ios-arrow-down"></i></a>
                                <ul class="mega-menu-wrap">  
                                    <!-- category share dung vies share trong app service provider -->
                                    @foreach($categories_share as $item)

                                        @if($item -> parent == null)
                                            <li class="menu-dropdown">
                                                <!--hien dau > -->
                                                @if(count($item -> children))
                                                    <a href="{{ route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}" >
                                                     
                                                        {{$item->title}}<i class='ion-ios-arrow-down'></i>
                                                    </a>
                                                @else
                                                    <a href="{{ route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}" >
                                                     
                                                     {{$item->title}}
                                                    </a>
                                                @endif
                                                <!-- end hien dau > -->
                                             
                                                @if(count($item->children))
                                                    <ul class="mega-menu-wrap">
                                                    @include('frontend.home.menu_category',['childs' => $item -> children])
                                                    </ul>
                                                @endif
                                            </li>
                                    
                                        @endif

                                    @endforeach()
                                
                            </ul>
                        </li>       

                        <li >
                            <a href="{{ url('cua-hang') }}">Cửa hàng </i></a>
                            
                        </li>

                        
                        
                        <li>
                            <a href="{{ url('tin-tuc') }}">Tin tức </a>
                            
                        </li>

                        <li>
                            <a href="{{ url('tin-tuc/giới-thiệu/5') }}">Giới thiệu </a>
                            
                        </li>
                        <li><a href="{{ url('lien-he') }}">Liên hệ</a></li>
                    </ul>
                </div>
                <!--Main Navigation End -->
                <!--Cart info Start -->
                <div class="cart-info d-flex">
                    
                    <div class="mini-cart-warp">
                        <a href="#" class="count-cart" ><span>{{formatMoney(getTotalCart())}}</span></a>
                        <!-- hien thi san pham trong gio hang -->
                        @if(count(getProductCart()) > 0)
                            <div class="mini-cart-content">
                                <ul>
                                    <!-- liet ke san pham trong gio hang -->
                                    @foreach(getProductCart() as $item)
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="{{ url('san-pham/'.slugify($item -> product_name,'-').'/'. $item -> product_id)}}"><img alt="{{$item -> product_name}}" src="{{ asset('uploads/products-daidien/'.$item -> image) }}" /></a>
                                            <span class="product-quantity">{{$item -> quantity}}x</span>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h4><a href="{{ url('san-pham/'.slugify($item -> product_name,'-').'/'. $item -> product_id)}}">{{$item -> product_name}}</a></h4>
                                            <span>{{formatMoney($item -> price)}}</span>
                                            <div class="shopping-cart-delete">
                                                <a href="{{url('/cart/delete-product/'.$item -> id)}}"><i class="ion-android-cancel"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    @endforeach
                                </ul>
                                <div class="shopping-cart-total">
                                 
                                    <h4 class="shop-total">Tổng : <span>{{formatMoney(getTotalCart())}}</span></h4>
                                </div>
                                <div class="shopping-cart-btn text-center">
                                    <a class="default-btn" href="{{ url('cart') }}">Xem giỏ hàng</a>
                                </div>
                            </div>
                        @endif
                        <!-- end hien thi san pham trong gio hang -->
                    </div>
                </div>
                <!--Cart info End -->
            </div>
        </div>
    </div>
</div>
</div>
<!--Header Bottom Account End -->
<!-- Menu Content Start -->
<div class="header-buttom-nav">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-left d-none d-lg-block">
                <div class="d-flex align-items-start justify-content-start">
                    <!-- Beauty Category -->
                    <div class="beauty-category vertical-menu home-9 home-10">
                        <h3 class="vertical-menu-heading vertical-menu-toggle">Danh mục sản phẩm</h3>
                        <!-- danh muc san pham-->
                        <ul class="vertical-menu-wrap open-menu-toggle">
                            <!-- category share dung vies share trong app service provider -->
                            @foreach($categories_share as $item)

                            @if($item -> parent == null)
                            <li class="menu-dropdown">
                                <!--hien dau > -->
                                @if(count($item -> children))
                                <a href="{{ route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}" >
                                 
                                    {{$item->title}}<i class='ion-ios-arrow-down'></i>
                                </a>
                                @else
                                <a href="{{ route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}" >
                                 
                                 {{$item->title}}
                             </a>
                             @endif
                             <!-- end hien dau > -->
                             
                             @if(count($item->children))
                             <ul class="mega-menu-wrap">
                                @include('frontend.home.sub_category',['childs' => $item -> children])
                            </ul>
                            @endif
                        </li>
                        
                        @endif

                        @endforeach()
                        
                    </ul>

                    <!-- end danh muc san pham-->
                </div>
                <!-- Beauty Category -->
                <!--Seach Area Start -->
                <div class="header_account_list search_list">
                    <a href="javascript:void(0)"><i class="ion-ios-search-strong"></i></a>
                    <div class="dropdown_search">
                        <form action="{{route('search.product')}}" method="get">
                         @csrf
                         <input placeholder="Từ khóa ..." type="text" name="search_product" value="{{old('search_product')}}" />
                         <div class="search-category">
                            <!-- search danh muc -->
                            <select class="bootstrap-select" name="poscats">
                                <option value="">Chọn danh mục</option>
                                {!! $htmlOption !!}
                            </select>
                            
                        </div>
                        <button type="submit"><i class="ion-ios-search-strong"></i></button>
                    </form>
                </div>
            </div>
            <!--Seach Area End -->
            <!--Contact info Start -->
            <div class="contact-link-wrap">
                <div class="contact-link">
                    <div class="phone">
                        <p>Hotline:</p>
                        <a href="tel:09060707000">0906070700</a>
                    </div>
                </div>
                <!--Contact info End -->
            </div>
        </div>
    </div>
</div>
</div>
</div>
<!-- Menu Content End -->
<!-- Header Buttom Start -->
<div class="header-navigation red-bg sticky-nav d-lg-none">
    <div class="container position-relative">
        <div class="row">
            <!-- Logo Start -->
            <div class="col-md-2 col-sm-2">
                <div class="logo">
                    <a href="{{ url('/') }}"><img src="{{asset('images/logo/logo.png')}}" alt="logo" /></a>
                </div>
            </div>
            <!-- Logo End -->
            <!-- Navigation Start -->
            <div class="col-md-10 col-sm-10">
                <!--Main Navigation End -->
                <!--Header Bottom Account Start -->
                <div class="header_account_area">
                    <!--Seach Area Start -->
                    <div class="header_account_list search_list">
                        <a href="javascript:void(0)"><i class="ion-ios-search-strong"></i></a>
                        <div class="dropdown_search">
                            <form action="{{route('search.product')}}" method="get">
                                <input placeholder="Từ khóa ..." type="text" name="search_product" value="{{old('search_product')}}"/>
                                <div class="search-category">
                                    <!-- search danh muc dien thoai -->
                                    <select class="bootstrap-select" name="poscats">
                                        <option value="">Chọn danh mục</option>
                                        {!! $htmlOption !!}
                                    </select>
                                </div>
                                <button type="submit"><i class="ion-ios-search-strong"></i></button>
                            </form>
                        </div>
                    </div>
                    <!--Seach Area End -->
                    <!--Contact info Start -->
                    <div class="contact-link">
                        <div class="phone">
                            <p>Hotline:</p>
                            <a href="tel:09060707000">09060707000</a>
                        </div>
                    </div>
                    <!--Contact info End -->
                    <!--Cart info Start -->
                    <div class="cart-info d-flex">
                        {{-- <a href="compare.html" class="count-cart random d-xs-none"></a>
                        <a href="wishlist.html" class="count-cart heart d-xs-none"></a> --}}
                        
                        <div class="mini-cart-warp">
                            <a href="#" class="count-cart"><span>{{formatMoney(getTotalCart())}}</span></a>
                            <!-- hien thi san pham trong gio hang -->
                            @if(count(getProductCart()) > 0)
                                <div class="mini-cart-content">
                                    <ul>
                                        <!-- liet ke san pham trong gio hang -->
                                        @foreach(getProductCart() as $item)
                                        <li class="single-shopping-cart">
                                            <div class="shopping-cart-img">
                                                <a href="{{ url('san-pham/'.slugify($item -> product_name,'-').'/'. $item -> product_id)}}"><img alt="{{$item -> product_name}}" src="{{ asset('uploads/products-daidien/'.$item -> image) }}" /></a>
                                                <span class="product-quantity">{{$item -> quantity}}x</span>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h4><a href="{{ url('san-pham/'.slugify($item -> product_name,'-').'/'. $item -> product_id)}}">{{$item -> product_name}}</a></h4>
                                                <span>{{formatMoney($item -> price)}}</span>
                                                <div class="shopping-cart-delete">
                                                    <a href="{{url('/cart/delete-product/'.$item -> id)}}"><i class="ion-android-cancel"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        @endforeach
                                    </ul>
                                    <div class="shopping-cart-total">
                                     
                                        <h4 class="shop-total">Tổng : <span>{{formatMoney(getTotalCart())}}</span></h4>
                                    </div>
                                    <div class="shopping-cart-btn text-center">
                                        <a class="default-btn" href="{{ url('cart') }}">Xem giỏ hàng</a>
                                    </div>
                                </div>
                            @endif
                            <!-- end hien thi san pham trong gio hang -->
                        </div>
                        
                        
                    </div>
                    <!--Cart info End -->
                </div>
            </div>
        </div>
        <!-- mobile menu -->
        <div class="mobile-menu-area">
            <div class="mobile-menu">
                <nav id="mobile-menu-active">
                    <ul class="menu-overflow">
                        <li>
                            <a href="{{ url('/') }}">Trang chủ</a>
                            
                        </li>
                        <li>
                            <a href="{{ url('cua-hang') }}">Cửa hàng</a>
                            
                        </li>
                        <li>
                            <a href="#">Danh mục sản phẩm</a>
                            <ul>
                                
                                @foreach($categories_share as $index => $item)

                                @if($item -> parent == null)
                                <li>
                                    
                                    <a href="{{ route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}" >
                                     
                                        {{$item->title}}
                                    </a>

                                    @if(count($item->children))
                                    <ul >
                                        @include('frontend.home.mobile_menu_category',['childs' => $item -> children])
                                    </ul>
                                    @endif
                                </li>
                                
                                @endif

                                @endforeach()
                                
                            </ul>
                            
                        </li>
                        
                        <li>
                            <a href="{{ url('tin-tuc') }}">Tin tức</a>
                            
                        </li>
                        <li>
                            <a href="{{ url('tin-tuc/giới-thiệu/5') }}">Giới thiệu</a>
                            
                        </li>
                        <li><a href="{{ url('lien-he') }}">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- mobile menu end-->
    </div>
</div>
<!--Header Bottom Account End -->
<!-- Beauty Category -->
<div class="container d-lg-none">
    <!--=======  category menu  =======-->
    <div class="hero-side-category">
        <!-- Category Toggle Wrap -->
        <div class="category-toggle-wrap">
            <!-- Category Toggle -->
            <button class="category-toggle"><i class="fa fa-bars"></i> Danh mục sản phẩm</button>
        </div>

        <!-- Category Menu -->
        <!-- category share dung vies share trong app service provider -->
        <nav class="category-menu">
            <ul>
                
                @foreach($categories_share as $index => $item)

                @if($item -> parent == null)
                <li class="menu-item-has-children menu-item-has-children-{{$index + 1}}">
                    <!--hien dau > -->
                    @if(count($item -> children))
                    <a href="{{ route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}" >
                     
                        {{$item->title}} <span class="toggle-btn"></span>
                    </a>
                    @else
                    <a href="{{ route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}" >
                     
                     {{$item->title}}
                 </a>
                 @endif
                 <!-- end hien dau > -->
                 
                 @if(count($item->children))
                 <ul class="category-mega-menu category-mega-menu-{{$index + 1}}">
                    @include('frontend.home.mobile_category',['childs' => $item -> children])
                </ul>
                @endif
            </li>
            
            @endif

            @endforeach()
            
        </ul>
        
        
    </nav>
</div>

<!--=======  End of category menu =======-->
</div>
<!-- Beauty Category -->
</header>