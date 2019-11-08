<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>登录页面</title>
    <%@ page contentType="text/html;charset=gb2312"%>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<form name="loginForm" method="post" action="/denglu" name="pay">
    <table>
        <tr>
            <td>用户名:<input type="text" name="userName" id="userName"></td>
        </tr>
        <tr>
            <td>秘密:<input type="password" name="password" id="password"></td>
        </tr>
        <tr>
            <td><input type="submit" value="登录" style="background-color:pink">
                <input type="button"  value="注册" style="background-color:red" onclick="location.href='zhuce'" /></td>
        </tr>
    </table>
</form>
</body>
<script>

</script>
</html>
