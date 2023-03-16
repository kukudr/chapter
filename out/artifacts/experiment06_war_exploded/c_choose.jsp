<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:choose>
        <c:when test="${empty param.username}">
            <%--为空--%>
            <c:out value="不能为空"></c:out>
        </c:when>
        <c:when test="${param.username.equals('zhangsan')}">
            ${param.username} is Manager
        </c:when>
        <c:otherwise>
            ${param.username} is Employee
        </c:otherwise>
    </c:choose>
</body>
</html>
