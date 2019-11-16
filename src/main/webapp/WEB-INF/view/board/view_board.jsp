<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-11-02
  Time: 오후 3:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <%@include file="../common/header.jsp"%>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url();">
        <div class="container">
            <div class="title-text">
                <h1>FREE BOARD</h1>
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
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="contact-area style-two">
                        <div class="section-title">
                            <h3>공지 게시판</h3>
                        </div>
                        <table class="container">
                            <thead>
                            <tr class="row">
                                <th colspan="3" style="width: 600px; padding-left: 15px;">
                                    <h3 style="color: #1e1e1e; width: 80%; padding-bottom : 15px">
                                        <strong style="width: 100%;">${data.title}</strong>
                                    </h3>
                                </th>
                            </tr>
                            <tr class="userBoardView_con">
                                <th style="width: 60%; text-align: center;">작성자 : ${data.writer}</th>
                                <th style="width: 100%; text-align: right; padding-right: 20px;">등록시간 : ${data.date} </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td colspan="3" class="col-sm-9" >
                                    <hr> ${data.content}
                                    <hr>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="Formfooter">
                            <c:if test="${user != null && user.type == data.writer}">
                                <button onclick="location='delete_board?ind=${data.id}&drop_menu_id=17'">글삭제</button>
                                <button onclick="location='update_board?ind=${data.id}'">글수정</button>
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
