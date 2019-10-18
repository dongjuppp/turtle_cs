<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-10-15
  Time: 오후 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>동진이네 병원</title>
    <script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>
<h1>두번째 페이지</h1>

<button type="button" value="ajax2번째" onclick="secondAjax()">ajax2번째</button>
<input type="button" onclick="ajaxTest()" value="제출">
<p>&nbsp</p>
<p>&nbsp</p>
<p>&nbsp</p>

<!--스프링 form태그를 이용한 form전송-->
<form:form modelAttribute="userDTO" method="post" action="third">
    <label><input type="text" name="name">이름:</label>
    <input type="submit" value="검색">
</form:form>



<script type="text/javascript">

    var userDTO={id:107,name:'홍길동'}; //자바 스크립트 객체 생성

    //ajaxTest는 userDTO 자바스크립트 객체를 객체 그대로 서버에 전달
    function ajaxTest() {
        $.ajax({
            url: 'second/ajax2', //여기서 서버의 url값을 정하고
            type: 'post', //get 방식인지 post방식인지

            //여기에 전달할 값
            data:userDTO,
            async: false,
            dataType: 'json',
            success: function (data) {

                alert(data.id+' '+data.name)
            }
        });
    }

    //여기서는 userDTO를 JSON문자열 형태로 전달
    function secondAjax() {
        $.ajax({
            url: 'second/ajax', //여기서 서버의 url값을 정하고
            type: 'post', //get 방식인지 post방식인지

            //여기에 전달할 값
            data: {
                data: JSON.stringify(userDTO)
            },
            async: false,
            dataType: 'json',
            success: function (data) {
                alert(JSON.stringify(data))
            }
        });
    }
</script>
</body>
</html>
