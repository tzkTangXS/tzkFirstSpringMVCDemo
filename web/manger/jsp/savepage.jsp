<%--
  Created by IntelliJ IDEA.
  User: tzk
  Date: 19-6-22
  Time: 下午2:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <style type="text/css">
        .topeidt {
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="divForm col-md-7 topeidt">
            <form action="${pageContext.request.contextPath}/manger/save.do">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon">客户序列号:自动生成</span>
                        <%--                        <input type="hidden"   name="id" value="${customer.id}" class="form-control input-lg col-md-6 col-xs-4" />--%>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">用&emsp;户&emsp;名:</span>
                        <input type="text" name="username" value="${customer.username}" class="form-control input-lg"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">密&emsp;&emsp;&emsp;码:</span>
                        <input name="password" value="${customer.password}" type="text" class="form-control input-lg"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">真实&emsp;姓名:</span>
                        <input name="customerName" value="${customer.customerName}" type="text"
                               class="form-control input-lg"/></div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">联系&emsp;电话:</span>
                        <input name="telephone" value="${customer.telephone}" type="text"
                               class="form-control input-lg"/></div>
                </div>
                <div class="form-group">
                    <button class="btn btn-warning input-lg col-md-12">添加客户</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
