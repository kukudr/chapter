<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2023-03-16
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
姓名：史帅杰<br>
学号：1803643060<br>
时间：<%
  Date d = new Date();
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String now = df.format(d);
%>
当前时间：<%=now %>
<div id="head" style="text-align: center; width: 500px">
  <c:if test="${empty username}">
    <a href="/experiment06_1/JSTLCore">您好，请先登录</a>&nbsp;&nbsp;&nbsp;<a href="#">免费注册</a>
  </c:if>
  <c:if test="${!empty username}">
    ${username}&nbsp;先生/女士，您好&nbsp;<a href="/experiment06_1/JSTLCore.jsp">退出</a>
  </c:if>
</div>
<br>
<div id="contents">
  <c:choose>
    <c:when test="${!empty orders}">
      <table border="1">
        <thead>
        <tr>
          <th>ID</th>
          <th>订单编号</th>
          <th>邮寄地址</th>
          <th>联系电话</th>
          <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orders}" var="order" varStatus="s">
          <tr>
            <td>${s.count}</td>
            <td>${order.id}</td>
            <td>${order.address}</td>
            <td>${order.phone}</td>
            <td><a href="#">修改</a> <a href="#">删除</a></td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </c:when>
    <c:otherwise>
      <div style="text-align: center; width: 500px">
        <c:out value="${orders}">
          查询订单orders集合为空！
        </c:out>
      </div>
    </c:otherwise>
  </c:choose>
</div>
</body>

</html>
