
	<?php $__env->startSection('title'); ?>
		<title>Cửa hàng</title>
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
                                <h1 class="breadcrumb-hrading">Cửa hàng</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                                  
                                    <li>Cửa hàng</li>
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
                        <!-- cot phai list product -->
                        <?php echo $__env->make('frontend.shop.right_shop', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <!-- Sidebar Area Start -->
                       	<?php echo $__env->make('frontend.shop.filter_shop', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <!-- Sidebar Area End -->
                    </div>
                </div>
            </div>
            <!-- Shop Category Area End -->
		</main>
	
	

	<?php $__env->stopSection(); ?>

	
	
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/shop/shop.blade.php ENDPATH**/ ?>