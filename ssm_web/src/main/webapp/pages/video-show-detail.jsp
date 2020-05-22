<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/18
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>视频播放</title>

    <!--可无视-->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!--主要样式-->
    <style type="text/css">
        body {
            background-color: #222;
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


    </style>

</head>
<body>

<div class="video">
    <div class="container" style="margin-top: 100px">
         <div class="videos">
             <video id="video" poster="http://localhost:8080/ssm_web/${findVideo.video_face_path}" style='width: 640px'
                    src="http://localhost:8080/ssm_web/${findVideo.video_path}" preload="auto" controls="controls" autoplay="autoplay">
             </video>
         </div>
    </div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
</body>
</html>
