<%--
  Created by IntelliJ IDEA.
  User: tzk
  Date: 19-7-4
  Time: 下午10:16
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
<div class="row ">

    <span class="input-group-addon dropdown-backdrop col-sm-offset-8 col-xs-offset-8 col-md-offset-10"><h1> 欢迎您的到来，<br/>尊敬的管理员
       : <br>${sessionScope.name}</h1><br>
        <h2>机构信息表</h2><h5>机构表与部门表级联删除，<br>因为机构如果撤销，<br>部门就没有存在的必要了。<br><br>对机构信息进行增删
        改查操作。</h5></span>

    <div class="divForm">

        <div class="form-group col-md-9 col-sm-6 col-xs-2 col-md-offset-1">
            <table id="customerTable" class="table text-center">
                <tr>
                    <td class="table-bordered"><span class="input-group-addon">序列号</span></td>
                    <td class="table-bordered"><span class="input-group-addon">机构名</span></td>
                    <td class="table-bordered"><span class="input-group-addon">备注</span></td>
                    <%-- <td class="table-bordered"><span class="input-group-addon">姓名</span></td>
                     <td class="table-bordered"><span class="input-group-addon">电话</span></td>--%>
                    <td class="table-bordered"><span class="input-group-addon">更新</span></td>
                    <td class="table-bordered"><span class="input-group-addon">删除</span></td>
                </tr>

                <c:forEach var="b" items="${requestScope.branchList}">

                <tr class="table-striped">

                    <td class="table-bordered"> ${b.id}</td>
                    <td class="table-bordered">${b.branchName}</td>
                    <td class="table-bordered">${b.remark}</td>
                        <%--   <td class="table-bordered">${c.customerName}</td>
                           <td class="table-bordered">${c.telephone}</td>--%>
                    <td class="table-bordered"><a
                            href="${pageContext.request.contextPath}/manger/doUpdateBranch.do?id=${b.id}">更新</a></td>
                    <td class="table-bordered">
                        <a href="${pageContext.request.contextPath}/manger/deleteBranch.do?id=${b.id}"
                           onclick="return confirm('Are you sure??')">删除</a></td>
                </tr>

                </c:forEach>
        </div>
        </table>
    </div>

</div>
</body>
</html>
