 <div class="col-lg-3 order-lg-first col-md-12 order-md-last mb-res-md-60px mb-res-sm-60px">
                            <div class="left-sidebar">
                                <div class="sidebar-heading">
                                    <div class="main-heading">
                                        <h2>Bộ lọc</h2>
                                    </div>
                                   

                                         
                                   
                                    <!-- Sidebar single item -->
                                    <div class="sidebar-widget">
                                        <h4 class="pro-sidebar-title">Danh mục sản phẩm</h4>
                                        <div class="sidebar-widget-list">
                                             
                                            <!--- menu categorry -->
                                                
                                            <nav class="category-menu">
                                                <ul>
                                                
                                                    <?php $__currentLoopData = $categories_share; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                                            <?php if($item -> parent == null): ?>
                                                                <li class="menu-item-has-children menu-item-has-children-<?php echo e($index + 1); ?>">
                                                                    <!--hien dau > -->
                                                                    <?php if(count($item -> children)): ?>
                                                                        <a href="<?php echo e(url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id)); ?>" class="<?php echo e(Request::segment(3) == $item -> id?'active-khala':''); ?>" >
                                                                           
                                                                            <?php echo e($item->title); ?> <i class="ion-ios-arrow-down"></i></span>
                                                                        </a>
                                                                    <?php else: ?>
                                                                         <a href="<?php echo e(url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id)); ?>" class="<?php echo e(Request::segment(3) == $item -> id?'active-khala':''); ?>" >
                                                                           
                                                                           <?php echo e($item->title); ?>

                                                                        </a>
                                                                    <?php endif; ?>
                                                                    <!-- end hien dau > -->
                                                                    
                                                                    <?php if(count($item->children)): ?>
                                                                         <ul class="category-mega-menu category-mega-menu-<?php echo e($index + 1); ?>">
                                                                            <?php echo $__env->make('frontend.category.menu_category',['childs' => $item -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                                        </ul>
                                                                    <?php endif; ?>
                                                                </li>
                                                            
                                                            <?php endif; ?>

                                                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                               
                                                </ul>
                               
                                
                                            </nav>
                                        
                                            <!--- end menu categorry -->
                                        </div>
                                    </div>
                                    <!-- Sidebar single item -->
                                </div>
                                <!-- Sidebar single item -->
                                <div class="sidebar-widget mt-20">
                                    <h4 class="pro-sidebar-title">Giá</h4>
                                    <div class="price-filter mt-10">
                                        <form action="<?php echo e(url()->current()); ?>">
                                            <div class="price-slider-amount">
                                                <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                            </div>
                                            <div id="slider-range"></div>

                                            <button class="submit-khala" type="submit">Tìm kiếm</button>
                                            
                                            <input type="hidden" name="brand_filter" value="<?php echo e(Request::get('brand_filter')?Request::get('brand_filter') : 0); ?>">
                                        </form>
                                    </div>
                                </div>
                                
                                <!-- Sidebar single item -->
                                <div class="sidebar-widget mt-30">
                                    <h4 class="pro-sidebar-title">Nhãn hiệu</h4>
                                    <div class="sidebar-widget-list">
                                        <ul>
                                            <?php $__currentLoopData = $brands_count; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <a href="<?php echo e(url()->current().'?brand_filter='.$brand -> id); ?>" class="<?php echo e(Request::get('brand_filter') == $brand -> id?'active-khala':''); ?>">
                                                        <?php echo e($brand -> title); ?>

                                                    </a>
                                                    
                                                </div>
                                            </li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            
                                            
                                        </ul>
                                    </div>
                                </div>
                                
                            </div>
                        </div><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/category/filter_shop.blade.php ENDPATH**/ ?>