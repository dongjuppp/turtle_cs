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
    <style>
    </style>
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
    <%@include file="../common/header.jsp" %>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url();">
        <div class="container">
            <div class="title-text">
                <h1>${titleName}</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="/">홈으로 &nbsp;/</a>
                    </li>
                    <li>${titleName}</li>
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
                    <div class="contact-area style-five">
                        <div class="section-title">


                            <table border="0" cellpadding="0" cellspacing="0" width="90%">
                                <tr>
                                    <td colspan="2" height="15"></td>
                                </tr>
                                <tr>
                                    <td width='19'><i class="fa fa-comment fa-2x"></i></td>
                                    <td><span style="color: #FF9900; font-family: 나눔명조; "><span
                                            style='font-size:17pt;'><b>${titleName} 진료정보</b></span></span></td>
                                </tr>
                                <tr>
                                    <td colspan="2" height="10"></td>
                                </tr>
                            </table>
                            <br>
                            <TABLE cellSpacing=3 cellPadding=0 width=810 border=0>
                                <TBODY>
                                <c:forEach var="boardDTO" items="${data}" varStatus="num">
                                    <TR>
                                        <TD>
                                            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                                                <TBODY>
                                                <TR>
                                                    <TD>
                                                        <div style="font-size: 14pt; padding-left: 1.8em"><i
                                                                class="fa fa-bookmark fa-2x"></i><B>&nbsp${boardDTO.title}</B>
                                                        </div>

                                                        <BR><BR>
                                                        <div style="padding-left: 1.9em">&nbsp${boardDTO.content}</div>
                                                    </TD>
                                                </TR>
                                                </TBODY>
                                            </TABLE>
                                            <BR>
                                        </TD>
                                    </TR>
                                </c:forEach>

                                </TBODY>
                            </TABLE>
                        </div>
                        <br><br><br>
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
