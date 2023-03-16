<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="text-align: center">
<%--创建表单，获取请求参数--%>
    <form action="${pageContext.request.contextPath}/param.jsp">
        name1:<input type="text" name="name1"><br>
        name2:<input type="text" name="name2"><br>
        name3:<input type="text" name="name2"><br>
        name4:<input type="text" name="name2"><br>
        <input type="submit" value="提交">&nbsp; &nbsp;
        <input type="reset" value="重置"><br>
    </form>
<%--显示请求参数--%>
    name1:${param.name1}<br>
    name2:${paramValues.name2[0]}<br>
    name3:${paramValues.name2[1]}<br>
    name4:${paramValues.name2[2]}<br>
    name5:${paramValues.name2[3]}<br>
</body>
</html>
