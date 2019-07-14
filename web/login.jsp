<%--
  Created by IntelliJ IDEA.
  User: tzk
  Date: 19-7-6
  Time: 上午9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Document</title>
    <meta name="viewport" content="width=device-width,user-scalable
    =no,initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}css/bootstrap.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css"> -->
</head>
<body background="img/img1.jpg">
<div  class="container">
    <div class="row">
        <div id="divForm" class="col-md-4 col-md-offset-6">
            <form action="manger/login.do">
                <div class="form-group">
                    <h3>登录</h3>
                </div>
                <div class="form-group ">
                    <div class="input-group"><span class="input-group-addon">用户名:</span>
                        <input type="text" name="name" class="form-control input-lg " /></div>
                </div>
                <div class="form-group ">
                    <div class="input-group"><span class="input-group-addon">密&nbsp;&nbsp;&nbsp;码:</span>
                        <input name="pass" type="text" class="form-control input-lg" />
                    </div>
                </div>
                <div  class="form-group">
                    <button class="btn btn-warning input-lg col-md-12">登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
