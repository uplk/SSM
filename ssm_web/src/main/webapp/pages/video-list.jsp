<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/18
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>视频列表</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <link rel=stylesheet href=${pageContext.request.contextPath}/css/bootstrap.min.css>
    <style type="text/css">

        .videolist {
            position: absolute;
            float: left;
            width: 500px;
            height: 300px;
            margin-top: 15px;
            margin-left: 50px;
        }

        .videolist:hover {
            cursor: pointer;
        }

        .videoed {
            display: none;
            width: 50px;
            height: 50px;
            position: absolute;
            left: 45%;
            top: 45%;
            z-index: 99;
            border-radius: 100%;
        }

        .videos {
            display: none;
            border: 1px solid #080808;
            position: fixed;
            left: 50%;
            top: 50%;
            margin-left: -320px;
            margin-top: -210px;
            z-index: 100;
            width: 640px;
            height: 360px;
        }

        .vclose {
            position: relative;
            right: 1%;
            top: 1%;
            border-radius: 100%;
            cursor: pointer;
        }
    </style>

</head>
<body>
<div class="wrapper">
    <jsp:include page="aside.jsp"/>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Picture</h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="card-body p-0">
                    <table class="table table-striped projects">
                        <thead>
                        <td>Time</td>
                        <td>Class</td>
                        <td>Label</td>
                        <td>Face</td>
                        </thead>
                        <c:forEach items="${videoList}" var="video">
                            <tbody>
                            <td>${video.video_time}</td>
                            <td>${video.video_sort}</td>
                            <td>${video.video_label}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/video/findOne.do?facePath=${video.video_face_path}">
                                    <img src="http://localhost:8080/ssm_web/${video.video_face_path}" width="100px" height="70px" />
                                </a>
                            </td>
                            </tbody>
                        </c:forEach>

                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer" >
        <strong>Copyright &copy; 2014-2019 <a href="http://www.beian.miit.gov.cn/">豫ICP备20013743号</a>.</strong>
    </footer>
</div>

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../js/demo.js"></script>

    <script type="text/javascript">
        $('.videolist').each(function () { //遍历视频列表
            $(this).hover(function () { //鼠标移上来后显示播放按钮
                $(this).find('.videoed').show();
            }, function () {
                $(this).find('.videoed').hide();
            });
            $(this).click(function () { //这个视频被点击后执行
                var img = $(this).attr('vpath');//获取视频预览图
                var video = $(this).attr('ipath');//获取视频路径
                $('.videos').html("<video id=\"video\" poster='" + img + "' style='width: 640px' src='" + video + "' preload=\"auto\" controls=\"controls\" autoplay=\"autoplay\"></video>" +
                    "<img onClick=\"close1()\" class=\"vclose\" src=\"../img/gb.png\" width=\"25\" height=\"25\">");
                $('.videos').show();
            });
        });

    function close1() {
        var v = document.getElementById('video');//获取视频节点
        $('.videos').hide();//点击关闭按钮关闭暂停视频
        v.pause();
        $('.videos').html();
    }
</script>
</body>
</html>
