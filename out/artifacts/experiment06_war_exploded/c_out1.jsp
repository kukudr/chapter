<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--无标签体--%>
<c:out value="${param.userName}" default="unknown"/> <br>
<%--有标签体--%>
    <c:out value="${param.userName}">unknown</c:out><br>
</body>
</html>
