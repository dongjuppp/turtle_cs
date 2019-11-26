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
<%@include file="common/header.jsp"%>
    <!--End Main Header -->

    <!--=================================
    =            Page Slider            =
    ==================================-->
    <div class="hero-slider">
        <!-- Slider Item -->
        <div class="slider-item slide1" style="background-image:url(/images/slider/image_2015.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Slide Content Start -->
                        <div class="content style text-right">
                            <h2 class="text-white text-bold mb-2">통증 없는 세상을 도와드립니다</h2>
                            <br>
                            <p class="tag-text mb-5">통증치료의 모든것 김갑수 마취통증의학과</p>
                        </div>
                        <!-- Slide Content End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Slider Item -->
        <div class="slider-item" style="background-image:url(/images/slider/image_2015_2.png);">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Slide Content Start-->
                        <div class="content style text-right">
                            <h2 class="text-white text-bold mb-2">통증 없는 세상을 도와드립니다</h2>
                            <br>
                            <p class="tag-text mb-5">통증치료의 모든것 김갑수 마취통증의학과</p>
                        </div>
                        <!-- Slide Content End-->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--====  End of Page Slider  ====-->

    <section class="cta">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="cta-block">
                        <div class="emmergency item">
                            <i class="fa fa-phone"></i>
                            <h2>전화 상담 문의</h2>
                            <h2>02-536-1777</h2>
                            <h2>FAX. 02-536-1777</h2>
                        </div>
                        <div class="top-doctor item">
                            <i class="fa fa-stethoscope"></i>
                            <h2>진료안내</h2>
                            <a href="/medicinfoNeck" class="btn btn-main">진료정보보기</a>
                        </div>
                        <div class="working-time item">
                            <i class="fa fa-hourglass-o"></i>
                            <h2>진료시간 안내</h2>
                            <ul class="w-hours">
                                <li>평일  - <span>09:00 - 19:00</span></li>
                                <li>토요일  - <span>09:00 - 14:00</span></li>
                                <li>점심시간  - <span>13:00 - 14:00</span></li>
                            </ul>
                            <p>일, 공휴일 : 휴진</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



<%@include file="common/footer.jsp"%>

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
