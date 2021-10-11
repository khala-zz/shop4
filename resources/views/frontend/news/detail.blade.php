@extends('frontend.layouts.master')
	@section('title')
		<title>{{$news -> title}}</title>
	@endsection

	@section('content')
	 <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">{{$news -> title}}</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                    <li><a href="{{ url('tin-tuc') }}">Tin tức</a></li>
                                    <li>{{$news -> title}}</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- Shop Category Area End -->
            <div class="shop-category-area single-blog">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 col-md-12">
                            <div class="blog-posts">
                                <div class="single-blog-post blog-grid-post">
                                    <div class="blog-post-media">
                                        <div class="blog-image single-blog">
                                            <img src="{{ asset('uploads/news/'.$news -> image_name) }}" alt="{{$news -> title}}" />
                                        </div>
                                    </div>
                                    <div class="blog-post-content-inner">
                                        <h4 class="blog-title">{{$news -> title}}</h4>
                                        <ul class="blog-page-meta">
                                            <li>
                                                <i class="ion-person"></i> {{ $news -> user -> name }}
                                            </li>
                                            <li>
                                                <i class="ion-calendar"></i> {{ $news -> created_at }}
                                            </li>
                                        </ul>
                                        
                                            {!! $news -> description !!}
                                        
                                    </div>
                                    <div class="single-post-content">
                                        {!! $news -> content !!}
                                    </div>
                                </div>
                                <!-- single blog post -->
                            </div>
                            <div class="blog-single-tags-share d-sm-flex justify-content-between">
                                <div class="blog-single-tags d-flex">
                                    <span class="title">Tags: </span>
                                    <ul class="tag-list">
                                        @php $len = $news -> tags -> count() @endphp
                                        @forelse($news -> tags as $key => $tag)
                                            <li>
                                                <a href="{{route('list.news.tags',['slug' => slugify($tag -> name,'-'),'id' => $tag -> id ])}}" >{{$tag -> name}}</a>{{$key <> $len -1 ?',':''}}
                                                 
                                            </li>
                                               
                                        @empty
                                            <p>Không có tags</p>
                                        @endforelse
                                       
                                    </ul>
                                </div>
                                <div class="blog-single-share d-flex">
                                    <span class="title">Share:</span>
                                    <ul class="social">
                                        <li>
                                            
                                            <a target="_blank" href="http://www.facebook.com/sharer.php?u=https://ss-etrostores.myshopify.com/blogs/news/thurmond-s-1948-presidential" class=" btn--small btn--secondary btn--share share-facebook" title="Chia sẻ lên facebook">
                                                <i class="ion-social-facebook"></i>
                                            </a>
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
                           <!-- bai viet lien quan -->
                           @include('frontend.news.related_news')
                            
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
	
	

	@endsection

	
	