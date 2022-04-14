<%--
  Created by IntelliJ IDEA.
  User: 家用
  Date: 2022/4/8
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>

    </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/user/toAdd">添加</a>
<table width="800" border="1" cellspacing="0" align="center">
    <tr>
        <th>ID</th>
        <th>用户名</th>
        <th>年龄</th>
        <th>金额</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${page.list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.username}</td>
            <td>${u.age}</td>
            <td>${u.money}</td>
            <td><a href="${pageContext.request.contextPath}/user/toUser">修改</a>|<a href="${pageContext.request.contextPath}/user/delete?id=${u.id}">删除</a> </td>
            </tr>
    </c:forEach>
    <tr>
        <td colspan="5">
            <a href="${pageContext.request.contextPath}/user/getUsers?pageNum=1">首页</a> |
            <c:if test="${page.hasPreviousPage}">
            <a href="${pageContext.request.contextPath}/user/getUsers?pageNum=${page.prePage}">上一页</a>|
            </c:if>

            <c:forEach items="${page.navigatepageNums}" var="num">
                <c:if test="${page.pageNum != num}">
            <a style="display: block;width: 20px;height: 20px;background-color: cornflowerblue;float: left;margin-left: 5px;text-align: center;text-decoration: none;color: black"
               href="${pageContext.request.contextPath}/user/getUsers?pageNum=${num}">${num}</a>
                </c:if>
                <c:if test="${page.pageNum == num}">
                    <a style="display: block;width: 20px;height: 20px;background-color: greenyellow;float: left;margin-left: 5px;text-align: center;text-decoration: none;color: black"
                       href="">${num}</a>
                </c:if>
            </c:forEach>

            <c:if test="${page.hasNextPage}">
            <a href="${pageContext.request.contextPath}/user/getUsers?pageNum=${page.nextPage}">下一页</a>|
            </c:if>
            <a href="${pageContext.request.contextPath}/user/getUsers?pageNum=${page.pages}">尾页</a>|
            总页数：${page.pages}
        </td>
    </tr>
</table>
</body>
</html>
