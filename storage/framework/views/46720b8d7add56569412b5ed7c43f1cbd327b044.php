 <section class="category-product-area home-10 mt-40px mb-70px">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-12 col-lg-12 col-xl-9">
                            <div class="row">
                                <div class="col-xs-12 col-md-12 col-lg-4">
                                    <!-- Section Title -->
                                    <div class="section-title underline-shape underline-shape-left">
                                        <h2>Nội thất trong nhà</h2>
                                    </div>
                                    <!-- Section Title -->
                                    <div class="category-product-slider owl-carousel responsive-owl-nav-style owl-nav-style owl-nav-style-4">
                                        <!-- noi that trong nha -->
                                        <?php $__currentLoopData = $products_home; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $keyHome => $valueHome): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($keyHome % 3 == 0): ?>
                                                <div class="feature-slider-item">
                                            <?php endif; ?>
                                        
                                            <article class="list-product">
                                                <div class="img-block">
                                                    <a href="<?php echo e(url('san-pham/'.slugify($valueHome -> title,'-').'/'.$valueHome -> id)); ?>" class="thumbnail">
                                                        <img class="first-img" src="<?php echo e(asset('uploads/products-daidien/'.$valueHome -> image)); ?>" alt="<?php echo e($valueHome -> title); ?>" />
                                                       
                                                    </a>
                                                    <div class="quick-view">
                                                        <a class="quick_view khala-quickview" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal" value = "<?php echo e($valueHome -> id); ?>" >
                                                            <i class="ion-ios-search-strong"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-decs">
                                                    
                                                    <a class="inner-link" href="<?php echo e(url('danh-muc-san-pham/'.slugify($valueHome -> category -> title,'-').'/'.$valueHome -> category_id)); ?>"><span><?php echo e($valueHome -> category -> title); ?></span></a>
                                                    <h2><a href="<?php echo e(url('san-pham/'.slugify($valueHome -> title,'-').'/'.$valueHome -> id)); ?>" class="product-link"><?php echo e($valueHome -> title); ?></a></h2>
                                                    <div class="rating-product small-start padding-left-start-khala">
                                                        <!-- hien thi rating -->
                                                        <?php 
                                                            $avg_rating = 0;
                                                            if($valueHome -> pro_total_rating){
                                                                // tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
                                                                $total_number = $valueHome -> pro_total_number - 1;
                                                                $total_rating = $valueHome -> pro_total_rating - 1 ;
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
                                                            <?php if(!empty($valueHome -> discount)): ?>
                                                           
                                                            <li class="old-price"><?php echo e(formatMoney($valueHome -> price)); ?></li>
                                                            <li class="current-price"><?php echo e(formatMoney($valueHome -> price * (100 - $valueHome -> discount)/100)); ?></li>
                                                            <?php else: ?>
                                                             
                                                                <li class="old-price not-cut"><?php echo e(formatMoney($valueHome -> price)); ?></li>
                                                            
                                                            <?php endif; ?>
                                                            <!-- end hien thi gia -->

                                                        </ul>
                                                    </div>
                                                </div>
                                            </article>
                                            
                                            <?php if($keyHome % 3 == 2): ?>  
                                                </div>
                                            <?php endif; ?>
                                        
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($products_home -> count() % 3 <> 0): ?>
                                        </div>
                                        <?php endif; ?>
                                         <!-- end noi that trong nha -->
                                        
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12 col-lg-4">
                                    <!-- Section Title -->
                                    <div class="section-title mt-res-sx-30px mt-res-md-30px underline-shape underline-shape-left">
                                        <h2>Nội thất văn phòng</h2>
                                    </div>
                                    <!-- Section Title -->
                                    <div class="category-product-slider owl-carousel responsive-owl-nav-style owl-nav-style owl-nav-style-4">
                                         <!-- noi that van phong -->
                                        <?php $__currentLoopData = $products_office; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key_office => $value_office): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($key_office % 3 == 0): ?>
                                                <div class="feature-slider-item">
                                            <?php endif; ?>
                                        
                                            <article class="list-product">
                                                <div class="img-block">
                                                    <a href="<?php echo e(url('san-pham/'.slugify($value_office -> title,'-').'/'.$value_office -> id)); ?>" class="thumbnail">
                                                        <img class="first-img" src="<?php echo e(asset('uploads/products-daidien/'.$value_office -> image)); ?>" alt="<?php echo e($value_office -> title); ?>" />
                                                       
                                                    </a>
                                                    <div class="quick-view">
                                                        <a class="quick_view khala-quickview" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal" value = "<?php echo e($value_office -> id); ?>" >
                                                            <i class="ion-ios-search-strong"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-decs">
                                                    <a class="inner-link" href="<?php echo e(url('danh-muc-san-pham/'.slugify($value_office -> category -> title,'-').'/'.$value_office -> category_id)); ?>"><span><?php echo e($value_office -> category -> title); ?></span></a>
                                                    <h2><a href="<?php echo e(url('san-pham/'.slugify($value_office -> title,'-').'/'.$value_office -> id)); ?>" class="product-link"><?php echo e($value_office -> title); ?></a></h2>
                                                    <div class="rating-product small-start padding-left-start-khala">
                                                        <!-- hien thi rating -->
                                                        <?php 
                                                            $avg_office = 0;
                                                            if($value_office -> pro_total_rating){
                                                                // tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
                                                                $total_number = $value_office -> pro_total_number - 1;
                                                                $total_rating = $value_office -> pro_total_rating - 1 ;
                                                                if($total_number <> 0 && $total_rating <> 0){
                                                                     $avg_office = round($total_number/$total_rating,2);
                                                                }
                                                               
                                                            }
                                                            
                                                        ?>

                                                        <span class="rating-stars selected" >
                                                            <?php for($i = 1; $i <= 5; $i++): ?>
                                                            <a class="star-<?php echo e($i); ?> <?php echo e($i <= $avg_office ? 'active':''); ?> "><?php echo e($i); ?></a>
                                                            <?php endfor; ?>
                                                            
                                                        </span>
                                                        <!-- end hien thi rating -->
                                                    </div>
                                                    <div class="pricing-meta">
                                                        <ul>
                                                            <!-- hien thi gia -->
                                                            <?php if(!empty($value_office -> discount)): ?>
                                                           
                                                            <li class="old-price"><?php echo e(formatMoney($value_office -> price)); ?></li>
                                                            <li class="current-price"><?php echo e(formatMoney($value_office -> price * (100 - $value_office -> discount)/100)); ?></li>
                                                            <?php else: ?>
                                                             
                                                                <li class="old-price not-cut"><?php echo e(formatMoney($value_office -> price)); ?></li>
                                                            
                                                            <?php endif; ?>
                                                            <!-- end hien thi gia -->

                                                        </ul>
                                                    </div>
                                                </div>
                                            </article>
                                            
                                            <?php if($key_office % 3 == 2): ?>  
                                                </div>
                                            <?php endif; ?>
                                        
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($products_office -> count() % 3 <> 0): ?>
                                        </div>
                                        <?php endif; ?>
                                         <!-- end noi that van phong -->
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12 col-lg-4">
                                    <!-- Section Title -->
                                    <div class="section-title mt-res-sx-30px mt-res-md-30px underline-shape underline-shape-left">
                                        <h2>Nội thất ánh sáng</h2>
                                    </div>
                                    <!-- Section Title -->
                                    <div class="category-product-slider owl-carousel responsive-owl-nav-style owl-nav-style owl-nav-style-4">
                                       <!-- noi that anh sang -->
                                        <?php $__currentLoopData = $products_light; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key_light => $value_light): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($key_light % 3 == 0): ?>
                                                <div class="feature-slider-item">
                                            <?php endif; ?>
                                        
                                            <article class="list-product">
                                                <div class="img-block">
                                                    <a href="<?php echo e(url('san-pham/'.slugify($value_light -> title,'-').'/'.$value_light -> id)); ?>" class="thumbnail">
                                                        <img class="first-img" src="<?php echo e(asset('uploads/products-daidien/'.$value_light -> image)); ?>" alt="<?php echo e($value_light -> title); ?>" />
                                                       
                                                    </a>
                                                    <div class="quick-view">
                                                        <a class="quick_view khala-quickview" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal" value = "<?php echo e($value_light -> id); ?>" >
                                                            <i class="ion-ios-search-strong"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-decs">
                                                    <a class="inner-link" href="<?php echo e(url('danh-muc-san-pham/'.slugify($value_light -> category -> title,'-').'/'.$value_light -> category_id)); ?>"><span><?php echo e($value_light -> category -> title); ?></span></a>
                                                    <h2><a href="<?php echo e(url('san-pham/'.slugify($value_light -> title,'-').'/'.$value_light -> id)); ?>" class="product-link"><?php echo e($value_light -> title); ?></a></h2>
                                                    <div class="rating-product small-start padding-left-start-khala">
                                                        <!-- hien thi rating -->
                                                        <?php 
                                                            $avg_light= 0;
                                                            if($value_light -> pro_total_rating){
                                                                // tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
                                                                $total_number = $value_light -> pro_total_number - 1;
                                                                $total_rating = $value_light -> pro_total_rating - 1 ;
                                                                if($total_number <> 0 && $total_rating <> 0){
                                                                     $avg_light = round($total_number/$total_rating,2);
                                                                }
                                                               
                                                            }
                                                            
                                                        ?>

                                                        <span class="rating-stars selected" >
                                                            <?php for($i = 1; $i <= 5; $i++): ?>
                                                            <a class="star-<?php echo e($i); ?> <?php echo e($i <= $avg_light ? 'active':''); ?> "><?php echo e($i); ?></a>
                                                            <?php endfor; ?>
                                                            
                                                        </span>
                                                        <!-- end hien thi rating -->
                                                    </div>
                                                    <div class="pricing-meta">
                                                        <ul>
                                                            <!-- hien thi gia -->
                                                            <?php if(!empty($value_light -> discount)): ?>
                                                           
                                                            <li class="old-price"><?php echo e(formatMoney($value_light -> price)); ?></li>
                                                            <li class="current-price"><?php echo e(formatMoney($value_light -> price * (100 - $value_light -> discount)/100)); ?></li>
                                                            <?php else: ?>
                                                             
                                                                <li class="old-price not-cut"><?php echo e(formatMoney($value_light -> price)); ?></li>
                                                            
                                                            <?php endif; ?>
                                                            <!-- end hien thi gia -->

                                                        </ul>
                                                    </div>
                                                </div>
                                            </article>
                                            
                                            <?php if($key_light % 3 == 2): ?>  
                                                </div>
                                            <?php endif; ?>
                                        
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($products_light -> count() % 3 <> 0): ?>
                                        </div>
                                        <?php endif; ?>
                                         <!-- end noi that van phong -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-12 col-lg-12 d-lg-none d-xl-block col-xl-3 mtb-res-sm-30 mtb-res-md-30">
                            <div class="banner-inner">
                                <a href="<?php echo e(url($bannerOne -> link)); ?>"><img src="<?php echo e(asset('uploads/banners/'.$bannerOne -> image)); ?>" alt="<?php echo e($bannerOne -> title); ?>" class="img-responsive" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/home/components/list_product.blade.php ENDPATH**/ ?>