<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 头部 start -->
<div class="top_banner">
    <img src="images/top_banner.jpg" alt="">
</div>
<div class="shortcut">
    <!-- 未登录状态  -->
    <div class="login_out">
        <a href="login.jsp">登录</a>
        <a href="register.jsp">注册</a>
    </div>
    <!-- 登录状态  -->
    <div class="login">
        <span id="welcome">欢迎您！admin</span>
        <a href="myfavorite.jsp" class="collection">我的收藏</a>
        <a href=" user/logout.do">退出</a>
    </div>
</div>
<div class="header_wrap">
    <div class="topbar">
        <div class="logo">
            <a href="/"><img src="images/logo.jpg" alt=""></a>
        </div>
        <div class="search">
            <input name="" id="searchKey" type="text" placeholder="请输入路线名称" class="search_input" autocomplete="off">
            <a href="javascript:search();" class="search-button">搜索</a>
        </div>
        <div class="hottel">
            <div class="hot_pic">
                <img src="images/hot_tel.jpg" alt="">
            </div>
            <div class="hot_tel">
                <p class="hot_time">客服热线(9:00-6:00)</p>
                <p class="hot_num">400-618-9090</p>
            </div>
        </div>
    </div>
</div>
<!-- 首页导航 -->
<div class="navitem">
    <ul class="nav">
    </ul>
</div>
<script src="${pageContext.request.contextPath}/js/getParameter.js"></script>
<script type="text/javascript">
    $(function () {
        //设置heard页面的信息显示
        $.post("user/getLoginUser.do",function (data) {
            if(data == false){
                //未登陆状态  显示登陆框   隐藏信息框
                $(".login_out").show();
                $(".login").hide();

            }else{
                //登陆状态  隐藏登陆框   显示信息框
                $(".login_out").hide();
                $(".login").show();
                $("#welcome").html("欢迎您! " + data.username);
            }
        },"json");
        //设置页面类别的显示
        $.post("category/findAllCategory.do",function (data) {
            var html = "";
            html += "<li><a href=\"index.jsp\">首页</a></li>"

            if(data != null){
                for(var c of data){
                    html += "<li><a href='route_list.jsp?cid="+ c.cid+"'>" +c.cname +"</a></li>"
                }
            }
            html += "<li><a href=\"favoriterank.jsp\">收藏排行榜</a></li>";
            $(".nav").html(html);



        },"json");
    });

    $(function(){
        var rname = getParameter("rname");

        if(rname == null){
            rname = "";
        }else{
            rname = decodeURI(rname);
        }

        $("#searchKey").val(rname);
    });

    function search(){

        var rname = $("#searchKey").val();
        var cid = getParameter("cid");

        location.href = "route_list.jsp?cid="+cid+"&rname="+rname;

    }
</script>
