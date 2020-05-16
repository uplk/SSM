<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />

</head>

<body>
<div class="body">
<%--    <button id="phone_login" >denglu</button>--%>
    <!--<img src="img/tubiao-09.png" class="logo" />-->
    <p class="logo">logo</p>
    <div class="body_count">
        <div class="login_count">
            <div class="login_count_a">
                <div class="login_count_a_l">
                    <div class="login_a_l_t">QQ扫码登录点这里</div>
                    <div class="triangle"></div>
                    <img src="img/tubiao-02.png" class="icon_e" />
                </div>
                <div id="all">
                    <ul id="option">
                        <li class="active login_left">手机登录</li>
                        <li class="login_right">密码登录</li>

                    </ul>
                    <ul id="card">
                        <li class="active">
                            <!--输入框-->
                            <div class="login_account_count">
                                <img src="img/tubiao-05.png" alt="" />
                                <select class="account_select">
                                    <option value="+86">+86</option>
                                    <option value="+852">+852</option>
                                    <option value="+853">+853</option>
                                    <option value="+886">+886</option>
                                </select>
                                <img src="img/line-down.png" alt="" class="account_select_icon" />
                                <input name="utl" class="mobile_input" placeholder="请输入手机号码" id="utl"/>
                            </div>
                            <div class="login_account_counts">
                                <img src="img/tubiao-06.png" alt="" />
                                <input name="verifyCode"  id="verifyCode" placeholder="请输入验证码" />
                                <input class="account_code" type="button" id="code_btn" value="获取验证码"/>
                            </div>
                            <!--登录按钮-->
                            <button class="login_account_button" id="phone_login">登录</button>
                        </li>
                        <li class="login_account">
                            <!--输入框-->
                            <div class="login_bot_count">
                                <img src="img/tubiao-07.png" alt="" />
                                <input type="" name="uname" id="uname" placeholder="请输入账号" />
                            </div>
                            <div class="login_bot_count">
                                <img src="img/tubiao-06.png" alt="" />
                                <input type="" name="upassword" id="upassword" placeholder="请输入密码"  />
                            </div>
                            <div class="login_bot">
                                <a>忘记密码?</a>
                                <p><input type="checkbox" name="vehicle" value="Bike" />记住密码</p>
                            </div>
                            <!--登录按钮-->
                            <button class="login_button" id="pwd_login">登录</button>
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
                    <img src="img/tubiao-04.png" alt="" /> QQ扫码登录
                </div>
                <img src="img/ewm.png" class="libqr" />
                <p class="libqr_text">请使用微信扫描二维码登录</p>
            </div>

        </div>

    </div>

</div>
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- jQuery -->
<%--<script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>--%>
<!-- login-->
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js" ></script>--%>
<!-- Bootstrap 4 -->
<%--<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<script type="text/javascript" >

    $(function () {
        $("#code_btn").on("click", function(){
            var utl =$("#utl").val();
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/user/getCode.do",
                data:{utl :utl},
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

    $(function () {
        $("#pwd_login").on("click", function(){
            var uname =$("#uname").val();
            var upassword =$("#upassword").val();
            alert(uname)
            alert(upassword)
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/user/pwdLogin.do",
                data:{uanme :uname, upassword: upassword},
                dataType : "json",
                success:function(data) {
                    window.location.href="${pageContext.request.contextPath}/index.jsp";
                },
                error:function(e){
                    alert("??");
                }
            })
        })
    })


    $(function () {
        $("#phone_login").on("click", function(){
            var utl =$("#utl").val();
            var code = $("#verifyCode").val();
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/user/phoneSign.do",
                data:{utl :utl, code : code},
                dataType: 'json',
                success:function(data) {
                    window.location.href="${pageContext.request.contextPath}/index.jsp";
                },
                error:function(e){
                    alert("error");
                }
            })
        })
    })

    $('#option li').click(function() {
        $(this).addClass('active').siblings().removeClass('active');
        var a = $(this).index();
        $('#card li:eq(' + a + ')').addClass('active').siblings().removeClass('active');
    })

    $(".icon_e").click(function() {
        $(".login_count_b").show();
        $(".login_count_a").hide();
    })
    $(".icon_z").click(function() {
        $(".login_count_a").show();
        $(".login_count_b").hide();
    })

    $("#btn").click(function() {
        var count = 60;
        //jquery要用setInterval()定时器，因为这里不会调用倒计时函数，要循环执行
        var interval = setInterval(() => {
            if(count == 0) {
                //因为button是<input>元素，所以这里要用.val()方法
                $("#btn").val("重新获取").removeAttr("disabled");
                count = 60;
                //当倒计时结束，这里要清除定时器
                clearTimeout(interval);
            } else {
                $("#btn").val(count + "s后重新获取").attr("disabled", "disabled");
                count--;
            }
        }, 1000);
    })

</script>
</body>

</html>