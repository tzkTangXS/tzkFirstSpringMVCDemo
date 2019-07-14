<!DOCTYPE html>
<%@ page language="java" import="java.util.*"
         contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%String path=request.getContextPath();%>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>部门更新界面</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=path%>/css/edit.css" />
</head>
<body>
<style type="text/css">
    .s{
        width: 400px;
        height: 30px;
        /*background: #2aabd2;*/
        margin-bottom: 50px;
    }
</style>
<div class="container">
    <div class="row">
        <div id="topedit" class="divForm col-md-7 col-sm-6">
            <form action="${pageContext.request.contextPath}/manger/updateDepartment.do">
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">部门序列号:</span>
                        <input type="text" readonly="readonly" name="id" value="${department.id}" class="form-control input-lg"/></div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">部门名:</span>
                        <input name="departName" type="text" value="${department.departName}" class="form-control input-lg"/></div>
                </div>
              <%--  <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">机构id:</span>
                        <input name="branchId" type="text" value="${department.branchId}" class="form-control input-lg"/></div>
                </div>
--%>
                <%--<div class="input-group"><span class="input-group-addon">机构id:</span>
                    <input name="branchId" type="text" value="${department.branch.branchName}" class="form-control input-lg"/></div>--%>
                <div class="s">
                    <%-- <div class="form-group">
                      <div class="input-group">--%>
                    <select class="s" id="selects" name="branchId">
                        <option value="${department.branch.id}">
                            ${department.branch.branchName}
                        </option>
                        <c:forEach items="${requestScope.list}" var="b">
                            <c:if test="${department.branch.id!=b.id}">
                                <option  value="${b.id}">
                                        ${b.branchName}
                                </option>
                            </c:if>

                        </c:forEach>
                    </select>
                </div>
        </div>


                <div class="form-group">
                    <button class="btn btn-warning input-lg col-md-7">更新部门信息</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>