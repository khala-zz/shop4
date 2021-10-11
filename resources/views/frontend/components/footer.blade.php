<footer class="footer-area">
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <!-- footer single wedget -->
                            <div class="col-md-6 col-lg-4">
                                <!-- footer logo -->
                                <div class="footer-logo">
                                    <a href="{{ url('/') }}"><img src="{{asset('images/logo/logo.png')}}" alt="logo" /></a>
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
                                            <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                            <li><a href="{{ url('tin-tuc/giới-thiệu/5') }}">Giới thiệu</a></li>
                                            <li><a href="{{ url('cua-hang') }}">Cửa hàng</a></li>
                                            <li><a href="{{ url('tin-tuc') }}">Tin tức</a></li>
                                            <li><a href="{{ url('lien-he') }}">Liên hệ</a></li>
                                            
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
                                            @if(empty(Auth::check()))
                                                <li>
                                                    <a  href="{{ url('/front-login') }}">
                                                        Đăng nhập
                                                    </a>
                                                </li>
                                                <li>
                                                    <a  href="{{ url('/front-register') }}">
                                                        <span>Đăng kí</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a  href="{{ url('/cart') }}">
                                                        <span>Giỏ hàng</span>
                                                    </a>
                                                </li>
                                            @else
                                                <li>
                                                    <a href="{{ url('/my-account') }}">
                                                        Tài khoản
                                                    </a>
                                                </li>
                                               
                                                <li>
                                                    <a  href="{{ url('/cart') }}">
                                                        <span>Giỏ hàng</span>
                                                    </a>
                                                </li>
                                                 <li>
                                                    <a href="{{ url('/front-logout') }}">
                                                        Đăng xuất
                                                    </a>
                                                </li>
                                            @endif
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
                                            action="{{route('newsletter.store')}}"
                                        >
                                            @csrf
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
                                <img class="payment-img" src="{{asset('images/icons/payment.png')}}" alt="payment" />
                            </div>
                        </div>
                    </div>
                </div>
                <!--  Footer Bottom Area End-->
            </footer>