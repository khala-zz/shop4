 <section class="recent-add-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Section Title -->
                            <div class="section-title">
                                <h2>Có thể bạn thích</h2>
                                <p>Có <?php echo e($products_like -> count()); ?> sản phẩm:</p>
                            </div>
                            <!-- Section Title -->
                        </div>
                    </div>
                    <!-- Recent Product slider Start -->
                    <div class="recent-product-slider owl-carousel owl-nav-style">
                        <!-- Single Item -->
                        <?php $__empty_1 = true; $__currentLoopData = $products_like; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <!-- kiem tra xem product co giam gia hay khong? -->
                            <?php if(!empty($product -> discount)): ?>
                                <?php $product_price = $product -> price * (100 - $product -> discount)/100; ?>        
                            <?php else: ?>
                                <?php $product_price = $product -> price; ?>
                            <?php endif; ?>
                            <!-- end kiem tra xem product co giam gia hay khong? -->
                            <article class="list-product">
                                <div class="img-block">
                                    <a href="<?php echo e(url('san-pham/'.slugify($product -> title,'-').'/'.$product -> id)); ?>" class="thumbnail">
                                        <img class="first-img" src="<?php echo e(asset('uploads/products-daidien/'.$product -> image)); ?>" alt="<?php echo e($product -> title); ?>" />
                                       
                                    </a>
                                   
                                </div>
                                <?php if($product -> new): ?>
                                    <ul class="product-flag">
                                        <li class="new">Mới</li>
                                    </ul>
                                <?php endif; ?>
                                <div class="product-decs">
                                    <a class="inner-link" href="<?php echo e(url('danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id)); ?>"><span><?php echo e($product -> category -> title); ?></span></a>
                                    <h2><a href="<?php echo e(url('san-pham/'.slugify($product -> title,'-').'/'.$product -> id)); ?>" class="product-link"><?php echo e($product -> title); ?></a></h2>
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
                                        <li class="cart">
                                            <a class="cart-btn btn-add-cart" href="<?php echo e(url('add-cart')); ?>" value = "<?php echo e($product -> id.'khala'.$product -> product_code.'khala'.$product -> title.'khala'.$product_price); ?>">THÊM VÀO GIỎ HÀNG </a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </article>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                            Chưa có sản phẩm liên quan
                        <?php endif; ?>
                        
                    </div>
                    <!-- Recent product slider end -->
                </div>
            </section><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/product/products_like.blade.php ENDPATH**/ ?>