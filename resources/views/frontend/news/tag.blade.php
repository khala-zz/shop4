@extends('frontend.layouts.master')
    @php $title_cat = str_replace('-',' ', Request::segment(2)); @endphp
	@section('title')
		<title>{{$title_cat}}</title>
	@endsection

	@section('content')
        <!-- Breadcrumb Area start -->
        <section class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="breadcrumb-content">
                            <h1 class="breadcrumb-hrading">Tin tức</h1>
                            <ul class="breadcrumb-links">
                                <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                
                                @if($title_cat <> 'Tin tức')
                                    <li>{{ $title_cat }} </li>
                                @else
                                    <li>Tin tức</li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Area End -->
        <!-- Shop Category Area End -->
        <div class="shop-category-area blog-grid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-12">
                        <div class="blog-posts">
                            
                            <div class="row">
                                @forelse( $news_tag as $item)
                                    <div class="col-md-6">
                                    <div class="single-blog-post blog-grid-post mt-30">
                                        <div class="blog-post-media">
                                            <div class="blog-image">
                                                <a href="{{ route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}"><img src="{{ asset('uploads/news/'.$item -> image_name) }}" alt="{{$item -> title}}" /></a>
                                            </div>
                                        </div>
                                        <div class="blog-post-content-inner mt-30">
                                            <h4 class="blog-title"><a href="{{ route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}">{{$item -> title}}</a></h4>
                                            <ul class="blog-page-meta">
                                                <li>
                                                    <i class="ion-person"></i> {{ $item -> user -> name }}
                                                </li>
                                                <li>
                                                    <i class="ion-calendar"></i> {{ $item -> created_at }}
                                                </li>
                                            </ul>
                                            <p>
                                                {!! mb_substr(strip_tags($item->description), 0, 270) !!}
                                            </p>
                                            <a class="read-more-btn" href="{{ route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}"> Chi tiết <i class="ion-android-arrow-dropright-circle"></i></a>
                                        </div>
                                    </div>
                                    <!-- single blog post -->
                                    </div>
                                @empty
                                    <p>Tin tức đang cập nhật</p>
                                @endforelse
                            </div>
                        </div>
                        <!--  Pagination Area Start -->
                        <div class="text-center" >
                            {!! $news_tag -> links() !!}
                        </div>
                        <!--  Pagination Area End -->
                    </div>
                    <!-- Sidebar Area Start -->
                    <div class="col-lg-3 col-md-12 mb-res-md-60px mb-res-sm-60px">
                        @include('frontend.news.right_news')
                    </div>
                    <!-- Sidebar Area End -->
                </div>
            </div>
        </div>
        <!-- Shop Category Area End -->
        <!-- Footer Area start -->
	  
	
	

	@endsection

	
	