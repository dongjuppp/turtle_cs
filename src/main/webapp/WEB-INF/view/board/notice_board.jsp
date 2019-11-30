<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-11-02
  Time: 오후 3:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>김갑수마취통증의학과</title>
</head>
<head>
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



    <!--header top-->
    <%@include file="../common/header.jsp"%>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url();">
        <div class="container">
            <div class="title-text">
                <h1>공지사항</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="/">홈으로 &nbsp;/</a>
                    </li>
                    <li>자유게시판</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Contact Section -->
    <section class="blog-section style-three pb-0">
        <div class="container">
            <div class="row">
                <div>
                    <div style="margin-top: 5%;margin-bottom: 10%"class="contact-area style-two">
                        <div style="margin-top: 10%;margin-bottom: 5%" class="section-title">
                            <h3>게시판</h3>
                        </div>
                        <table class="table table-hover" >

                            <thead>
                            <tr>
                                <th>번 호</th>
                                <th>제 목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                                <th>조 회</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="boardDTO" items="${board}" varStatus="num">
                                <fmt:parseNumber var = "view" integerOnly = "true"
                                                 type = "number" value = "${boardDTO.views/2}" />
                            <tr>
                                <td > <c:out value="${num.index+1}" /></td>
                                <td><a href="view_board?ind=${boardDTO.id}"> <c:out value="${boardDTO.title}" /> </a></td>
                                <td > <c:out value="${boardDTO.writer}" /> </td>
                                <td > <c:out value="${boardDTO.dateStr}" /> </td>
                                <td > <c:out value="${view}" /> </td>
                            </tr>
                            </c:forEach>

                            </tbody>
                            <tfoot>
                            <br>
                            <tr>
                                <td align="center" colspan="5">1</td>
                            </tr>
                            </tfoot>
                        </table>

                        <div class="Formfooter">
                            <c:if test="${user.type eq '1'}">
                            <button onclick="location='insert_board?dropMenuId=${dropMenuId}'" style="width: 8%;height: 4%"class="btn-white">새글쓰기</button>
                            </c:if>
                        </div>

                    </div>
                </div>

            </div>
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
