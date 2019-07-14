<%--
  Created by IntelliJ IDEA.
  User: tzk
  Date: 19-6-18
  Time: 下午5:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
  <head>
    <title>登录</title>
  </head>
  <body>
<%--  <h1>${hello}asdfasdf</h1>
  <a href="myController.do">sdfsd</a>
  <a href="WEB-INF/jsps/index.jsp">gdsagdsf</a>--%>
<%--  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/reset.css"/>--%>
  <h1>欢迎登录</h1>
  <form action="manger/login.do" method="post">
    用户名：<input type="text" name="name"/><br/>
    密码：<input type="text" name="pass"/>
    <input type="submit" value="登录">
  </form>

  </body>
</html>
