<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Meta required for Bootstrap -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
    <title>首页</title>

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
                        <div class="col-md-3 col-lg-8">
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
                                        <li class="nav-item"><a href="${pageContext.request.contextPath}/user/logout.do"><span class="icon-left icon-xs flaticon-messenger-user-avatar">Logout</span></a></li>
                                    </c:if>

                                </ul>
                            </div>
                        </div>

                        <div class="col-md-2 col-lg-4">
                            <div class="top-bar__logo text-right">
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


    <!-- Page content section start -->
    <main class="page-content">
        <!-- Popular carousel section start -->
        <section class="pop-carousel">
            <div class="container" style="background-image: url('${pageContext.request.contextPath}/assets/img/slide-2.jpg')">
                    <div class="row form-row form-group" >
                        <label for="uname" class="col-sm-1">用户名</label>
                        <div class="form-col col-sm-3" >
                            <input class="form-control" name="uname" id="uname" value="${user.uname}" />
                        </div>

                    </div>
                    <div class="row form-row form-group" >
                        <label for="uqq" class="col-sm-1">QQ</label>
                        <div class="form-col col-sm-3">
                            <input onclick="uqq()" class="form-control"name="uqq" id="uqq" value="${user.uqq}" placeholder="暂无绑定QQ"/>
                        </div>

                    </div>
                    <div class="row form-row form-group" >
                        <label for="utl" class="col-sm-1">手机号</label>
                        <div class="form-col col-sm-3">
                            <input onclick="utl()" class="form-control"name="utl" id="utl" value="${user.utl}" placeholder="暂无绑定手机" />
                        </div>

                    </div>
                    <div class="row form-row form-group" >
                        <label for="ulove_video" class="col-sm-1">视频收藏</label>
                        <div class="form-col col-sm-3">
                            <input onclick="findLoveVideo()" name="ulove_video" id="ulove_video"type="submit" class="btn btn-primary btn-submit animate form-control" value="Love" />
                        </div>
                    </div>
                    <div class="row form-row form-group" >
                        <label for="ulove_major" class="col-sm-1">文章收藏</label>
                        <div class="form-col col-sm-3">
                            <input onclick="addLove()" name="ulove_major" id="ulove_major" type="submit" class="btn btn-primary btn-submit animate form-control" value="Love" />
                        </div>
                    </div>
                    <div class="row form-row form-group" >
                        <label for="ulove_music" class="col-sm-1">音乐收藏</label>
                        <div class="form-col col-sm-3">
                            <input onclick="addLove()" name="ulove_music" id="ulove_music" type="submit" class="btn btn-primary btn-submit animate form-control" value="Love" />
                        </div>
                    </div>
                    <div class="row form-row form-group" >
                        <label for="ulove_picture" class="col-sm-1">图片收藏</label>
                        <div class="form-col col-sm-3">
                            <input onclick="findLovePicture()"  name="ulove_picture" id="ulove_picture" type="submit" class="btn btn-primary btn-submit animate form-control" value="Love" />
                        </div>
                    </div>

            </div>
        </section>
        <!-- Popular carousel section end -->
    </main>
    <!-- Page content section end -->
    <!-- Footer section start -->
<%--    <jsp:include page="footer.jsp"/>--%>

<%--    <!-- To top section start -->--%>
<%--    <div id="to-top" class="page-to-top animate text-center"><span class="icon icon-left flaticon-up-arrow-sign">Page top</span></div>--%>
</div>
    <!-- Scripts -->

    <script src="${pageContext.request.contextPath}/libs/jquery/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/bootstrap-4.3.1/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/bootstrap-4.3.1/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/owl-carousel/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/isotope/imagesLoaded.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/isotope/isotope.pkgd.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/common.js"></script>

    <script type="text/javascript">
        function utl() {
            var uname = $('#uname').val();
            window.location.href= "${pageContext.request.contextPath}/user-add-utl.jsp?uname="+uname;
        }
        function findLovePicture() {
            var uname = $('#uname').val();
            window.location.href= "${pageContext.request.contextPath}/picture/findUserLove.do?uname="+uname;

        }
        function findLoveVideo() {
            var uname = $('#uname').val();
            window.location.href= "${pageContext.request.contextPath}/video/findUserLove.do?uname="+uname;

        }
    </script>
</body>
</html>




