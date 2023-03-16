<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("username","req");
    session.setAttribute("username","session");
    request.getRequestDispatcher("remove2.jsp").forward(request,response);
%>
</body>
</html>
