<?php $__env->startSection('title'); ?>
<title>Thành viên</title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
 <section class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-content">
                    <h1 class="breadcrumb-hrading">Thành viên</h1>
                    <ul class="breadcrumb-links">
                        <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                        <li>Đăng nhập / Đăng kí</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Area End -->
<!-- login area start -->
<div class="login-register-area mb-60px mt-53px">
    <div class="container">
        <div class="row">
           
            <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a class="<?php echo e(Request::get('login') == 1?'active':''); ?>" data-toggle="tab" href="#lg1">
                            <h4>Đăng nhập</h4>
                        </a>
                        <a class="<?php echo e(Request::get('login') == 0?'active':''); ?>" data-toggle="tab" href="#lg2">
                            <h4>Đăng kí</h4>
                        </a>
                    </div>
                     <?php if($errors): ?>
                        <div class="col-md-12 mb-4">
                           
                            <?php echo $errors->first('email', '<p class="help-block" style="color:red;">:message</p>'); ?>

                            <?php echo $errors->first('password', '<p class="help-block" style="color:red;">:message</p>'); ?>

                        </div>
                    <?php endif; ?>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane <?php echo e(Request::get('login') == 1?'active':''); ?>">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form method="POST" action="<?php echo e(route('front-login')); ?>">
                                        <?php echo csrf_field(); ?>
                                        
                                       <input type="email" name = "email"  placeholder="Email *" value = "<?php echo e(old('email')); ?>" required>
                                       <input type="password" name = "password"  placeholder="Mật khẩu *" required>
                                        <div class="button-box">
                                            <div class="login-toggle-btn">
                                                <input type="checkbox" />
                                                <a class="flote-none" href="javascript:void(0)">Remember me</a>
                                                <a href="#">Forgot Password?</a>
                                            </div>
                                            <button type="submit"><span>Đăng nhập</span></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="lg2" class="tab-pane <?php echo e(Request::get('login') == 0?'active':''); ?>">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form method="POST" action="<?php echo e(route('front-register')); ?>">
                                        <?php echo csrf_field(); ?>
                                        <input name = "name" id="name" type="text" placeholder="Tên *" value = "<?php echo e(old('name')); ?>"required>
                                        <?php echo $errors->first('name', '<p class="help-block" style="color:red;">:message</p>'); ?>


                                        <input type="email" name = "email"  placeholder="Email *" value = "<?php echo e(old('email')); ?>" required>
                                        <?php echo $errors->first('email', '<p class="help-block" style="color:red;">:message</p>'); ?>


                                        <input type="password" name = "password"  placeholder="Mật khẩu *" required>
                                        <?php echo $errors->first('password', '<p class="help-block" style="color:red;">:message</p>'); ?>


                                        <input type="password" name = "password_confirmation"  placeholder="Nhập lại mật khẩu *" required>
                                        <?php echo $errors->first('password_confirmation', '<p class="help-block" style="color:red;">:message</p>'); ?>


                                        <div class="button-box">
                                            <button type="submit"><span>Đăng kí</span></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<?php $__env->stopSection(); ?>


<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shop3\resources\views/auth/login_front.blade.php ENDPATH**/ ?>