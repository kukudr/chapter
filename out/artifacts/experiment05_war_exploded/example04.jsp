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
    <title>Jsp注释</title>
</head>
<body>
    <!--HTML的注释-->
    <%--JSP的隐藏注释--%>
    <%!
        //单行注释
        int a=1,b=2;
        /*
        * 多行注释
        * 多行注释
        * ......
        */
        /**
         * 提示文档注释
         * 提示文档注释
         */
    %>
</body>
</html>
