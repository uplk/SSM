<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>登录</title>
    <link rel="stylesheet" href="css/login.css" />
</head>

<body>
<div class="body">
    <!--<img src="img/tubiao-09.png" class="logo" />-->
    <p class="logo">logo</p>
    <div class="body_count">
        <div class="login_count">
            <div class="login_count_a">
                <div class="login_count_a_l">
                    <div class="login_a_l_t">扫码登录点这里</div>
                    <div class="triangle"></div>
                    <img src="img/tubiao-02.png" class="icon_e" />
                </div>
                <div id="all">
                    <ul id="option">
                        <li class="login_right">账号登录</li>
                        <li class="active login_left">密码登录</li>
                    </ul>
                    <ul id="card">
                        <li class="login_account">
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
                                <input type="" name="" class="mobile_input" placeholder="请输入手机号码"id="aa"  />
                            </div>
                            <div class="login_account_counts">
                                <img src="img/tubiao-06.png" alt="" />
                                <input type="" name="" id="" placeholder="请输入验证码" />
                                <input class="account_code" type="button" id="btn"value="获取验证码" />
                            </div>
                            <!--登录按钮-->
                            <button class="login_account_button">登录</button>
                        </li>
                        <li class="active">
                            <!--输入框-->
                            <div class="login_bot_count">
                                <img src="img/tubiao-07.png" alt="" />
                                <input type="" name="" id="" placeholder="请输入账号"id="one" />
                            </div>
                            <div class="login_bot_count">
                                <img src="img/tubiao-06.png" alt="" />
                                <input type="" name="" id="" placeholder="请输入密码"id="one"  />
                            </div>
                            <div class="login_bot">
                                <a>忘记密码?</a>
                                <p><input type="checkbox" name="vehicle" value="Bike" />记住密码</p>
                            </div>
                            <!--登录按钮-->
                            <button class="login_button">登录</button>
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
<script type="text/javascript" src="js/login.js" ></script>
</body>

</html>