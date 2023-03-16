<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2023/3/10
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--用于展示后端传递过来的数据--%>
用户名：<%= request.getAttribute("username")%><br>
密 码：<%= request.getAttribute("password")%>
<hr>
<br>
<%--用el表达式展示数据--%>
用户名：${username}<br>
密 码：${password}<br>
</body>
</html>
