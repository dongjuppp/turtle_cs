<%--
  Created by IntelliJ IDEA.
  User: ailab
  Date: 2019-10-25
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>김갑수마취통증의학과</title>
    <meta charset="utf-8">
    <title>김갑수마취통증의학과</title>


    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Slick Carousel -->
    <link rel="stylesheet" href="plugins/slick/slick.css">
    <link rel="stylesheet" href="plugins/slick/slick-theme.css">
    <!-- FancyBox -->
    <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css">

    <!-- Stylesheets -->
    <link href="css/style.css" rel="stylesheet">

    <!--Favicon-->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
</head>

<body>

<div class="page-wrapper">
    <!-- Preloader -->
    <!-- <div class="preloader"></div> -->
    <!-- Preloader -->



    <%@include file="../common/header.jsp"%>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>User Administration</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.html">home &nbsp;/</a>
                    </li>
                    <li>User Administration</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Contact Section -->
    <section class="blog-section section style-three pb-0">
        <div class="container">
            <div style="float: right;">

            </div>
            <table class="table table-striped table-bordered table-hover">
                <tr>
                    <th>아이디</th>
                    <th>비밀번호</th>
                    <th>이름</th>
                    <th>성별</th>
                    <th>타입</th>
                    <th>이메일</th>
                    <th>전화번호</th>
                    <th>마지막 로그인</th>
                    <th>등록 날짜</th>
                </tr>

                <c:forEach items="${user_list}" var="user_info" varStatus="status">
                    <tr>
                        <td><a href="/info_edit?id=${user_info.id}">${user_info.id}</a></td>
                        <td>${user_info.password}</td>
                        <td>${user_info.name}</td>
                        <td>${user_info.gender}</td>
                        <td>${user_info.type}</td>
                        <td>${user_info.email}</td>
                        <td>${user_info.phone}</td>
                        <td>${user_info.last_login}</td>
                        <td>${user_info.reg_login}</td>
                    </tr>
                </c:forEach>
            </table>
            <div align="right">
                <a href="excelUser">
                    <button  class="btn-style-two">엑셀다운
                    </button>
                </a>
            </div>
            <ul class="btn-group pagination">
                <c:if test="${page_maker.prev }">
                    <li>
                        <a href='<c:url value="/user_manage?page=${page_maker.startPage-1 }"/>'><i class="fa fa-chevron-left"></i></a>
                    </li>
                </c:if>
                <c:forEach begin="${page_maker.startPage }" end="${page_maker.endPage }" var="idx">
                    <li>
                        <a href='<c:url value="/user_manage?page=${idx}"/>'><i class="fa">${idx}</i></a>
                    </li>
                </c:forEach>
                <c:if test="${page_maker.next && page_maker.endPage >0 }">
                    <li>
                        <a href='<c:url value="/user_manage?page=${page_maker.endPage+1 }"/>'><i class="fa fa-chevron-right"></i></a>
                    </li>
                </c:if>
            </ul>

        </div>

    </section>
    <!-- End Contact Section -->



    <!--footer-main-->
    <%@include file="../common/footer.jsp"%>

    <script src="plugins/jquery.js"></script>
    <script src="plugins/bootstrap.min.js"></script>
    <script src="plugins/bootstrap-select.min.js"></script>
    <!-- Slick Slider -->
    <script src="plugins/slick/slick.min.js"></script>
    <!-- FancyBox -->
    <script src="plugins/fancybox/jquery.fancybox.min.js"></script>
    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script src="plugins/google-map/gmap.js"></script>

    <script src="plugins/validate.js"></script>
    <script src="plugins/wow.js"></script>
    <script src="plugins/jquery-ui.js"></script>
    <script src="plugins/timePicker.js"></script>
    <script src="js/script.js"></script>

</body>
</html>
