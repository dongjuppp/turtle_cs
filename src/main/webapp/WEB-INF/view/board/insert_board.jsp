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
                    <li>Free board</li>
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
                            <form action="/boardData" method="POST">
                                <table>
                                    <colgroup><col width="15%"><col width="*"/></colgroup><caption>게시글 작성</caption>
                                    <tbody>
                                    <tr>
                                        <th scope="row">
                                            제목
                                        </th>
                                        <td>
                                            <input type="text" name="title" class="wdp_90" style="width:500px">
                                            <input type="hidden" name="drop_menu_id" value="${dropMenuId}">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="view_text">
                                            <textarea rows="20" cols="100" title="내용" name="content"></textarea>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <input type="submit" value="작성하기">
                            </form>

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
