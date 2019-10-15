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
    <script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>
<ul>
    <c:forEach var="user" items="${userList}" varStatus="startus">
        <li>${user.name}의 아이디는 ${user.id}</li>
    </c:forEach>
</ul>


<input type="button" onclick="ajaxFunction()" value="ajax제출">
<p>&nbsp</p>
<p>&nbsp</p>
<p>&nbsp</p>

<a href="/second">두번째 페이지 이동</a>

</body>

<script type="text/javascript">
    function ajaxFunction() {
        $.ajax({
            url: 'index/ajax', //여기서 서버의 url값을 정하고
            type: 'post', //get 방식인지 post방식인지

            //여기에 전달할 값
            data: {
                data: '소공 소공 으라차차'
            },
            async: false,
            dataType: 'json',
            success: function (data) {
                alert(data)
            }
        });
    }
</script>
</html>
