
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>" />
</head>
<body>
<div align="center">
    <h3>登录失败页面</h3>
    <h3>请重新登录</h3>
    <a href="login.jsp"><input type="button" id="btn" value="登录"></a>
</div>
</body>
</html>
