 <!-- dung chep de css so san pham tron gio hang -->
 <style>
     .count-cart::after{
        content:"<?php echo e(count(getProductCart())); ?>";
    }  
</style>

<header class="main-header home-10 home-14 responsive">
    <!-- Header Top Start -->
    <div class="header-top-nav">
        <div class="container">
            <div class="row">
                <!--Left Start-->
                <div class="col-lg-4 col-md-4">
                    <div class="left-text">
                        <p>Chào mừng bạn đến cửa hàng Khala!</p>
                    </div>
                </div>
                <!--Left End-->
                <!--Right Start-->
                <div class="col-lg-8 col-md-8 text-right">
                    <div class="header-right-nav">
                        <div class="dropdown-navs">
                            <ul>
                             <!-- link dang nhap,dang ki -->
                             <?php if(empty(Auth::check())): ?>
                             <li>
                                <a href="<?php echo e(url('/front-login?login=1')); ?>">Đăng nhập</a>
                            </li>
                            <li>
                                <a href="<?php echo e(url('/front-login?login=0')); ?>">Đăng kí</a>
                            </li>

                            <?php else: ?>
                            <li>
                                <a href="<?php echo e(url('/my-account')); ?>">Tài khoản</a>
                            </li>
                            <li>
                                <a  href="<?php echo e(url('/front-logout')); ?>">Đăng xuất</a>
                            </li>
                            <?php endif; ?>

                        </ul>
                    </div>
                </div>
            </div>
            <!--Right End-->
        </div>
    </div>
</div>
<!-- Header Top End -->
<!-- Header Buttom Start -->
<div class="header-navigation d-none d-lg-block sticky-nav">
    <div class="container">
        <div class="row">
            <!-- Logo Start -->
            <div class="col-md-2 col-sm-2">
                <div class="logo">
                    <a href="<?php echo e(url('/')); ?>"><img src="<?php echo e(asset('images/logo/logo.png')); ?>" alt="" /></a>
                </div>
            </div>
            <!-- Logo End -->
            <div class="col-md-10 col-sm-10">
                <!--Header Bottom Account Start -->
                <div class="header_account_area">
                    <!--Main Navigation Start -->
                    <div class="main-navigation d-none d-lg-block">
                        <ul>
                            <li >
                                <a href="<?php echo e(url('/')); ?>">Trang chủ </a>
                                
                            </li>

                            <li class="menu-dropdown">
                                <a href="#">Danh mục sản phẩm <i class="ion-ios-arrow-down"></i></a>
                                <ul class="mega-menu-wrap">  
                                    <!-- category share dung vies share trong app service provider -->
                                    <?php $__currentLoopData = $categories_share; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                        <?php if($item -> parent == null): ?>
                                            <li class="menu-dropdown">
                                                <!--hien dau > -->
                                                <?php if(count($item -> children)): ?>
                                                    <a href="<?php echo e(route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>" >
                                                     
                                                        <?php echo e($item->title); ?><i class='ion-ios-arrow-down'></i>
                                                    </a>
                                                <?php else: ?>
                                                    <a href="<?php echo e(route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>" >
                                                     
                                                     <?php echo e($item->title); ?>

                                                    </a>
                                                <?php endif; ?>
                                                <!-- end hien dau > -->
                                             
                                                <?php if(count($item->children)): ?>
                                                    <ul class="mega-menu-wrap">
                                                    <?php echo $__env->make('frontend.home.menu_category',['childs' => $item -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    </ul>
                                                <?php endif; ?>
                                            </li>
                                    
                                        <?php endif; ?>

                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                
                            </ul>
                        </li>       

                        <li >
                            <a href="<?php echo e(url('cua-hang')); ?>">Cửa hàng </i></a>
                            
                        </li>

                        
                        
                        <li>
                            <a href="<?php echo e(url('tin-tuc')); ?>">Tin tức </a>
                            
                        </li>

                        <li>
                            <a href="<?php echo e(url('tin-tuc/giới-thiệu/5')); ?>">Giới thiệu </a>
                            
                        </li>
                        <li><a href="<?php echo e(url('lien-he')); ?>">Liên hệ</a></li>
                    </ul>
                </div>
                <!--Main Navigation End -->
                <!--Cart info Start -->
                <div class="cart-info d-flex">
                    
                    <div class="mini-cart-warp">
                        <a href="#" class="count-cart" ><span><?php echo e(formatMoney(getTotalCart())); ?></span></a>
                        <!-- hien thi san pham trong gio hang -->
                        <?php if(count(getProductCart()) > 0): ?>
                            <div class="mini-cart-content">
                                <ul>
                                    <!-- liet ke san pham trong gio hang -->
                                    <?php $__currentLoopData = getProductCart(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="<?php echo e(url('san-pham/'.slugify($item -> product_name,'-').'/'. $item -> product_id)); ?>"><img alt="<?php echo e($item -> product_name); ?>" src="<?php echo e(asset('uploads/products-daidien/'.$item -> image)); ?>" /></a>
                                            <span class="product-quantity"><?php echo e($item -> quantity); ?>x</span>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h4><a href="<?php echo e(url('san-pham/'.slugify($item -> product_name,'-').'/'. $item -> product_id)); ?>"><?php echo e($item -> product_name); ?></a></h4>
                                            <span><?php echo e(formatMoney($item -> price)); ?></span>
                                            <div class="shopping-cart-delete">
                                                <a href="<?php echo e(url('/cart/delete-product/'.$item -> id)); ?>"><i class="ion-android-cancel"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                                <div class="shopping-cart-total">
                                 
                                    <h4 class="shop-total">Tổng : <span><?php echo e(formatMoney(getTotalCart())); ?></span></h4>
                                </div>
                                <div class="shopping-cart-btn text-center">
                                    <a class="default-btn" href="<?php echo e(url('cart')); ?>">Xem giỏ hàng</a>
                                </div>
                            </div>
                        <?php endif; ?>
                        <!-- end hien thi san pham trong gio hang -->
                    </div>
                </div>
                <!--Cart info End -->
            </div>
        </div>
    </div>
</div>
</div>
<!--Header Bottom Account End -->
<!-- Menu Content Start -->
<div class="header-buttom-nav">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-left d-none d-lg-block">
                <div class="d-flex align-items-start justify-content-start">
                    <!-- Beauty Category -->
                    <div class="beauty-category vertical-menu home-9 home-10">
                        <h3 class="vertical-menu-heading vertical-menu-toggle">Danh mục sản phẩm</h3>
                        <!-- danh muc san pham-->
                        <ul class="vertical-menu-wrap open-menu-toggle">
                            <!-- category share dung vies share trong app service provider -->
                            <?php $__currentLoopData = $categories_share; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                            <?php if($item -> parent == null): ?>
                            <li class="menu-dropdown">
                                <!--hien dau > -->
                                <?php if(count($item -> children)): ?>
                                <a href="<?php echo e(route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>" >
                                 
                                    <?php echo e($item->title); ?><i class='ion-ios-arrow-down'></i>
                                </a>
                                <?php else: ?>
                                <a href="<?php echo e(route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>" >
                                 
                                 <?php echo e($item->title); ?>

                             </a>
                             <?php endif; ?>
                             <!-- end hien dau > -->
                             
                             <?php if(count($item->children)): ?>
                             <ul class="mega-menu-wrap">
                                <?php echo $__env->make('frontend.home.sub_category',['childs' => $item -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </ul>
                            <?php endif; ?>
                        </li>
                        
                        <?php endif; ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        
                    </ul>

                    <!-- end danh muc san pham-->
                </div>
                <!-- Beauty Category -->
                <!--Seach Area Start -->
                <div class="header_account_list search_list">
                    <a href="javascript:void(0)"><i class="ion-ios-search-strong"></i></a>
                    <div class="dropdown_search">
                        <form action="<?php echo e(route('search.product')); ?>" method="get">
                         <?php echo csrf_field(); ?>
                         <input placeholder="Từ khóa ..." type="text" name="search_product" value="<?php echo e(old('search_product')); ?>" />
                         <div class="search-category">
                            <!-- search danh muc -->
                            <select class="bootstrap-select" name="poscats">
                                <option value="">Chọn danh mục</option>
                                <?php echo $htmlOption; ?>

                            </select>
                            
                        </div>
                        <button type="submit"><i class="ion-ios-search-strong"></i></button>
                    </form>
                </div>
            </div>
            <!--Seach Area End -->
            <!--Contact info Start -->
            <div class="contact-link-wrap">
                <div class="contact-link">
                    <div class="phone">
                        <p>Hotline:</p>
                        <a href="tel:09060707000">0906070700</a>
                    </div>
                </div>
                <!--Contact info End -->
            </div>
        </div>
    </div>
</div>
</div>
</div>
<!-- Menu Content End -->
<!-- Header Buttom Start -->
<div class="header-navigation red-bg sticky-nav d-lg-none">
    <div class="container position-relative">
        <div class="row">
            <!-- Logo Start -->
            <div class="col-md-2 col-sm-2">
                <div class="logo">
                    <a href="<?php echo e(url('/')); ?>"><img src="<?php echo e(asset('images/logo/logo.png')); ?>" alt="logo" /></a>
                </div>
            </div>
            <!-- Logo End -->
            <!-- Navigation Start -->
            <div class="col-md-10 col-sm-10">
                <!--Main Navigation End -->
                <!--Header Bottom Account Start -->
                <div class="header_account_area">
                    <!--Seach Area Start -->
                    <div class="header_account_list search_list">
                        <a href="javascript:void(0)"><i class="ion-ios-search-strong"></i></a>
                        <div class="dropdown_search">
                            <form action="<?php echo e(route('search.product')); ?>" method="get">
                                <input placeholder="Từ khóa ..." type="text" name="search_product" value="<?php echo e(old('search_product')); ?>"/>
                                <div class="search-category">
                                    <!-- search danh muc dien thoai -->
                                    <select class="bootstrap-select" name="poscats">
                                        <option value="">Chọn danh mục</option>
                                        <?php echo $htmlOption; ?>

                                    </select>
                                </div>
                                <button type="submit"><i class="ion-ios-search-strong"></i></button>
                            </form>
                        </div>
                    </div>
                    <!--Seach Area End -->
                    <!--Contact info Start -->
                    <div class="contact-link">
                        <div class="phone">
                            <p>Hotline:</p>
                            <a href="tel:09060707000">09060707000</a>
                        </div>
                    </div>
                    <!--Contact info End -->
                    <!--Cart info Start -->
                    <div class="cart-info d-flex">
                        
                        
                        <div class="mini-cart-warp">
                            <a href="#" class="count-cart"><span><?php echo e(formatMoney(getTotalCart())); ?></span></a>
                            <!-- hien thi san pham trong gio hang -->
                            <?php if(count(getProductCart()) > 0): ?>
                                <div class="mini-cart-content">
                                    <ul>
                                        <!-- liet ke san pham trong gio hang -->
                                        <?php $__currentLoopData = getProductCart(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li class="single-shopping-cart">
                                            <div class="shopping-cart-img">
                                                <a href="<?php echo e(url('san-pham/'.slugify($item -> product_name,'-').'/'. $item -> product_id)); ?>"><img alt="<?php echo e($item -> product_name); ?>" src="<?php echo e(asset('uploads/products-daidien/'.$item -> image)); ?>" /></a>
                                                <span class="product-quantity"><?php echo e($item -> quantity); ?>x</span>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h4><a href="<?php echo e(url('san-pham/'.slugify($item -> product_name,'-').'/'. $item -> product_id)); ?>"><?php echo e($item -> product_name); ?></a></h4>
                                                <span><?php echo e(formatMoney($item -> price)); ?></span>
                                                <div class="shopping-cart-delete">
                                                    <a href="<?php echo e(url('/cart/delete-product/'.$item -> id)); ?>"><i class="ion-android-cancel"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                    <div class="shopping-cart-total">
                                     
                                        <h4 class="shop-total">Tổng : <span><?php echo e(formatMoney(getTotalCart())); ?></span></h4>
                                    </div>
                                    <div class="shopping-cart-btn text-center">
                                        <a class="default-btn" href="<?php echo e(url('cart')); ?>">Xem giỏ hàng</a>
                                    </div>
                                </div>
                            <?php endif; ?>
                            <!-- end hien thi san pham trong gio hang -->
                        </div>
                        
                        
                    </div>
                    <!--Cart info End -->
                </div>
            </div>
        </div>
        <!-- mobile menu -->
        <div class="mobile-menu-area">
            <div class="mobile-menu">
                <nav id="mobile-menu-active">
                    <ul class="menu-overflow">
                        <li>
                            <a href="<?php echo e(url('/')); ?>">Trang chủ</a>
                            
                        </li>
                        <li>
                            <a href="<?php echo e(url('cua-hang')); ?>">Cửa hàng</a>
                            
                        </li>
                        <li>
                            <a href="#">Danh mục sản phẩm</a>
                            <ul>
                                
                                <?php $__currentLoopData = $categories_share; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                <?php if($item -> parent == null): ?>
                                <li>
                                    
                                    <a href="<?php echo e(route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>" >
                                     
                                        <?php echo e($item->title); ?>

                                    </a>

                                    <?php if(count($item->children)): ?>
                                    <ul >
                                        <?php echo $__env->make('frontend.home.mobile_menu_category',['childs' => $item -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </ul>
                                    <?php endif; ?>
                                </li>
                                
                                <?php endif; ?>

                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                
                            </ul>
                            
                        </li>
                        
                        <li>
                            <a href="<?php echo e(url('tin-tuc')); ?>">Tin tức</a>
                            
                        </li>
                        <li>
                            <a href="<?php echo e(url('tin-tuc/giới-thiệu/5')); ?>">Giới thiệu</a>
                            
                        </li>
                        <li><a href="<?php echo e(url('lien-he')); ?>">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- mobile menu end-->
    </div>
</div>
<!--Header Bottom Account End -->
<!-- Beauty Category -->
<div class="container d-lg-none">
    <!--=======  category menu  =======-->
    <div class="hero-side-category">
        <!-- Category Toggle Wrap -->
        <div class="category-toggle-wrap">
            <!-- Category Toggle -->
            <button class="category-toggle"><i class="fa fa-bars"></i> Danh mục sản phẩm</button>
        </div>

        <!-- Category Menu -->
        <!-- category share dung vies share trong app service provider -->
        <nav class="category-menu">
            <ul>
                
                <?php $__currentLoopData = $categories_share; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                <?php if($item -> parent == null): ?>
                <li class="menu-item-has-children menu-item-has-children-<?php echo e($index + 1); ?>">
                    <!--hien dau > -->
                    <?php if(count($item -> children)): ?>
                    <a href="<?php echo e(route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>" >
                     
                        <?php echo e($item->title); ?> <span class="toggle-btn"></span>
                    </a>
                    <?php else: ?>
                    <a href="<?php echo e(route('category.product',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>" >
                     
                     <?php echo e($item->title); ?>

                 </a>
                 <?php endif; ?>
                 <!-- end hien dau > -->
                 
                 <?php if(count($item->children)): ?>
                 <ul class="category-mega-menu category-mega-menu-<?php echo e($index + 1); ?>">
                    <?php echo $__env->make('frontend.home.mobile_category',['childs' => $item -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </ul>
                <?php endif; ?>
            </li>
            
            <?php endif; ?>

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            
        </ul>
        
        
    </nav>
</div>

<!--=======  End of category menu =======-->
</div>
<!-- Beauty Category -->
</header><?php /**PATH G:\laragon\www\shop3\resources\views/frontend/components/header.blade.php ENDPATH**/ ?>