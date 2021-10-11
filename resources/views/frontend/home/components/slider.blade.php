<div class="slider-area">
    <div class="slider-active-3 owl-carousel slider-hm8 owl-dot-style">
        <!-- Slider Single Item Start -->
       @forelse($sliders as $slider)
        <div class="slider-height-10 d-flex align-items-start justify-content-start bg-img" style="background-image: url({{asset('uploads/sliders/'.$slider -> image_name)}});">
            <div class="container">
                <div class="slider-content-13 slider-animated-1 text-left">
                    <span class="animated">{{$slider -> name}}</span>
                    <h1 class="animated">
                        {{$slider -> nametwo}}<br />
                        <strong>{{$slider -> namethree}}</strong>
                    </h1>
                    <a href="{{url($slider -> namefour)}}" class="shop-btn animated">MUA SẮM</a>
                </div>
            </div>
        </div>
        @empty
        <p>Chưa có slider</p>
        @endforelse
        <!-- Slider Single Item End -->
    </div>
</div>