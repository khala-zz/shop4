<?php $__env->startSection('title'); ?>
<title>Tài khoản</title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

<!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Trang tài khoản</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                                    <li>Tài khoản</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- account area start -->
            <div class="checkout-area mtb-60px">
                <div class="container">
                    <div class="row">
                        <div class="ml-auto mr-auto col-lg-9">
                            <div class="checkout-wrapper">
                                <!--hien thi thong bao -->
                                <?php if(Session::has('flash_message_error')): ?>
                                    <div class="alert alert-danger alert-dark alert-round alert-inline">
                                        
                                        <?php echo session('flash_message_error'); ?>

                                        <button type="button" class="btn btn-link btn-close">
                                            <i class="d-icon-times"></i>
                                        </button>
                                    </div>
                                <?php endif; ?>

                                <?php if(Session::has('flash_message_success')): ?>
                                    <div class="alert alert-success alert-dark alert-round alert-inline">
                                        <h4 class="alert-title">Thành công :</h4>
                                        <?php echo session('flash_message_success'); ?>

                                        <button type="button" class="btn btn-link btn-close">
                                            <i class="d-icon-times"></i>
                                        </button>
                                    </div>
                                <?php endif; ?>
                                <!-- end hien thi thong bao -->
                                <div id="faq" class="panel-group">
                                    <div class="panel panel-default single-my-account">
                                        <div class="panel-heading my-account-title">
                                            <h3 class="panel-title"><span>1 .</span> <a data-toggle="collapse" data-parent="#faq" href="#my-account-1">Chỉnh sửa thông tin tài khoản </a></h3>
                                        </div>
                                        <!--thong tin tai khoan -->
                                        <div id="my-account-1" class="panel-collapse collapse show">
                                            <div class="panel-body">
                                                <form method = "post" action="<?php echo e(url('change-password')); ?>" class="form" enctype="multipart/form-data">
                                                        <?php echo csrf_field(); ?>
                                                    <div class="myaccount-info-wrapper">
                                                        <div class="account-info-wrapper">
                                                            <h4>Thông tin chi tiết</h4>
                                                            <h5>Nhập thông tin cần chỉnh sửa</h5>
                                                        </div>
                                                       
                                                        <div class="row">
                                                            
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="billing-info">
                                                                        <!-- notification -->

                                                                        <p>co <?php echo e(auth()->user()->unreadNotifications->count()); ?> thong bao chua doc</p>
                                                                                    
                                                                        <!--Mark all as read notification using route -->
                                                                         
                                                                        
                                                                        <?php $__currentLoopData = auth() -> user() -> unreadNotifications; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $notification): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                                                             <p><a href="<?php echo e(route('mark',['id' => $notification -> id])); ?>"><?php echo e($notification -> data['data']); ?></a></p>
                                                                                
                                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                        <!-- end notification -->
                                                                        <input type="hidden" name="old_pass" value="<?php echo e($userDetails -> password); ?>">
                                                                        <label>Tên *</label>
                                                                        <input type="text" class="form-control mb-0" name="name" required value="<?php echo e($userDetails -> name); ?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="billing-info">
                                                                        <label>Email*</label>
                                                                        <input type="email" class="form-control" name="email" required value="<?php echo e($userDetails -> email); ?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="billing-info">
                                                                        <label>Mật khẩu hiện tại (Để trống nếu bạn không muốn thay đổi)</label>
                                                                        <input type="password" class="form-control" name="current_password">
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="billing-info">
                                                                        <label>Mật khẩu mới(Để trống nếu bạn không muốn thay đổi)</label>
                                                                        <input type="password" class="form-control" name="new_password">
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="col-lg-12 col-md-12">
                                                                    <?php if(!empty($userDetails->image)): ?>
                                                                        <img src="<?php echo e(url('uploads/users/' . $userDetails->image)); ?>" width="200" height="180"/>
                                                                    <?php endif; ?>
                                                                    <div class="billing-info <?php echo e($errors->has('image') ? 'has-error' : ''); ?>">
                                                                        <label for="image" class="control-label"><?php echo e('Hình ảnh'); ?></label>
                                                                        <input class="form-control" name="image" type="file" id="image" >
                                                                    </div>
                                                                </div>
                                                            
                                                        </div>

                                                        <div class="billing-back-btn">
                                                            
                                                            <div class="billing-btn">
                                                                <button type="submit">Cập nhật</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <!-- end thong tin tai khoan -->
                                    </div>
                                    <div class="panel panel-default single-my-account">
                                        <div class="panel-heading my-account-title">
                                            <h3 class="panel-title"><span>2 .</span> <a data-toggle="collapse" data-parent="#faq" href="#my-account-2">Đơn hàng của bạn </a></h3>
                                        </div>
                                        <div id="my-account-2" class="panel-collapse collapse">
                                            <div class="panel-body">
                                               
                                                <div class="table-responsive">
                                                    <table class="table" >
                                                        <thead>
                                                            <tr>
                                                                <th scope="col" >Mã đơn hàng</th>
                                                                <th scope="col">Sản phẩm</th>
                                                                <th scope="col">Phương thức thanh toán</th>
                                                                <th scope="col">Tổng tiền thanh toán</th>
                                                                <th scope="col">Ngày đặt hàng</th>

                                                                
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php $__empty_1 = true; $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                                                <tr style="border-bottom: 1px solid #eee;">
                                                                    <td scope="row" ><?php echo e($order -> ma_order); ?></td>
                                                                    <td>
                                                                        <?php $__currentLoopData = $order -> orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pro): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                           
                                                                        
                                                                            <a href="<?php echo e(url('san-pham/'.slugify($pro -> product_name,'-').'/'.$pro -> product_id)); ?>" ><?php echo e($pro -> product_name); ?>(<?php echo e($pro -> product_qty); ?>)</a>
                                                                            <br />
                                                                                
                                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>    
                                                                    </td>
                                                                    <td><?php echo e($order -> payment_method); ?></td>
                                                                    <td><?php echo e($order -> total_price); ?></td>
                                                                    <td><?php echo e($order -> created_at); ?></td>
                                                                    
                                                                </tr>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                                                <tr>
                                                                    <td colspan="5">
                                                                        <p class=" b-2">Chưa có đơn hàng nào</p>
                                                                        <div class="cart-shiping-update">
                                                                            <a href="<?php echo e(url('cua-hang')); ?>" >Mua sắm</a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            <?php endif; ?>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!-- thong tin dai chi -->
                                    <div class="panel panel-default single-my-account">
                                        <div class="panel-heading my-account-title">
                                            <h3 class="panel-title"><span>3 .</span> <a data-toggle="collapse" data-parent="#faq" href="#my-account-3">Chỉnh sửa thông tin địa chỉ </a></h3>
                                        </div>
                                        <div id="my-account-3" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div class="myaccount-info-wrapper">
                                                    
                                                    <div class="row">
                                                        
                                                        <div class="col-lg-6 col-md-6">
                                                            
                                                            <form method = "post" action="<?php echo e(url('change-address-ship')); ?>"  >
                                                                <?php echo csrf_field(); ?>

                                                                <h5>Địa chỉ giao hàng</h5>
                                                                <br />
                                                                <div class="billing-info">
                                                                    <label>Tên *</label>
                                                                    <input type="text" class="form-control mb-0" name="name" required value="<?php echo e(isset($address_ship -> name)?$address_ship -> name:''); ?>">
                                                                </div>

                                                                <div class="billing-info">
                                                                    <label>Email*</label>
                                                                    <input type="email" class="form-control" name="email" required value="<?php echo e(isset($address_ship -> user_email)?$address_ship -> user_email:''); ?>">
                                                                </div>

                                                                <div class="billing-info">
                                                                    <label>Điện thoại *</label>
                                                                    <input type="text" class="form-control" name="mobile" required value="<?php echo e(isset($address_ship -> mobile)?$address_ship -> mobile:''); ?>">
                                                                </div>


                                                                <div class="billing-info">
                                                                    <label>Tỉnh/Thành phố</label><br/>

                                                                    <select class="form-control" name="city">
                                                                        <option value="0">Chọn thành phố/tỉnh</option>
                                                                        <?php $__currentLoopData = $citys; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                            <?php if(isset($address_ship -> city)): ?>
                                                                                <option 
                                                                                value="<?php echo e($city -> name); ?>" 
                                                                                <?php echo e($city->name  == $address_ship -> city ?"selected":""); ?>>
                                                                                <?php echo e($city -> name); ?>

                                                                                </option>
                                                                            <?php else: ?>
                                                                                 <option 
                                                                                value="<?php echo e($city -> name); ?>" 
                                                                                >
                                                                                <?php echo e($city -> name); ?>

                                                                                </option>
                                                                            <?php endif; ?>
                                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>       
                                                                    </select>
                                                                    <br /><br />
                                                                </div>
   
                                                                <div class="billing-info">
                                                                    <label>Quận/huyện</label>
                                                                    <input type="text" class="form-control mb-0" name="state" required value="<?php echo e(isset($address_ship -> state)?$address_ship -> state:''); ?>">
                                                                </div>

                                                                <div class="billing-info">
                                                                    <label>Địa chỉ</label>
                                                                    <input type="text" class="form-control mb-0" name="address" required value="<?php echo e(isset($address_ship -> address)?$address_ship -> address:''); ?>">

                                                                </div>

                                                                <input type="hidden" name="address_id" value="<?php echo e(isset($address_ship -> id)?$address_ship -> id:''); ?>">
                                                                 <div class="billing-back-btn">
                                                    
                                                                    <div class="billing-btn">
                                                                        <button type="submit">Cập nhật</button>
                                                                    </div>
                                                                </div>
                                                                
                                                            </form>
                                                        </div>
                                                        
                                                        <div class="col-lg-6 col-md-6" style="border-left: 1px solid #eaeaea; ">
                                                            <form method = "post" action="<?php echo e(url('change-address')); ?>"  >
                                                                <?php echo csrf_field(); ?>

                                                                <h5>Địa chỉ thanh toán</h5>
                                                                <br />
                                                                <div class="billing-info">
                                                                    <label>Tên *</label>
                                                                    <input type="text" class="form-control mb-0" name="name" required value="<?php echo e($userDetails -> name); ?>">
                                                                </div>

                                                                <div class="billing-info">
                                                                    <label>Email*</label>
                                                                    <input type="email" class="form-control" name="email" required value="<?php echo e($userDetails -> email); ?>">
                                                                </div>

                                                                <div class="billing-info">
                                                                    <label>Điện thoại *</label>
                                                                    <input type="text" class="form-control" name="mobile" required value="<?php echo e($userDetails -> mobile); ?>">
                                                                </div>

                                                                <div class="billing-info">
                                                                    <label>Tỉnh/Thành phố</label>
                                                                    <br />
                                                                    <select class="form-control" name="city">
                                                                        <option value="0">Chọn thành phố/tỉnh</option>
                                                                        <?php $__currentLoopData = $citys; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                        <option 
                                                                        value="<?php echo e($city -> name); ?>" 
                                                                        <?php echo e($city->name  == $userDetails -> city ?"selected":""); ?>>
                                                                        <?php echo e($city -> name); ?></option>
                                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>       
                                                                    </select>
                                                                    <br /><br />
                                                                </div>
   
                                                                <div class="billing-info">
                                                                    <label>Quận/huyện</label>
                                                                    <input type="text" class="form-control mb-0" name="state" required value="<?php echo e($userDetails -> state); ?>">
                                                                </div>

                                                                <div class="billing-info">
                                                                    <label>Địa chỉ</label>
                                                                    <input type="text" class="form-control mb-0" name="address" required value="<?php echo e($userDetails -> address); ?>">

                                                                </div>

                                                                
                                                                 <div class="billing-back-btn">
                                                    
                                                                    <div class="billing-btn">
                                                                        <button type="submit">Cập nhật</button>
                                                                    </div>
                                                                </div>
                                                                
                                                            </form>
                                                        </div>
                                                    </div>
                                                    
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default single-my-account">
                                        <div class="panel-heading my-account-title">
                                            <h3 class="panel-title"><span>4 .</span> <a href="<?php echo e(url('/front-logout')); ?>">Đăng xuất</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- account area end -->
<?php $__env->stopSection(); ?>


<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/user/account.blade.php ENDPATH**/ ?>