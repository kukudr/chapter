<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
绝对路径:
<c:url value="http://localhost:8080//jstl_demo/outdemo1.jsp" var="myURL">
    <c:param name="username" value="zhangsan"></c:param>
</c:url>
<a href="${myURL}">outdemo1.jsp</a><br>
相对路径:
<c:url value="outdemo1.jsp?username=lisi" var="myURL2"/>
<a href="${myURL2}">outdemo1.jsp</a><br>
</body>
</html>
