<div class="left-sidebar">

    <!-- Sidebar single item -->
    <div class="sidebar-widget mt-40">
        <div class="main-heading">
            <h2>Danh mục tin tức</h2>
        </div>
        <div class="category-post">
            <ul>
             @foreach($cat_news as $item)

             @if( $item -> parent == null)
             <li>
                <a href="{{ route('cat_news.news',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}" class="{{ count($item->children) ? 'show' :'' }}" {{Request::segment(3) == $item-> id ? 'style=color:#ef1e1e' : " "}}>{{$item->title}}</a>
                @if(count($item->children))

                @include('frontend.news.menusub',['childs' => $item -> children])
                @endif

            </li>
            @endif
            @endforeach()
        </ul>
    </div>
</div>
<!-- Sidebar single item -->
<div class="sidebar-widget mt-40">
    <div class="main-heading">
        <h2>Bài viết gần đây</h2>
    </div>
    <div class="recent-post-widget">
        @forelse($news_right as $item )
            <div class="recent-single-post d-flex">
                <div class="thumb-side">
                    <a href="{{ route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}"><img src="{{ asset('uploads/news/'.$item -> image_name) }}" alt="{{$item -> title}}"  /></a>
                </div>
                <div class="media-side">
                    <h5><a href="{{ route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}">{{$item -> title}} </a></h5>
                    <span class="date">{{ $item -> created_at }}</span>
                </div>
            </div>
        @empty
            <p>Tin tức đang cập nhật</p>
        @endforelse
       
    </div>
</div>
<!-- Sidebar single item -->
<div class="sidebar-widget mt-40">
    <div class="main-heading">
        <h2>Tags</h2>
    </div>
    <div class="sidebar-widget-tag">
        <ul>
            @foreach($tags as $tag)
                <li>
                <a href="{{route('list.news.tags',['slug' => slugify($tag -> name,'-'),'id' => $tag -> id])}}" >{{$tag -> name}}</a>
                </li>
            @endforeach
           
        </ul>
    </div>
</div>
<!-- Sidebar single item -->
</div>