<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2023-03-16
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

姓名：史帅杰<br>
学号：1803643060<br>
时间：<%
    Date d = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String now = df.format(d);
%>
当前时间：<%=now %>
<% pageContext.setAttribute("username", "pageContext"); %>
<hr>
表达式\${pageScope.username}的值为：${pageScope.username} <br />
表达式\${requestScope.username}的值为：${requestScope.username} <br />
表达式\${sessionScope.username}的值为：${sessionScope.username} <br />
表达式\${applicationScope.username}的值为：${applicationScope.username}<br />

表达式\${username}的值为：${username}
</body>

</html>
