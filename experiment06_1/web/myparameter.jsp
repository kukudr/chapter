<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
姓名：史帅杰
学号：1803643060
时间：<%
    Date d = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String now = df.format(d);
%>

当前时间：<%=now %>
第一个对象的用户名：${users[0].userName}<br>
第二个对象的用户名：${users[1].userName}<br>
<hr>
<br>
第一个对象是否为空：${empty users[0]}<br>
第二个对象是否为空：${empty users[1]}<br>
第三个对象是否为空：${empty users[2]}<br>

characterEncoding:${pageContext.response.characterEncoding}<br>
requestURI:${pageContext.request.requestURI}<br>
requestURL:${pageContext.request.requestURL}<br>
serverInfo:${pageContext.servletContext.serverInfo}<br>
servletName:${pageContext.servletConfig.servletName}<br>
</body>
</html>
