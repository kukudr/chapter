<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2023/3/4
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext</title>
</head>
<body>
    <%
        //页面域中存值
        //pageContext.setAttribute("str","Java",pageContext.);
        //页面域中取值
        //String str = (String) pageContext.getAttribute("str");
        //out.println("page范围："+str+"<br>");
        //请求域存值
        ServletRequest request1 = pageContext.getRequest();
        request1.setAttribute("str","JavaWeb");
        //请求域取值
        String str1 = (String) request1.getAttribute("str");
        out.println("request1范围："+str1+"<br>");
        String str = (String) pageContext.getAttribute("str",pageContext.REQUEST_SCOPE);
        out.println("page范围："+str1+"<br>");
    %>
</body>
</html>
