<%--
  Created by IntelliJ IDEA.
  User: tzk
  Date: 19-7-6
  Time: 上午9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Document</title>
    <meta name="viewport" content="width=device-width,user-scalable
    =no,initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css"> -->
</head>
<style type="text/css">
    .h{
        background: black;
        width: 100%;
        height: 100%;
    }
    .gk{
        width: 50%;
        height: 1000px;
        float: left;
    }
    .btc{
        background: #0bff06;
    }
    .inp{
        background: black;
    }
</style>
<body bgcolor="black" >
<div class="h">

<%--<div  class="container h">--%>

<%--    <div class="row h">--%>
    <div class=" gk">
        <canvas id="hacker" height="1000px">


        </canvas>
        <script rel="stylesheet" type="text/javascript" src="<%=path%>/js/haker.js"></script>
    </div>

        <div id="divForm" class="col-md-3">
            <form action="${pageContext.request.contextPath}/manger/login.do">
                <div class="form-group">
                    <h3><font color="#7fff00">登录</font></h3>
                </div>
                <div class="form-group ">
                    <div class=" input-group"><span class="btc input-group-addon">用户名:</span>
                        <input type="text" name="name" class="btc form-control input-lg " /></div>
                </div>
                <div class="form-group ">
                    <div class="btc input-group"><span class="btc input-group-addon">密&nbsp;&nbsp;&nbsp;码:</span>
                        <input name="pass" type="text" class="btc form-control input-lg" />
                    </div>
                </div>
                <div  class="form-group">
                    <button class="btn btc btn-default input-lg col-md-12">登录</button>
                </div>
            </form>
        </div>

<%--    </div>--%>

<%--</div>--%>


</div>
</body>
</html>
