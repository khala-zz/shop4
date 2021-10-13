
    <?php $title_cat = str_replace('-',' ', Request::segment(2)); ?>
	<?php $__env->startSection('title'); ?>
		<title><?php echo e($title_cat); ?></title>
	<?php $__env->stopSection(); ?>

	<?php $__env->startSection('content'); ?>
        <!-- Breadcrumb Area start -->
        <section class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="breadcrumb-content">
                            <h1 class="breadcrumb-hrading">Tin tức</h1>
                            <ul class="breadcrumb-links">
                                <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                                
                                <?php if($title_cat <> 'Tin tức'): ?>
                                    <li><?php echo e($title_cat); ?> </li>
                                <?php else: ?>
                                    <li>Tin tức</li>
                                <?php endif; ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Area End -->
        <!-- Shop Category Area End -->
        <div class="shop-category-area blog-grid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-12">
                        <div class="blog-posts">
                            
                            <div class="row">
                                <?php $__empty_1 = true; $__currentLoopData = $news_tag; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                    <div class="col-md-6">
                                    <div class="single-blog-post blog-grid-post mt-30">
                                        <div class="blog-post-media">
                                            <div class="blog-image">
                                                <a href="<?php echo e(route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>"><img src="<?php echo e(asset('uploads/news/'.$item -> image_name)); ?>" alt="<?php echo e($item -> title); ?>" /></a>
                                            </div>
                                        </div>
                                        <div class="blog-post-content-inner mt-30">
                                            <h4 class="blog-title"><a href="<?php echo e(route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>"><?php echo e($item -> title); ?></a></h4>
                                            <ul class="blog-page-meta">
                                                <li>
                                                    <i class="ion-person"></i> <?php echo e($item -> user -> name); ?>

                                                </li>
                                                <li>
                                                    <i class="ion-calendar"></i> <?php echo e($item -> created_at); ?>

                                                </li>
                                            </ul>
                                            <p>
                                                <?php echo mb_substr(strip_tags($item->description), 0, 270); ?>

                                            </p>
                                            <a class="read-more-btn" href="<?php echo e(route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])); ?>"> Chi tiết <i class="ion-android-arrow-dropright-circle"></i></a>
                                        </div>
                                    </div>
                                    <!-- single blog post -->
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                    <p>Tin tức đang cập nhật</p>
                                <?php endif; ?>
                            </div>
                        </div>
                        <!--  Pagination Area Start -->
                        <div class="text-center" >
                            <?php echo $news_tag -> links(); ?>

                        </div>
                        <!--  Pagination Area End -->
                    </div>
                    <!-- Sidebar Area Start -->
                    <div class="col-lg-3 col-md-12 mb-res-md-60px mb-res-sm-60px">
                        <?php echo $__env->make('frontend.news.right_news', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                    <!-- Sidebar Area End -->
                </div>
            </div>
        </div>
        <!-- Shop Category Area End -->
        <!-- Footer Area start -->
	  
	
	

	<?php $__env->stopSection(); ?>

	
	
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/news/tag.blade.php ENDPATH**/ ?>