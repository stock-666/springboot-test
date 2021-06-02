
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>

<html>
<head>
    <title>index</title>
    <base href="<%=basePath%>" />
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
                $("#btn").click(function () {
                    if ("${sessionScope.student.name}"!==""){
                        window.location.href="login.jsp";
                    }
                    alert("当前未登录！")
                })

        })
    </script>

</head>
<body>
<div align="center">
    <br><br><br><br>
    <input type="button" value="退出登录" id="btn">
    <p><a href="login.jsp">登录系统</a></p>
    <p><a href="add.jsp">学生注册</a> </p>
    <img src="images/mao1.jpg">
</div>
</body>
</html>
