<%--
  Created by IntelliJ IDEA.
  User: cncsnet
  Date: 2017/10/16
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>新时代网络团队后台管理系统</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <link href="/css/jquery-ui.min.css"  rel="stylesheet">
</head>
<body style="background:url('/img/loginbg.jpg');">
<c:if test="${admin !=null}">
    <jsp:forward page="/WEB-INF/admin/index.jsp"/>
</c:if>
    <div class="container" style="margin-top: 8%">
        <form method="post" action="/admin">
            <div class="row">
                <div class="col-lg-4 col-lg-offset-4" >


                            <img src="img/logoko.png" width="100%">


                </div>
            </div>
        <div class="row" style="margin-top: 20px;">
            <div class="col-lg-4 col-lg-offset-4">
            <div class="form-group">
                <label for="exampleInputEmail1">用户名</label>
                <input type="text" class="form-control" name="username" id="exampleInputEmail1" placeholder="Username">
            </div>
                </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-lg-offset-4">
            <div class="form-group">
                <label for="exampleInputPassword1">密码</label>
                <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
            </div>
            </div>
            </div>
           <div class="row" style="margin-top: 20px;">
               <div class="col-lg-2 col-lg-offset-5">

               <button type="submit" class="btn btn-default " style="width: 100%">&nbsp;&nbsp;登&nbsp;&nbsp;陆&nbsp;&nbsp;</button>
               </div>
           </div>
        </form>
        </div>


    </div>


</body>
</html>
