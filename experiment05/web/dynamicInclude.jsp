<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2023/3/4
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--引入被包含的页面--%>
    dynamicInclude.jsp内被包含的文字<br>
    <jsp:include page="included.jsp" flush="true"></jsp:include>
    //<%@include file="included.jsp"%>
</body>
</html>
