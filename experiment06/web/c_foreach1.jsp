<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--存储一个集合 ，包括每个学生的课程信息--%>
<%
    HashMap<String,String> map = new HashMap<>();
    map.put("tom","Java");
    map.put("lucy","Web");
    map.put("Jerry","Python");
    //将集合存储到request域中，域名usermap，值为map
    request.setAttribute("usermap",map);
%>
<%--存储一个数组，存储水果信息--%>
<%
    String[] fruits = {"apple","orange","banana"};
    request.setAttribute("fruits",fruits);
%>
<%--遍历集合--%>
map:<br>
<c:forEach items="${usermap}" var="entry">
    ${entry.key}:${entry.value}<br>
</c:forEach>
<%--遍历数组--%>
数组：<br>
<c:forEach items="${fruits}" var="fruit">
    ${fruit}<br>
</c:forEach>
</body>
</html>
