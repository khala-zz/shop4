
	<?php $__env->startSection('title'); ?>
		<title>Shop | Thanh toán</title>
	<?php $__env->stopSection(); ?>
	

	<?php $__env->startSection('content'); ?>
	 <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Trang thanh toán</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                                    <li>Thanh toán</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- checkout area start -->
            <div class="checkout-area mt-60px mb-40px">
                <div class="container">
                	<form method = "post" action="<?php echo e(url('/checkout')); ?>" class="form" id="form-checkout">
						<?php echo csrf_field(); ?>
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="billing-info-wrap">
                                <h3>Thông tin thanh toán</h3>
                                <!-- thong tin thanh toan -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="billing-info mb-20px">
                                             <label>Tên *</label>
											 <input type="text" class="form-control" name="billing_name" required value="<?php echo e($userDetails -> name); ?>" />
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="billing-info mb-20px">
                                            <label>Email *</label>
											<input type="email" class="form-control"  name="billing_email" required value="<?php echo e($userDetails -> email); ?>" />
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <div class="billing-info mb-20px">
                                            <label>Điện thoại *</label>
											<input type="text" class="form-control" name="billing_mobile" required value="<?php echo e($userDetails -> mobile); ?>" />
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="billing-select mb-20px">
                                            <label>Tỉnh/Thành phố</label>
			                                <select class="form-control" name="billing_city">
			                                    <option value="0">Chọn thành phố/tỉnh</option>
			                                    <?php $__currentLoopData = $citys; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			                                    <option 
			                                    value="<?php echo e($city -> name); ?>" 
			                                    <?php echo e($city->name  == $userDetails -> city ?"selected":""); ?>>
			                                    <?php echo e($city -> name); ?></option>
			                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>       
			                                </select>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="billing-info mb-20px">
                                            <label>Quận/huyện</label>
                                    		<input type="text" class="form-control" name="billing_state" required value="<?php echo e($userDetails -> state); ?>">
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="billing-info mb-20px">
                                            <label>Địa chỉ</label>
                                    		<input type="text" class="form-control mb-0" name="billing_address" required value="<?php echo e($userDetails -> address); ?>">
                                        </div>
                                    </div>
                                    
                                </div>
                                <!-- end thong tin thanh toan -->
                               
                                
                                
                                <div class="checkout-account mt-25">
                                    <input class="checkout-toggle" type="checkbox" name="different_address"/>
                                    <label>Giao hàng đến địa chỉ khác?</label>
                                </div>
                                <div class="different-address open-toggle mt-30">
                                    <div class="row">
                                    	<!-- dia chi khac-->
                                        <div class="col-lg-12">
                                            <div class="billing-info mb-20px">
                                                <label>Tên *</label>
												<input type="text" class="form-control" name="shipping_name"  value="<?php echo e(empty($shipping_details -> name) ?' ':$shipping_details -> name); ?>"  />
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="billing-info mb-20px">
                                                <label>Email *</label>
												<input type="email" class="form-control"  name="shipping_email"  value="<?php echo e(empty($shipping_details -> user_email)?' ':$shipping_details -> user_email); ?>"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="billing-info mb-20px">
                                                <label>Điện thoại *</label>
												<input type="text" class="form-control" name="shipping_mobile" value="<?php echo e(empty($shipping_details -> mobile)?' ':$shipping_details -> mobile); ?>"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="billing-select mb-20px">
                                                <label>Tỉnh/Thành phố</label>
			                                    <select class="form-control" name="shipping_city">
			                                        <option value="0">Chọn thành phố/tỉnh</option>
			                                        <?php $__currentLoopData = $citys; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			                                        <option value="<?php echo e($city -> name); ?>" 
			                                        	<?php echo e(!empty($shipping_details -> city) && ($shipping_details -> city == $city -> name)?'selected':' '); ?>>
			                                        <?php echo e($city -> name); ?>

			                                    	</option>
			                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>       
			                                    </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="billing-info mb-20px">
                                                <label>Quận/huyện</label>
                                    			<input type="text" class="form-control" name="shipping_state" value="<?php echo e(!empty($shipping_details -> state) ?$shipping_details -> state:' '); ?>">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="billing-info mb-20px">
                                                <label>Địa chỉ</label>
                                    			<input type="text" class="form-control mb-0" name="shipping_address" value="<?php echo e(!empty($shipping_details -> address) ?$shipping_details -> address:' '); ?>">
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="your-order-area">
                                <h3>Đơn hàng</h3>
                                <div class="your-order-wrap gray-bg-4">
                                    <div class="your-order-product-info">
                                        <div class="your-order-top">
                                            <ul>
                                                <li>Sản phẩm</li>
                                                <li>Tổng</li>
                                            </ul>
                                        </div>
                                        <div class="your-order-middle">
                                        	<?php $total_amount = 0; ?>
                                            <ul>
                                            	<!-- product cart -->
												<?php $__currentLoopData = $userCart; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                	<li><span class="order-middle-left"><?php echo e($item -> product_name); ?> X <?php echo e($item -> quantity); ?></span> <span class="order-price"><?php echo e(formatMoney($item -> price * $item -> quantity)); ?> </span></li>
                                                
                                                <?php $total_amount = $total_amount + ($item -> price * $item -> quantity);?>
												<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </ul>
                                        </div>

                                        <div class="your-order-bottom">
                                            <ul>
                                                <li class="your-order-shipping">Giao hàng</li>
                                                <li>Miễn phí</li>
                                            </ul>
                                        </div>
                                        <!-- coupon -->
                                        <div class="your-order-bottom">
                                            <ul>
                                                <li class="your-order-shipping">Mã giảm giá</li>
                                                <li>
                                                	<?php if(!empty(Session::get('CouponAmount'))): ?>
														<?php echo e(formatMoney(Session::get('CouponAmount'))); ?> 
													<?php else: ?>
														0 đ
													<?php endif; ?>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="your-order-total">
                                            <ul>
                                                <li class="order-total">
                                                	Tổng tiền thanh toán
                                            	</li>
                                                <li class="total-amount-checkout">
                                                	<?php echo e(formatMoney($total_amount - Session::get('CouponAmount'))); ?>

                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="payment-method">
                                        <div class="payment-accordion element-mrg">
                                            <div class="panel-group" id="accordion">
                                                <div class="panel payment-accordion">
                                                    <div class="panel-heading" id="method-one">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#method1">
                                                                Qua ngân hàng
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="method1" class="panel-collapse collapse show">
                                                        <div class="panel-body">
                                                            <p>Vui lòng sử dụng Mã đơn hàng khi bạn chuyển khoản</p>
                                                        </div>
                                                    </div>
                                                </div>
                                               
                                                <div class="panel payment-accordion">
                                                    <div class="panel-heading" id="method-three">
                                                        <h4 class="panel-title">
                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#method3">
                                                                Sau khi nhận hàng
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="method3" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <p>Sau khi nhận hàng và kiểm tra hàng xong mới trả tiền</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="Place-order mt-25">
                                    <a class="btn-hover" href="#" onclick="document.getElementById('form-checkout').submit(); return false;">Đặt hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="grand_total" value="<?php echo e($total_amount - Session::get('CouponAmount')); ?>">
					<input type="hidden" name="paymentMethod" value="Sau khi nhận hàng" id="paymentMethod">
                	</form>
                </div>
            </div>
            <!-- checkout area end -->
	

	<?php $__env->stopSection(); ?>

	
	
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH G:\laragon\www\shop3\resources\views/frontend/product/checkout.blade.php ENDPATH**/ ?>