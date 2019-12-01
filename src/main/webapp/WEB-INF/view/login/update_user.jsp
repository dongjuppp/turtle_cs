<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-10-19
  Time: 오후 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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


    <%@include file="../common/header.jsp" %>
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
            <div class="contact-area style-two">
                <div class="section-title">
                    <h2>회원 가입</h2>
                    <p class="hint-text">회원 정보를 입력해주세요. 모든 칸은 기입되어야 합니다.</p>
                </div>
                <form name="register_form" class="default-form contact-form" action="/update_user" method="post"
                      modelAttribute="userDTO">

                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-9">
                                <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력해주세요"
                                       required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-9">
                                <input type="password" class="form-control" name="password" id="password"
                                       placeholder="비밀번호를 입력해주세요" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-9">
                                <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요"
                                       required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-9">
                                <input type="email" class="form-control" name="email" id="email"
                                       placeholder="이메일을 입력해주세요" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-3"><input type="text" class="form-control" name="first_phone"
                                                         id="first_phone" placeholder="010" required="required"></div>
                            <div class="col-xs-3"><input type="text" class="form-control" name="second_phone"
                                                         id="second_phone" placeholder="0000" required="required"></div>
                            <div class="col-xs-3"><input type="text" class="form-control" name="third_phone"
                                                         id="third_phone" placeholder="0000" required="required"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-2">
                                <input type="text" class="form-control" readonly="true" placeholder="성별">
                            </div>
                            <div class="col-xs-7">
                                <select name="gender" id="gender">
                                    <option>남</option>
                                    <option>여</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-9">
                                <input type="text" name="birth" placeholder="생일을 입력해주세요" required="required" id="birth">
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-9">
                                <button type="submit" class="btn btn-success btn-lg btn-block">회원 가입</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>

    <script src="plugins/jquery.js"></script>
    <script>
        $(function() {
            $( "#birth" ).datepicker({
                changeMonth: true,
                changeYear: true,
                dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
                dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
                monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                nextText: '다음 달',
                prevText: '이전 달',
                yearRange: "-100:+0",
                minDate:"-100Y",
                maxDate:0
            });
        });

        $(document).on('click', '#btnSignup', function (e) {
            e.preventDefault();
            $("#form").submit();
        });
    </script>

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
