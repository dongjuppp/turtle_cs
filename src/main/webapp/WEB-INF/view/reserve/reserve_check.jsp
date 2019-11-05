<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-10-19
  Time: 오후 8:33
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
    <section class="page-title text-center" style="background-image:url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>appointment</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.html">home &nbsp;/</a>
                    </li>
                    <li>appointment</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Contact Section -->
    <section class="blog-section section style-three pb-0">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="contact-area style-two">
                        <div class="section-title">
                            <h3>예약확인</h3>
                        </div>
                        <c:choose>
                            <c:when test="${who=='관리자'}">
                                <form name="contact_form" class="default-form contact-form" action="/reserveData" method="post">
                                    <c:forEach var="data" items="${datas}">
                                        <%--<div class="row">
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <p class="reserve_data">${data.userID}</p>
                                                </div>
                                                <div class="form-group">
                                                    <p class="reserve_data">${data.subject}</p>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <p class="reserve_data">${data.date}</p>
                                                </div>
                                                <div class="form-group">
                                                    <p class="reserve_data">${data.doctor}</p>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <!--<textarea name="message" placeholder="Your Message" required=""></textarea>-->
                                                    <p class="reserve_data">${data.message}</p>
                                                </div>

                                            </div>
                                        </div>--%>
                                        <div class="row">
                                            <div class="col-md-2 col-sm-2 col-xs-2">${data.userID}</div>
                                            <div class="col-md-2 col-sm-2 col-xs-2">${data.subject}</div>
                                            <div class="col-md-2 col-sm-2 col-xs-2">${data.date}</div>
                                            <div class="col-md-2 col-sm-2 col-xs-2">${data.doctor}</div>
                                            <div class="col-md-2 col-sm-2 col-xs-2">${data.message}</div>
                                        </div>
                                </c:forEach>
                                </form>
                            </c:when>
                            <c:when test="${who=='고객'}">
                                <form name="contact_form" class="default-form contact-form" action="/reserveData" method="post">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <p class="reserve_data">${data.userID}</p>
                                            </div>
                                            <div class="form-group">
                                                <p class="reserve_data">${data.subject}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <p class="reserve_data">${data.date}</p>
                                            </div>
                                            <div class="form-group">
                                                <p class="reserve_data">${data.doctor}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <!--<textarea name="message" placeholder="Your Message" required=""></textarea>-->
                                                <p class="reserve_data">${data.message}</p>
                                            </div>

                                        </div>
                                    </div>
                                </form>
                            </c:when>
                            <c:when test="방문자">
                                <form>
                                    <p>로그인해야 가능합니다</p>
                                </form>
                            </c:when>
                        </c:choose>


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
