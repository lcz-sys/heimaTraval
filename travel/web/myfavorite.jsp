<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>黑马旅游网-我的收藏</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css ">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jqPaginator.css" >
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/jqPaginator.js"></script>
    <style>
        .tab-content .row>div {
            margin-top: 16px;
        }
        .tab-content {
            margin-bottom: 36px;
        }
    </style>

</head>
<body>
<!--引入头部-->
<div id="header"></div>
<!-- 排行榜 start-->
<section id="content">
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="images/icon_5.jpg" alt="">
                <span>我的收藏</span>
            </div>
        </div>
        <div class="jx_content">
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="home">
                    <div class="row">
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="route_detail.jsp">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3">--%>
<%--                            <a href="jroute_detail.html">--%>
<%--                                <img src="images/collection_pic.jpg" alt="">--%>
<%--                                <div class="has_border">--%>
<%--                                    <h3>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</h3>--%>
<%--                                    <div class="price">网付价<em>￥</em><strong>889</strong><em>起</em></div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="pageNum">
            <ul class="pagination">
<%--                <li><a href="">首页</a></li>--%>
<%--                <li class="threeword"><a href="#">上一页</a></li>--%>
<%--                <li><a href="#">1</a></li>--%>
<%--                <li><a href="#">2</a></li>--%>
<%--                <li><a href="#">3</a></li>--%>
<%--                <li><a href="#">4</a></li>--%>
<%--                <li><a href="#">5</a></li>--%>
<%--                <li><a href="#">6</a></li>--%>
<%--                <li><a href="#">7</a></li>--%>
<%--                <li><a href="#">8</a></li>--%>
<%--                <li><a href="#">9</a></li>--%>
<%--                <li><a href="#">10</a></li>--%>
<%--                <li class="threeword"><a href="javascript:;">下一页</a></li>--%>
<%--                <li class="threeword"><a href="javascript:;">末页</a></li>--%>
            </ul>
        </div>
    </section>
</section>
<!-- 排行榜 end-->

<!--引入尾部-->
<div id="footer"></div>
<!--导入布局js，共享header和footer-->
<script type="text/javascript" src="js/include.js"></script>

<script type="text/javascript">
    function changePage(pageNum) {
        $.post("favorite/findFavoriteByPage.do",{"pageNum" : pageNum},function (pageBean) {
            if(pageBean == false){
                //没有登录 就跳转到登录页面
                location.href = "login.jsp?backurl=" + location.href;
            }else{
                //判断集合中是否有数据
                var list = pageBean.list;
                if(list.length > 0){
                    var html = "";
                    for ( var favorite of list){
                        var route = favorite.route;
                        html += " <div class=\"col-md-3\">\n" +
                            "                                    <a href='route_detail.jsp?rid=' " + route.rid +">\n" +
                            "                                        <img src='" +route.rimage + "' alt=\"\">\n" +
                            "                                        <div class=\"has_border\">\n" +
                            "                                            <h3>" + route.routeIntroduce +"</h3>\n" +
                            "                                            <div class=\"price\">网付价<em>￥</em><strong>"+ route.price +"</strong><em>起</em></div>\n" +
                            "                                        </div>\n" +
                            "                                    </a>\n" +
                            "                                </div>"
                    }
                    $(".row").html(html);

                    //底部信息
                    $("ul.pagination").jqPaginator({
                        totalPages:pageBean.pages,  //设置总页数
                        totalCounts: pageBean.total,   //一共有多少条记录
                        currentPage: pageBean.pageNum,          //当前页面高亮
                        onPageChange: function (num, type) {
                            if (type == "change") {   //注：必须是页面变化的时候才换页，否则进入递归调用了
                                changePage(num);
                            }
                        }
                    });

                }else{
                    $(".row").html("<h1>暂无数据，请先添加数据再来查看</h1>");
                }
            }
        },"json");
    }
    $(function () {
        changePage(1);
    });
</script>
</body>
</html>