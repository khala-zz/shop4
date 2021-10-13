<div class="col-lg-9 order-lg-last col-md-12 order-md-first">
    <!-- Shop Top Area Start -->
    <div class="shop-top-bar">
        <!-- Left Side start -->
        <div class="shop-tab nav mb-res-sm-15">
            
            <a href="<?php echo e(url('cua-hang')); ?>" style="color:#ef1e1e;">Bỏ lọc</a>
            <p>Hiển thị <?php echo e($products->firstItem()); ?> đến <?php echo e($products->lastItem()); ?> của tổng <?php echo e($products->total()); ?> sản phẩm</p>
            <?php if(Request::get('price')): ?>
            <p>Giá từ <b style="color: red;"><?php echo e(Request::get('price')); ?></b></p>
            <?php endif; ?>
        </div>
        <!-- Left Side End -->
        <!-- Right Side Start -->
        <div class="select-shoing-wrap">
            <div class="shot-product">
                <p>Sắp xếp:</p>
            </div>
            <div class="shop-select">
                <form method ="get" action="<?php echo e(url('cua-hang')); ?>">
                    <select name="orderby" class="form-control" onchange="this.form.submit()">
                        <option value="created_at" <?php echo e(Request::get('orderby') == 'created_at'?'selected':''); ?>>Mới nhất</option>
                        <option  value="title_tang" <?php echo e(Request::get('orderby') == 'title_tang'?'selected':''); ?>>A đến Z</option>
                        <option  value="title_giam" <?php echo e(Request::get('orderby') == 'title_giam'?'selected':''); ?>> Z đến A</option>
                        
                    </select>
                    <!-- gan filter theo nhan hieu và tổng sản phẩm hiện theo trang -->
                    <input type="hidden" name="count" value="<?php echo e(Request::get('count')?Request::get('count') : 12); ?>">
                    <input type="hidden" name="brand_filter" value="<?php echo e(Request::get('brand_filter')?Request::get('brand_filter') : 0); ?>">
                    <input type="hidden" name="price" value="<?php echo e(Request::get('price')?Request::get('price') : 0); ?>">
                    <input type="hidden" name="category_id" value="<?php echo e(Request::get('category_id')?Request::get('category_id') : 0); ?>">
                    <!-- end gan filter theo nhan hieu và tổng sản phẩm hiện theo trang -->
                </form>
            </div>
        </div>
        <!-- Right Side End -->
    </div>
    <!-- Shop Top Area End -->

    <!-- Shop Bottom Area Start -->
    <div class="shop-bottom-area mt-35">
        <!-- Shop Tab Content Start -->
        <div class="tab-content jump">
            <!-- Tab One Start -->
            <div id="shop-1" class="tab-pane active">
                <div class="row">
                    <?php $__empty_1 = true; $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                    <!-- kiem tra xem product co giam gia hay khong? -->
                    <?php if(!empty($product -> discount)): ?>
                    <?php $product_price = $product -> price * (100 - $product -> discount)/100; ?>        
                    <?php else: ?>
                    <?php $product_price = $product -> price; ?>
                    <?php endif; ?>
                    <!-- end kiem tra xem product co giam gia hay khong? -->
                    <div class="col-xl-3 col-md-6 col-lg-4 col-sm-6 col-xs-12">
                        <article class="list-product">
                            <div class="img-block">
                                <a href="<?php echo e(url('/san-pham/'.slugify($product  -> title,'-').'/'.$product ->  id)); ?>" class="thumbnail">
                                    <img class="first-img" src="<?php echo e(asset('uploads/products-daidien/'.$product -> image)); ?>" alt="<?php echo e($product -> title); ?>" />
                                    
                                </a>
                                <div class="quick-view">
                                    <a class="quick_view khala-quickview" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal" value = "<?php echo e($product ->  id); ?>">
                                        <i class="ion-ios-search-strong"></i>
                                    </a>
                                </div>
                            </div>
                            <?php if(!empty($product -> new)): ?>
                            <ul class="product-flag">
                                <li class="new">Mới</li>
                            </ul>
                            <?php endif; ?>
                            <div class="product-decs">
                                <a class="inner-link" href="<?php echo e(url('/danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id)); ?>"><span><?php echo e($product -> category -> title); ?></span></a>
                                <h2><a href="<?php echo e(url('/san-pham/'.slugify($product  -> title,'-').'/'.$product ->  id)); ?>" class="product-link"><?php echo e($product -> title); ?></a></h2>
                                <div class="rating-product padding-left-start-khala">
                                    <!-- hien thi rating -->
                                    <?php 
                                    $avg_rating = 0;
                                    if($product -> pro_total_rating){
                                                                        // tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
                                        $total_number = $product -> pro_total_number - 1;
                                        $total_rating = $product -> pro_total_rating - 1 ;
                                        if($total_number <> 0 && $total_rating <> 0){
                                           $avg_rating = round($total_number/$total_rating,2);
                                       }
                                       
                                   }
                                   
                                   ?>
                                   <span class="rating-stars selected" >
                                    <?php for($i = 1; $i <= 5; $i++): ?>
                                    <a class="star-<?php echo e($i); ?> <?php echo e($i <= $avg_rating ? 'active':''); ?> "><?php echo e($i); ?></a>
                                    <?php endfor; ?>
                                    
                                </span>
                                <!-- end hien thi rating -->
                            </div>
                            <div class="pricing-meta">
                                <ul>
                                 <!-- hien thi gia -->
                                 <?php if(!empty($product -> discount)): ?>
                                 
                                 <li class="old-price"><?php echo e(formatMoney($product -> price)); ?></li>
                                 <li class="current-price"><?php echo e(formatMoney($product -> price * (100 - $product -> discount)/100)); ?></li>
                                 
                                 <li class="discount-price">-<?php echo e($product -> discount); ?>%</li>
                                 <?php else: ?>
                                 
                                 <li class="old-price not-cut"><?php echo e(formatMoney($product -> price)); ?></li>
                                 
                                 <?php endif; ?>
                                 <!-- end hien thi gia -->
                             </ul>


                         </div>
                     </div>
                     <div class="add-to-link">
                        <ul>
                            <li class="cart"><a class="cart-btn btn-add-cart" href="<?php echo e(url('add-cart')); ?>" value = "<?php echo e($product -> id.'khala'.$product -> product_code.'khala'.$product -> title.'khala'.$product_price); ?>">THÊM VÀO GIỎ HÀNG </a></li>
                            
                        </ul>
                    </div>
                </article>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
            <p>Chưa có sản phẩm</p>
            <?php endif; ?>
            
        </div>
    </div>
    <!-- Tab One End -->
    
</div>
<!-- Shop Tab Content End -->
<!--  Pagination Area Start -->
<div class="text-center">
    <?php echo $products -> links(); ?>

</div>
<!--  Pagination Area End -->
</div>
<!-- Shop Bottom Area End -->
</div><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/shop/right_shop.blade.php ENDPATH**/ ?>