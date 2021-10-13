<div class="banner-3-area mt-0px mb-100px">
	<div class="container">
		<div class="row">
			<?php $__empty_1 = true; $__currentLoopData = $banners; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $banner): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb-res-xs-30 mb-res-sm-30">
					<div class="banner-wrapper banner-box">
						<a href="<?php echo e(url($banner -> link)); ?>"><img src="<?php echo e(asset('uploads/banners/'.$banner -> image)); ?>" alt="<?php echo e($banner -> title); ?>" /></a>
					</div>
				</div>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
				<p>Chưa có banner</p>
			<?php endif; ?>
		</div>
	</div>
</div><?php /**PATH G:\laragon\www\shop3\resources\views/frontend/home/components/banner.blade.php ENDPATH**/ ?>