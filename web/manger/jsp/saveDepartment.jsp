<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/edit.css"/>
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
        <div id="topedit" class="divForm col-md-7">
            <form action="${pageContext.request.contextPath}/manger/saveDepartment.do">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon">部门列号:自动生成</span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">部&emsp;门&emsp;名:</span>
                        <input type="text" name="departName" value="${department.departName}"
                               class="form-control input-lg"/></div>
                </div>
                    <div class="s">
                  <%-- <div class="form-group">
                    <div class="input-group">--%>
                        <select class="s" id="selects" name="branchId">

                            <c:forEach items="${requestScope.branchList}" var="b">
                                <option  value="${b.id}">
                                        ${b.branchName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                      <%--  </div>
                </div>--%>

                <%-- <div class="form-group">
                     <div class="input-group">
                     <span class="input-group-addon">真实&emsp;姓名:</span>
                     <input name="customerName" value="${customer.customerName}" type="text" class="form-control input-lg" /></div></div>
                 <div class="form-group"><div class="input-group"><span class="input-group-addon">联系&emsp;电话:</span>
                     <input name="telephone"  value="${customer.telephone}" type="text" class="form-control input-lg" /></div></div>
                 --%>

                <div class="form-group">
                    <button class="btn btn-warning input-lg col-xs-12 col-sm-12 col-md-12">添加部门</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>