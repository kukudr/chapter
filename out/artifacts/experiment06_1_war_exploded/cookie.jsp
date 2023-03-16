<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.addCookie(new Cookie("userName","zhangsan"));
%>
   cookie对象信息： ${cookie.userName}<br>
   cookie对象的名称： ${cookie.userName.name}<br>
   cookie对象的值： ${cookie.userName.value}<br>
</body>
</html>
