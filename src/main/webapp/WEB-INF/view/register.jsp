<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>注册</title>
    <%@ page contentType="text/html;charset=gb2312"%>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<form name="loginForm" method="post" action="/userApi/registerAction">
    <table>
        <tr>
            <td>用户名:<input type="text" name="userName" id="userName"></td>
        </tr>
        <tr>
            <td>密码:<input type="password" name="password" id="password"></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交" style="background-color:pink">
        </tr>
    </table>
</form>
</body>
</html>
