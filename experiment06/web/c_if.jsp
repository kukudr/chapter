<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set value="1" var="number"></c:set>
    <c:if test="${number==1}">
        Welcome to javaweb!
    </c:if>
</body>
</html>
