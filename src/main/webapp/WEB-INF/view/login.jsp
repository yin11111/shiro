<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>��¼ҳ��</title>
    <%@ page contentType="text/html;charset=gb2312"%>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<form name="loginForm" method="post" action="/userApi/loginAction" name="pay">
    <table>
        <tr>
            <td>�û���:<input type="text" name="userName" id="userName"></td>
        </tr>
        <tr>
            <td>����:<input type="password" name="password" id="password"></td>
        </tr>
        <tr>
            <td><input type="submit" value="��¼" style="background-color:pink">
                <input type="button"  value="ע��" style="background-color:red" onclick="location.href='/userApi/register'" /></td>
        </tr>
    </table>
</form>
</body>
<script>

</script>
</html>
