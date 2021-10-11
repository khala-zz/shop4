
 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" >
     <form name = "addToCart" method = "post" action = "add-cart" id="myform">
                        @csrf
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
            </div>
            <div class="modal-body">
                <div class="row" >
                    
                    <div class="col-md-5 col-sm-12 col-xs-12">
                        <div class="tab-content quickview-big-img" id="big-img">
                            <!--
                            <div id="pro-1" class="tab-pane fade show active">
                                <img src="assets/images/product-image/furniture/1.jpg" alt="" />
                            </div>
                            <div id="pro-2" class="tab-pane fade">
                                <img src="assets/images/product-image/furniture/2.jpg" alt="" />
                            </div>
                            <div id="pro-3" class="tab-pane fade">
                                <img src="assets/images/product-image/furniture/3.jpg" alt="" />
                            </div>
                            <div id="pro-4" class="tab-pane fade">
                                <img src="assets/images/product-image/furniture/4.jpg" alt="" />
                            </div>
                        -->
                        </div>
                       
                        <div class="quickview-wrap mt-15">
                            <div class="quickview-slide-active owl-carousel nav owl-nav-style owl-nav-style-2" role="tablist" id="small-img">
                                {{--
                                <a class="active" data-toggle="tab" href="#pro-1"><img src="{{asset('images/product-image/furniture/1.jpg')}}" alt="" /></a>
                                <a data-toggle="tab" href="#pro-2"><img src="{{asset('images/product-image/furniture/1.jpg')}}" alt="" /></a>
                                <a data-toggle="tab" href="#pro-3"><img src="{{asset('images/product-image/furniture/1.jpg')}}" alt="" /></a>
                                <a data-toggle="tab" href="#pro-4"><img src="{{asset('images/product-image/furniture/1.jpg')}}" alt="" /></a>
                                --}}
                            </div>
                        </div>
                    </div>

                    <div class="col-md-7 col-sm-12 col-xs-12" id = 'cot-phai'>
                        <!--
                        <div class="product-details-content quickview-content">
                            <h2>Originals Kaval Windbr</h2>
                            <p class="reference">Reference:<span> demo_17
                                
                               
                            </span></p>
                            <div class="pro-details-rating-wrap">
                                <div class="rating-product">
                                    <i class="ion-android-star"></i>
                                    <i class="ion-android-star"></i>
                                    <i class="ion-android-star"></i>
                                    <i class="ion-android-star"></i>
                                    <i class="ion-android-star"></i>
                                </div>
                                <span class="read-review"><a class="reviews" href="#">Read reviews (1)</a></span>
                            </div>
                            <div class="pricing-meta">
                                <ul>
                                    <li class="old-price not-cut">€18.90</li>
                                </ul>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisic elit eiusm tempor incidid ut labore et dolore magna aliqua. Ut enim ad minim venialo quis nostrud exercitation ullamco</p>
                            <div class="pro-details-size-color">
                                <div class="pro-details-color-wrap">
                                    <span>Color</span>
                                    <div class="pro-details-color-content">
                                        <ul>
                                            <li class="blue"></li>
                                            <li class="maroon active"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="pro-details-quality">
                                <div class="cart-plus-minus">
                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1" />
                                </div>
                                <div class="pro-details-cart btn-hover">
                                    <a href="#"> + Add To Cart</a>
                                </div>
                            </div>
                            
                            
                        </div>
                        -->
                    </div>
                
                    
                </div>
            </div>
        </div>
    </div>
</form>

</div> 

