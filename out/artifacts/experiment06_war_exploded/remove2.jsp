<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--通过el表达式获取指定域中的值--%>
${username}<br>
request域中的值：${requestScope.username}<br>
session域中的值：${sessionScope.username}<br>
</body>
</html>
