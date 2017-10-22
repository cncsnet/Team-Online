<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <title>新时代网络科技团队</title>

    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <link href="/css/jquery-ui.min.css"  rel="stylesheet">
    <style type="text/css">
        #teamdt div a:link{

            color: black;

        }
        #teamdt div a:visited {color: #555555}	/* 已访问的链接 */
        #teamdt div  a:hover {color: deepskyblue}	/* 鼠标移动到链接上 */
        #teamdt div  a:active {color: burlywood}
    </style>
    <script type="text/javascript">
        $(function () {
            $( "#dialog" ).dialog();
            $( "[role='dialog']" ).hide();

            var cookie=document.cookie;

            if(cookie!="one=y")
            {

                $("[role='dialog']").show();
                document.cookie="one=y"
            }else {

                $( "[role='dialog']" ).hide();
            }

        })
    </script>
</head>
<body>
<div id="dialog" title="欢迎您访问本网站">
    <center>
    <p>本弹窗只在您第一次打开网站时弹出</p>
    <p>请关注本团队的QQ公众号，关注动态哦！</p>
    <p><img src="/img/qrcode.png"></p>
    </center>
</div>
<c:if test="${empty loadok}">
    <jsp:forward page="loadindex"/>
</c:if>
<div class="container" >
    <%--<div class="row"  style="background:url('/img/banner.jpg');height: 200px;">
        <div class="col-lg-2 col-lg-offset-6" style="margin-top: 50px;">
            <a href="index.bak" ><img src="img/logo.png" alt="新时代网络科技团队"></a>
            </div>
        </div>--%>
    <div class="row">

        <div class="col-lg-5 "  style="text-align: center;">
            <%--  <fieldset >
                  <legend ><b>团队公告</b></legend>
                  本团队与2017年10月16日正式成立<br>
                  接收一切工作
              </fieldset>
--%>
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="/img/lunbo1.jpg" alt="First slide">
                    </div>
                    <div class="item">
                        <img src="/img/lunbo2.jpg" alt="Second slide">
                    </div>

                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="carousel-control left" href="#myCarousel"
                   data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel"
                   data-slide="next">&rsaquo;</a>
            </div>
        </div>
        <div class="col-lg-6  col-lg-offset-1">
            <fieldset id="teamdt">
                <legend><b>团队动态</b>

                    <span style="margin-left: 75%"><a href="newlist.jsp">更多</a></span>
                </legend>

                <c:forEach var="x" items="${news}">

                    <div class="row">
                        <a href="new?id=${x.new_id}" style="text-decoration: none;">
                            <div class="col-lg-12"style="list-style: none;" >
                                <div class="col-lg-8 col-md-8 col-xs-8 col-sm-8">
                                    <font color="#555555" size="3pt"><c:out value="${x.new_name}"/></font>
                                </div>
                                <div class="col-lg-3 col-sm-3 col-xs-3 col-md-3 col-lg-offset-1 col-xs-offset-1 col-md-offset-1 col-sm-offset-1" style="text-align: right" > <font color="#555555" size="3pt"><c:out value="${x.new_date}"/></font></div>
                            </div>
                        </a>

                    </div>


                </c:forEach>
                </table>
            </fieldset>

        </div>
    </div>
    <div class="row" style="margin-top: 10px;">
        <fieldset id="alzs">
            <legend><b>作品展示</b> <span style="margin-left: 80%"><a href="worklist.jsp">更多</a></span> </legend>
            <c:forEach var="x" items="${works}">


                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 " >

                    <a href="work?id=${x.work_id}" class="thumbnail">
                        <img src="${x.work_image}" style="width: 280px;height: 240px" alt="...">
                        <p style="text-align: center"><font style="color: #777;"size="4pt"><b><c:out value="${x.work_name}"/></b></font></p>
                    </a>

                </div>
            </c:forEach>
        </fieldset>
    </div>
    <div class="row">
        <fieldset id="tdcy">
            <legend><b>团队成员</b> <span style="margin-left: 80%"><a href="memberlist.jsp">更多</a></span></legend>
            <c:forEach items="${members}" var="x">
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                <div class="thumbnail">
                    <img src="${x.member_image}" alt="..." style="width: 150px;height: 150px">
                    <div class="caption">
                        <center>
                            <h3><c:out value="${x.member_name}" escapeXml="false"></c:out></h3>
                            <p><c:out value=" ${x.member_old}"></c:out>&nbsp;岁</p>
                            <p><c:out value="${x.member_work}"/></p>
                        </center>
                    </div>
                </div>
            </div>
            </c:forEach>
    </div>
    </fieldset>

</div>

</div>
</div>
</body>
</html>
