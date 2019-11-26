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
    <title>Title</title>
</head>
<head>
    <meta charset="utf-8">
    <title>Medic | Medical HTML Template</title>


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
    <%@include file="../common/header.jsp" %>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url();">
        <div class="container">
            <div class="title-text">
                <h1>BOARD</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.html">home &nbsp;/</a>
                    </li>
                    <li>board</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Contact Section -->
    <section class="blog-section section style-three pb-0">
        <div class="container">
            <div>
                <div>
                    <div class="contact-area style-two">
                        <div class="section-title">
                            <h3>게시판</h3>
                        </div>

                        <table class="container" style="text-align: center; border: 1px solid #dddddd">
                            <div class="board-view-head">
                                <div class="board-view-title">
                                    <h3 class="vtitle">${data.title}</h3>
                                    <fmt:parseNumber var="view" integerOnly="true"
                                                     type="number" value="${data.views/2}"/>

                                    <div class="vtitle-winfo">
                                        <span>작성자 : ${data.writer}</span>
                                        <span>작성일자 : ${data.dateStr}</span>
                                        <span>조회 : ${view}</span>
                                    </div>
                                </div>
                            </div>

                            <div class="board-view-cont">
                                <div class="board-view-contents">
                                    <h3>${data.content}</h3>
                                </div>
                                <br><br><br>
                                <div style="text-align: right;">
                                <c:if test="${data.dropMenuId == 16}">
                                    <a href="communityNnotice"><span>목록으로</span></a>
                                </c:if>
                                <c:if test="${data.dropMenuId == 17}">
                                    <a href="communityFree"><span>목록으로</span></a>
                                </c:if>
                                </div>
                            </div>
                        </table>

                        <div style="width: 300px">
                            <c:if test="${user != null && user.type == data.writer}">
                                <table>
                                <tr>
                                    <td><button class="btn-style-two"
                                            onclick="location='delete_board?ind=${data.id}&drop_menu_id=${data.dropMenuId}'">
                                        삭제
                                    </button></td>
                                    <td><button class="btn-style-two" onclick="location='update_board?ind=${data.id}'">수정
                                    </button></td>
                                </tr></table>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact Section -->


    <!--footer-main-->
    <%@include file="../common/footer.jsp" %>

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
