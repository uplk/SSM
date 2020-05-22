<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Styles -->
    <link rel="stylesheet" href="libs/bootstrap-4.3.1/css/bootstrap.min.css">
    <title>手机注册</title>
</head>

<body>
<div class="body">
    <!--<img src="img/tubiao-09.png" class="logo" />-->
    <p class="logo">logo</p>
    <div class="body_count">
        <div class="login_count">
            <div class="login_count_a">

                <div id="all">
                    <ul id="option">
                        <li class="active login_left">手机注册</li>
                    </ul>
                    <ul id="card">
                        <li class="active">
                            <form id="phoneSignForm" method="post" action="${pageContext.request.contextPath}/user/phoneSign.do">
                            <!--输入框-->
                            <div class="login_account_counts">
                                <img src="img/tubiao-06.png" alt="" />
                                <input name="uname" class="mobile_input"  id="uname" placeholder="请输入昵称" />
                                <span></span>
                            </div>
                            <div class="login_account_count">
                                <img src="img/tubiao-05.png" alt="" />
                                <img src="img/line-down.png" alt="" class="account_select_icon" />
                                <input name="utl" class="mobile_input" value="${utl}" id="utl" readonly="true"/>
                            </div>

                            <!--登录按钮-->
                            <button class="login_account_button" id="phont_login">注册</button>
                            </form>
                        </li>

                    </ul>
                </div>

            </div>



        </div>

    </div>
</div>

<script src="https://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js" ></script>
<script type="text/javascript" >

    $("#uname").onblur(function () {
        var uname =$("#uname").val();
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/user/checkUname.do",
            data:{uname :uname},
            dataType : "text",
            success:function(data) {
                $("#select-major").html(htmlTxt);
            },
            error:function(e){
                alert("验证码发送失败");
            }
        })
    })

    $(function () {
        $("#phone_login").on("click", function(){
            var utl =$("#utl").val();
            var code = $("#verifyCode").val();
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/user/phone_sign.do",
                data:{utl :utl, code : code},
                dataType : "text",
                success:function(data) {
                    alert("验证码发送成功");
                },
                error:function(e){
                    alert("验证码发送失败");
                }
            })
        })
    })
    $(function() {
        $('#phoneSignForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                uname: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 2,
                            max: 12,
                            message: '用户名由2-12位字符组成'
                        },
                        threshold: 2,//有2字符以上才发送ajax请求
                        remote: {//ajax验证。server result:{"valid",true or false}
                            url: "${pageContext.request.contextPath}/user/phone_sign.do",
                            message: '用户名已存在,请重新输入',
                            delay: 1000,//ajax刷新的时间是1秒一次
                            type: 'POST',
                            //自定义提交数据，默认值提交当前input value
                            // data: function(validator) {
                            //     return {
                            //         uname : $("input[name=uname]").val(),
                            //         method : "checkUserName"//UserServlet判断调用方法关键字。
                            //     };
                            // }
                        }
                    }
                },
                // userPassword: {
                //     validators: {
                //         notEmpty: {
                //             message: '密码不能为空'
                //         },
                //         stringLength: {
                //             min: 6,
                //             max: 10,
                //             message: '密码由6-10位字符组成'
                //         },
                //         identical: {
                //             field: 'confirmUserPassword',
                //             message: '密码输入不一致'
                //         }
                //     }
                // },
                // confirmUserPassword: {
                //     validators: {
                //         notEmpty: {
                //             message: '密码不能为空'
                //         },
                //         stringLength: {
                //             min: 6,
                //             max: 10,
                //             message: '密码由6-10位字符组成'
                //         },
                //         identical: {
                //             field: 'userPassword',
                //             message: '密码输入不一致'
                //         }
                //     }
                // }
            }
        });
    });

</script>
</body>

</html>