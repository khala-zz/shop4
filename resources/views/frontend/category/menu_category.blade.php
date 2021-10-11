 
 @foreach($childs as $index => $child)

   
        <li class="menu-item-has-children menu-item-has-children-{{$index + 2}}">
        
                @if(count($child -> children))
                    <a href="{{ url('danh-muc-san-pham/'.slugify($child -> title,'-').'/'.$child -> id) }}" >
                       
                        {{$child->title}} <i class="ion-ios-arrow-down ion-ios-arrow-down-khala"></i>
                    </a>
                @else
                     <a href="{{ url('danh-muc-san-pham/'.slugify($child -> title,'-').'/'.$child -> id) }}" >
                       
                       {{$child->title}}
                    </a>
                @endif
                
                @if(count($child->children))

                    
                    <ul class="category-mega-menu category-mega-menu-{{$index + 2}}">
                        @include('frontend.category.menu_category',['childs' => $child -> children])
                    </ul>
                @endif
            
       
           
    </li>

@endforeach

 