
	<?php $__env->startSection('title'); ?>
		<title><?php echo e($news -> title); ?></title>
	<?php $__env->stopSection(); ?>

	<?php $__env->startSection('content'); ?>
	 <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading"><?php echo e($news -> title); ?></h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                                    <li><a href="<?php echo e(url('tin-tuc')); ?>">Tin tức</a></li>
                                    <li><?php echo e($news -> title); ?></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- Shop Category Area End -->
            <div class="shop-category-area single-blog">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 col-md-12">
                            <div class="blog-posts">
                                <div class="single-blog-post blog-grid-post">
                                    <div class="blog-post-media">
                                        <div class="blog-image single-blog">
                                            <img src="<?php echo e(asset('uploads/news/'.$news -> image_name)); ?>" alt="<?php echo e($news -> title); ?>" />
                                        </div>
                                    </div>
                                    <div class="blog-post-content-inner">
                                        <h4 class="blog-title"><?php echo e($news -> title); ?></h4>
                                        <ul class="blog-page-meta">
                                            <li>
                                                <i class="ion-person"></i> <?php echo e($news -> user -> name); ?>

                                            </li>
                                            <li>
                                                <i class="ion-calendar"></i> <?php echo e($news -> created_at); ?>

                                            </li>
                                        </ul>
                                        
                                            <?php echo $news -> description; ?>

                                        
                                    </div>
                                    <div class="single-post-content">
                                        <?php echo $news -> content; ?>

                                    </div>
                                </div>
                                <!-- single blog post -->
                            </div>
                            <div class="blog-single-tags-share d-sm-flex justify-content-between">
                                <div class="blog-single-tags d-flex">
                                    <span class="title">Tags: </span>
                                    <ul class="tag-list">
                                        <?php $len = $news -> tags -> count() ?>
                                        <?php $__empty_1 = true; $__currentLoopData = $news -> tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                            <li>
                                                <a href="<?php echo e(route('list.news.tags',['slug' => slugify($tag -> name,'-'),'id' => $tag -> id ])); ?>" ><?php echo e($tag -> name); ?></a><?php echo e($key <> $len -1 ?',':''); ?>

                                                 
                                            </li>
                                               
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                            <p>Không có tags</p>
                                        <?php endif; ?>
                                       
                                    </ul>
                                </div>
                                <div class="blog-single-share d-flex">
                                    <span class="title">Share:</span>
                                    <ul class="social">
                                        <li>
                                            
                                            <a target="_blank" href="http://www.facebook.com/sharer.php?u=https://ss-etrostores.myshopify.com/blogs/news/thurmond-s-1948-presidential" class=" btn--small btn--secondary btn--share share-facebook" title="Chia sẻ lên facebook">
                                                <i class="ion-social-facebook"></i>
                                            </a>
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
                           <!-- bai viet lien quan -->
                           <?php echo $__env->make('frontend.news.related_news', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            
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
	
	

	<?php $__env->stopSection(); ?>

	
	
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/news/detail.blade.php ENDPATH**/ ?>