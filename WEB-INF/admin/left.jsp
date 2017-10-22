<%--
  Created by IntelliJ IDEA.
  User: cncsnet
  Date: 2017/10/16
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
            -khtml-user-select: none;
            user-select: none;
        }
        a:link{
            color: black;
        }
        a:active{
            color: black;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            $('ul').hide();
        })

        function zk(a)
        {
            if( $("[name='"+a.id+"']").is(":hidden"))
            {
                $("[name='"+a.id+"']").show(1000);
            }else
            {
                $("[name='"+a.id+"']").hide(1000);
            }


        }
    </script>
</head>
<body>
<div style="width: 187px;background-color: #F0F9FD;height: 100%; border: 1px #CCE2EA solid;" >
    <div onclick="zk(this)" id="用户管理" style="background:#D4E7F0;height: 30px;border: 1px #CCE2EA solid;" >&nbsp;&nbsp;<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;<font style="font-size: 13pt"><b>用户管理</b></font></div>

        <ul style="list-style: none;padding: 0px;margin-left: 0px" name="用户管理">
            <li ><a  href="/load/adduser.jsp" target="rightFrame" style="text-decoration: none;padding-left: 30px;margin-top: 5px;"><button type="button" class="btn btn-link"><font style="font-size: 10pt;color: black"><span class="glyphicon glyphicon-tint"></span>&nbsp;添加用户</font></button></a></li>
            <li ><a  href="/load/showuser.jsp"  target="rightFrame" style="text-decoration: none;padding-left: 30px;margin-top: 5px;"><button type="button" class="btn btn-link"><font style="font-size: 10pt;color: black"><span class="glyphicon glyphicon-tint"></span>&nbsp;用户管理</font></button></a></li>
        </ul>

    <div onclick="zk(this)"  id="团队新闻管理" style="background:#D4E7F0;height: 30px;padding-left: 10px;border: 1px #CCE2EA solid;"><span class="glyphicon glyphicon-bullhorn"></span>&nbsp;&nbsp;<font style="font-size: 13pt"><b>团队新闻管理</b></font></div>
    <ul  style="list-style: none;padding: 0px;margin-left: 0px;" name="团队新闻管理">
        <li ><a  href="/load/addnew.jsp" target="rightFrame" style="text-decoration: none;padding-left: 30px;margin-top: 5px;"><button type="button" class="btn btn-link"><font style="font-size: 10pt;color: black"><span class="glyphicon glyphicon-tint"></span>&nbsp;添加新闻</font></button></a></li>
        <li ><a  href="/load/shownew.jsp" target="rightFrame" style="text-decoration: none;padding-left: 30px;margin-top: 5px;"><button type="button" class="btn btn-link"><font style="font-size: 10pt;color: black"><span class="glyphicon glyphicon-tint"></span>&nbsp;新闻管理</font></button></a></li>

    </ul>
    <div onclick="zk(this)"  id="团队作品管理" style="background:#D4E7F0;height: 30px;padding-left: 10px;border: 1px #CCE2EA solid;"><span class="glyphicon glyphicon-film"></span>&nbsp;&nbsp;<font style="font-size: 13pt"><b>团队作品管理</b></font></div>
    <ul  style="list-style: none;padding: 0px;margin-left: 0px" name="团队作品管理">
        <li ><a  href="addwork.jsp" target="rightFrame" style="text-decoration: none;padding-left: 30px;margin-top: 5px;"><button type="button" class="btn btn-link"><font style="font-size: 10pt;color: black"><span class="glyphicon glyphicon-tint"></span>&nbsp;添加作品</font></button></a></li>
        <li ><a  href="showwork.jsp" target="rightFrame" style="text-decoration: none;padding-left: 30px;margin-top: 5px;"><button type="button" class="btn btn-link"><font style="font-size: 10pt;color: black"><span class="glyphicon glyphicon-tint"></span>&nbsp;作品管理</font></button></a></li>

    </ul>
    <div onclick="zk(this)"  id="团队成员管理"  style="background:#D4E7F0;height: 30px;padding-left: 10px;border: 1px #CCE2EA solid;"><span class="glyphicon glyphicon-sunglasses"></span>&nbsp;&nbsp;<font style="font-size: 13pt"><b>团队成员管理</b></font></div>
    <ul style="list-style: none;padding: 0px;margin-left: 0px" name="团队成员管理">
        <li><a  href="addmember.jsp" target="rightFrame" style="text-decoration: none;padding-left: 30px;margin-top: 5px;"><button type="button" class="btn btn-link"><font style="font-size: 10pt;color: black"><span class="glyphicon glyphicon-tint"></span>&nbsp;添加成员</font></button></a></li>
        <li><a  href="showmember.jsp" target="rightFrame" style="text-decoration: none;padding-left: 30px;margin-top: 5px;"><button type="button" class="btn btn-link"><font style="font-size: 10pt;color: black"><span class="glyphicon glyphicon-tint"></span>&nbsp;成员管理</font></button></a></li>

    </ul>
</div>

</body>
</html>
