 <div class="col-lg-3 order-lg-first col-md-12 order-md-last mb-res-md-60px mb-res-sm-60px">
                            <div class="left-sidebar">
                                <div class="sidebar-heading">
                                    <div class="main-heading">
                                        <h2>Bộ lọc</h2>
                                    </div>
                                   

                                         
                                   
                                    <!-- Sidebar single item -->
                                    <div class="sidebar-widget">
                                        <h4 class="pro-sidebar-title">Danh mục sản phẩm</h4>
                                        <div class="sidebar-widget-list">
                                             
                                            <!--- menu categorry -->
                                                
                                            <nav class="category-menu">
                                                <ul>
                                                
                                                    @foreach($categories_share as $index => $item)

                                                            @if($item -> parent == null)
                                                                <li class="menu-item-has-children menu-item-has-children-{{$index + 1}}">
                                                                    <!--hien dau > -->
                                                                    @if(count($item -> children))
                                                                        <a href="{{ url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id) }}" class="{{Request::segment(3) == $item -> id?'active-khala':''}}" >
                                                                           
                                                                            {{$item->title}} <i class="ion-ios-arrow-down"></i></span>
                                                                        </a>
                                                                    @else
                                                                         <a href="{{ url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id) }}" class="{{Request::segment(3) == $item -> id?'active-khala':''}}" >
                                                                           
                                                                           {{$item->title}}
                                                                        </a>
                                                                    @endif
                                                                    <!-- end hien dau > -->
                                                                    
                                                                    @if(count($item->children))
                                                                         <ul class="category-mega-menu category-mega-menu-{{$index + 1}}">
                                                                            @include('frontend.category.menu_category',['childs' => $item -> children])
                                                                        </ul>
                                                                    @endif
                                                                </li>
                                                            
                                                            @endif

                                                   @endforeach()
                                               
                                                </ul>
                               
                                
                                            </nav>
                                        
                                            <!--- end menu categorry -->
                                        </div>
                                    </div>
                                    <!-- Sidebar single item -->
                                </div>
                                <!-- Sidebar single item -->
                                <div class="sidebar-widget mt-20">
                                    <h4 class="pro-sidebar-title">Giá</h4>
                                    <div class="price-filter mt-10">
                                        <form action="{{url()->current()}}">
                                            <div class="price-slider-amount">
                                                <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                            </div>
                                            <div id="slider-range"></div>

                                            <button class="submit-khala" type="submit">Tìm kiếm</button>
                                            
                                            <input type="hidden" name="brand_filter" value="{{Request::get('brand_filter')?Request::get('brand_filter') : 0}}">
                                        </form>
                                    </div>
                                </div>
                                
                                <!-- Sidebar single item -->
                                <div class="sidebar-widget mt-30">
                                    <h4 class="pro-sidebar-title">Nhãn hiệu</h4>
                                    <div class="sidebar-widget-list">
                                        <ul>
                                            @foreach($brands_count as $brand)
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <a href="{{url()->current().'?brand_filter='.$brand -> id}}" class="{{Request::get('brand_filter') == $brand -> id?'active-khala':''}}">
                                                        {{ $brand -> title}}
                                                    </a>
                                                    
                                                </div>
                                            </li>
                                            @endforeach
                                            
                                            
                                        </ul>
                                    </div>
                                </div>
                                
                            </div>
                        </div>