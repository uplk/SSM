<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Project Add</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--下拉框-->
        <!--图标样式-->
        <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <!--基本样式-->
        <link href="../css/select-mania.css" rel="stylesheet" type="text/css">
        <!--自定义样式-->
        <link href="../css/themes/select-mania-theme-darkblue.css" rel="stylesheet" type="text/css">
        <link href="../css/themes/select-mania-theme-green.css" rel="stylesheet" type="text/css">
        <link href="./css/themes/select-mania-theme-orange.css" rel="stylesheet" type="text/css">
        <link href="../css/themes/select-mania-theme-red.css" rel="stylesheet" type="text/css">
        <link href="../css/themes/select-mania-theme-square.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../css/adminlte.min.css">
    <!-- major-add -->
    <link rel="stylesheet" href="../css/major-add.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- markdown -->
    <link rel="stylesheet" href="../css/style.css" />
    <link rel="stylesheet" href="../css/editormd.css" />
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
    <!-- select -->
    <link rel=stylesheet href=https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css>
    <link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css>
    <link href="css/multiple-select.css" rel="stylesheet">

</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
    <jsp:include page="aside.jsp"/>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <form id="program-add">
            <!-- Main content -->
            <div id="layout">
                    <div id="markDown-program">
                        <textarea style="display: none;" name="major_content"></textarea>
                    </div>
            </div>

            <select id="select-major" class="major" >
<%--                    <option value="wl"  size='16 '>初中物理</option>--%>
            </select>

            <button id="submit" type="button" class="btn btn-block btn-outline-primary">Submit</button>
<%--            <input id="submit" type="submit" value="Submit">--%>
        </form>

        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="float-right d-none d-sm-block">
            <b>Version</b> 3.0.4
        </div>
        <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
        reserved.
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
        // $('.major').selectMania({
        //     size: 'large',
        //     themes: ['darkblue']
        // });
        var testEditor;

        $(function() {
            testEditor = editormd("markDown-program",{
                width   : "100%",
                height  : 640,
                syncScrolling : "single",
                path    : "${pageContext.request.contextPath}/lib/",
                saveHTMLToTextarea: true

            });
        });

       $(function () {
            $("#submit").on("click", function(){
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/major/add.do",
                    data:$("#program-add").serialize(),
                    // dataType:"json",
                    success:function(data) {
                        alert("Success");
                    },
                    error:function(e){
                        alert("Error");
                    }
                })
           })
       })
        $(document).ready(function(){
            $.ajax({
                cache:false,
                async:false,
                type:"post",
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                dataType:"json",
                url:"${pageContext.request.contextPath}/major/findMajorSort.do",
                success:function (data) {
                    var htmlTxt="";
                    for(var i=0;i<data.length;i++){
                        // alert(data[i].major_sort)
                        htmlTxt+="<option value=";
                        htmlTxt+=data[i].major_sort + "+ >";
                        htmlTxt+=data[i].major_sort;
                        htmlTxt+="</option>";
                    }
                    $("#select-major").html(htmlTxt);
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
