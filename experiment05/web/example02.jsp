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
    <title>Jsp声明标识</title>
</head>
<body>
    <%--声明标识，可以定义方法和变量，作用域在整个jsp--%>
    <%!
        int c = 1;
        public  int add(int a, int b){
            return a+b;
        }
    %>
    <%--java代码片段，可以调用方法--%>
    <%
        System.out.println(add(1,2));//控制台输出
        response.getWriter().println(add(1,3));//页面输出
        out.println(add(1,4));//页面输出
        c=add(1,5);
    %>
    <%=c%><%--页面输出--%>
</body>
</html>
