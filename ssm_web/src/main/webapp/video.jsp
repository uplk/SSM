
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <!-- Meta required for Bootstrap -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
    <title>Category: Video</title>

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
    <%--    <style>--%>
    <%--        .max{width:100%;height:auto;}--%>
    <%--        .min{width:100px;height:auto;}--%>
    <%--    </style>--%>


</head>
<body>
<!-- <div id="page-preloader"><span class="spinner"></span></div> -->
<div class="page-wraper">
    <div class="full-search-wrap">
        <div class="full-search container">
            <div class="full-search__close pull-right animate"><span class="mdi mdi-close"></span></div>
            <form action="/" class="full-search__form">
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

    <!-- Page content section start -->
    <main class="page-content">
        <!-- Page title section start -->
        <div class="page-head page-head_light" style="background-image: url('assets/img/cat-contain.jpg');">
            <div class="container">
                <div class="page-head__breadcrumb">
                    <a href="index.jsp"><i class="icon-xs icon-left flaticon-left-arrow-sign"></i>Back to home</a>
                </div>
                <h1 class="page-head__title">Category: Fashion</h1>
            </div>
        </div>
        <!-- Page title section end -->

        <!-- News primary section start -->
        <section class="section news-primary">
            <div class="container">
                <h2 class="screen-reader-text">News</h2>
                <div class="news-grid flex-row row columns-3" id="picture_main">

                </div>
            </div>
        </section>
        <!-- News primary section end -->
    </main>
    <!-- Page content section end -->

    <jsp:include page="footer.jsp"/>
    <!-- Footer section end -->

    <!-- To top section start -->
    <div id="to-top" class="page-to-top animate text-center"><span class="icon icon-left flaticon-up-arrow-sign">Page top</span></div>
</div>
<!-- Scripts -->

<script src="${pageContext.request.contextPath}/libs/jquery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/bootstrap-4.3.1/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/bootstrap-4.3.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/jquery/jquery-2.2.3.min.js"/>
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

<script type="text/javascript">
    $(document).ready(function(){
        $.ajax({
            cache:false,
            async:false,
            type:"post",
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            dataType:"json",
            url:"${pageContext.request.contextPath}/video/findAllJson.do",
            success:function (data) {
                var htmlTxt="";

                for(var i=0;i<data.length;i++){
                    var video_path = data[i].video_path;
                    var video_face_path = data[i].video_face_path;
                    var video_content = data[i].video_content;
                    var video_label = data[i].video_label;
                    var video_time = data[i].video_time;
                    var video_id = data[i].video_id;
                    var video_title = data[i].video_title;

                    htmlTxt += '<div class="new-item col-md-6 col-lg-4">';
                    htmlTxt += '<div class="new-item__wrap">';
                    htmlTxt += '<div class="new-item__image">';
                    htmlTxt += "<a href='video-single_sidebar.jsp?video_path=";
                    htmlTxt += video_path + "&video_face_path=" +video_face_path+"&video_content=" + video_content
                        +"&video_label=" + video_label + "&video_time=" + video_time
                        + "&video_id="+video_id + "&video_title="+video_title;
                    htmlTxt += "' ><img src=";
                    htmlTxt += video_face_path;
                    htmlTxt += " class='min' id='img'";
                    htmlTxt += "></a>";
                    htmlTxt += "</div>";
                    htmlTxt += '<div class="new-item__info">';
                    htmlTxt += '<div class="h3 new-item__title"><a href="#">'+video_title+'</a></div>';
                    htmlTxt += '<ul class="new-item__meta d-flex align-items-center">';
                    htmlTxt += '<li class="new-item__meta-cat"><a href="#">'+video_label+'</a></li>';
                    htmlTxt += '<li class="new-item__meta-time">'+video_time+'</li>';
                    htmlTxt += '</ul>';
                    htmlTxt += '</div>';
                    htmlTxt += '</div>';
                    htmlTxt += '</div>';
                }
                $("#picture_main").html(htmlTxt);
                // alert("Success")
            },
            error:function (data) {
                alert("error")

            }
        });
    });

    // $(function(){
    //     $('#img').click(function(){
    //
    //         $(this).toggleClass('min');
    //         $(this).toggleClass('max');
    //     });
    // });


</script>
</body>
</html>