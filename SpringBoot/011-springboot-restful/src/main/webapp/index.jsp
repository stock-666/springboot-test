<%--
  Created by IntelliJ IDEA.
  User: 11951
  Date: 2021/5/20
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>
用户名：${student.name}
用户年龄：${student.age}
用户班级：${student.classNo}
用户性别：${student.gender}
</body>
</html>
