 
 @foreach($childs as $index => $child)
 

    <li class="{{count($child->children)?'mega-menu-title':''}}" >

        <a href="{{route('category.product',['slug' => slugify($child -> title,'-'),'id' => $child -> id]) }}" >{{$child->title}}</a>
        
        @if(count($child -> children))
        <ul class="mb-20px menu-con-khala menu-khala-{{$index}}">

            
                @include('frontend.home.menu_category',['childs' => $child -> children])
  
        </ul>  
        @endif
             
    </li>

@endforeach

 