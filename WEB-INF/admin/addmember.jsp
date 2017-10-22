<%--
  Created by IntelliJ IDEA.
  User: cncsnet
  Date: 2017/10/20
  Time: 9:43
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
        .breadcrumb{padding:8px 15px;margin-bottom:20px;list-style:none;background-color:#EDF6FA;border:1px solid #D7E4EA;border-radius:4px}
    </style>
   <script type="text/javascript">
       function jiancha()
       {
          var member_img=$("[name='member_img']").val();
           var member_name=$("[name='member_name']").val();
          var member_old= $("[name='member_old']").val();
          var member_work= $('[name="member_work"]').val();
           if(member_img==""||member_name==""||member_old==""||member_work=="")
           {
               alert("请填写你的成员信息");
               return false;
           }

       }
   </script>
</head>
<body>
<ol class="breadcrumb">
    位置：
    <li><a href="#">团队成员管理</a></li>
    <li class="active">添加成员</li>

</ol>
<div class="container">
    <form method="post" action="addmember" enctype="multipart/form-data">


        <div class="row">

            <div class="form-group">

                <label for="exampleInputEmail1">成员姓名：</label> <input type="text" maxlength="36" name="member_name" class="form-control" id="exampleInputEmail1" placeholder="成员姓名" >

            </div>
        </div>
        <div class="row">

            <div class="form-group">

                <label>成员照片（建议上传100*100或200*200的图片）：</label>  <input type="file" id="file" accept="image/*"  class="form-control" name="member_img"/>
            </div>
        </div>

        <div class="row">

            <div class="form-group">

                <label>成员年龄：</label><input type="text"  name="member_old" class="form-control" placeholder="成员年龄" >

            </div>

        </div>
        <div class="row">

            <div class="form-group">

                <label>工作类型：</label><input type="text"  name="member_work" class="form-control" placeholder="成员工作类型" >

            </div>

        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <button type="submit" class="btn btn-default" onclick="return jiancha()" style="width: 100%">添加成员</button>
            </div>

        </div>
    </form>
</div>
</body>
</html>
