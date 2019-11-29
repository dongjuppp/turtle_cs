<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-10-19
  Time: 오후 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <%@include file="../common/header.jsp"%>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>진료시간/약도</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.html">home &nbsp;/</a>
                    </li>
                    <li>진료시간/약도</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Service Section -->
    <section class="bg-gray section">
        <div class="container text-center">
            <div class="section-title">
                <h3 style="font-family: 나눔명조">진료시간</h3>
                <br>
            </div>
            <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
                <table class="table">
                    <tr><th class="tab-header-area">진료시간</th><td>${info.openTime}</td></tr>
                    <tr><th class="tab-header-area">토요일</th><td>${info.saturdayTime}</td></tr>
                    <tr><th class="tab-header-area">점심시간</th><td>${info.lunchTime}</td></tr>
                </table>
            </div>
            <hr class="col-md-12 col-sm-12 col-xs-12">
            <div class="col-md-12 col-sm-12 col-xs-12 section-title text-center">
                <h3 style="font-family: 나눔명조">오시는길</h3>
                <br>
            </div >
                <div class="text-center">
                <img src="images/${info.image}">
                    <p >${info.address}</p>
                </div>

            </div>
        </div>
    </section>
    <!-- End Contact Section -->

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
