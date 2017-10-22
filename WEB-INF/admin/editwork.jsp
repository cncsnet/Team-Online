<%--
  Created by IntelliJ IDEA.
  User: cncsnet
  Date: 2017/10/19
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>编辑作品</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    <style type="text/css">
        .breadcrumb{padding:8px 15px;margin-bottom:20px;list-style:none;background-color:#EDF6FA;border:1px solid #D7E4EA;border-radius:4px}
    </style>
    <script type="text/javascript">

        function jiancha() {

            var workname = $("[name='work_name']").val();


            if (workname == "" ||workname.indexOf(" ")!=-1)
            {
                alert("请填写要求改的信息，标题不能包含空格,如果不想修改，请返回上一级")
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
            location.href="showwork.jsp";
        })


    </script>
</c:if>
<ol class="breadcrumb">
    位置：
    <li><a href="#">作品管理</a></li>
    <li class="active">编辑作品</li>
</ol>
<div class="container">
    <form action="editwork" enctype="multipart/form-data" method="post">


        <div class="row">
            <div class="form-group">
                <label>作品ID：${data.work_id}</label>
                <input type="hidden" name="work_id" value="${data.work_id}"/>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label for="exampleInputPassword1">作品名称：</label>
                <input type="text" name="work_name" class="form-control" id="exampleInputPassword1" value="${data.work_name}">
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label>缩略图：</label>
                <input type="file" name="wrok_image" accept="image/*" class="form-control">
            </div>
        </div>
        <div class="row">
            <div class="form-group">

                <label>作品内容：</label>
                <script id="editor" name="work_value" type="text/plain" style="width:100%;height:200px;">${data.work_value}</script>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <button type="submit" onclick="return jiancha()"  class="btn btn-default" style="width: 100%;">修改作品</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例

    UEDITOR_CONFIG.UEDITOR_HOME_URL = './ueditor/';
    var ue = UE.getEditor('editor');
</script>
</body>
</html>
