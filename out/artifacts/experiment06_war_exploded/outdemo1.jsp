<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:out value="${param.username}" default="unknown"/><br>
    <c:out value="${param.username}" >unknown</c:out><br>
</body>
</html>
