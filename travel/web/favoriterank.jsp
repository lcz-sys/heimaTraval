<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>收藏排行榜</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ranking-list.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jqPaginator.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/jqPaginator.js"></script>
</head>
<body>
<!--引入头部-->
<div id="header"></div>
<div class="contant">
    <div class="shaixuan">
        <span>线路名称</span>
        <input id="rname" type="text">
        <span>金额</span>
        <input id="begin" type="text">~<input id="end" type="text">
        <button id="searchBtn">搜索</button>
    </div>
    <div class="list clearfix">
        <ul id="myUL">
<%--            <li>--%>
<%--                <span class="num one">1</span>--%>
<%--                <a href="route_detail.jsp"><img src="images/jiangxuan_4.jpg" alt=""></a>--%>
<%--                <h4><a href="route_detail.jsp">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>--%>
<%--                <p>--%>
<%--                    <b class="price">&yen;<span>899</span>起</b>--%>
<%--                    <span class="shouchang">已收藏450次</span>--%>
<%--                </p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <span class="num two">2</span>--%>
<%--                <a href="route_detail.jsp"><img src="images/jiangxuan_4.jpg" alt=""></a>--%>
<%--                <h4><a href="route_detail.jsp">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>--%>
<%--                <p>--%>
<%--                    <b class="price">&yen;<span>899</span>起</b>--%>
<%--                    <span class="shouchang">已收藏450次</span>--%>
<%--                </p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <span class="num">3</span>--%>
<%--                <a href="route_detail.jsp"><img src="images/jiangxuan_4.jpg" alt=""></a>--%>
<%--                <h4><a href="route_detail.jsp">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>--%>
<%--                <p>--%>
<%--                    <b class="price">&yen;<span>899</span>起</b>--%>
<%--                    <span class="shouchang">已收藏450次</span>--%>
<%--                </p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <span class="num">4</span>--%>
<%--                <a href="route_detail.jsp"><img src="images/jiangxuan_4.jpg" alt=""></a>--%>
<%--                <h4><a href="route_detail.jsp">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>--%>
<%--                <p>--%>
<%--                    <b class="price">&yen;<span>899</span>起</b>--%>
<%--                    <span class="shouchang">已收藏450次</span>--%>
<%--                </p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <span class="num">5</span>--%>
<%--                <a href="route_detail.jsp"><img src="images/jiangxuan_4.jpg" alt=""></a>--%>
<%--                <h4><a href="route_detail.jsp">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>--%>
<%--                <p>--%>
<%--                    <b class="price">&yen;<span>899</span>起</b>--%>
<%--                    <span class="shouchang">已收藏450次</span>--%>
<%--                </p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <span class="num">6</span>--%>
<%--                <a href="route_detail.jsp"><img src="images/jiangxuan_4.jpg" alt=""></a>--%>
<%--                <h4><a href="route_detail.jsp">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>--%>
<%--                <p>--%>
<%--                    <b class="price">&yen;<span>899</span>起</b>--%>
<%--                    <span class="shouchang">已收藏450次</span>--%>
<%--                </p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <span class="num">7</span>--%>
<%--                <a href="route_detail.jsp"><img src="images/jiangxuan_4.jpg" alt=""></a>--%>
<%--                <h4><a href="route_detail.jsp">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>--%>
<%--                <p>--%>
<%--                    <b class="price">&yen;<span>899</span>起</b>--%>
<%--                    <span class="shouchang">已收藏450次</span>--%>
<%--                </p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <span class="num">8</span>--%>
<%--                <a href="route_detail.jsp"><img src="images/jiangxuan_4.jpg" alt=""></a>--%>
<%--                <h4><a href="route_detail.jsp">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>--%>
<%--                <p>--%>
<%--                    <b class="price">&yen;<span>899</span>起</b>--%>
<%--                    <span class="shouchang">已收藏450次</span>--%>
<%--                </p>--%>
<%--            </li>--%>
        </ul>
    </div>
    <div class="pageNum">
        <ul class="pagination">
<%--            <li><a href="">首页</a></li>--%>
<%--            <li class="threeword"><a href="#">上一页</a></li>--%>
<%--            <li><a href="#">1</a></li>--%>
<%--            <li><a href="#">2</a></li>--%>
<%--            <li><a href="#">3</a></li>--%>
<%--            <li><a href="#">4</a></li>--%>
<%--            <li><a href="#">5</a></li>--%>
<%--            <li><a href="#">6</a></li>--%>
<%--            <li><a href="#">7</a></li>--%>
<%--            <li><a href="#">8</a></li>--%>
<%--            <li><a href="#">9</a></li>--%>
<%--            <li><a href="#">10</a></li>--%>
<%--            <li class="threeword"><a href="javascript:;">下一页</a></li>--%>
<%--            <li class="threeword"><a href="javascript:;">末页</a></li>--%>
        </ul>
    </div>
</div>

<!--导入底部-->
<div id="footer"></div>
<!--导入布局js，共享header和footer-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/include.js"></script>

<script type="text/javascript">
    function changePage1(pageNum ,rname ,startPrice, endPrice) {
        $.post("favorite/findRouteFavoriteRank1.do",{"pageNum" : pageNum,"rname": rname, "startPrice": startPrice, "endPrice": endPrice}, function (pageBean) {

            var list =  pageBean.list;
            var html = "";
            for(var i = 0 ; i < list.length; i++){
                var route = list[i];
                html += "<li>";
                if(i == 0){
                    html += "<span class=\"num one\">1</span>";
                }else if(i == 1){
                    html += "<span class=\"num two\">2</span>";
                }else{
                    html += "<span class=\"num\">" + (i + 1) +"</span>"
                }
                html += "<a href='route_detail.jsp?rid="+ route.rid +"'><img src='"+ route.rimage +"' alt=\"\"></a>\n" +
                    "                        <h4><a href='route_detail.jsp?rid="+ route.rid +"'>" + route.rname + "</a></h4>\n" +
                    "                        <p>\n" +
                    "                            <b class=\"price\">&yen;<span>"+ route.price +"</span>起</b>\n" +
                    "                            <span class=\"shouchang\">已收藏"+ route.count+"次</span>\n" +
                    "                        </p>";
                html += "</li>";
            }

            $("#myUL").html(html);

            $("ul.pagination").jqPaginator({
                totalPages:pageBean.pages,  //设置总页数
                totalCounts: pageBean.total,   //一共有多少条记录
                currentPage: pageBean.pageNum,          //当前页面高亮
                onPageChange: function (num, type) {
                    if (type == "change") {   //注：必须是页面变化的时候才换页，否则进入递归调用了
                        changePage(num ,rname ,startPrice, endPrice);
                    }
                }
            });

        },"json");
    }
      function changePage(pageNum) {
          $.post("favorite/findRouteFavoriteRank.do",{"pageNum" : pageNum}, function (pageBean) {

              var list =  pageBean.list;
              var html = "";
              for(var i = 0 ; i < list.length; i++){
                  var route = list[i];
                  html += "<li>";
                  if(i == 0){
                      html += "<span class=\"num one\">1</span>";
                  }else if(i == 1){
                      html += "<span class=\"num two\">2</span>";
                  }else{
                      html += "<span class=\"num\">" + (i + 1) +"</span>"
                  }
                  html += "<a href='route_detail.jsp?rid="+ route.rid +"'><img src='"+ route.rimage +"' alt=\"\"></a>\n" +
                      "                        <h4><a href='route_detail.jsp?rid="+ route.rid +"'>" + route.rname + "</a></h4>\n" +
                      "                        <p>\n" +
                      "                            <b class=\"price\">&yen;<span>"+ route.price +"</span>起</b>\n" +
                      "                            <span class=\"shouchang\">已收藏"+ route.count+"次</span>\n" +
                      "                        </p>";
                  html += "</li>";
              }

              $("#myUL").html(html);

              $("ul.pagination").jqPaginator({
                  totalPages:pageBean.pages,  //设置总页数
                  totalCounts: pageBean.total,   //一共有多少条记录
                  currentPage: pageBean.pageNum,          //当前页面高亮
                  onPageChange: function (num, type) {
                      if (type == "change") {   //注：必须是页面变化的时候才换页，否则进入递归调用了
                          changePage(num ,rname ,startPrice, endPrice);
                      }
                  }
              });

          },"json");
      }

    $(function () {
        changePage(1);
        //给搜索按钮绑定事件
        $("#searchBtn").click(function () {
            var rname = $("#rname").val().trim();
            var startPrice = $("#begin").val().trim();
            var endPrice = $("#end").val().trim();

            if(rname!="" || rname != ""
                || startPrice!="" || startPrice != ""
                || endPrice!="" || endPrice != ""){
                changePage1(1,rname,startPrice,endPrice);
            }{
                changePage(1);
            }

        });
    })

</script>
</body>
</html>