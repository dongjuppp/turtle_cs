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
    <%@include file="../common/header.jsp"%>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>Blog</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.html">home &nbsp;/</a>
                    </li>
                    <li>Blog</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Contact Section -->
    <section class="blog-section style-four section">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <div class="left-side">
                        <div class="item-holder">
                            <div class="image-box">
                                <figure>
                                    <a href="single-blog.html"><img src="images/blog/5.jpg" alt=""></a>
                                </figure>
                            </div>
                            <div class="content-text">
                                <a href="single-blog.html"><h6>A LESSON IN SURGERY PREPAREDNESS - FROM HURRICANE SEASON</h6></a>
                                <span>By Donult Trum / 02 January 2018</span>
                                <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Sed porttitor lectus nibh. Curabitur aliquet quam
                                    id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.</p>
                                <div class="link-btn">
                                    <a href="single-blog.html" class="btn-style-one">read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="item-holder">
                            <div class="image-box">
                                <figure>
                                    <a href="single-blog.html"><img src="images/blog/6.jpg" alt=""></a>
                                </figure>
                            </div>
                            <div class="content-text">
                                <a href="single-blog.html"><h6>PATIENT ENGAGEMENT AND THE IMPROVEMENT OF CARE AND RECOVERY</h6></a>
                                <span>By James Anderson / 08 January 2018</span>
                                <p>Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Nulla porttitor accumsan
                                    tincidunt. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p>
                                <div class="link-btn">
                                    <a href="single-blog.html" class="btn-style-one">read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="item-holder">
                            <div class="image-box">
                                <figure>
                                    <a href="single-blog.html"><img src="images/blog/7.jpg" alt=""></a>
                                </figure>
                            </div>
                            <div class="content-text">
                                <a href="single-blog.html"><h6>HOW TO MAKE YOUR MEDICAL TRAINING EVENT OVER THE TOP</h6></a>
                                <span>By Garry Moe / 12 January 2018</span>
                                <p>Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium
                                    ut lacinia in, elementum id enim. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>
                                <div class="link-btn">
                                    <a href="single-blog.html" class="btn-style-one">read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="item-holder">
                            <div class="image-box">
                                <figure>
                                    <a href="single-blog.html"><img src="images/blog/8.jpg" alt=""></a>
                                </figure>
                            </div>
                            <div class="content-text">
                                <a href="single-blog.html"><h6>WHAT DOES THE FLEXDEX BRING TO LAPAROSCOPY?</h6></a>
                                <span>By Luis Morris / 25 January 2018</span>
                                <p>Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis
                                    a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat.</p>
                                <div class="link-btn">
                                    <a href="single-blog.html" class="btn-style-one">read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="right-side">
                        <div class="text-title">
                            <h6>Search</h6>
                        </div>
                        <div class="search-box">
                            <form method="post" action="index.html">
                                <input type="search" name="search" placeholder="Enter to Search" required="">
                            </form>
                        </div>
                        <div class="categorise-menu">
                            <div class="text-title">
                                <h6>Categories</h6>
                            </div>
                            <ul class="categorise-list">
                                <li><a href="#">Alumni <span>(20)</span></a></li>
                                <li><a href="#">Psycology <span>(4)</span></a></li>
                                <li><a href="#">Sonogram <span>(2)</span></a></li>
                                <li><a href="#">x-ray <span>(9)</span></a></li>
                                <li><a href="#">Dental <span>(2)</span></a></li>
                            </ul>
                        </div>
                        <div class="tag-list">
                            <div class="text-title">
                                <h6>Tags</h6>
                            </div>
                            <a href="#">ray</a><a href="#">dental</a>
                            <a href="#">Clean</a><a href="#">hospitality</a>
                            <a href="#">Dormamu</a><a href="#">Medical</a><a href="#">hospitality</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="styled-pagination">
                <ul>
                    <li><a class="prev" href="#"><span class="fa fa-angle-left" aria-hidden="true"></span></a></li>
                    <li><a href="#" class="active">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a class="next" href="#"><span class="fa fa-angle-right" aria-hidden="true"></span></a></li>
                </ul>
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
