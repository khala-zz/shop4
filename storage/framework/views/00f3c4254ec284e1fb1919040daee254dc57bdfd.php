
	<?php $__env->startSection('title'); ?>
		<title><?php echo e($product -> title); ?></title>
	<?php $__env->stopSection(); ?>

	<?php $__env->startSection('js'); ?>
		
		<script type="text/javascript">
			//dung cho ajax review
		$.ajaxSetup({
		    headers: {
		        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		    }
		});
</script>
		
		
	<?php $__env->stopSection(); ?>

	<?php $__env->startSection('content'); ?>
	<!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading"><?php echo e($product -> title); ?></h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                                    <li><?php echo e($product -> title); ?></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- Shop details Area start -->
            <section class="product-details-area mtb-60px">
                <div class="container">
                    <div class="row">
                    	<!-- hinh anh -->
                        <div class="col-xl-6 col-lg-6 col-md-12">
                            <div class="product-details-img product-details-tab">
                                <div class="zoompro-wrap zoompro-2">
                                    <div class="zoompro-border zoompro-span">
                                    	<!-- get image dau tien trong gallery -->
                                    	<?php $productGalleryFirst = $product -> gallery -> first(); ?>
                                        <img class="zoompro" src="<?php echo e(asset('uploads/'.$product->id.'/large/'.$productGalleryFirst -> image)); ?>" data-zoom-image="<?php echo e(asset('uploads/'.$product->id.'/large/'.$productGalleryFirst -> image)); ?>" alt="<?php echo e($product -> title); ?>" />
                                    	
                                    </div>
                                </div>
                                <div id="gallery" class="product-dec-slider-2">
                                	<!--galerry -->
                                	<?php $__empty_1 = true; $__currentLoopData = $product -> gallery; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $imageGallery): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
	                                    <a class="<?php echo e($index == 0?'active':''); ?>" data-image="<?php echo e(asset('uploads/'.$product->id.'/small/'.$imageGallery -> image)); ?>" data-zoom-image="<?php echo e(asset('uploads/'.$product->id.'/large/'.$imageGallery -> image)); ?>">
	                                        <img src="<?php echo e(asset('uploads/'.$product->id.'/small/'.$imageGallery -> image)); ?>" alt="<?php echo e($imageGallery -> image); ?>" />
	                                    </a>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                    	<p> Chưa có gallery </p>
                                    <?php endif; ?>
                                    <!-- end gallery -->
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12">
                        	<!--hien thi thong bao -->
							<?php if(Session::has('flash_message_error')): ?>
								<div class="alert alert-danger alert-dark alert-round alert-inline">
                                    
                                    <?php echo session('flash_message_error'); ?>

                                    <button type="button" class="btn btn-link btn-close">
                                        <i class="d-icon-times"></i>
                                    </button>
                                </div>
							<?php endif; ?>
                        	<!-- form dung de add to cart -->
							<form name = "addToCart" method = "post" action = "<?php echo e(url('/add-cart')); ?>" id="myform">
									<?php echo csrf_field(); ?>
									<!-- cac input field dể add đến cart -->
									<input type="hidden" name="product_id" value="<?php echo e($product -> id); ?>">
									<input type="hidden" name="product_name" value="<?php echo e($product -> title); ?>">
									<input type="hidden" name="product_code" value="<?php echo e($product -> product_code); ?>">
									<!-- end input field -->
	                            <div class="product-details-content">
	                                <h2><?php echo e($product -> title); ?></h2>
	                                <p class="reference">Danh mục:<a href="<?php echo e(url('danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id)); ?> " class="color-cate-product-detail" > <?php echo e($product -> category -> title); ?></a></p>
	                                <div class="pro-details-rating-wrap">
	                                    <div class="rating-product">
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

											<span class="rating-stars selected">
												<?php for($i = 1; $i <= 5; $i++): ?>
												<a class="star-<?php echo e($i); ?> <?php echo e($i <= $avg_rating ? 'active':''); ?> "><?php echo e($i); ?></a>
												<?php endfor; ?>
												
											</span>
											<!-- end hien thi rating -->
	                                        
	                                    </div>
	                                    <span class="read-review"><a class="reviews" href="<?php echo e(url() -> current()); ?>?r='des-details3'" >Xem đánh giá (<?php echo e($product -> reviews -> count()); ?>)</a></span>
	                                </div>
	                                <div class="pricing-meta">
	                                    <ul>
	                                        
	                                         <!-- hien thi gia -->
	                                        <?php if(!empty($product -> discount)): ?>
	                                       
	                                            <li class="old-price"><?php echo e(formatMoney($product -> price)); ?></li>
	                                            <!-- class new-price lay ket qua tu xu ly ajax change price -->
	                                            <li class="current-price new-price">
	                                            	<!-- danh cho reset gia ban dau -->
				                                    <?php $product_price_reset = $product -> price * (100 - $product -> discount)/100; ?>
	                                            	<?php echo e(formatMoney($product -> price * (100 - $product -> discount)/100)); ?>

	                                            	<!-- price xu ly cho form -->
	                                            	<input type="hidden" id = "product_price" name="product_price" value="<?php echo e($product -> price * (100 - $product -> discount)/100); ?>">

	                                            </li>
	                                            
	                                            <li class="discount-price">-<?php echo e($product -> discount); ?>%</li>
	          
	                                        	
	                                        <?php else: ?>
	                                         	<!-- class new-price lay ket qua tu xu ly ajax change price -->
	                                            <li class="old-price not-cut new-price">
	                                            	<!-- danh cho reset gia ban dau -->
				                                 	 <?php $product_price_reset = $product -> price; ?>
	                                            	<?php echo e(formatMoney($product -> price)); ?>

	                                            	  	<!-- price xu ly cho form -->
	                                            		
	                                            	<input type="hidden" id = "product_price" name="product_price" value="<?php echo e($product -> price); ?>">
	                                            </li>
	                                          
	                                            
	                                        	
	                                        	
	                                        <?php endif; ?>
	                                        <!-- end hien thi gia -->
	                                    </ul>
	                                </div>
	                                <?php echo $product -> description_short; ?>...
	                                <!-- mau va kich co san pham -->
	                                <?php if($categoryFeatures): ?>
		                                <div class="pro-details-size-color d-flex">
		                                	<?php if($check_color == 1): ?>
			                                    <div class="pro-details-color-wrap">
			                                        <span>Màu sắc</span>
			                                        <div class="pro-details-color-content">
			                                            <ul>
			                                            	<?php $__empty_1 = true; $__currentLoopData = $categoryFeatures; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categoryColorFeature): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
			                                            		<?php if($categoryColorFeature -> field_type == 2): ?>
					                                                <li class="<?php echo e($categoryColorFeature -> field_title); ?> change-color" data-value ="<?php echo e($categoryColorFeature -> field_title); ?>"></li>
					                                                
				                                                <?php endif; ?>
				                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
				                                            	Chưa có màu sắc
				                                            <?php endif; ?>	    
			                                            </ul>
			                                        </div>
			                                    </div>
		                                    <?php endif; ?>
		                                    <?php if($check_size == 1): ?>
			                                    <div class="product-size">
			                                        <span>Kích cỡ</span>
			                                        <select class="change-price">
			                                        	<option value="<?php echo e($product_price_reset); ?>">Size</option>
			                                        	<?php $__empty_1 = true; $__currentLoopData = $categoryFeatures; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categorySizeFeature): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
			                                            	<?php if($categorySizeFeature -> field_type == 1): ?>
					                                            <option value="<?php echo e(route('change-price',['value' => $categorySizeFeature -> id])); ?>" data-url="" ><?php echo e($categorySizeFeature -> field_title); ?></option>

					                                        <?php endif; ?>
					                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
					                                    	Chưa có kích cỡ
					                                    <?php endif; ?>    
			                                        </select>
			                                    </div>
			                                <?php endif; ?>
		                                </div>
		                            <?php endif; ?>    
	                                <!-- mau va kich co san pham -->
	                                <div class="pro-details-quality">
	                                    <div class="cart-plus-minus">
	                                        <input class="cart-plus-minus-box" type="text" name="product_quantity" value="1" />
	                                    </div>
	                                    <div class="pro-details-cart btn-hover">
	                                        <a href="#" onclick="document.getElementById('myform').submit(); return false;"> + Thêm vào giỏ hàng</a>

	                                    </div>
	                                </div>
	                                
	                                <div class="pro-details-social-info">
	                                    <span>Chia sẻ</span>
	                                    <div class="social-info">
	                                        <ul>
	                                            <li>
	                                                <a href="#"><i class="ion-social-facebook"></i></a>
	                                            </li>
	                                            <li>
	                                                <a href="#"><i class="ion-social-twitter"></i></a>
	                                            </li>
	                                            <li>
	                                                <a href="#"><i class="ion-social-google"></i></a>
	                                            </li>
	                                            <li>
	                                                <a href="#"><i class="ion-social-instagram"></i></a>
	                                            </li>
	                                        </ul>
	                                    </div>
	                                </div>
	                                <div class="pro-details-policy">
	                                    <ul>
	                                    	<?php $__empty_1 = true; $__currentLoopData = $settings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $setting): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
	                                    	<li>
	                                    		<?php if($setting -> setting_key == 'Vận chuyển'): ?>
		                                    		<img src="<?php echo e(asset('images/icons/policy.png')); ?>" alt="Vận chuyển">
		                                    	
		                                        	<span><?php echo e($setting -> setting_value); ?></span>
		                                        <?php elseif($setting -> setting_key == 'Đổi trả hàng'): ?>
		                                        	<img src="<?php echo e(asset('images/icons/policy-2.png')); ?>" alt="Đổi trả hàng">
		                                    	
		                                        	<span><?php echo e($setting -> setting_value); ?></span>
		                                        <?php else: ?>
		                                        	<img src="<?php echo e(asset('images/icons/policy-3.png')); ?>" alt="Bảo mật">
		                                    	
		                                        	<span><?php echo e($setting -> setting_value); ?></span>
		                                        <?php endif; ?>				
	                                        </li>
	                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
	                                        	Chưa có setting
	                                        <?php endif; ?>
	                                       
	                                    </ul>
	                                </div>
	                            </div>
	                        </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Shop details Area End -->
            <!-- product details description area start -->
            <div class="description-review-area mb-60px">
                <div class="container">
                    <div class="description-review-wrapper">
                        <div class="description-review-topbar nav">
                            <a  data-toggle="tab" href="#des-details1" >Mô tả</a>
                            <a  class="<?php echo e(request()-> has('r')?'':'active'); ?>" data-toggle="tab" href="#des-details2">Thông tin thêm</a>
                            <a  class="<?php echo e(request()-> has('r')?'active':''); ?>"data-toggle="tab" href="#des-details3" >Đánh giá (<?php echo e($reviews -> count()); ?>)</a>
                        </div>
                        <div class="tab-content description-review-bottom">
                            
                            <div id="des-details2" class="tab-pane <?php echo e(request()-> has('r')?'':'active'); ?>">
                                <div class="product-description-wrapper">
                                    <?php echo $product -> description; ?>

                                </div>
                            </div>
                            <div id="des-details1" class="tab-pane">
                                <div class="product-anotherinfo-wrapper">
                                    <?php echo $product -> additional; ?>

                                </div>
                            </div>
                            
                            <div id="des-details3" class="tab-pane <?php echo e(request()-> has('r')?'active':''); ?>">
                                <div class="row">
                                	<!-- hien thi danh gia -->
                                    <div class="col-lg-7">
                                        <div class="review-wrapper">
                                        	<?php if($reviews -> count() > 0): ?>
                                        		<?php $__currentLoopData = $reviews; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $review): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            		<div class="single-review">
		                                                <div class="review-img">
		                                                    <img src="<?php echo e(url('uploads/users/' . $review -> user -> image)); ?>" alt="<?php echo e($review -> user -> name); ?>" width="100px" height="100px" 
		                                                     />
		                                                </div>
		                                                <div class="review-content">
		                                                    <div class="review-top-wrap">
		                                                        <div class="review-left">
		                                                            <div class="review-name">
		                                                                <h4><?php echo e($review -> user -> name); ?></h4>
		                                                            </div>
		                                                            <div class="rating-product">
		                                                                <div class="comment-rating ratings-container mb-0">
																			<span class="rating-stars selected">
																				<?php for($i = 1; $i <= 5; $i++): ?>
																				<a class="star-<?php echo e($i); ?> <?php echo e($i <= $review -> rating ? 'active-tab-review':''); ?> "><?php echo e($i); ?></a>
																				<?php endfor; ?>
																				
																			</span>
																			
																		</div>
		                                                            </div>
		                                                        </div>
		                                                        
		                                                    </div>
		                                                    <div class="review-bottom">
		                                                        <p>
		                                                            <?php echo e($review -> comment); ?>

		                                                        </p>
		                                                    </div>
		                                                </div>
                                            		</div>
                                            	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php else: ?>
												<p>Chưa có đánh giá</p>
											<?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="ratting-form-wrapper pl-50">
                                        	<!-- kiem tra dang nhap rui thi cho danh gia san pham -->
                                        	<?php if(Auth::check()): ?>
                                            	<h3>Thêm đánh giá</h3>
	                                            <div class="ratting-form">
	                                                <form action="#">
	                                                    <div class="star-box">
	                                                        <span>Đánh giá của bạn:</span>
	                                                        <span class="rating-stars selected">
																<?php for($i = 1; $i <= 5; $i++): ?>
																<a class="star-<?php echo e($i); ?> start-a" href="#" data-key = "<?php echo e($i); ?>"><?php echo e($i); ?></a>
																<?php endfor; ?>
																
															</span>


															<select name="rating" id="rating" required="" style="display: none;">
																<option value="">Rate…</option>
																<option value="5">Tuyệt vời quá</option>
																<option value="4">Rất tốt</option>
																<option value="3">Bình thường</option>
																<option value="2">Tạm được</option>
																<option value="1">Không thích</option>
															</select>
	                                                    </div>
	                                                    <div class="row">
	                                                        
	                                                        <div class="col-md-12">
	                                                            <div class="rating-form-style form-submit">
	                                                               <input type="hidden"  class="number_rating">
																	<textarea id="reply-message" cols="30" rows="4"
																		class="form-control mb-4" placeholder="Đánh giá của bạn"
																		required></textarea>
																	
																	
																	<a href="<?php echo e(route('post.review.product',$product -> id)); ?>" class="btn btn-primary btn-md btn-khala" id="submit_review">Gửi<i
																			 ></i></a>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	                                                </form>
	                                            </div>
                                            <?php else: ?>
                                            	<h3>Đăng nhập để thêm đánh giá</h3>
                                            	<div class="ratting-form">
	                                                <form method="POST" action="<?php echo e(route('front-login')); ?>">
	                                                    <?php echo csrf_field(); ?>
	                                                    <div class="row">
	                                                    	<?php if($errors): ?>
										                        <div class="col-md-12 mb-4">
										                           
										                            <?php echo $errors->first('email', '<p class="help-block" style="color:red;">:message</p>'); ?>

										                            <?php echo $errors->first('password', '<p class="help-block" style="color:red;">:message</p>'); ?>

										                        </div>
										                    <?php endif; ?>
	                                                        <div class="col-md-12">
	                                                            <div class="rating-form-style mb-10">
	                                                                <input type="email" name = "email"  placeholder="Email *" value = "<?php echo e(old('email')); ?>" required>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12">
	                                                            <div class="rating-form-style mb-10">
	                                                                <input type="password" name = "password"  placeholder="Mật khẩu *" required>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12">
	                                                            <div class="rating-form-style form-submit">
	                                                                
	                                                                <input type="submit" value="Đăng nhập" />
	                                                            </div>
	                                                        </div>
	                                                        
	                                                    </div>
	                                                </form>
	                                            </div>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product details description area end -->
            <!-- Recent Add Product Area Start -->
           	<?php echo $__env->make('frontend.product.products_like', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Recent product area end -->
            <!-- Recent Add Product Area Start -->
            <?php echo $__env->make('frontend.product.products_relate', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Recent product area end -->
		
	
	

	<?php $__env->stopSection(); ?>

	
	
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/product/detail.blade.php ENDPATH**/ ?>