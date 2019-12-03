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
    <%@include file="../common/header.jsp" %>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>예약하기</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="/">홈으로 &nbsp;/</a>
                    </li>
                    <li>예약하기</li>
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
                            <h3>예약하기 <span>${who}</span></h3>
                        </div>
                        <c:choose>
                            <c:when test="${who=='방문자'}">
                                <br><br>
                                <h4>${pleaseLogin}</h4>
                                <br><br>
                            </c:when>
                            <c:when test="${who=='고객'}">
                                <form name="contact_form" class="default-form contact-form" action="/reserveData"
                                      method="post">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <select name="subject">
                                                    <option>진료 항목</option>
                                                    <option>목/허리디스크(비수술)</option>
                                                    <option>신경성형술</option>
                                                    <option>대상포진 신경통</option>
                                                    <option>퇴행성 관절염</option>
                                                    <option>오십견/ 버거병</option>
                                                    <option>비급여항목</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="Date" placeholder="Date" required=""
                                                       id="datepicker">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <select name="doctor">
                                                    <option>의사</option>
                                                    <option>김갑수</option>
                                                    <option>전동병</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <select name="time">
                                                    <option>시간</option>
                                                    <option>9</option>
                                                    <option>10</option>
                                                    <option>11</option>
                                                    <option>12</option>
                                                    <option>14</option>
                                                    <option>15</option>
                                                    <option>16</option>
                                                    <option>17</option>
                                                    <option>18</option>
                                                    <option>19</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <textarea name="message" placeholder="Your Message"
                                                          required=""></textarea>
                                            </div>
                                            <div class="form-group text-center">
                                                <button type="submit" class="btn-style-one">제출 하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </c:when>
                            <c:when test="${who=='관리자'}">
                                <form name="contact_form" class="default-form contact-form" action="/reserveData"
                                      method="post">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <input type="text" name="userID" placeholder="아이디" required="">
                                            </div>
                                            <div class="form-group">
                                                <select name="subject">
                                                    <option>진료 항목</option>
                                                    <option>목/허리디스크(비수술)</option>
                                                    <option>신경성형술</option>
                                                    <option>대상포진 신경통</option>
                                                    <option>퇴행성 관절염</option>
                                                    <option>오십견/ 버거병</option>
                                                    <option>비급여항목</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="Date" placeholder="Date" required=""
                                                       id="datepicker" autocomplete="off">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <select name="doctor">
                                                    <option>의사</option>
                                                    <option>김갑수</option>
                                                    <option>전동병</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <select name="time" autocomplete="off">
                                                    <option>시간</option>
                                                    <option>09:00</option>
                                                    <option>10:00</option>
                                                    <option>11:00</option>
                                                    <option>12:00</option>
                                                    <option>14:00</option>
                                                    <option>15:00</option>
                                                    <option>16:00</option>
                                                    <option>17:00</option>
                                                    <option>18:00</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <textarea name="message" placeholder="Your Message"
                                                          required=""></textarea>
                                            </div>
                                            <div class="form-group text-center">
                                                <button type="submit" class="btn-style-one">제출 하기</button>
                                            </div>
                                        </div>
                                    </div>
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
