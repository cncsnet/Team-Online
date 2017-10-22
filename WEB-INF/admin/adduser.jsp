<%--
  Created by IntelliJ IDEA.
  User: cncsnet
  Date: 2017/10/17
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function jiancha() {
            var username=$('[name="username"]').val();
            var password=$('[name="password"]').val();
            if(username=='' ||password=='')
            {
                alert("账号或密码不能为空");
                return false;
            }else if(password.indexOf(" ")!=-1 || password.indexOf(" ")!=-1 )
            {
                alert("账号或密码不能包含空格");
                return false;
            }
        }

    </script>
    <style type="text/css">
        .breadcrumb{padding:8px 15px;margin-bottom:20px;list-style:none;background-color:#EDF6FA;border:1px solid #D7E4EA;border-radius:4px}
    </style>
</head>
<body>
<ol class="breadcrumb">
    位置：
    <li><a href="#">用户管理</a></li>
    <li class="active">添加用户</li>

</ol>
<div class="container-fluid">




    <form action="/form/adduser" method="post">
        <div class="col-md-4 col-md-offset-4" style="margin-top: 50px">
            <div class="form-group">
                <label for="exampleInputEmail1">用户名</label>
                <input type="text" name="username" class="form-control" id="exampleInputEmail1" placeholder="useranme">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="exampleInputPassword1">密码</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <button type="submit" class="btn btn-default" onclick=" return jiancha()" style="width: 100%">添加用户</button>
            </div>

        </div>

    </form>
</div>
</body>
</html>
