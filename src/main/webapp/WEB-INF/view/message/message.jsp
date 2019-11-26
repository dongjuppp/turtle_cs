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
    <section class="page-title text-center" style="background-image:url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>Contact</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.html">home &nbsp;/</a>
                    </li>
                    <li>Contact</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!--==================================
    =            Contact Form            =
    ===================================-->
    <section class="section contact">
        <!-- container start -->
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <!-- address start -->
                    <div class="address-block">
                        <!-- Location -->
                        <div class="media">
                            <i class="fa fa-map-o"></i>
                            <div class="media-body">
                                <h3>Location</h3>
                                <p>PO Box 16122 Collins Street West
                                    <br>Victoria 8007 Canada</p>
                            </div>
                        </div>
                        <!-- Phone -->
                        <div class="media">
                            <i class="fa fa-phone"></i>
                            <div class="media-body">
                                <h3>Phone</h3>
                                <p>
                                    (+48) 564-334-21-22-34
                                    <br>(+48) 564-334-21-22-38
                                </p>
                            </div>
                        </div>
                        <!-- Email -->
                        <div class="media">
                            <i class="fa fa-envelope-o"></i>
                            <div class="media-body">
                                <h3>Email</h3>
                                <p>
                                    info@templatepath.com
                                    <br>info@cleanxer.com
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- address end -->
                </div>
                <div class="col-md-8">
                    <div class="contact-form">
                        <!-- contact form start -->
                        <form action="#" class="row">
                            <!-- name -->
                            <div class="col-md-6">
                                <input type="text" name="name" class="form-control main" placeholder="Name" required>
                            </div>
                            <!-- email -->
                            <div class="col-md-6">
                                <input type="email" class="form-control main" placeholder="Email" required>
                            </div>
                            <!-- phone -->
                            <div class="col-md-12">
                                <input type="text" class="form-control main" placeholder="Phone" required>
                            </div>
                            <!-- message -->
                            <div class="col-md-12">
                                <textarea name="message" rows="15" class="form-control main" placeholder="Your message"></textarea>
                            </div>
                            <!-- submit button -->
                            <div class="col-md-12 text-right">
                                <button class="btn btn-style-one" type="submit">Send Message</button>
                            </div>
                        </form>
                        <!-- contact form end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- container end -->
    </section>
    <!--====  End of Contact Form  ====-->

    <!--================================
    =            Google Map            =
    =================================-->
    <section class="map">
        <!-- Google Map -->
        <div id="map"></div>
    </section>
    <!--====  End of Google Map  ====-->

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
