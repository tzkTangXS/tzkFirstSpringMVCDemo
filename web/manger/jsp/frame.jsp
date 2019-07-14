<%--
  Created by IntelliJ IDEA.
  User: tzk
  Date: 19-6-22
  Time: 下午2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>企业管理系统</title>
    <link rel="stylesheet" href="<%=path%>/css/frame.css">
</head>
<%--<body>--%>
<frameset rows="17%,*">
    <frame name="top" class="visible-md-block col-sm-6 top" src="${pageContext.request.contextPath}/manger/jsp/top.jsp">
    <frameset cols="150,*" id="main">
        <frame  src="${pageContext.request.contextPath}/manger/jsp/left.jsp">
        <frame  name="right" src="${pageContext.request.contextPath}/manger/jsp/right.jsp">
    </frameset>
</frameset>

<%--</body>--%>
</html>
