 
{{--  @foreach($childs as $child)
 
 <ul style="display: block">
     <li>
        <a href="{{ Request::segment(1) == 'cat_news'?route('cat_news.news',['slug' => slugify($child -> title,'-'),'id' => $child -> id]): route('category.product',['slug' => slugify($child -> title,'-'),'id' => $child -> id]) }}" 
        	class="{{ count($child->children) ? 'show' :'' }} {{Request::segment(3) == $child -> id ? 'active-filters' : " "}}">{{$child->title}}</a>
        @if(count($child->children))
        	
            @include('frontend.news.menusub',['childs' => $child -> children])
           
        @endif

    </li>
</ul>
@endforeach --}}

@foreach($childs as $child)

    
        <li class="nav-item {{Request::segment(3) == $child-> id ? 'active' : " "}}">
            <a href="{{ route('cat_news.news',['slug' => slugify($child -> title,'-'),'id' => $child -> id])}}" >{{$child->title}}</a>
            @if(count($child->children))

            @include('frontend.news.menusub',['childs' => $child -> children])
            @endif

        </li>
    
@endforeach()