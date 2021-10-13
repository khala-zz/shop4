<footer class="footer-area">
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <!-- footer single wedget -->
                            <div class="col-md-6 col-lg-4">
                                <!-- footer logo -->
                                <div class="footer-logo">
                                    <a href="<?php echo e(url('/')); ?>"><img src="<?php echo e(asset('images/logo/logo.png')); ?>" alt="logo" /></a>
                                </div>
                                <!-- footer logo -->
                                <div class="about-footer">
                                    <p class="text-info">Bạn cân thông tin gì liên hệ chúng tôi 24/24</p>
                                    <div class="need-help">
                                        <p class="phone-info">
                                            HỖ TRỢ?
                                            <span>
                                                (0909) 345 678 <br />
                                                (0908) 123 456
                                            </span>
                                        </p>
                                    </div>
                                    <div class="social-info">
                                        <ul>
                                            <li>
                                                <a href="#"><i class="ion-social-facebook"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="ion-social-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="ion-social-youtube"></i></a>
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
                            </div>
                            <!-- footer single wedget -->
                            <div class="col-md-6 col-lg-2 mt-res-sx-30px mt-res-md-30px">
                                <div class="single-wedge">
                                    <h4 class="footer-herading">Thông tin</h4>
                                    <div class="footer-links">
                                        <ul>
                                            <li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
                                            <li><a href="<?php echo e(url('tin-tuc/giới-thiệu/5')); ?>">Giới thiệu</a></li>
                                            <li><a href="<?php echo e(url('cua-hang')); ?>">Cửa hàng</a></li>
                                            <li><a href="<?php echo e(url('tin-tuc')); ?>">Tin tức</a></li>
                                            <li><a href="<?php echo e(url('lien-he')); ?>">Liên hệ</a></li>
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- footer single wedget -->
                            <div class="col-md-6 col-lg-2 mt-res-md-50px mt-res-sx-30px mt-res-md-30px">
                                <div class="single-wedge">
                                    <h4 class="footer-herading">Thành viên</h4>
                                    <div class="footer-links">
                                        <ul>
                                            <!-- link login,logou account -->
                                            <?php if(empty(Auth::check())): ?>
                                                <li>
                                                    <a  href="<?php echo e(url('/front-login')); ?>">
                                                        Đăng nhập
                                                    </a>
                                                </li>
                                                <li>
                                                    <a  href="<?php echo e(url('/front-register')); ?>">
                                                        <span>Đăng kí</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a  href="<?php echo e(url('/cart')); ?>">
                                                        <span>Giỏ hàng</span>
                                                    </a>
                                                </li>
                                            <?php else: ?>
                                                <li>
                                                    <a href="<?php echo e(url('/my-account')); ?>">
                                                        Tài khoản
                                                    </a>
                                                </li>
                                               
                                                <li>
                                                    <a  href="<?php echo e(url('/cart')); ?>">
                                                        <span>Giỏ hàng</span>
                                                    </a>
                                                </li>
                                                 <li>
                                                    <a href="<?php echo e(url('/front-logout')); ?>">
                                                        Đăng xuất
                                                    </a>
                                                </li>
                                            <?php endif; ?>
                                            <!-- End of link login,logou account -->
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- footer single wedget -->
                            <div class="col-md-6 col-lg-4 mt-res-md-50px mt-res-sx-30px mt-res-md-30px">
                                <div class="single-wedge">
                                    <h4 class="footer-herading">Đăng kí email</h4>
                                    <div class="subscrib-text">
                                        <p>Nhập thông tin email để nhận sản phẩm giá tốt nhất.</p>
                                    </div>

                                    <div id="mc_embed_signup" class="subscribe-form">
                                        <form
                                            class="validate"                
                                            method="post"
                                            action="<?php echo e(route('newsletter.store')); ?>"
                                        >
                                            <?php echo csrf_field(); ?>
                                            <div id="mc_embed_signup_scroll" class="mc-form">
                                                <input class="email" type="email" required placeholder="Email.." name="email"  />
                                                
                                                <div class="clear">
                                                    <input id="mc-embedded-subscribe" class="button" type="submit" name="subscribe" value="Đăng kí" />
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    
                                </div>
                            </div>
                            <!-- footer single wedget -->
                        </div>
                    </div>
                </div>
                <!--  Footer Bottom Area start -->
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-lg-4">
                                <p class="copy-text">Copyright © <a href="https://khala.vn/"> Khala</a>. All Rights Reserved</p>
                            </div>
                            <div class="col-md-6 col-lg-8">
                                <img class="payment-img" src="<?php echo e(asset('images/icons/payment.png')); ?>" alt="payment" />
                            </div>
                        </div>
                    </div>
                </div>
                <!--  Footer Bottom Area End-->
            </footer><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/components/footer.blade.php ENDPATH**/ ?>