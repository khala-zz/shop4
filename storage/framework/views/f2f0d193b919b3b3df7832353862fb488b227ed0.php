<section class="recent-add-area mb-70px">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <!-- Section Title -->
                <div class="section-title underline-shape">
                    <h2>Sản phẩm mới về</h2>
                    <p>Các mẫu mã đa dạng,hiện đại</p>
                </div>
                <!-- Section Title -->
            </div>
        </div>
        <!-- Recent Product slider Start -->
        <div class="best-sell-slider owl-carousel owl-nav-style-3">
         
            <!-- Product Single Item -->
            <!-- dung foreach array_chunk de lap 2 item 1 lan -->
            <?php foreach (array_chunk($products_arrivals, 2) as $group) : ?>
            <?php $__currentLoopData = $group; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key_arrivals => $value_arrivals): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <!-- kiem tra xem product co giam gia hay khong? -->
            <?php if(!empty($value_arrivals['discount'])): ?>
            <?php $product_price = $value_arrivals['price'] * (100 - $value_arrivals['discount'])/100; ?>        
            <?php else: ?>
            <?php $product_price = $value_arrivals['price']; ?>
            <?php endif; ?>

            <!-- end kiem tra xem product co giam gia hay khong? -->
            <?php if($key_arrivals % 2 == 0): ?>
            <div class="product-inner-item">
                <?php endif; ?>
                
                <article class="list-product <?php echo e($key_arrivals % 2 == 0?'mb-30px':''); ?>">
                    <div class="img-block">
                        <a href="<?php echo e(url('san-pham/'.slugify($value_arrivals['title'],'-').'/'.$value_arrivals['id'])); ?>" class="thumbnail">
                            <img class="first-img" src="<?php echo e(asset('uploads/products-daidien/'.$value_arrivals['image'])); ?>" alt="<?php echo e($value_arrivals['title']); ?>" />

                            <div class="add-to-link">
                                <ul>
                                    <li>
                                        <a class="btn-add-cart" href="<?php echo e(url('add-cart')); ?>" value = "<?php echo e($value_arrivals['id'].'khala'.$value_arrivals['product_code'] . 'khala'.$value_arrivals['title'].'khala'.$product_price); ?>" title="Thêm vào giỏ hàng"><i class="ion-bag"></i></a>
                                    </li>
                                    
                                    <li>
                                        <a href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal" value = "<?php echo e($value_arrivals['id']); ?>" class="khala-quickview"><i class="ion-ios-search-strong"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <ul class="product-flag">
                            <li class="new">Mới</li>
                        </ul>
                        <div class="product-decs text-center">
                            
                            <a class="inner-link" href="<?php echo e(url('danh-muc-san-pham/'.slugify($value_arrivals['category']['title'],'-').'/'.$value_arrivals['category']['id'])); ?>"><span><?php echo e($value_arrivals['category']['title']); ?></span></a>
                            <h2><a href="<?php echo e(url('san-pham/'.slugify($value_arrivals['title'],'-').'/'.$value_arrivals['id'])); ?>" class="product-link"><?php echo e($value_arrivals['title']); ?></a></h2>
                            <div class="rating-product padding-left-start-khala">
                                <!-- hien thi rating -->
                                <?php 
                                $avg_rating = 0;
                                if($value_arrivals['pro_total_rating']){
                                                    // tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
                                    $total_number = $value_arrivals['pro_total_number'] - 1;
                                    $total_rating = $value_arrivals['pro_total_rating']  - 1 ;
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
                               <?php if(!empty($value_arrivals['discount'])): ?>
                               
                               <li class="old-price"><?php echo e(formatMoney($value_arrivals['price'])); ?></li>
                               <li class="current-price"><?php echo e(formatMoney($value_arrivals['price'] * (100 - $value_arrivals['discount'])/100)); ?></li>
                               
                               <li class="discount-price">-<?php echo e($value_arrivals['discount']); ?>%</li>
                               <?php else: ?>
                               
                               <li class="old-price not-cut"><?php echo e(formatMoney($value_arrivals['price'])); ?></li>
                               
                               <?php endif; ?>
                               <!-- end hien thi gia -->
                               
                           </ul>
                       </div>
                   </div>
               </article>

               
               <?php if($key_arrivals % 2 == 1): ?>  
           </div>
           <?php endif; ?>

           <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
           <?php endforeach; ?>  
       </div>
       <!-- Recent Area Slider End -->
   </div>
</section><?php /**PATH G:\laragon\www\shop3\resources\views/frontend/home/components/new_arrivals.blade.php ENDPATH**/ ?>