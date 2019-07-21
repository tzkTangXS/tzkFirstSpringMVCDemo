<%--
  Created by IntelliJ IDEA.
  User: tzk
  Date: 19-6-22
  Time: 下午3:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<% String path=request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="dtree.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="dtree.js"></script>
</head>

<body bgColor="aqua" leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center">

    <div class="dtree">
<%--        <h4>${pageContext.request.contextPath}</h4>--%>
        <h1>管理员 ${sessionScope.name}<br/>正在执行操作<br/>
<%--            <a href="login.jsp">退出</a>--%>

        </h1>
        <script type="text/javascript">
            d=new dTree('d');
            d.config.target="right";
            d.add('01','-1','企业管理系统');
            d.add('0101','01','顾客管理');
            d.add('0102','01','机构管理');
            d.add('0103','01','部门管理');
            d.add('0104','01','员工管理');
            d.add('0105','01','特殊操作');
            d.add('010101','0101','人员列表','${pageContext.request.contextPath}/manger/showAll.do','','right');
            d.add('010102','0101','新增人员','${pageContext.request.contextPath}/manger/doSave.do');

            d.add('010201','0102','机构列表','${pageContext.request.contextPath}/manger/showAllBranch.do');
            d.add('010202','0102','添加机构','${pageContext.request.contextPath}/manger/doSaveBranch.do');

            d.add('010301','0103','部门列表','${pageContext.request.contextPath}/manger/showAllDepartment.do');
            d.add('010302','0103','新增部门','${pageContext.request.contextPath}/manger/doSaveDepartment.do');

            d.add('010401','0104','员工列表','${pageContext.request.contextPath}/manger/showAllRole.do');
            d.add('010402','0104','新增员工','${pageContext.request.contextPath}/manger/doSaveRole.do');

            d.add('010501','0105','回首页','right.jsp');
            document.write(d);
        </script>
        <a href="login.jsp" target="_top" onclick="return confirm('Are you sure????')"><font style="size: B5"><h1>退出管理系统</h1></font></a>
    </div>
</table>

</body>
</html>
