<%--
  Created by IntelliJ IDEA.
  User: tzk
  Date: 19-6-22
  Time: 下午3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <link rel="stylesheet" href="<%=path%>/css/frame.css">
<%--    <link rel="stylesheet" href="<%=path%>/css/main.css">--%>
</head>
<body class="top">

<canvas id="hacker" width="500" height="800">


</canvas>
<script rel="stylesheet" type="text/javascript" src="<%=path%>/js/haker.js"></script>

</body>

</html>
