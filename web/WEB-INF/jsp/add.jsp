<%--
  Created by IntelliJ IDEA.
  User: 家用
  Date: 2022/4/11
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="user/add" method="post">
    用户名：<input type="test" name="username"><br>
    密码：<input type="password" name="password"><br>
    年龄：<input type="number" name="age"><br>
    金额：<input type="number" name="money"><br>
    爱好：<input type="checkbox" name="hobby" value="swim">游泳
        <input type="checkbox" name="hobby" value="soccer">足球
        <input type="checkbox" name="hobby"value="run">跑步<br>
    所在地区：
    <select id="province" name="province">
        <option value="none">----请选择省----</option>
    </select>
    <select id="city" name="city">
        <option value="none">----请选择市----</option>
    </select>
    <br>
    <input type="submit" value="提交"><br>
</form>
</body>
</html>
