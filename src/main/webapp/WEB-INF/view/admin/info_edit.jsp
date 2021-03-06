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


    <%@include file="../common/header.jsp" %>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>Users Edit</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.html">home &nbsp;/</a>
                    </li>
                    <li>Users Edit</li>
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
            <div class="card">
                <div class="card-header"><h3 style="color:black; text-align:left">회원 수정<h3></div>
                <div class="card-body">
                    <form:form name="form" id="form" class="form-signup" role="form"
                               modelAttribute="userDetail" method="post"
                               action="/info_edit_finish?id=${id}">


                            <br>
                        <div class="form-group row "><label for="name"
                                                           class="col-md-3 col-form-label text-md-right">이름</label>

                            <div class="col-md-5"><form:input path="name" id="name" class="form-control"
                                                              placeholder="이름을 입력해 주세요" value="${userDetail.name}" /></div>
                        </div>
                        <div class="form-group row"><label for="password" class="col-md-3 col-form-label text-md-right">비밀번호</label>
                            <div class="col-md-5"><form:input path="password" id="password" class="form-control"
                                                              placeholder="비밀번호를 입력해 주세요" value="${userDetail.password}"/></div>
                        </div>
                        <div class="form-group row"><label for="email"
                                                           class="col-md-3 col-form-label text-md-right">이메일</label>
                            <div class="col-md-5">
                                <form:input path="email" id="email" class="form-control" placeholder="이메일을 입력해 주세요" value="${userDetail.email}"/>
                            </div>
                        </div>
                        <div class="form-group row"><label for="phone" class="col-md-3 col-form-label text-md-right">전화번호</label>
                            <div class="col-md-5"><form:input path="phone" id="phone" class="form-control"
                                                              placeholder="전화번호을 입력해 주세요" value="${userDetail.phone}"/></div>
                        </div>
                        <div class="form-group row"><label for="gender"
                                                           class="col-md-3 col-form-label text-md-right">성별</label>
                            <div class="col-md-5"><form:input path="gender" id="gender" class="form-control"
                                                              placeholder="성별을 입력해 주세요" value="${userDetail.gender}"/></div>
                        </div>
                            <div class="form-group row"><label for="type"
                                                               class="col-md-3 col-form-label text-md-right">타입</label>
                                <div class="col-md-5"><form:input path="type" id="type" class="form-control"
                                                                  placeholder="관리자(1)or회원(2)or게스트(3)"/></div>
                            </div>
                        <div class="form-group row"><label for="birth"
                                                           class="col-md-3 col-form-label text-md-right">생일</label>
                            <div class="col-md-5"><form:input path="birth" id="birth" class="form-control"
                                                              placeholder="생일을 입력해 주세요" value="${userDetail.birth}"/></div>
                        </div>

                    </form:form>
                </div>
            </div>
            <div style="margin-top:10px;overflow: hidden;" >
                <div style="float: left; padding:10px 10px 10px 0px"> <button type="button" onclick = "location.replace('info_edit_finish') " class="btn btn-style-one" id="btnSignup" >수정하기</button></div>
                &nbsp;&nbsp;&nbsp;&nbsp;
               <div style="float: left; padding:10px;"> <button type="button" onclick = "location.replace('user_manage') "class="btn btn-style-one" id="btnCancel">취소</button></div>



        </div>
        </div>
            </div>
        </div>
    </section>

    <script src="plugins/jquery.js"></script>
    <script>
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
