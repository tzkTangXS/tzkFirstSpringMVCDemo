<!DOCTYPE html>
<%@ page language="java" import="java.util.*"
         contentType="text/html; charset=UTF-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>更新机构界面</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/edit.css" />
</head>
<body>
<div class="container">
    <div class="row">
        <div id="topedit" class="divForm col-md-7 col-sm-6">
            <form action="${pageContext.request.contextPath}/manger/updateBranch.do">
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">机构序列号:</span>
                        <input type="text" readonly="readonly" name="id" value="${branch.id}" class="form-control input-lg"/></div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">机构名:</span>
                        <input name="branchName" type="text" value="${branch.branchName}" class="form-control input-lg"/></div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">备注:</span>
                        <input name="remark" value="${branch.remark}" type="text" class="form-control input-lg"/></div>
                </div>
                <div class="form-group">
                    <button class="btn btn-warning input-lg col-md-12">更新机构信息</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>