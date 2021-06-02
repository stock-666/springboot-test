<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生注册</title>
</head>
<body>
<form action="./user/add" method="post">
    <table>
        <tr>
            <td>学生ID：</td>
            <td><input type="text" name="sid"></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="sname"></td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
</body>
</html>
