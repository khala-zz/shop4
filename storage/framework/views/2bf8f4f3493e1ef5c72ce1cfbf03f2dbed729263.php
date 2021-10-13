<section class="blog-area mb-30px">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <!-- Section title -->
                            <div class="section-title underline-shape">
                                <h2>Tin tức</h2>
                                <p>Các bài viết mới nhất của chúng tôi.</p>
                            </div>
                            <!-- Section title -->
                        </div>
                    </div>
                    <!-- Blog Slider Start -->
                    <div class="blog-slider-active owl-carousel owl-nav-style-3">
                        <!-- single item -->
                        <?php $__empty_1 = true; $__currentLoopData = $news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $new): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                        <article class="blog-post">
                            <div class="blog-post-top">
                                <div class="blog-img banner-wrapper">
                                    <a href="#"><img src="<?php echo e(asset('uploads/news/'.$new -> image_name)); ?>" alt="<?php echo e($new -> title); ?>" /></a>
                                </div>
                                <a href="<?php echo e(route('cat_news.news',['slug' => slugify($new -> cat_news -> title,'-'),'id' => $new -> cat_news -> id])); ?>" class="blog-meta"><?php echo e($new -> cat_news -> title); ?></a>
                            </div>
                            <div class="blog-post-content">
                                <h4 class="blog-post-heading"><a href="<?php echo e(route('new.detail',['slug' => slugify($new -> title,'-'),'id' => $new -> id])); ?>"><?php echo e($new -> title); ?></a></h4>
                                <p class="blog-text">
                                    <?php echo e(mb_substr(strip_tags($new->description), 0, 150)); ?>...
                                </p>
                                <a class="read-more-btn" href="<?php echo e(route('new.detail',['slug' => slugify($new -> title,'-'),'id' => $new -> id])); ?>"> Read More <i class="ion-android-arrow-dropright-circle"></i></a>
                            </div>
                        </article>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                        <p>Chưa có tin tức</p>
                        <?php endif; ?>
                        
                    </div>
                    <!-- Blog Slider Start -->
                </div>
            </section><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/home/components/blog.blade.php ENDPATH**/ ?>