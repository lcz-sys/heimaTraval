<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>黑马旅游网-登录</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!--导入jquery-->
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/getParameter.js"></script>
</head>

<body>
<!--引入头部-->
<div id="header"></div>
<!-- 头部 end -->
<section id="login_wrap">
    <div class="fullscreen-bg" style="background: url(images/login_bg.png);height: 532px;">

    </div>
    <div class="login-box">
        <div class="title">
            <img src="images/login_logo.png" alt="">
            <span>欢迎登录黑马旅游账户</span>
        </div>
        <div class="login_inner">
            <!--登录错误提示消息-->
            <div id="errorMsg" ></div>
            <form id="loginForm">
                <input name="username" id="username" type="text" placeholder="请输入账号" autocomplete="off">
                <input name="password" id="password" type="password" placeholder="请输入密码" autocomplete="off">
                <div class="verify">
                    <input name="check" type="text" id="code" placeholder="请输入验证码" autocomplete="off">
                    <span><img src="code" style="cursor: pointer" id="codeImg"></span>
                    <script type="text/javascript">
                    </script>
                </div>
                <div class="submit_btn">
                    <button type="button" id="btnLogin">登录</button>
                    <div class="auto_login">
                        <input type="checkbox" name="" class="checkbox">
                        <span>自动登录</span>
                    </div>
                </div>
            </form>
            <div class="reg">没有账户？<a href="register.jsp">立即注册</a></div>
        </div>
    </div>
</section>
<!--引入尾部-->
<div id="footer"></div>
<!--导入布局js，共享header和footer-->
<script type="text/javascript" src="js/include.js"></script>
<script type="text/javascript">
    //校验账号是否为空
    function checkUsername(){
        var username = $("#username").val().trim();
        if(username.length == 0){
            $("#errorMsg").addClass("alert alert-warning alert-dismissible");
            $("#errorMsg").html("账号不能为空");
            return false;
        }else{
            $("#errorMsg").removeClass("alert alert-warning alert-dismissible");
            $("#errorMsg").html("");
            return  true;
        }
    }
    //校验密码是否为空
    function checkPassword(){
        var password = $("#password").val().trim();
        if(password.length == 0){
            $("#errorMsg").addClass("alert alert-warning alert-dismissible");
            $("#errorMsg").html("密码不能为空");
            return false;
        }else{
            $("#errorMsg").removeClass("alert alert-warning alert-dismissible");
            $("#errorMsg").html("");
            return  true;
        }
    }
    //校验验证码是否为空
    function checkCode(){
        var code = $("#code").val().trim();
        if(code.length == 0){
            $("#errorMsg").addClass("alert alert-warning alert-dismissible");
            $("#errorMsg").html("验证码不能为空");
            return false;
        }else{
            $("#errorMsg").removeClass("alert alert-warning alert-dismissible");
            $("#errorMsg").html("");
            return  true;
        }
    }
    $(function () {
        $("#btnLogin").click(function () {
            if(checkUsername() && checkPassword() && checkCode()){
                $.post("user/login.do",{"username": $("#username").val().trim(),"password": $("#password").val().trim(),"code":$("#code").val().trim()},
                    function (data) {

                        if(data.status == "error"){
                            $("#errorMsg").addClass("alert alert-warning alert-dismissible");
                            $("#errorMsg").html(data.msg);
                        }else{
                            var backurl =  getParameter("backurl");
                            if(backurl){
                                location.href = backurl;
                            }else{
                                //跳转到主页
                                location.href = "index.jsp"
                            }
                        }
                    },"json");

            }
        });

        //点击修改验证码
        $("#codeImg").click(function () {
            $("#codeImg").attr("src","code?time=" + new Date().getTime());
        });

    });
</script>
</body>

</html>