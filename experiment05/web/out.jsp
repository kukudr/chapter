<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2023/3/4
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" buffer="0kb" %>
<html>
  <head>
    <title>jsp-demo</title>
  </head>
  <body>
  This is out-demo!<br>
  <%
    out.println("FirstLine<br/>");
    response.getWriter().write("SecondLine<br/>");
  %>
  </body>
</html>
