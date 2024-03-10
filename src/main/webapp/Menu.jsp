<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--begin of menu-->
<!-- Css Styles -->
<link rel="stylesheet" href="header/css/bootstrap.min.css"
      type="text/css">
<link rel="stylesheet" href="header/css/font-awesome.min.css"
      type="text/css">
<link rel="stylesheet" href="header/css/elegant-icons.css"
      type="text/css">
<link rel="stylesheet" href="header/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="header/css/jquery-ui.min.css"
      type="text/css">
<link rel="stylesheet" href="header/css/owl.carousel.min.css"
      type="text/css">
<link rel="stylesheet" href="header/css/slicknav.min.css"
      type="text/css">
<link rel="stylesheet" href="header/css/style.css" type="text/css">

<%--<div class="humberger__menu__overlay"></div>--%>

<%--<div class="humberger__menu__wrapper">--%>
<%--    <div class="humberger__menu__logo">--%>
<%--        <a href="home"><img src="img/logo.png" alt=""></a>--%>
<%--    </div>--%>


<%--    <div class="humberger__menu__cart">--%>
<%--        <ul>--%>
<%--            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>--%>
<%--            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>--%>
<%--        </ul>--%>
<%--        <div class="header__cart__price">--%>
<%--            item: <span>$150.00</span>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="humberger__menu__widget">--%>
<%--        <div class="header__top__right__language">--%>
<%--            <img src="img/language.png" alt="">--%>
<%--            <div>English</div>--%>
<%--            <span class="arrow_carrot-down"></span>--%>
<%--            <ul>--%>
<%--                <li><a href="#">Spanis</a></li>--%>
<%--                <li><a href="#">English</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--&lt;%&ndash;        <div class="header__top__right__auth">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"><i class="fa fa-user"></i> Login</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--    </div>--%>
<%--    <nav class="humberger__menu__nav mobile-menu"></nav>--%>
<%--    <div id="mobile-menu-wrap"></div>--%>
<%--    <div class="header__top__right__social">--%>
<%--        <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i--%>
<%--            class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>--%>
<%--        <a href="#"><i class="fa fa-pinterest-p"></i></a>--%>
<%--    </div>--%>
<%--    <div class="humberger__menu__contact">--%>
<%--        <ul>--%>
<%--            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>--%>
<%--            <li>Free Shipping for all Order of $99</li>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--</div>--%>


<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> oganishop@gmail.com</li>
                            <li>Cam kết hàng chính hãng</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i
                                    class="fa fa-facebook"></i></a>
                            <a href="#"><i
                                    class="fa fa-twitter"></i></a>
                            <a href="#"><i
                                    class="fa fa-linkedin"></i></a>
                            <a href="#"><i
                                    class="fa fa-pinterest-p"></i></a>
                        </div>
                        <%--                        -------------------%>
                        <%--                        <div class="header__top__right__language">--%>
                        <%--                            <img src="img/language.png" alt="">--%>
                        <%--                            <div>Vietnamese</div>--%>
                        <%--                            <span class="arrow_carrot-down"></span>--%>
                        <%--                            <ul>--%>
                        <%--                                &lt;%&ndash;                                <li><a href="#">Spanis</a></li>&ndash;%&gt;--%>
                        <%--                                <li><a href="#">English</a></li>--%>
                        <%--                            </ul>--%>
                        <%--                        </div>--%>
                        <%--                        -------------------%>
                        <div class="header__top__right__auth">
                            <a href="login"><i class="fa fa-user" style="color: #7fad39;"></i> Đăng nhập </a>
                        </div>
                        <div class="header__top__right__auth">
                            <a href="print"><i class="fa fa-shopping-bag" style="color: #7fad39"></i>
                                <span>${amout}</span> Giỏ hàng </a>
                        </div>
                        <%--                        <div class="humberger__menu__cart">--%>
                        <%--                            <ul>--%>
                        <%--                                <a href="#"><i class="fa fa-heart"></i> <span>1</span></a>--%>
                        <%--                                <a href="#"><i class="fa fa-shopping-bag"></i> <span>${amout}</span></a>--%>
                        <%--                            </ul>--%>

                        <%--                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="home"><img src="header/img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-9">
                <nav class="header__menu">
                    <ul>
                        <c:if test="${sessionScope.acc.isAdmin == 1}">

                            <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512">
                                <!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                <path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/>
                            </svg>

                            <li><a href="MyAccount.jsp">Xin chào Quản Lý! ${sessionScope.acc.user.toUpperCase()}</a>
                            </li>
                            <li><a href="manage">Quản lý tài khoản</a></li>
                            <li><a href="managers">Quản lý sản phẩm</a></li>
                            <li><a href="member">Quản lý khách hàng</a></li>
                            <li><a href="ChangePass.jsp">Thay đổi mật khẩu</a></li>
                            <li><a href="logout">Đăng xuất</a></li>

                        </c:if>

                        <c:if test="${sessionScope.acc.isSell == 1}">

                            <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512">
                                <!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                <path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/>
                            </svg>


                            <li><a href="MyAccount.jsp">Xin chào Quản lý! ${sessionScope.acc.user.toUpperCase()}</a>
                            </li>
                            <li><a href="manage">Quản lý tài khoản</a></li>
                            <li><a href="member">Quản lý khách hàng</a></li>
                            <li><a href="manager">Quản lý sản phẩm</a></li>
                            <li><a href="mcontact">Quản lý liên hệ</a></li>
                            <li><a href="ChangePass.jsp">Thay đổi mật khẩu</a></li>
                            <li><a href="logout">Đăng xuất</a></li>
                        </c:if>

                        <c:if test="${sessionScope.acc.isSell == 0}">
                            <c:if test="${sessionScope.acc.isAdmin == 0}">
                                <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512">
                                    <!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                    <path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/>
                                </svg>
                                <li><a href="MyAccount.jsp">Xin chào Quý
                                    Khách! ${sessionScope.acc.user.toUpperCase()}</a></li>

                                <li><a href="Contact.jsp">Liên hệ</a></li>
                                <li><a href="ChangePass.jsp">Thay đổi mật khẩu</a></li>
                                <li><a href="logout">Đăng xuất</a></li>


                                <!--Start of Tawk.to Script-->
                                <script type="text/javascript">
                                    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
                                    (function () {
                                        var s1 = document
                                            .createElement("script"), s0 = document
                                            .getElementsByTagName("script")[0];
                                        s1.async = true;
                                        s1.src = 'https://embed.tawk.to/61ba3eb2c82c976b71c1a29d/1fmvo9qg6';
                                        s1.charset = 'UTF-8';
                                        s1.setAttribute('crossorigin', '*');
                                        s0.parentNode.insertBefore(s1, s0);
                                    })();
                                </script>

                                <!--End of Tawk.to Script-->
                            </c:if>
                        </c:if>
                        <c:if test="${sessionScope.acc ==null}">

                            <ul>
                                <li class="active"><a href="home"><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">TRANG CHỦ </font></font></a></li>
                                <li><a href="home"><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">CỬA HÀNG</font></font></a></li>
                                <li><a href="#"><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">TRANG MỤC</font></font></a>
                                    <ul class="header__menu__dropdown">
                                        <li><a href="#"><font style="vertical-align: inherit;"><font
                                                style="vertical-align: inherit;">Chi tiết cửa hàng</font></font></a>
                                        </li>
                                        <li><a href="#"><font style="vertical-align: inherit;"><font
                                                style="vertical-align: inherit;">Giỏ hàng</font></font></a></li>
                                        <li><a href="#"><font style="vertical-align: inherit;"><font
                                                style="vertical-align: inherit;">Thủ tục thanh toán</font></font></a>
                                        </li>
                                        <li><a href="#"><font style="vertical-align: inherit;"><font
                                                style="vertical-align: inherit;">Chi tiết blog</font></font></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">BLOG</font></font></a></li>
                                <li><a href="#"><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">LIÊN HÊ</font></font></a></li>
                            </ul>


                            <%--                            <li><a href="Login.jsp">Đăng 111111111111 nhập</a></li>--%>
                        </c:if>
                    </ul>
                </nav>
            </div>

        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>

<section class="hero">
    <div class="container">
        <div class="row">

            <%--            <div class="col-lg-12">--%>
            <%--                <div class="hero__search">--%>
            <%--                    <div class="hero__search__form">--%>
            <%--                        <form action="search" method="post">--%>
            <%--                            <div class="hero__search__categories">Danh mục<span--%>
            <%--                                    class="arrow_carrot-down"></span>--%>
            <%--                                <div class="dropdown-menu">--%>
            <%--                                    <ul>--%>
            <%--                                        <li><a href="#">Danh mục 1</a></li>--%>
            <%--                                        <li><a href="#">Danh mục 2</a></li>--%>
            <%--                                        <li><a href="#">Danh mục 3</a></li>--%>

            <%--                                    </ul>--%>
            <%--                                </div>--%>
            <%--                            </div>--%>
            <%--                            <input value="${inputValue}" name="txt" type="text"--%>
            <%--                                   placeholder="Tìm kiếm...">--%>
            <%--                            <button type="submit" class="site-btn">TÌM KIẾM</button>--%>
            <%--                        </form>--%>
            <%--                    </div>--%>
            <%--                    <div class="hero__search__phone">--%>
            <%--                        <div class="hero__search__phone__icon">--%>
            <%--                            <i class="fa fa-phone"></i>--%>
            <%--                        </div>--%>
            <%--                        <div class="hero__search__phone__text">--%>
            <%--                            <h5>0938.63.60.68</h5>--%>
            <%--                            <span>Thời gian hỗ trợ 24/7</span>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>

        </div>
    </div>
    </div>
</section>


<script src="header/js/jquery-3.3.1.min.js"></script>
<script src="header/js/bootstrap.min.js"></script>
<script src="header/js/jquery.nice-select.min.js"></script>
<script src="header/js/jquery-ui.min.js"></script>
<script src="header/js/jquery.slicknav.js"></script>
<script src="header/js/mixitup.min.js"></script>
<script src="header/js/owl.carousel.min.js"></script>
<script src="header/js/main.js"></script>


<!--end of menu-->
