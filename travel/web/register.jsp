<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
    <!--导入jquery-->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
</head>
<body>
<!--引入头部-->
<div id="header"></div>
<!-- 头部 end -->
<div class="rg_layout">
    <div class="rg_form clearfix">
        <div class="rg_form_left">
            <p>新用户注册</p>
            <p>USER REGISTER</p>
        </div>
        <div class="rg_form_center">
            <!--注册表单-->
            <form id="registerForm">
                <table style="margin-top: 25px;">
                    <tr>
                        <td colspan="2"><span id="msg" style="color: red;"></span></td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="username">用户名</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="username" name="username" placeholder="请输入账号">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="password">密码</label>
                        </td>
                        <td class="td_right">
                            <input type="password" id="password" name="password" placeholder="请输入密码">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="email">Email</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="email" name="email" placeholder="请输入Email">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="name">姓名</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="name" name="name" placeholder="请输入真实姓名">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="telephone">手机号</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="telephone" name="telephone" placeholder="请输入您的手机号">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="sex">性别</label>
                        </td>
                        <td class="td_right gender">
                            <input type="radio" id="sex" name="sex" value="男" checked> 男
                            <input type="radio" name="sex" value="女"> 女
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="birthday">出生日期</label>
                        </td>
                        <td class="td_right">
                            <input type="date" id="birthday" name="birthday">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="check">验证码</label>
                        </td>
                        <td class="td_right check">
                            <input type="text" id="check" name="code" class="check">
                            <img id="img" src="code" height="32px" style="cursor: pointer">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                        </td>
                        <td class="td_right check">
                            <input type="button" id="btnReg" class="submit" value="注册" style="cursor: pointer">

                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="rg_form_right">
            <p>
                已有账号？
                <a href="${pageContext.request.contextPath}/login.jsp">立即登录</a>
            </p>
        </div>
    </div>
</div>
<!--引入尾部-->
<div id="footer"></div>
<!--导入布局js，共享header和footer-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/include.js"></script>

<script type="text/javascript">

    //用户名的有效判断  长度为6 ~ 18 然后以 字母开头  失去焦点的时候做判断 同时 对名字是否重复做判断
    function checkUsername() {
        var username = $("#username").val().trim();
        var reg = new RegExp("[a-zA-Z]\\w{5,17}");
        if (reg.test(username)) {
            $("#msg").html("");
            return true;
        } else {
            $("#msg").html("账号的长度要在6-18位，且以字母开头");
            return false;
        }

    }

    //密码的校验 非空
    function checkPassword() {
        var password = $("#password").val().trim();
        if (password.length == 0) {
            $("#msg").html("密码不能为空");
            return false;
        } else {
            $("#msg").html("");
            return true;
        }
    }

    //生日的校验，非空
    function checkBirthday() {
        var birthday = $("#birthday").val().trim();
        if (birthday.length == 0) {
            $("#msg").html("生日不能为空");
            return false;
        } else {
            $("#msg").html("");
            return true;
        }
    }

    //对验证码的有效性做判断  同时 判断输入验证码是否正确
    function checkCode() {
        var check = $("#check").val().trim();
        if (check.length == 0) {
            $("#msg").html("请输入验证码");
            return false;
        } else {
            $("#msg").html("");
            return true;
        }
    }

    $(function () {
        //点击图片修改验证码
        $("#img").click(function () {
            $(this).attr("src", "code?n=" + new Date().getTime());
        });
        //表单提交
        $("#btnReg").click(function () {
            // console.log($("#registerForm").serialize());
            if (checkUsername() && checkPassword() && checkCode() && checkBirthday()) {
                $.post("user/register.do", $("#registerForm").serialize(), function (data) {
                    if (data.status == "error") {
                        $("#msg").html(data.msg);
                    } else {  //成功登录 页面跳转
                        location.href = "register_ok.jsp";
                    }

                }, "json")

            }
        });

    })
</script>
</body>
</html>