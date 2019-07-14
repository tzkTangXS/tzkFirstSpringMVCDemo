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
        <h2>客户信息表</h2>对客户进行基本信息进行基本的增删<br>
        改查操作</span>

    <div class="divForm">

        <div class="form-group col-md-9 col-sm-6 col-xs-2 col-md-offset-1">
            <table id="customerTable" class="table text-center">
                <tr>
                    <td class="table-bordered"><span class="input-group-addon">序列号</span></td>
                    <td class="table-bordered"><span class="input-group-addon">部门名</span></td>
                     <td class="table-bordered"><span class="input-group-addon">所属机构名</span></td>
                    <%-- <td class="table-bordered"><span class="input-group-addon">姓名</span></td>
                     <td class="table-bordered"><span class="input-group-addon">电话</span></td>--%>
                    <td class="table-bordered"><span class="input-group-addon">更新</span></td>
                    <td class="table-bordered"><span class="input-group-addon">删除</span></td>
                </tr>

                <c:forEach var="d" items="${requestScope.departmentList}">

                <tr class="table-striped">

                    <td class="table-bordered"> ${d.id}</td>
                    <td class="table-bordered">${d.departName}</td>
                    <!-- <td class="table-bordered">${b.remark}</td> -->
                        <%--   <td class="table-bordered">${c.customerName}</td>
                           <td class="table-bordered">${c.telephone}</td>--%>
                    <td class="table-bordered">${d.branch.branchName}</td>
                    <td class="table-bordered">

                        <a
                            href="${pageContext.request.contextPath}/manger/doUpdateDepartment.do?id=${d.id}">更新</a></td>
                    <td class="table-bordered">
                        <a href="${pageContext.request.contextPath}/manger/deleteDepartment.do?id=${d.id}"
                           onclick="return confirm('Are you sure??')">删除</a></td>
                </tr>

                </c:forEach>
        </div>
        </table>
    </div>

</div>
</body>
</html>