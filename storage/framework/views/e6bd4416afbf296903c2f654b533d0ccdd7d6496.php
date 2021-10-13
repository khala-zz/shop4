<header class="main-header">
    <!-- Logo -->
    <a href="<?php echo e(url('/khalaadmin')); ?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>M</b>CRM</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Quản Lý</b> Website</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

                <!-- Messages: style can be found in dropdown.less-->
                <?php if(user_can("list_order")): ?>
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa  fa-opencart"></i>
                            <span class="label label-success"><?php echo e(count(getUnreadOrder())); ?></span>
                        </a>
                        
                        <ul class="dropdown-menu">
                            <?php if(count(getUnreadOrder()) == 0): ?>
                                <li class="header">You have no messages</li>
                            <?php else: ?>
                                <li class="header">You have <?php echo e(count(getUnreadOrder())); ?> messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">

                                        <?php $__currentLoopData = getUnreadOrder(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $message): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li><!-- start message -->
                                                <a href="<?php echo e(url('/admin/mailbox-show/' . $message->id)); ?>">
                                                    <div class="pull-left">
                                                        
                                                            <img src="<?php echo e(url('theme/dist/img/image_placeholder.png')); ?>" class="img-circle" alt="User Image">
                                                        
                                                    </div>
                                                    <h4>
                                                        <?php echo e($message  -> name); ?>

                                                        <small><i class="fa fa-clock-o"></i> <?php echo e(Carbon\Carbon::parse($message->created_at)->diffForHumans()); ?></small>
                                                    </h4>
                                                    <p><?php echo e($message->name); ?></p>
                                                </a>
                                            </li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <!-- end message -->
                                    </ul>
                                </li>
                                <li class="footer"><a href="<?php echo e(url('khalaadmin/orders')); ?>">Xem tất cả</a></li>
                            <?php endif; ?>
                        </ul>
                       
                    </li>
                <?php endif; ?>
                
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <?php if(\Auth::user()->image != null): ?>
                            <img src="<?php echo e(url('uploads/users/' . \Auth::user()->image)); ?>" width="160" height="160" class="user-image" alt="User Image">
                        <?php else: ?>
                            <img src="<?php echo e(url('theme/dist/img/image_placeholder.png')); ?>" class="user-image" alt="User Image">
                        <?php endif; ?>

                        <span class="hidden-xs"><?php echo e(\Auth::user()->name); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">

                            <?php if(\Auth::user()->image != null): ?>
                                <img src="<?php echo e(url('uploads/users/' . \Auth::user()->image)); ?>" width="160" height="160" class="img-circle" alt="User Image">
                            <?php else: ?>
                                <img src="<?php echo e(url('theme/dist/img/image_placeholder.png')); ?>" class="img-circle" alt="User Image">
                            <?php endif; ?>

                            <p>
                                <?php echo e(\Auth::user()->name . (\Auth::user()->position_title!=''?' - ' . \Auth::user()->position_title:'')); ?>

                                <?php if(\Auth::user()->created_at != null): ?> <small>Member since <?php echo e(\Auth::user()->created_at->diffForHumans()); ?></small> <?php endif; ?>
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="<?php echo e(url('khalaadmin/my-profile')); ?>" class="btn btn-default btn-flat">Trang cá nhân</a>
                            </div>
                            <div class="pull-right">
                                <a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="btn btn-default btn-flat">Đăng xuất</a>

                                <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                                    <?php echo csrf_field(); ?>
                                </form>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header><?php /**PATH G:\laragon\www\shop3\resources\views/admin/layout/header.blade.php ENDPATH**/ ?>