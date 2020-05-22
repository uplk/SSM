<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/17
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge charset=utf-8">
    <title>AdminLTE 3 | Picture Add</title>

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

<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myAlert.css" />--%>
<%--    <style type="text/css">--%>
<%--        .alertBox{--%>
<%--            width: 38rem;--%>
<%--            height: 20rem;--%>
<%--            position: absolute;--%>
<%--            top: 35%;--%>
<%--            left: 50%;--%>
<%--            margin-left: -19rem;--%>
<%--            border-radius: 0.5rem;--%>
<%--            overflow: hidden;--%>
<%--            background-color: #fff;--%>
<%--        }--%>
<%--    </style>--%>


</head>
<body>
<!-- Site wrapper -->
<div class="wrapper">
    <jsp:include page="aside.jsp"/>
    <%--    <!-- Content Wrapper. Contains page content -->--%>
    <%--    <% String major_content = request.getParameter("major_content");%>--%>

    <div class="form-group content-wrapper" style="background: url(${pageContext.request.contextPath}/assets/img/new6.jpg); background-size:100% 100%;">
        <form id="picture-add" action="${pageContext.request.contextPath}/picture/add.do" method="post" enctype="multipart/form-data">
            <label for="pictureFile" class="col-sm-1 control-label"> 图片</label>
            <div class="col-md-2 col-lg-4">
                <input type="file"  id="pictureFile" name = "pictureFile " /><br>
            </div>
            <label for="picture_sort" class="col-sm-1 control-label">分类</label>
            <div class="col-md-2 col-lg-4">
                <select id="picture_sort" class="form-control" name="picture_sort">
                    <%--                    <option value="wl"  size='16 '>初中物理</option>--%>
                </select>
            </div>
            <label for="picture_label" class="col-sm-1 control-label">标签</label>
            <div class="col-md-2 col-lg-4">
                <input class="form-control"  id="picture_label" name = "picture_label" placeholder="请输入标签，以逗号分割"/><br>
            </div>
            <label for="picture_label" class="col-sm-1 control-label">标题</label>
            <div class="col-md-2 col-lg-4">
                <input class="form-control"  id="picture_title" name = "picture_title" placeholder="请输入标题"/><br>
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
            url:"${pageContext.request.contextPath}/picture/findAllSort.do",
            success:function (data) {
                var htmlTxt="";
                for(var i=0;i<data.length;i++){
                    // alert(data[i].major_sort)
                    htmlTxt += "<option value=";
                    htmlTxt += data[i].picture_sort+">";
                    htmlTxt += data[i].picture_sort;
                    htmlTxt += "</option>";
                }
                $("#picture_sort").html(htmlTxt);
                // alert("Success")
            },
            error:function (data) {
                alert("error")

            }
        });
    });
    // function checkForm() {
    //     var pictureFile = $('pictureFile').val();
    //     var picture_title = $('picture_title').val();
    //     var picture_label = $('picture_label').val();
    //     var picture_sort = $('picture_sort').val();
    //     msg = "";
    //     if(!pictureFile){
    //         msg += "文件为空\n";
    //     }
    //     if(!picture_title){
    //         msg += "标题为空\n";
    //     }
    //     if(!picture_label){
    //         msg += "标签为空\n";
    //     }
    //     var myTip = {
    //         title: "Tip",
    //         msg: msg,
    //         button:{
    //             ok: "是",
    //         }
    //     };
    //     MyAlert(myTip);
    // }
    ;
    function MyAlert(obj){
        var callbackOK = null,
            callbackCancle = null;
        if ($(".alertBox").length == 0) {
            var alertElem = '<div class="alertDisable">\n' +
                '\t\t<div class="alertBox">\n' +
                '\t\t\t<ul>\n' +
                '\t\t\t\t<li class="alertHeader">标题</li>\n' +
                '\t\t\t\t<li class="alertContent">\n' +
                '\t\t\t\t<p></p>\n' +
                '\t\t\t\t</li>\n' +
                '\t\t\t\t<li class="alertFooter">\n' +
                '\t\t\t\t\t<a href="javascript:void(0);" class="alertOK">确定</a>\n' +
                '\t\t\t\t\t<a href="javascript:void(0);" class="alertCancle">取消</a>\n' +
                '\t\t\t\t</li>\n' +
                '\t\t\t</ul>\n' +
                '\t\t</div>\n' +
                '\t</div>';
            $("body").append(alertElem);
        }
        $(".alertFooter").on("click","a",function(){
            if ($(this).attr("class") == "alertOK") {
                if (callbackOK) {
                    callbackOK();
                }
                $(".alertDisable").css("display","none");
            }
            else{
                if (callbackCancle) {
                    callbackCancle();
                }
                $(".alertDisable").css("display","none");
            }
            $(".alertContent").css({"line-height":"normal"});
            $(".alertContent p").css({"text-align":"left","text-indent":"2rem"});
            $(".alertFooter").off("click","a");
        });

        if (!obj) {
            $(".alertCancle").css("display","none");
            $(".alertOK").css("margin-right","0");
            $(".alertDisable").css("display","block");
            return;
        }

        if (obj.title) {
            $(".alertHeader").text(obj.title);
        }
        if (obj.msg) {
            $(".alertContent p").text(obj.msg);
        }

        if (obj.button && obj.button.ok) {
            $(".alertOK").text(obj.button.ok);
            callbackOK = obj.button.okEvent;
            if (obj.button.cancle) {
                $(".alertCancle").text(obj.button.cancle);
                $(".alertCancle").css("display","inline-block");
                $(".alertOK").css("margin-right","5%");
                callbackCancle = obj.button.cancleEvent;
            }
            else{
                $(".alertCancle").css("display","none");
                $(".alertOK").css("margin-right","0");
            }
        }
        else{
            $(".alertCancle").css("display","none");
            $(".alertOK").css("margin-right","0");
        }

        $(".alertDisable").css("display","block");
        var p_msg = $(".alertContent p");
        // var a = parseInt(p_msg.css("font-size"));
        // var b= p_msg.height();
        if (p_msg.height() < 2*parseInt(p_msg.css("font-size"))) {
            $(".alertContent").css({"line-height":"10rem"});
            $(".alertContent p").css({"text-align":"center","text-indent":"0"});
        }
    }
</script>

</body>
</html>
