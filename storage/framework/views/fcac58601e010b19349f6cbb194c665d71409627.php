 <section class="categorie-area categorie-area-2 ptb-100px">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <!-- Section Title -->
                            <div class="section-title mt-res-sx-30px mt-res-md-30px underline-shape">
                                <h2>Danh mục sản phẩm</h2>
                                <p>Các danh mục sản phẩm mới nhất</p>
                            </div>
                            <!-- Section Title -->
                        </div>
                    </div>
                    <!-- Category Slider Start -->
                    <div class="category-slider-2 owl-carousel owl-nav-style-3">
                        <!-- Single item -->
                        <?php $__empty_1 = true; $__currentLoopData = $categories_share; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <div class="category-item">
                                <div class="category-list">
                                    <div class="category-thumb">
                                        <a href="<?php echo e(url('danh-muc-san-pham/'.slugify($category -> title,'-').'/'.$category -> id)); ?>">
                                            <img src="<?php echo e(asset('uploads/categories/'.$category -> image)); ?>" alt="<?php echo e($category -> title); ?>" />
                                        </a>
                                    </div>
                                    <div class="desc-listcategoreis">
                                        <div class="name_categories">
                                            <h4><?php echo e($category -> title); ?></h4>
                                        </div>
                                        <span class="number_product"><?php echo e($category -> products -> count()); ?> Sản phẩm</span>
                                        <a href="<?php echo e(url('danh-muc-san-pham/'.slugify($category -> title,'-').'/'.$category -> id)); ?>"> Mua sắm <i class="ion-android-arrow-dropright-circle"></i></a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                            <div class="category-item">Danh mục sản phẩm đang cập nhật</div>
                        <?php endif; ?>    
                        <!-- Single item -->
                        
                    </div>
                </div>
            </section><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/home/components/categories.blade.php ENDPATH**/ ?>