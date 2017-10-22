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
        $(function(){

            $("[name='juan']").val(${juan});

        })
        var juan=${juan};
        var juansum=${juansum};
        function qfanjuan() {
            $('[name="juan"]').val(juan-1);
            if($('[name="juan"]').val()<1)
            {
                $('[name="juan"]').val(1);
            }
            $('[name="page"]').val($('[name="juan"]').val()*5-4);
            $('#frm').submit();
        }
        function hfanjuan()
        {

            $('[name="juan"]').val(juan+1);
            if($('[name="juan"]').val()>juansum)
            {
                $('[name="juan"]').val(juansum);
            }
            $('[name="page"]').val($('[name="juan"]').val()*5-4);
            $('#frm').submit();
        }
        function fanye(page) {
            if(page>${pages})
            {
                page=${pages};
            }else if(page==0)
            {
                page=1;
            }
            $('[name="page"]').val(page);
            $('#frm').submit();
        }
    </script>
</head>
<body>
<c:if test="${empty data}">
    <script type="text/javascript">
        $(function () {
            location.href="index.jsp";
        })
    </script>
</c:if>
<%@include file="top.jsp"%>
<div class="container" >
    <div class="row">

        <div class=" col-lg-12 ">
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
    </div>
    <div class="row" style="text-align: center;margin-top: 30px">
        <h2><c:out value="${data.new_name}" escapeXml="false"></c:out></h2>
        <p>发布日期：<c:out value="${data.new_date}" escapeXml="false"></c:out></p>
        <p>发布人：<c:out value="${data.new_member.username}"></c:out></p>
    </div>

    <hr>
    <div class="row"><c:out value="${data.new_value}" escapeXml="false;"></c:out></div>



    <%@include file="footer.jsp"%>
</div>

</body>
</html>
