 
 @foreach($childs as $index => $child)

   @if($item -> parent == null)
        <li class="menu-item-has-children menu-item-has-children-{{$index + 2}}">
        
                @if(count($child -> children))
                    <a href="{{ route('category.product',['slug' => slugify($child -> title,'-'),'id' => $child -> id])}}" >
                       
                        {{$child->title}} <span class="toggle-btn"></span>
                    </a>
                @else
                     <a href="{{ route('category.product',['slug' => slugify($child -> title,'-'),'id' => $item -> id])}}" >
                       
                       {{$child->title}}
                    </a>
                @endif
            	
            	@if(count($child->children))

		            
		       		<ul class="category-mega-menu category-mega-menu-{{$index + 2}}">
                        @include('frontend.home.mobile_category',['childs' => $child -> children])
                    </ul>
		        @endif
            
     @endif   
           
    </li>

@endforeach

 