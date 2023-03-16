<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2023/3/1
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp表达式</title>
</head>
<body>
    <%--声明标识，可以定义方法和变量，作用域在整个jsp--%>
    <%!
        int a=1,b=2;
    %>
    <%--jsp表达式--%>
    <%= a+b%>
</body>
</html>
