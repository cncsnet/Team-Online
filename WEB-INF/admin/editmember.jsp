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

            var member_name = $("[name='member_name']").val();
            var member_work = $("[name='member_work']").val();
            var member_old = $("[name='member_old']").val();
            var member_img = $("[name='member_img']").val();


            if (member_name == "" && member_old== "" && member_work=="" &&member_img=="")
            {
                alert("请填写要求改的信息，如果不想修改，请返回上一级")
                return false;
            }
        }

    </script>
</head>
<body>
<c:if test="${empty data}">
    <script type="text/javascript">
        $(function () {
            location.href="showmember.jsp";
        })


    </script>
</c:if>
<ol class="breadcrumb">
    位置：
    <li><a href="#">用户管理</a></li>
    <li class="active">修改用户</li>
</ol>
<div class="container">
    <form action="editmember" enctype="multipart/form-data" method="post">


        <div class="row">
            <div class="form-group">
                <label>成员ID：${data.member_id}</label>
                <input type="hidden" name="member_id" value="${data.member_id}"/>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label for="exampleInputPassword1">成员姓名：</label>
                <input type="text" name="member_name" class="form-control" id="exampleInputPassword1" placeholder="${data.member_name}">
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label for="exampleInputPassword3">成员照片：</label>
                <input type="file" name="member_img" class="form-control" id="exampleInputPassword3">
            </div>
        </div>

        <div class="row">
            <div class="form-group">
                <label for="exampleInputPassword2">成员年龄：</label>
                <input type="text" name="member_old" class="form-control" id="exampleInputPassword2" placeholder="${data.member_old}">
            </div>
    </div>
        <div class="row">
            <div class="form-group">
                <label for="exampleInputPassword2">成员工作类型：</label>
                <input type="text" name="member_work" class="form-control" id="exampleInputPassword4" placeholder="${data.member_work}">
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 col-md-offset-4">
            <button type="submit" onclick="return jiancha()"  class="btn btn-default" style="width:100%">修改用户</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
