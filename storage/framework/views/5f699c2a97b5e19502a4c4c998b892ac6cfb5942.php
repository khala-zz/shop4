
	<?php $__env->startSection('title'); ?>
		<title><?php echo e($keyword); ?></title>
	<?php $__env->stopSection(); ?>

	
    
	
	<?php $__env->startSection('content'); ?>
	 <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Tìm kiếm</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                                    <li><a href="#">Từ khóa</a></li>
                                    <li><?php echo e($keyword); ?></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- Shop Category Area End -->
            <div class="shop-category-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <!-- Shop Top Area Start -->
                            <div class="shop-top-bar">
                                <!-- Left Side start -->
                                <div class="shop-tab nav mb-res-sm-15">
                                    
                                    <p>Hiển thị <?php echo e($products->firstItem()); ?> đến <?php echo e($products->lastItem()); ?> của tổng <?php echo e($products->total()); ?> sản phẩm</p>
                                </div>
                                <!-- Left Side End -->
                                <!-- Right Side Start -->
                                <div class="select-shoing-wrap">
                                    <div class="shot-product">
                                        <p>Sắp xếp:</p>
                                    </div>
                                    <div class="shop-select">
                                    	<form method ="get" action="<?php echo e(url() -> current()); ?>">
	                                        <select name="orderby" class="form-control" onchange="this.form.submit()">
	                                            <option value="created_at" <?php echo e(Request::get('orderby') == 'created_at'?'selected':''); ?>>Mới nhất</option>
						                        <option  value="title_tang" <?php echo e(Request::get('orderby') == 'title_tang'?'selected':''); ?>>A đến Z</option>
						                        <option  value="title_giam" <?php echo e(Request::get('orderby') == 'title_giam'?'selected':''); ?>> Z đến A</option>
	                                        </select>
	                                        <input type="hidden" name="search_product" value="<?php echo e(Request::get('search_product')?Request::get('search_product') : ''); ?>">
                    						<input type="hidden" name="poscats" value="<?php echo e(Request::get('poscats')?Request::get('poscats') : ''); ?>">
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
                                   
                                    <!-- Tab One End -->
                                    <!-- Tab Two Start -->
                                    <div id="shop-2" class="tab-pane active">
                                    	<?php $__empty_1 = true; $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                        	<div class="shop-list-wrap mb-30px scroll-zoom">
                                            <div class="row list-product m-0px">
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                                            <div class="left-img">
                                                                <div class="img-block">
                                                                    <a href="<?php echo e(url('/san-pham/'.slugify($product  -> title,'-').'/'.$product ->  id)); ?>" class="thumbnail">
                                                                        <img class="first-img" src="<?php echo e(asset('uploads/products-daidien/'.$product -> image)); ?>" alt="<?php echo e($product  -> title); ?>" />
                                                                       
                                                                    </a>
                                                                    <div class="quick-view">
                                                                        <a class="quick_view" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal">
                                                                            <i class="ion-ios-search-strong"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <?php if(!empty($product -> new)): ?>
										                            <ul class="product-flag">
										                                <li class="new">Mới</li>
										                            </ul>
									                            <?php endif; ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                            <div class="product-desc-wrap">
                                                                <div class="product-decs left-search-khala">
                                                                    <a class="inner-link" href="<?php echo e(url('/danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id)); ?>"><span><?php echo e($product -> category -> title); ?></span></a>
                                                                    <h2><a href="<?php echo e(url('/san-pham/'.slugify($product  -> title,'-').'/'.$product ->  id)); ?>" class="product-link"><?php echo e($product  -> title); ?></a></h2>
                                                                    <div class="rating-product padding-left-start-khala">
	                                                                     <!-- hien thi rating -->
										                                    <?php 
											                                    $avg_rating = 0;
											                                    if($product -> pro_total_rating)
											                                    {
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
										                            </div>
									                                <!-- end hien thi rating -->
									                               
                                                                    <div class="pricing-meta">
                                                                        <ul>
											                                 <!-- hien thi gia -->
											                                 <?php if(!empty($product -> discount)): ?>
											                                 
												                                 <li class="old-price"><?php echo e(formatMoney($product -> price)); ?></li>
												                                 <li class="current-price"><?php echo e(formatMoney($product -> price * (100 - $product -> discount)/100)); ?></li>
												                                 
												                                 <li class="discount-price">-<?php echo e($product -> discount); ?>%</li>
												                                 <?php
											                                 		$product_price = $product -> price * (100 - $product -> discount)/100
											                                 	 ?>
											                                 <?php else: ?>
											                                 
											                                 	<li class="old-price not-cut"><?php echo e(formatMoney($product -> price)); ?></li>
											                                 	<?php
											                                 		$product_price = $product -> price
											                                 	?>
											                                 
											                                 <?php endif; ?>
											                                 <!-- end hien thi gia -->
											                             </ul>
                                                                    </div>
                                                                    <div class="product-intro-info">
                                                                        <?php echo $product -> description_short; ?>...
                                                                    </div>
                                                                    <div class="in-stock">Còn trong kho: <span><?php echo e($product -> amount); ?> sản phẩm</span></div>
                                                                </div>
                                                                <div class="add-to-link">
                                                                    <a class="cart-btn btn-add-cart" href="<?php echo e(url('add-cart')); ?>" value = "<?php echo e($product -> id.'khala'.$product -> product_code.'khala'.$product -> title.'khala'.$product_price); ?>">THÊM VÀO GIỎ HÀNG </a>
                                                                        
                                                                    
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                        	<p> Không có kết quả trùng với từ khóa</p>
                                        <?php endif; ?>

                                    </div>
                                    <!-- Tab Two End -->
                                </div>
                                <!-- Shop Tab Content End -->
                                <!--  Pagination Area Start -->
                                <div class="text-center">
                                    <?php echo $products -> links(); ?>

                                </div>
                                <!--  Pagination Area End -->
                            </div>
                            <!-- Shop Bottom Area End -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Shop Category Area End -->
	
	

	<?php $__env->stopSection(); ?>

	
	
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/product/search.blade.php ENDPATH**/ ?>