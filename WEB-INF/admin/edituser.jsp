<%--
  Created by IntelliJ IDEA.
  User: cncsnet
  Date: 2017/10/18
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>修改用户</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <style type="text/css">
        .breadcrumb{padding:8px 15px;margin-bottom:20px;list-style:none;background-color:#EDF6FA;border:1px solid #D7E4EA;border-radius:4px}
    </style>
    <script type="text/javascript">

            function jiancha() {

                var useranme = $("[name='username']").val();
                var password = $("[name='password']").val();

                if (useranme == "" && password == "")
                {
                    alert("请填写要求改的信息，如果不想修改，请返回上一级")
                    return false;
                }else{

                }
        }

    </script>
</head>
<body>
<c:if test="${empty data}">
    <script type="text/javascript">
        $(function () {
            location.href="showuser.jsp";
        })


    </script>
</c:if>
<ol class="breadcrumb">
    位置：
    <li><a href="#">用户管理</a></li>
    <li class="active">修改用户</li>
</ol>
<div class="container">
    <form action="edituser" method="post">


    <div class="row">
        <div class="form-group">
            <label>用户ID：${data.user_id}</label>
                <input type="hidden" name="user_id" value="${data.user_id}"/>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="exampleInputPassword1">用户名：</label>
            <input type="text" name="username" class="form-control" id="exampleInputPassword1" placeholder="${data.username}">
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="exampleInputPassword2">密码：</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword2" placeholder="***********">
        </div>
    </div>
    <div class="row">
        <button type="submit" onclick="return jiancha()"  class="btn btn-default">修改用户</button>
    </div>
    </form>
</div>
</body>
</html>
