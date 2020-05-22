<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/4
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- Meta required for Bootstrap -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />
    <title>基本信息</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/Quattrocento/Quattrocento.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/Quattrocento_Sans/Quattrocento_Sans.css">

    <!-- Icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/MaterialDesign/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/Outicons/flaticon.css">

    <!-- Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/bootstrap-4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/owl-carousel/owl.theme.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css">

    <!--[if IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ie9.css">
    <![endif]-->
</head>
<body>
<!-- <div id="page-preloader"><span class="spinner"></span></div> -->
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
                                    </c:if>
                                    <c:if test="${not empty uname}">
                                        <li class="nav-item"><a href="${pageContext.request.contextPath}/user/findUser.do?uname=${uname}"><span class="icon-left icon-xs flaticon-messenger-user-avatar">${uname}</span></a></li>
                                    </c:if>
                                    <li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-qqchat"></i></a></li>
                                    <li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-wechat"></i></a></li>
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
            <div class="main-navigation__wrap">
                <div class="main-navigation absolute">
                    <ul class="nav justify-content-between">
                        <li class="nav-item menu-item-has-children">
                            <a href="index.jsp" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item menu-item-has-children">
                            <a href="${pageContext.request.contextPath}/program.jsp" class="nav-link">Programmer</a>
                        </li>
                        <li class="nav-item">
                            <a href="category-post.jsp" class="nav-link">Picture</a>
                        </li>
                        <li class="nav-item">
                            <a href="category-post.jsp" class="nav-link">Video</a>
                        </li>
                        <li class="nav-item">
                            <a href="category-post.jsp" class="nav-link">Music</a>
                        </li>
                        <li class="nav-item">
                            <a href="about.jsp" class="nav-link">About</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!-- Header section end -->

    <!-- Page content section start -->
    <main class="page-content">
        <!-- Slider section start -->
<%--        <section class="hero-slider-section">--%>
<%--            <div id="hero-slider" class="main-slider">--%>
<%--                <div class="main-slider__item" style="background-image: url('assets/img/slide-2.jpg')">--%>
<%--                    <div class="container">--%>
<%--                        <div class="item__content">--%>
<%--                            <div class="cat-title"><a href="category-post.jsp">Fashion</a></div>--%>
<%--                            <h1 class="main-slider__title"><a href="post-single_sidebar.jsp">Tips For Choosing The<br> Perfect Gloss For Your Lips</a></h1>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>
        <!-- Slider section start -->



    </main>
    <!-- Page content section end -->

    <!-- Footer section start -->
   <jsp:include page="footer.jsp"/>
    <!-- Footer section end -->

    <!-- To top section start -->
    <div id="to-top" class="page-to-top animate text-center"><span class="icon icon-left flaticon-up-arrow-sign">Page top</span></div>

</div>
<!-- Scripts -->

<script src="${pageContext.request.contextPath}/libs/jquery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/bootstrap-4.3.1/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/bootstrap-4.3.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/isotope/imagesLoaded.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/isotope/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/common.js"></script>

<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/libs/html5shiv/es5-shim.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/html5shiv/html5shiv.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/html5shiv/html5shiv-printshiv.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/respond/respond.min.js"></script>
<![endif]-->

</body>
</html>
