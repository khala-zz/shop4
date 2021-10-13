<div class="left-sidebar">

    <!-- Sidebar single item -->
    <div class="sidebar-widget mt-40">
        <div class="main-heading">
            <h2>Danh mục tin tức</h2>
        </div>
        <div class="category-post">
            <ul>
             <?php $__currentLoopData = $cat_news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

             <?php if( $item -> parent == null): ?>
             <li>
                <a href="<?php echo e(route('cat_news.news',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>" class="<?php echo e(count($item->children) ? 'show' :''); ?>" <?php echo e(Request::segment(3) == $item-> id ? 'style=color:#ef1e1e' : " "); ?>><?php echo e($item->title); ?></a>
                <?php if(count($item->children)): ?>

                <?php echo $__env->make('frontend.news.menusub',['childs' => $item -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endif; ?>

            </li>
            <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
    </div>
</div>
<!-- Sidebar single item -->
<div class="sidebar-widget mt-40">
    <div class="main-heading">
        <h2>Bài viết gần đây</h2>
    </div>
    <div class="recent-post-widget">
        <?php $__empty_1 = true; $__currentLoopData = $news_right; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
            <div class="recent-single-post d-flex">
                <div class="thumb-side">
                    <a href="<?php echo e(route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>"><img src="<?php echo e(asset('uploads/news/'.$item -> image_name)); ?>" alt="<?php echo e($item -> title); ?>"  /></a>
                </div>
                <div class="media-side">
                    <h5><a href="<?php echo e(route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>"><?php echo e($item -> title); ?> </a></h5>
                    <span class="date"><?php echo e($item -> created_at); ?></span>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
            <p>Tin tức đang cập nhật</p>
        <?php endif; ?>
       
    </div>
</div>
<!-- Sidebar single item -->
<div class="sidebar-widget mt-40">
    <div class="main-heading">
        <h2>Tags</h2>
    </div>
    <div class="sidebar-widget-tag">
        <ul>
            <?php $__currentLoopData = $tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li>
                <a href="<?php echo e(route('list.news.tags',['slug' => slugify($tag -> name,'-'),'id' => $tag -> id])); ?>" ><?php echo e($tag -> name); ?></a>
                </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
           
        </ul>
    </div>
</div>
<!-- Sidebar single item -->
</div><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/news/right_news.blade.php ENDPATH**/ ?>