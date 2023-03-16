<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2023/3/1
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP include指令</title>
</head>
<body>
    <h3>在下面引入被包含的页面</h3>
    <%@include file="date.jsp"%>
</body>
</html>
