<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-10-12
  Time: 오전 3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>동진이네 병원</title>
</head>
<body>
<ul>
    <c:forEach var="user" items="${userList}" varStatus="startus">
        <li>${user.name}의 아이디는 ${user.id}</li>
    </c:forEach>
</ul>


</body>
</html>
