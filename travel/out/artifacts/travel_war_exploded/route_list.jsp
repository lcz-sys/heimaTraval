<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>黑马旅游-搜索</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css ">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jqPaginator.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/getParameter.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPaginator.js"></script>
</head>
<body>
<!--引入头部-->
<div id="header"></div>
<div class="page_one">
    <div class="contant">
        <div class="crumbs">
            <img src="images/search.png" alt="">
            <p>黑马旅行><span>搜索结果</span></p>
        </div>
        <div class="xinxi clearfix">
            <div class="left">
                <div class="header">
                    <span>商品信息</span>
                    <span class="jg">价格</span>
                </div>
                <ul id="pageList">
                    <%--<li>
                        <div class="img"><img src="images/04-search_03.jpg" alt=""></div>
                        <div class="text1">
                            <p>【减100元 含除夕/春节出发】广州增城三英温泉度假酒店/自由行套票</p>
                            <br/>
                            <p>1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                        </div>
                        <div class="price">
                            <p class="price_num">
                                <span>&yen;</span>
                                <span>299</span>
                                <span>起</span>
                            </p>
                            <p><a href="route_detail.jsp">查看详情</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="img"><img src="images/04-search_03.jpg" alt=""></div>
                        <div class="text1">
                            <p>浪花朵朵旅行普吉岛丛林飞跃空中飞人探险游中文服务泰国旅游</p>
                            <br/>
                            <p>1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                        </div>
                        <div class="price">
                            <p class="price_num">
                                <span>&yen;</span>
                                <span>899</span>
                                <span>起</span>
                            </p>
                            <p><a href="route_detail.jsp">查看详情</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="img"><img src="images/04-search_03.jpg" alt=""></div>
                        <div class="text1">
                            <p>黑妞皇家旅行普吉岛攀牙湾大船星光之旅皮划艇日落休闲特色体验</p>
                            <br/>
                            <p>1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                        </div>
                        <div class="price">
                            <p class="price_num">
                                <span>&yen;</span>
                                <span>999</span>
                                <span>起</span>
                            </p>
                            <p><a href="route_detail.jsp">查看详情</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="img"><img src="images/04-search_03.jpg" alt=""></div>
                        <div class="text1">
                            <p>浪花朵朵旅行普吉岛皇帝岛珊瑚岛香蕉船拖拽伞水上项目</p>
                            <br/>
                            <p>1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                        </div>
                        <div class="price">
                            <p class="price_num">
                                <span>&yen;</span>
                                <span>99</span>
                                <span>起</span>
                            </p>
                            <p><a href="route_detail.jsp">查看详情</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="img"><img src="images/04-search_03.jpg" alt=""></div>
                        <div class="text1">
                            <p>环游记 泰国清迈Lila massage女子监狱spa 丽菈泰式按摩马杀鸡</p>
                            <br/>
                            <p>1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                        </div>
                        <div class="price">
                            <p class="price_num">
                                <span>&yen;</span>
                                <span>199</span>
                                <span>起</span>
                            </p>
                            <p><a href="route_detail.jsp">查看详情</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="img"><img src="images/04-search_03.jpg" alt=""></div>
                        <div class="text1">
                            <p>【减100元 含除夕/春节出发】广州增城三英温泉度假酒店/自由行套票</p>
                            <br/>
                            <p>1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                        </div>
                        <div class="price">
                            <p class="price_num">
                                <span>&yen;</span>
                                <span>899</span>
                                <span>起</span>
                            </p>
                            <p><a href="route_detail.jsp">查看详情</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="img"><img src="images/04-search_03.jpg" alt=""></div>
                        <div class="text1">
                            <p>【减100元 含除夕/春节出发】广州增城三英温泉度假酒店/自由行套票</p>
                            <br/>
                            <p>1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                        </div>
                        <div class="price">
                            <p class="price_num">
                                <span>&yen;</span>
                                <span>1199</span>
                                <span>起</span>
                            </p>
                            <p><a href="route_detail.jsp">查看详情</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="img"><img src="images/04-search_03.jpg" alt=""></div>
                        <div class="text1">
                            <p>泰国芭提雅三合一日游芭提雅蒂芬妮人妖秀成人门票bigeye含接送</p>
                            <br/>
                            <p>1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                        </div>
                        <div class="price">
                            <p class="price_num">
                                <span>&yen;</span>
                                <span>1589</span>
                                <span>起</span>
                            </p>
                            <p><a href="route_detail.jsp">查看详情</a></p>
                        </div>
                    </li>
                    --%>
                </ul>
                <div class="page_num_inf">
                    <i></i> 共
                    <span>12</span>页<span>132</span>条
                </div>
                <div class="pageNum">
                    <ul class="pagination">
                        <%--<li><a href="">首页</a></li>
                        <li class="threeword"><a href="#">上一页</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">7</a></li>
                        <li><a href="#">8</a></li>
                        <li><a href="#">9</a></li>
                        <li><a href="#">10</a></li>
                        <li class="threeword"><a href="javascript:;">下一页</a></li>
                        <li class="threeword"><a href="javascript:;">末页</a></li>--%>
                    </ul>
                </div>
            </div>
            <div class="right">
                <div class="top">
                    <div class="hot">HOT</div>
                    <span>热门推荐</span>
                </div>
                <ul>
                    <li>
                        <div class="left"><img src="images/04-search_09.jpg" alt=""></div>
                        <div class="right">
                            <p>清远新银盏温泉度假村酒店/自由行套...</p>
                            <p>网付价<span>&yen;<span>899</span>起</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="left"><img src="images/04-search_09.jpg" alt=""></div>
                        <div class="right">
                            <p>清远新银盏温泉度假村酒店/自由行套...</p>
                            <p>网付价<span>&yen;<span>899</span>起</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="left"><img src="images/04-search_09.jpg" alt=""></div>
                        <div class="right">
                            <p>清远新银盏温泉度假村酒店/自由行套...</p>
                            <p>网付价<span>&yen;<span>899</span>起</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="left"><img src="images/04-search_09.jpg" alt=""></div>
                        <div class="right">
                            <p>清远新银盏温泉度假村酒店/自由行套...</p>
                            <p>网付价<span>&yen;<span>899</span>起</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="left"><img src="images/04-search_09.jpg" alt=""></div>
                        <div class="right">
                            <p>清远新银盏温泉度假村酒店/自由行套...</p>
                            <p>网付价<span>&yen;<span>899</span>起</span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!--引入头部-->
<div id="footer"></div>
<!--导入布局js，共享header和footer-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/include.js"></script>
<script type="text/javascript">

    /*function changePage( cid , pageNum) {
        $.post("route/findRouteByPage.do", {"pageNum": pageNum, "cid": cid}, function (data) {
            //总页数
            $(".page_num_inf span:eq(0)").html(data.pages);
            //总条数
            $(".page_num_inf span:eq(1)").html(data.total);
            //设置页面内容

            var html = "";
            if (data.list != null) {
                for (var route of data.list) {
                    html += "<li>\n" +
                        "                            <div class='img'><img src='" + route.rimage + "' alt=''></div>\n" +
                        "                            <div class='text1'>\n" +
                        "                                <p>" + route.rname + "</p>\n" +
                        "                                <br/>\n" +
                        "                                <p>" + route.routeIntroduce + "</p>\n" +
                        "                            </div>\n" +
                        "                            <div class='price'>\n" +
                        "                                <p class='price_num'>\n" +
                        "                                    <span>&yen;</span>\n" +
                        "                                    <span>" + route.price + "</span>\n" +
                        "                                    <span>起</span>\n" +
                        "                                </p>\n" +
                        "                                <p><a href='route_detail.jsp?rid=" + route.rid + "'>查看详情</a></p>\n" +
                        "                            </div>\n" +
                        "                        </li>";
                }

                $("#pageList").html(html);
            }

            //底部信息
            $("ul.pagination").jqPaginator({
                totalPages: data.pages,  //设置总页数
                totalCounts: data.total,   //一共有多少条记录
                currentPage: data.pageNum,          //当前页面高亮
                onPageChange: function (num, type) {
                    if (type == "change") {   //注：必须是页面变化的时候才换页，否则进入递归调用了
                        changePage(cid, num);
                    }
                }
            });

        }
      ,"json")
    }*/


    function changePage(cid, pageNum, rname) {
        $.post("route/findRouteListByCid.do", {
            "cid": cid,
            "pageNum": pageNum,
            "rname": rname
        }, function (data) {
            //总页数
            $(".page_num_inf span:eq(0)").html(data.pages);
            //总条数
            $(".page_num_inf span:eq(1)").html(data.total);
            //设置页面内容

            var html = "";
            if (data.list != null) {
                for (var route of data.list) {
                    html += "<li>\n" +
                        "                            <div class='img'><img src='" + route.rimage + "' alt=''></div>\n" +
                        "                            <div class='text1'>\n" +
                        "                                <p>" + route.rname + "</p>\n" +
                        "                                <br/>\n" +
                        "                                <p>" + route.routeIntroduce + "</p>\n" +
                        "                            </div>\n" +
                        "                            <div class='price'>\n" +
                        "                                <p class='price_num'>\n" +
                        "                                    <span>&yen;</span>\n" +
                        "                                    <span>" + route.price + "</span>\n" +
                        "                                    <span>起</span>\n" +
                        "                                </p>\n" +
                        "                                <p><a href='route_detail.jsp?rid=" + route.rid + "'>查看详情</a></p>\n" +
                        "                            </div>\n" +
                        "                        </li>";
                }

                $("#pageList").html(html);

                //底部信息
                $("ul.pagination").jqPaginator({
                    totalPages: data.pages,  //设置总页数
                    totalCounts: data.total,   //一共有多少条记录
                    currentPage: data.pageNum,          //当前页面高亮
                    onPageChange: function (num, type) {
                        if (type == "change") {   //注：必须是页面变化的时候才换页，否则进入递归调用了
                            changePage(cid, num, rname);
                        }
                    }
                });


            }

        }, "json");


    }


    $(function () {
        var cid = getParameter("cid");
        var rname = getParameter("rname");

        if (rname) {
            rname = decodeURI(rname);
        }

        changePage(cid, 1, rname);

    });


</script>

</body>

</html>
