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
<c:if test="${empty loadok}">
    <jsp:forward page="member"/>
</c:if>
<%@include file="top.jsp"%>
<div class="container" >
    <form action="member" method="post" id="frm">
        <input type="hidden" name="page" value="1">
        <input type="hidden" name="juan" value="2">
    </form>
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

    <fieldset id="tdcy" style="margin-top: 30px">
    <div class="row">

            <legend>团队成员</legend>
            <c:forEach items="${datalist}" var="x">
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



    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <p>当前第${page}页/共${pages}页 总记录数共${total}条</p>
        </div>
        <div class="col-lg col-md-5 col-sm-5 col-xs-5">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li onclick="qfanjuan()">
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>


                    <c:forEach var="x" begin="${juan*5-4}" end="${juan*5}" >
                        <c:if test="${x==page}">

                            <li onclick="fanye(${x})" class="active"><a href="#">${x}</a></li>
                        </c:if>
                        <c:if test="${x!=page}">
                            <li onclick="fanye(${x})"><a href="#">${x}</a></li>
                        </c:if>
                    </c:forEach>
                    <li onclick="hfanjuan()">
                        <a href="#"  aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

    </div> </fieldset>

    <%@include file="footer.jsp"%>
</div>

</body>
</html>
