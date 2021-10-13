<div class="slider-area">
    <div class="slider-active-3 owl-carousel slider-hm8 owl-dot-style">
        <!-- Slider Single Item Start -->
       <?php $__empty_1 = true; $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
        <div class="slider-height-10 d-flex align-items-start justify-content-start bg-img" style="background-image: url(<?php echo e(asset('uploads/sliders/'.$slider -> image_name)); ?>);">
            <div class="container">
                <div class="slider-content-13 slider-animated-1 text-left">
                    <span class="animated"><?php echo e($slider -> name); ?></span>
                    <h1 class="animated">
                        <?php echo e($slider -> nametwo); ?><br />
                        <strong><?php echo e($slider -> namethree); ?></strong>
                    </h1>
                    <a href="<?php echo e(url($slider -> namefour)); ?>" class="shop-btn animated">MUA SẮM</a>
                </div>
            </div>
        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
        <p>Chưa có slider</p>
        <?php endif; ?>
        <!-- Slider Single Item End -->
    </div>
</div><?php /**PATH G:\laragon\www\shop3\resources\views/frontend/home/components/slider.blade.php ENDPATH**/ ?>