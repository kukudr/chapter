<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--存储一个数组，存储水果信息--%>
<%
    String[] fruits = {"apple","orange","banana","pear","watermelon","peach","blueberry"};
    request.setAttribute("fruits",fruits);
%>
<%--遍历数组--%>
<c:forEach items="${fruits}" var="fruit" begin="1" step="2" end="6">
    ${fruit}<br>
</c:forEach>
</body>
</html>
