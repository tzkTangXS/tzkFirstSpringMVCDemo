<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <style type="text/css">
        .topeidt {
            margin-top: 50px;
        }
        .s{
            width: 400px;
            height: 30px;
            /*background: #2aabd2;*/
            margin-bottom: 50px;
            align-content: center;
            text-align: center;
        }
        select option{

            font-size: 20px;

        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="divForm col-md-7 topeidt">
            <form action="${pageContext.request.contextPath}/manger/updateRole.do">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon">客户序列号</span>
                                             <input type="text" readonly="redonly"   name="id" value="${role.id}" class="form-control input-lg col-md-6 col-xs-4" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">员工姓名:</span>
                        <input type="text" name="roleName" value="${role.roleName}" class="form-control input-lg"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">联系电话:</span>
                        <input name="telephone" value="${role.telephone}" type="text" class="form-control input-lg"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group"><span class="input-group-addon">电子邮箱:</span>
                        <input name="emial" value="${role.emial}" type="text"
                               class="form-control input-lg"/></div>
                </div>
                 <div class="s">
                     <select name="partId" id="" class="s">
                         <c:if test="${role.partId!=null}">
                         <option value="${role.partId}">
                             ${role.department.departName}
                         </option>
                         </c:if>
                         <c:if test="${role.partId==null}">
                             <option value="${null}">
                                 无
                             </option>
                         </c:if>
                       <c:forEach items="${requestScope.departments}" var="d">
                           <c:if test="${role.partId!=d.id}">
                           <option value="${d.id}">${d.departName}</option>
                           </c:if>
                       </c:forEach>
                     </select>
               </div>
                <div class="form-group">
                    <button class="btn btn-warning input-lg col-md-12">更新员工信息</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>

</html>