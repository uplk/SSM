<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/19
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户信息</title>
    <!-- Meta required for Bootstrap -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />
    <title>首页</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="assets/fonts/Quattrocento/Quattrocento.css">
    <link rel="stylesheet" href="assets/fonts/Quattrocento_Sans/Quattrocento_Sans.css">

    <!-- Icons -->
    <link rel="stylesheet" href="assets/fonts/MaterialDesign/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/fonts/Outicons/flaticon.css">

    <!-- Styles -->
    <link rel="stylesheet" href="libs/bootstrap-4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="libs/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="libs/owl-carousel/owl.theme.css">

    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/responsive.css">

    <!--[if IE 9]>
    <link rel="stylesheet" href="assets/css/ie9.css">
    <![endif]-->
<%--    <link rel="stylesheet" href="css/style.css" type="text/css" />--%>

    <style>
        /*font {*/
        /*    color: #3164af;*/
        /*    font-size: 18px;*/
        /*    font-weight: normal;*/
        /*    padding: 0 10px;*/
        /*}*/

        .error{
            color:red
        }
    </style>

</head>


</head>
<body>
<div class="page-wraper">
    <div class="full-search-wrap">
        <div class="full-search container">
            <div class="full-search__close pull-right animate"><span class="mdi mdi-close"></span></div>
            <form class="full-search__form">
                <input type="text" id="s-full" class="full-search__input" placeholder="Search">
                <input type="submit" hidden>
                <p class="full-search__hint">Type in your search and press enter</p>
            </form>
        </div>
    </div>

    <!-- Header section start -->
    <header class="page-header header-sticky">
        <div class="container">
            <div class="top-bar">
                <div class="top-bar__widgets">
                    <div class="row align-items-center">
                        <div class="col-md-5 col-lg-7">
                            <div class="top-bar__user-menu">
                                <ul class="user-menu nav justify-content-center justify-content-md-start">
                                    <li class="nav-item"><a href="${pageContext.request.contextPath}/"><span class="icon-left icon-xs flaticon-web-page-home  "></span>home</a></li>
                                    <li class="nav-item"><button class="search-btn" id="js-search-btn"><span class="icon-left icon-xs flaticon-magnifying-glass-browser"></span>Search</button></li>
                                    <li class="nav-item"><a href="#"><span class="icon-left icon-xs flaticon-closed-envelope-email"></span>Subscribe</a></li>
                                    <c:if test="${empty uname}">
                                        <li class="nav-item"><a href="${pageContext.request.contextPath}/user-login.jsp"><span class="icon-left icon-xs flaticon-messenger-user-avatar">Login</span></a></li>
                                        <li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-qqchat"></i></a></li>
                                    </c:if>
                                    <c:if test="${not empty uname}">
                                        <li class="nav-item"><a href="${pageContext.request.contextPath}/user/findUser.do?uname=${uname}"><span class="icon-left icon-xs flaticon-messenger-user-avatar">${uname}</span></a></li>
                                    </c:if>

                                </ul>
                            </div>
                        </div>

                        <div class="col-md-2 col-lg-4">
                            <div class="top-bar__logo text-lg-center">
                                <a href="${pageContext.request.contextPath}/index.jsp" class="logo-title logo-title_reg">IndoorsCoder</a>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="mob-menu">
                    <div id="mob-toggle" class="animate"><i class="icon icon-lg flaticon-menu-options"></i></div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header section end -->

    <section class="pop-carousel">
        <div class="container">
            <div class="row">
                <div class="col-md-12 owl-carousel__navigation">
                    <h2 class="h4 owl-carousel__title widget-sidebar__title">Most popular</h2>
                    <div class="owl-carousel__btns">
                        <a class="btn owl-carousel__btn prev animate"><span class="icon flaticon-left-arrow-sign"></span></a>
                        <a class="btn owl-carousel__btn next animate"><span class="icon flaticon-right-direction"></span></a>
                    </div>
                </div>
            </div>
            <div class="owl-carousel__wrap popular-posts-carousel">
                <ul class="owl-carousel item-3 custom-nav post-list list-unstyled">
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post6.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Art &amp; Illustration</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">When The Morning Dawns</a></div>
                            <div class="widget-post__views">820</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post2.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Graphic Design</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Comment On The Importance</a></div>
                            <div class="widget-post__views">404</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post3.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Furniture</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">The Bright Side Of Life</a></div>
                            <div class="widget-post__views">125</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post4.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Fashion</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Philosophy As A Science</a></div>
                            <div class="widget-post__views">987</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post5.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Photography</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Just One State</a></div>
                            <div class="widget-post__views">743</div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12 owl-carousel__navigation">
                    <h2 class="h4 owl-carousel__title widget-sidebar__title">Most popular</h2>
                    <div class="owl-carousel__btns">
                        <a class="btn owl-carousel__btn prev animate"><span class="icon flaticon-left-arrow-sign"></span></a>
                        <a class="btn owl-carousel__btn next animate"><span class="icon flaticon-right-direction"></span></a>
                    </div>
                </div>
            </div>
            <div class="owl-carousel__wrap popular-posts-carousel">
                <ul class="owl-carousel item-3 custom-nav post-list list-unstyled">
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post6.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Art &amp; Illustration</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">When The Morning Dawns</a></div>
                            <div class="widget-post__views">820</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post2.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Graphic Design</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Comment On The Importance</a></div>
                            <div class="widget-post__views">404</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post3.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Furniture</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">The Bright Side Of Life</a></div>
                            <div class="widget-post__views">125</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post4.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Fashion</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Philosophy As A Science</a></div>
                            <div class="widget-post__views">987</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post5.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Photography</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Just One State</a></div>
                            <div class="widget-post__views">743</div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12 owl-carousel__navigation">
                    <h2 class="h4 owl-carousel__title widget-sidebar__title">Most popular</h2>
                    <div class="owl-carousel__btns">
                        <a class="btn owl-carousel__btn prev animate"><span class="icon flaticon-left-arrow-sign"></span></a>
                        <a class="btn owl-carousel__btn next animate"><span class="icon flaticon-right-direction"></span></a>
                    </div>
                </div>
            </div>
            <div class="owl-carousel__wrap popular-posts-carousel">
                <ul class="owl-carousel item-3 custom-nav post-list list-unstyled">
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post6.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Art &amp; Illustration</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">When The Morning Dawns</a></div>
                            <div class="widget-post__views">820</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post2.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Graphic Design</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Comment On The Importance</a></div>
                            <div class="widget-post__views">404</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post3.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Furniture</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">The Bright Side Of Life</a></div>
                            <div class="widget-post__views">125</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post4.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Fashion</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Philosophy As A Science</a></div>
                            <div class="widget-post__views">987</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post5.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Photography</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Just One State</a></div>
                            <div class="widget-post__views">743</div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12 owl-carousel__navigation">
                    <h2 class="h4 owl-carousel__title widget-sidebar__title">Most popular</h2>
                    <div class="owl-carousel__btns">
                        <a class="btn owl-carousel__btn prev animate"><span class="icon flaticon-left-arrow-sign"></span></a>
                        <a class="btn owl-carousel__btn next animate"><span class="icon flaticon-right-direction"></span></a>
                    </div>
                </div>
            </div>
            <div class="owl-carousel__wrap popular-posts-carousel">
                <ul class="owl-carousel item-3 custom-nav post-list list-unstyled">
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post6.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Art &amp; Illustration</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">When The Morning Dawns</a></div>
                            <div class="widget-post__views">820</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post2.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Graphic Design</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Comment On The Importance</a></div>
                            <div class="widget-post__views">404</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post3.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Furniture</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">The Bright Side Of Life</a></div>
                            <div class="widget-post__views">125</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post4.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Fashion</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Philosophy As A Science</a></div>
                            <div class="widget-post__views">987</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post5.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Photography</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Just One State</a></div>
                            <div class="widget-post__views">743</div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12 owl-carousel__navigation">
                    <h2 class="h4 owl-carousel__title widget-sidebar__title">Most popular</h2>
                    <div class="owl-carousel__btns">
                        <a class="btn owl-carousel__btn prev animate"><span class="icon flaticon-left-arrow-sign"></span></a>
                        <a class="btn owl-carousel__btn next animate"><span class="icon flaticon-right-direction"></span></a>
                    </div>
                </div>
            </div>
            <div class="owl-carousel__wrap popular-posts-carousel">
                <ul class="owl-carousel item-3 custom-nav post-list list-unstyled">
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post6.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Art &amp; Illustration</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">When The Morning Dawns</a></div>
                            <div class="widget-post__views">820</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post2.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Graphic Design</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Comment On The Importance</a></div>
                            <div class="widget-post__views">404</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post3.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Furniture</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">The Bright Side Of Life</a></div>
                            <div class="widget-post__views">125</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post4.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Fashion</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Philosophy As A Science</a></div>
                            <div class="widget-post__views">987</div>
                        </div>
                    </li>
                    <li class="widget-post carousel__item">
                        <div class="widget-post__img">
                            <a href="post-single_sidebar.jsp"><img src="assets/img/small-post5.jpg" alt=""></a>
                        </div>
                        <div class="widget-post__content">
                            <div class="cat-title"><a href="">Photography</a></div>
                            <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Just One State</a></div>
                            <div class="widget-post__views">743</div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <jsp:include page="footer.jsp"/>
    <!-- To top section start -->
    <div id="to-top" class="page-to-top animate text-center"><span class="icon icon-left flaticon-up-arrow-sign">Page top</span></div>
</div>


<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.validate.min.js" type="text/javascript"></script>
<!-- Scripts -->

<script src="libs/jquery/jquery-2.2.3.min.js"></script>
<script src="libs/bootstrap-4.3.1/js/popper.min.js"></script>
<script src="libs/bootstrap-4.3.1/js/bootstrap.min.js"></script>
<script src="libs/owl-carousel/owl.carousel.min.js"></script>
<script src="libs/isotope/imagesLoaded.min.js"></script>
<script src="libs/isotope/isotope.pkgd.min.js"></script>
<script src="assets/js/common.js"></script>

<!--[if lt IE 9]>
<script src="libs/html5shiv/es5-shim.min.js"></script>
<script src="libs/html5shiv/html5shiv.min.js"></script>
<script src="libs/html5shiv/html5shiv-printshiv.min.js"></script>
<script src="libs/respond/respond.min.js"></script>
<![endif]-->



</body>
</html>




