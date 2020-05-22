<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/18
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge charset=utf-8">
    <title>AdminLTE 3 | Video Add</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- major-add -->
    <link rel="stylesheet" href="../css/major-add.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- markdown -->
    <link rel="stylesheet" href="../css/style.css" />
    <link rel="stylesheet" href="../css/editormd.css" />
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />

    <link rel=stylesheet href=${pageContext.request.contextPath}/css/bootstrap.min.css>


</head>
<body>
<!-- Site wrapper -->
<div class="wrapper">
    <jsp:include page="aside.jsp"/>
    <%--    <!-- Content Wrapper. Contains page content -->--%>
    <%--    <% String major_content = request.getParameter("major_content");%>--%>

    <div class="form-group content-wrapper" style="background: url(${pageContext.request.contextPath}/assets/img/new6.jpg); background-size:100% 100%;">
        <form id="picture-add" action="${pageContext.request.contextPath}/video/add.do" method="post" enctype="multipart/form-data">
            <label for="videoFile" class="col-sm-1 control-label"> 视频</label>
            <div class="col-md-2 col-lg-4">
                <input type="file"  id="videoFile" name = "videoFile " /><br>
            </div>
            <label for="videoFace" class="col-sm-1 control-label">封面</label>
            <div class="col-md-2 col-lg-4">
                <input type="file"  id="videoFace" name = "videoFace" /><br>
            </div>
            <label for="video_label" class="col-sm-1 control-label">标签</label>
            <div class="col-md-2 col-lg-4">
                <input class="form-control"  id="video_label" name = "video_label" placeholder="请输入标签，以逗号分割"/><br>
            </div>
            <label for="video_sort" class="col-sm-1 control-label">分类</label>
            <div class="col-md-2 col-lg-4">
                <select id="video_sort" class="form-control" name="video_sort">
                    <%--                    <option value="wl"  size='16 '>初中物理</option>--%>
                </select>
            </div>
            <label for="video_title" class="col-sm-1 control-label">标题</label>
            <div class="col-md-2 col-lg-4">
                <input class="form-control" id="video_title" name = "video_title"  placeholder="请输入标题"/><br>
            </div>
            <div class="col-md-2 col-lg-4">
                <button id="picture-submit" type="submit" class="btn btn-block btn-outline-primary form-control">Submit</button>
            </div>
        </form>

        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer" >
        <strong>Copyright &copy; 2014-2019 <a href="http://www.beian.miit.gov.cn/">豫ICP备20013743号</a>.</strong>
    </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../js/demo.js"></script>
<!-- Markdown -->
<script src="../js/jquery.min.js"></script>
<script src="../js/editormd.min.js"></script>
<!-- select -->
<script type="text/javascript" src="../js/select-mania.js"></script>


<script type="text/javascript">
    $(document).ready(function(){
        $.ajax({
            cache:false,
            async:false,
            type:"post",
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            dataType:"json",
            url:"${pageContext.request.contextPath}/video/findAllSort.do",
            success:function (data) {
                var htmlTxt="";
                for(var i=0;i<data.length;i++){
                    // alert(data[i].major_sort)
                    htmlTxt += "<option value=";
                    htmlTxt += data[i].video_sort+">";
                    htmlTxt += data[i].video_sort;
                    htmlTxt += "</option>";
                }
                $("#video_sort").html(htmlTxt);
                // alert("Success")
            },
            error:function (data) {
                alert("error")

            }
        });
    });


</script>

</body>
</html>
