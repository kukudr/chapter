<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("userName","李四");
%>
    pageScope取值：${pageScope.userName}<br>
    requestScope取值：${requestScope.userName}<br>
    sessionScope取值：${sessionScope.userName}<br>
    applicationScope取值：${applicationScope.userName}<br>
    默认取值：${userName}<br>
<%--默认取值顺序，从小域到大域--%>
</body>
</html>
