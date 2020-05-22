<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/17
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Project Sort Add</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    <!-- major-add -->--%>
<%--    <link rel="stylesheet" href="../css/major-add.css">--%>
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
<%--<body class="hold-transition sidebar-mini">--%>
<body >
<!-- Site wrapper -->
<div class="wrapper">
    <jsp:include page="aside.jsp"/>
    <%--    <!-- Content Wrapper. Contains page content -->--%>
    <%--    <% String major_content = request.getParameter("major_content");%>--%>

    <div class="form-group content-wrapper" style="background: url(${pageContext.request.contextPath}/assets/img/new6.jpg); background-size:100% 100%;">
        <form name="picture_sort_add" action="${pageContext.request.contextPath}/picture/addSort.do" method="post">
            <label for="picture_sort" class="col-sm-1 control-label">分类</label>
            <div class="col-md-2 col-lg-4">
                <input id="picture_sort" class="form-control" name="picture_sort"/>
            </div>
            <div class="col-md-2 col-lg-4">
                <button type="submit" class="btn btn-block btn-outline-primary form-control">Submit</button>
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


</body>
</html>
