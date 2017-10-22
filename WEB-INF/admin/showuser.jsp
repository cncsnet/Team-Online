<%--
  Created by IntelliJ IDEA.
  User: cncsnet
  Date: 2017/10/18
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
    <title>用户管理</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <style type="text/css">
        .breadcrumb{padding:8px 15px;margin-bottom:20px;list-style:none;background-color:#EDF6FA;border:1px solid #D7E4EA;border-radius:4px}
    </style>
    <script type="text/javascript">
        var chekedi=1;
        $(function(){

            $("[name='username']").val("${condition.username}");
            $("[name='juan']").val(${juan});
            $("[name='user_id']").val(${condition.user_id});

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
        function qx() {
            if(chekedi==1)
            {

                    $('[name="user"]').prop("checked",true);
                chekedi=0;
            }else if(chekedi==0)
            {
                $('[name="user"]').prop("checked",false);
                chekedi=1;
            }

        }
        function delall() {
            var str = "";
            for (var i = 0; i < $('[type="checkbox"]').length; i++) {
                if ($('[type="checkbox"]').get(i).checked) {
                    if ($('[type="checkbox"]').get(i).id != "全选") {
                        str += $('[type="checkbox"]').get(i).value.toString() + ","
                    }

                }

            }
            if (str !="")
            {
                location.href="deluser?id="+str;
            }else
            {
                alert("请选中你要删除的数据，可多选");
            }

            /*   if($('[type="checkbox"]')[i].is(":checked")){
                   str+=$('[type="checkbox"]')[i].val().toString()+",";
               }*/




        }
    </script>
</head>
<body>
<c:if test="${empty oladstop}">
    <jsp:forward page="showuser"/>
</c:if>
<ol class="breadcrumb">
    位置：
    <li><a href="#">用户管理</a></li>
    <li class="active">用户管理</li>


</ol>
<div class="container-fluid">

    <div class="row">
        <center>
        <form  id="frm" class="form-inline" action="showuser" method="post">
            <div class="form-group">
                <label for="exampleInputName2">用户ID：</label>
                <input type="text" class="form-control" id="exampleInputName2" name="user_id" placeholder="请填写用户整数ID">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail2">用户名：</label>
                <input type="text" class="form-control" id="exampleInputEmail2" name="username" placeholder="可模糊查询">
            </div>
            <input type="hidden" name="juan" value="1" class="form-control">
            <input type="hidden" name="page" value="1" class="form-control">
            <button type="submit" class="btn btn-default">查询</button>
        </form>
        </center>
    </div>
    <div class="row" style="margin-bottom: 10px">
        <div class="col-md-1 col-md-offset-9">
            <a href="adduser.jsp"><button type="button" class="btn btn-success">添加用户</button></a>
        </div>
        <div class="col-md-1" style="margin-left: 20px">
            <button type="button" class="btn btn-danger" onclick="delall()">删除用户</button>
        </div>
    </div>
    <div style="height: 60%">
        <table class="table table-bordered table-hover">

            <tr>
                <th><input type="checkbox" id="全选" onclick="qx()"></th>
                <th>用户ID</th>
                <th>用户名</th>
                <th>用户密码</th>
                <th><span class="glyphicon glyphicon-pencil"></span>&nbsp;编辑</th>
                <th><span class="glyphicon glyphicon-trash"></span>&nbsp;删除</th>
            </tr>
            <c:forEach var="x"  items="${dateList}">
                <tr>
                    <td><input type="checkbox" name="user" value="${x.user_id}"></td>
                    <td><c:out value="${x.user_id}" escapeXml="false"></c:out> </td>
                    <td><c:out value="${x.username}" escapeXml="false"></c:out></td>
                    <td><c:out value="${x.password}" escapeXml="false"></c:out></td>
                    <td><a href="edituser?id=${x.user_id}" style="text-decoration: none"><span class="glyphicon glyphicon-pencil"></span>&nbsp;编辑</a>
                    </td>
                    <td><a href="deluser?id=${x.user_id}" style="text-decoration: none"><span class="glyphicon glyphicon-trash"></span>&nbsp;删除</a>
                    </td>
                </tr>
            </c:forEach>

        </table>
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>当前第${page}页/共${pages}页 总记录数共${total}条</p>
        </div>
        <div class="col-md-4">
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
    </div>
</div>
</body>
</html>
