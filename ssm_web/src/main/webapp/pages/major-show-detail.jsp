<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/8
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>专业文章列表</title>
    <meta charset="utf-8">
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
    <!-- markdown -->
    <link rel="stylesheet" href="../css/style.css" />
    <link rel="stylesheet" href="../css/editormd.css" />
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />

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
                <h3 class="card-title">Major</h3>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fas fa-minus"></i></button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fas fa-times"></i></button>
                </div>
            </div>
            <div class="card-body p-0" id="markDown-major">
                 <textarea style="display: none;" name="major_content">
                       ${findMajor.major_content}
                  </textarea>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
    <footer class="main-footer" >
        <strong>Copyright &copy; IndoorsCoder <a href="http://www.beian.miit.gov.cn/">豫ICP备20013743号</a>.</strong>
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
<!-- Markdown -->
<script src="../js/jquery.min.js"></script>
<script src="../js/editormd.min.js"></script>
<script src="../lib/marked.min.js"></script>
<script src="../lib/prettify.min.js"></script>
<script src="../lib/raphael.min.js"></script>
<script src="../lib/underscore.min.js"></script>
<script src="../lib/sequence-diagram.min.js"></script>
<script src="../lib/flowchart.min.js"></script>
<script src="../lib/jquery.flowchart.min.js"></script>
<%--<script src="../editormd.js"></script>--%>
<script type="text/javascript">
    editormd.markdownToHTML("markDown-major");
    // <!--markdown-->
    // editormd.markdownToHTML("markDown-major");
    var testEditor;
    $(function(){
        testEditor= editormd.markdownToHTML("markDown-major", {
            htmlDecode      : "style,script,iframe",
            emoji           : true,
            taskList        : true,
            tex             : true,  // 默认不解析
            flowChart       : true,  // 默认不解析
            sequenceDiagram : true  // 默认不解析
        });
    });

</script>
</body>
</html>
