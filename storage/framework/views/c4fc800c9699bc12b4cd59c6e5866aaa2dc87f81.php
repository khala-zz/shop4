
	<?php $__env->startSection('title'); ?>
		<title>Trang chủ</title>
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
	  <!-- Slider Arae Start -->
            <?php echo $__env->make('frontend.home.components.slider', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Slider Arae End -->
            <!-- Category Area Start -->
             <!-- hien thi thong bao -->
            <?php if(Session::has('flash_message_success')): ?>
                <div class="alert alert-success alert-dark alert-round alert-inline">
                    <h4 class="alert-title">Thành công :</h4>
                    <?php echo session('flash_message_success'); ?>

                    <button type="button" class="btn btn-link btn-close">
                        <i class="d-icon-times"></i>
                    </button>
                </div>
            <?php endif; ?>
            <?php if(Session::has('flash_message_error')): ?>
                <div class="alert alert-dark alert-danger alert-round alert-inline">
                    
                    <?php echo session('flash_message_error'); ?>

                    <button type="button" class="btn btn-link btn-close">
                        <i class="d-icon-times"></i>
                    </button>
                </div>
            <?php endif; ?>
            <?php echo $__env->make('frontend.home.components.categories', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Category Area End  -->
            <!-- Banner Area Start -->
            <?php echo $__env->make('frontend.home.components.banner', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Banner Area End -->
            <!-- Recent Add Product Area Start -->
            <?php echo $__env->make('frontend.home.components.new_arrivals', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Recent product area end -->
            <!-- Blog area Start -->
            <?php echo $__env->make('frontend.home.components.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Blog Area End -->
            <!-- Brand area start -->
            <?php echo $__env->make('frontend.home.components.brand', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Brand area end -->
            <!-- Category Product  Area start-->
            <?php echo $__env->make('frontend.home.components.list_product', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <!-- Category Product  Area end-->
            <!-- Footer Area start -->
        </main>
	
	

	<?php $__env->stopSection(); ?>



<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH G:\laragon\www\shop3\resources\views/frontend/home/home.blade.php ENDPATH**/ ?>