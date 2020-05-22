<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>登录</title>
    <link rel="stylesheet" href="../css/login.css" />
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
                        <li class="login_right">注册</li>
                        <li class="active login_left">登陆</li>
                    </ul>
                    <ul id="card">

                        <li class="active">
                            <!--输入框-->
                            <div class="login_bot_count">
                                <img src="img/tubiao-07.png" alt="" />
                                <input type="" name="uname" id="" placeholder="请输入账号"id="one" />
                            </div>
                            <div class="login_bot_count">
                                <img src="img/tubiao-06.png" alt="" />
                                <input type="" name="upassword" id="" placeholder="请输入密码"id="one"  />
                            </div>

                            <!--登录按钮-->
                            <button class="login_button" onclick="goLogin()">登录</button>
                        </li>

                    </ul>
                </div>

            </div>

            <div class="login_count_b">
                <div class="login_count_b_l">
                    <div class="login_b_l_t">账号登录点这里</div>
                    <div class="triangle"></div>
                    <img src="img/tubiao-03.png" class="icon_z" />
                </div>
                <div class="login_b_title">
                    <img src="img/tubiao-04.png" alt="" /> 微信扫码登录
                </div>
                <img src="img/ewm.png" class="libqr" />
                <p class="libqr_text">请使用微信扫描二维码登录</p>
            </div>

        </div>

    </div>
</div>

<script src="https://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="../js/login.js" ></script>
<script  type="text/javascript">
    function goRegister() {
        window.location.href="${pageContext.request.contextPath}/user-sign.jsp"
    }
    function goLogin() {
        window.location.href="${pageContext.request.contextPath}/user-login.jsp"
    }
</script>
</body>

</html>