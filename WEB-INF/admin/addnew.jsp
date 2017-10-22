<%--
  Created by IntelliJ IDEA.
  User: cncsnet
  Date: 2017/10/18
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加团队新闻</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript">
        function jiancha() {

            var new_name=$('[name="new_name"]').val();
            if(new_name=="" || new_name==" ")
            {
                alert("新闻标题不能为空");
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
        <li><a href="#">新闻管理</a></li>
        <li class="active">添加新闻</li>

    </ol>
    <div class="container">
        <form method="post" action="addnew">

            <div class="row">

            <div class="form-group">

                <label for="exampleInputEmail1">新闻标题：</label> <input type="text" maxlength="36" name="new_name" class="form-control" id="exampleInputEmail1" placeholder="新闻标题" >
            </div>
            </div>
            <div class="row">
            <div class="form-group">

                <label>新闻内容：</label>
                <script id="editor" name="new_value" type="text/plain" style="width:100%;height:200px;">请添加你的新闻内容</script>
            </div>
            </div>

            <div class="row">
                <div class="col-md-offset-4 col-md-4">
                <button type="submit" class="btn btn-default" onclick="return jiancha()" style="width: 100%">添加团队新闻</button>
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

