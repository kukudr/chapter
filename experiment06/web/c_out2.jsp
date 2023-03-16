<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:out value="${param.userName}" escapeXml="true" >
    <meta http-equiv="refresh"
          content="0;url=https://www.henu.edu.cn"/>
</c:out>
</body>
</html>
