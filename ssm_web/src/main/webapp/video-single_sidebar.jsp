<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <!-- Meta required for Bootstrap -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />
    <title>Living In The Now Use It To Enrich Your Life</title>

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

    <style type="text/css">
        .bg{
            background-color: #8fdf82;

        }
    </style>
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
                                    <%--                                    <li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-qqchat"></i></a></li>--%>
                                    <%--                                    <li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-wechat"></i></a></li>--%>
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
        <div class="page-head post-head">
            <div class="container">
                <div class="page-head__breadcrumb">
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">home</a></li>
                        <li class="active">Video</li>
                    </ol>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <h1 class="page-head__title page-head__title_full" id="video_title"></h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page title section end -->

        <!-- New single section start -->
        <div class="new-single bg"  >
            <div class="container">
                <div class="row row-extended">
                    <div class="col-lg-8">
                        <article class="post">

                            <div class="post__img text-center" id="img">

                            </div>

                        </article>
                        <div class="new-single__footer">
                            <section class="post-tag">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="post__tags">
                                            <h2 class="h4">Tags</h2>
                                            <div class="tag-cloud" id="video_label" >
                                                <%--                                                <a href="category-post.jsp" id="picture_label">--%>
                                                <%--                                                    --%>
                                                <%--                                                </a>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <section class="post__comments">
                                <h2 class="h4 section-title">comments</h2>
                                <ol class="comment-list">
                                    <li class="comment-list__item">
                                        <div class="comment__body" id="comment__body">


                                        </div>
                                    </li>
                                </ol>
                                <div class="comment__respond">
                                    <h4 class="section-title">post a comment</h4>
                                    <form class="comment-form">
                                        <div class="form-group">
                                            <textarea id="commentText" rows="6" class="form-control" placeholder="Your message">

                                            </textarea>
                                        </div>
                                        <div class="row form-group form-row">
                                            <div class="col-md-4 form-col">
                                                <input onclick="content()" type="submit" class="btn btn-primary btn-submit animate form-control" value="Post comment" />
                                                <input onclick="addLove()" type="submit" class="btn btn-primary btn-submit animate form-control" value="Love" />
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </section>
                        </div>
                    </div>

                    <aside class="sidebar col-lg-4">
                        <div class="widget-sidebar">
                            <div class="widget-sidebar__title">Most popular</div>
                            <ul class="widget-post-list">
                                <li class="widget-post">
                                    <div class="widget-post__img">
                                        <a href="post-single_sidebar.jsp"><img src="assets/img/small-post6.jpg" alt=""></a>
                                    </div>
                                    <div class="widget-post__content">
                                        <div class="cat-title"><a href="category-post.jsp">Art &amp; Illustration</a></div>
                                        <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">When The Morning Dawns</a></div>
                                        <div class="widget-post__views">820</div>
                                    </div>
                                </li>
                                <li class="widget-post">
                                    <div class="widget-post__img">
                                        <a href="post-single_sidebar.jsp"><img src="assets/img/small-post2.jpg" alt=""></a>
                                    </div>
                                    <div class="widget-post__content">
                                        <div class="cat-title"><a href="category-post.jsp">Graphic Design</a></div>
                                        <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Comment On The Importance</a></div>
                                        <div class="widget-post__views">404</div>
                                    </div>
                                </li>
                                <li class="widget-post">
                                    <div class="widget-post__img">
                                        <a href="post-single_sidebar.jsp"><img src="assets/img/small-post3.jpg" alt=""></a>
                                    </div>
                                    <div class="widget-post__content">
                                        <div class="cat-title"><a href="category-post.jsp">Furniture</a></div>
                                        <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">The Bright Side Of Life</a></div>
                                        <div class="widget-post__views">125</div>
                                    </div>
                                </li>
                                <li class="widget-post">
                                    <div class="widget-post__img">
                                        <a href="post-single_sidebar.jsp"><img src="assets/img/small-post4.jpg" alt=""></a>
                                    </div>
                                    <div class="widget-post__content">
                                        <div class="cat-title"><a href="category-post.jsp">Fashion</a></div>
                                        <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Philosophy As A Science</a></div>
                                        <div class="widget-post__views">987</div>
                                    </div>
                                </li>
                                <li class="widget-post">
                                    <div class="widget-post__img">
                                        <a href="post-single_sidebar.jsp"><img src="assets/img/small-post5.jpg" alt=""></a>
                                    </div>
                                    <div class="widget-post__content">
                                        <div class="cat-title"><a href="category-post.jsp">Photography</a></div>
                                        <div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Just One State</a></div>
                                        <div class="widget-post__views">743</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="widget-sidebar">
                            <div class="widget-sidebar__title">Latest tweet</div>
                            <div class="widget-twitter widget-socialnet">
                                <div class="social-user"><i class="mdi mdi-twitter"></i><a href="#">@HelloYomac</a></div>
                                <div class="social-content">The best way to start Friday is... to read Yomac blog! Check out our latest articles — "Fashion… </div>
                                <a href="https://www.instagram.com/p/Bafe5G4/" class="tweet-link">https://www.instagram.com/p/Bafe5G4/</a>
                            </div>
                        </div>
                        <div class="widget-sidebar">
                            <div class="widget-sidebar__title">Newsletter</div>
                            <div class="widget-newsletter">
                                <p class="widget-newsletter__text">Enter your email address to receive all news, updates on new arrivals, special offers and other information.</p>
                                <div class="widget-newsletter__form input-group">
                                    <input type="text" class="form-control" placeholder="Your e-mail">
                                    <span class="input-group-btn">
											<button class="btn btn-primary animate" type="button">Subscribe</button>
										</span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-sidebar">
                            <div class="widget-sidebar__title">Instagram</div>
                            <div class="widget-instagram widget-socialnet">
                                <div class="social-user"><i class="mdi mdi-instagram"></i><a href="#">#Yomac</a></div>
                                <div class="social-content">
                                    <ul class="instagram-imgs">
                                        <li class="instagram-image"><a href="#"><img src="assets/img/instag4.jpg" alt=""></a></li>
                                        <li class="instagram-image"><a href="#"><img src="assets/img/instag5.jpg" alt=""></a></li>
                                        <li class="instagram-image"><a href="#"><img src="assets/img/instag6.jpg" alt=""></a></li>
                                        <li class="instagram-image"><a href="#"><img src="assets/img/instag1.jpg" alt=""></a></li>
                                        <li class="instagram-image"><a href="#"><img src="assets/img/instag2.jpg" alt=""></a></li>
                                        <li class="instagram-image"><a href="#"><img src="assets/img/instag3.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="widget-sidebar">
                            <div class="widget-sidebar__title">Popular Tags</div>
                            <div class="tag-cloud">
                                <a href="category-post.jsp"><span class="label label-default animate">Architecture</span></a>
                                <a href="category-post.jsp"><span class="label label-default animate">Industrial Design</span></a>
                                <a href="category-post.jsp"><span class="label label-default animate">Art</span></a>
                                <a href="category-post.jsp"><span class="label label-default animate">Illustration</span></a>
                                <a href="category-post.jsp"><span class="label label-default animate">Package Design</span></a>
                                <a href="category-post.jsp"><span class="label label-default animate">Photography</span></a>
                                <a href="category-post.jsp"><span class="label label-default animate">Fashion</span></a>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
        <!-- News primary section end -->

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
    <script type="text/javascript">
        $(document).ready(function(){
            var imgTxt = "";
            var videoFacePath = getQueryVariable("video_face_path");
            var videoPath = getQueryVariable("video_path");
        <%--<a href="${pageContext.request.contextPath}/video/findOne.do?facePath=${video.video_face_path}">--%>
        <%--        <img src="http://localhost:8080/ssm_web_war_exploded/${video.video_face_path}" width="100px" height="70px" />--%>
        <%--        </a>--%>
            imgTxt += '  <a href="${pageContext.request.contextPath}/video/findOne.do?facePath='+videoFacePath+'">';
            imgTxt += "<img src=";
            imgTxt += videoFacePath;
            imgTxt += " '/>";

            $("#img").html(imgTxt);

            var labelTxt ="";
            var label = getQueryVariable("video_label");
            var labelList = label.split(',');
            for(var i=0; i<labelList.length; i++){
                labelTxt += "<span class='label label-default animate'>";
                labelTxt += labelList[i];
                labelTxt += "</span>";
            }
            $("#video_label").html(labelTxt);

            var videoTitle = getQueryVariable("video_title")
            $('#video_title').html(videoTitle);
            var videoID = getQueryVariable("video_id")
            $.ajax({
                cache:false,
                async:false,
                type:"post",
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                dataType:"json",
                url:"${pageContext.request.contextPath}/video/findContent.do?videoID="+video_id,
                success: function (data) {
                    var contentTxt = "";
                    for(var i=0; i<data.length; i++){
                        contentTxt += '<div class="comment__content">' +
                            '<div class="comment__author">'+ data[i].uname+'</div>' +
                            // '<div class="comment__date" id="picture_time">'+ data[i].picture_content_time+'</div>'+
                            '<div class="comment__text" id="video_content">'+data[i].video_content+'</div>'+
                            '</div>';
                        $("#comment__body").html(contentTxt);
                    }
                },
            });

        });
        function content(){
            var video_id = getQueryVariable("video_id");
            var video_face_path = getQueryVariable("video_face_path");
            var video_content = $("#commentText").val();
            $.ajax({
                cache:false,
                async:false,
                type:"post",
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                dataType:"json",
                url:"${pageContext.request.contextPath}/video/addContent.do?video_id="+video_id+"&video_content="+video_content+"&video_face_path="+video_face_path,
            });
        }
        function addLove(){
            var video_id = getQueryVariable("video_id");
            $.ajax({
                cache:false,
                async:false,
                type:"post",
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                dataType:"json",
                url:"${pageContext.request.contextPath}/video/addLove.do?video_id="+video_id,
            });
        }

        function getQueryVariable(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return decodeURI(r[2]); return null;
        }


    </script>
</body>
</html>