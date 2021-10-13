 <div class="blog-related-post">
    <div class="row">
        <div class="col-md-12 text-center">
            <!-- Section Title -->
            <div class="section-title underline-shape">
                <h2>Bài viết liên quan</h2>
            </div>
            <!-- Section Title -->
        </div>
    </div>
    <div class="row">
        <?php $__empty_1 = true; $__currentLoopData = $news_related; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
            <div class="col-md-4 mb-res-md-30px mb-res-sm-30px">
            <div class="blog-post-media">
                <div class="blog-image single-blog">
                    <a href="<?php echo e(route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>"><img src="<?php echo e(asset('uploads/news/'.$item -> image_name)); ?>" alt="<?php echo e($item -> title); ?>" /></a>
                </div>
            </div>
            <div class="blog-post-content-inner">
                <h4 class="blog-title"><a href="<?php echo e(route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>"><?php echo e($item -> title); ?></a></h4>
                <ul class="blog-page-meta">
                    <li>
                        <i class="ion-person"></i> <?php echo e($item -> user -> name); ?>

                    </li>
                    <li>
                        <i class="ion-calendar"></i> <?php echo e($item -> created_at); ?>

                    </li>
                </ul>
            </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
            <div class="post">Không có bài viết liên quan </div>
        <?php endif; ?>
       
    </div>
</div><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/news/related_news.blade.php ENDPATH**/ ?>