<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/17
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图片列表</title>
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
                    </thead>
                    <c:forEach items="${pictureList}" var="picture">
                        <tbody>
                        <td>${picture.picture_time}</td>
                        <td>${picture.picture_sort}</td>
                        <td><a href="${pageContext.request.contextPath}/picture/findOne.do?label=${picture.picture_label}">${picture.picture_label}</a></td>
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

    <%--<!-- find one msg-->--%>
    <%--$(function () {--%>
    <%--    $("#one").on("click", function(){--%>

    <%--        var title =  $("#one").text();--%>

    <%--        $.ajax({--%>
    <%--            type:"post",--%>
    <%--            url:"${pageContext.request.contextPath}/major/findOne.do?title="+title,--%>
    <%--            success:function(data) {--%>
    <%--                alert("Success");--%>
    <%--            },--%>
    <%--            error:function(e){--%>
    <%--                alert("Error");--%>
    <%--            }--%>
    <%--        })--%>
    <%--    })--%>
    <%--})--%>
</script>
</body>
</html>
