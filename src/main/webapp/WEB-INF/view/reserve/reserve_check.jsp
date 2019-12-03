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
    <%@include file="../common/header.jsp"%>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title text-center" style="background-image:url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>예약확인</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="/">홈으로 &nbsp;/</a>
                    </li>
                    <li>예약확인</li>
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
                                <div class="table">
                                    <table class="table table-hover" id="test">
                                        <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>진료과목</th>
                                            <th>담당 의사</th>
                                            <th>날짜</th>
                                            <th>시간</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="data" items="${datas}" varStatus="num">
                                            <tr id="tr${num.index}">
                                                <td><input id="idid${num.index}"type="text" value="${data.userID}" readonly></td>
                                                <td>${data.subject}</td>
                                                <td>${data.doctor}</td>
                                                <td>${data.dataStr}</td>
                                                <td>${data.time}</td>
                                                <div id="test1">

                                                    <c:if test="${data.status eq 'accept'}">
                                                        <td id="status${num.index}">승인됨</td>
                                                    </c:if>
                                                    <c:if test="${data.status eq 'reject'}">
                                                        <td id="status${num.index}">거절됨</td>
                                                    </c:if>
                                                    <c:if test="${data.status eq 'waiting'}">
                                                        <td id="accept${num.index}"><input type="button" onclick="updateStatus(${num.index},'accept')" value="승인"></td>
                                                        <td id="status${num.index}"><input type="button" onclick="updateStatus(${num.index},'reject')" value="거절"></td>
                                                    </c:if>

                                                </div>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </c:when>
                            <c:when test="${who=='고객'}">
                                <form name="contact_form" class="default-form contact-form" action="/reserveData" method="post">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <p class="reserve_data">${data.subject}</p>
                                            </div>
                                            <div class="form-group">
                                                <p class="reserve_data">${data.time}</p>
                                            </div>

                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <p class="reserve_data">${data.dataStr}</p>
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

                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <!--<textarea name="message" placeholder="Your Message" required=""></textarea>-->
                                                <c:if test="${data.status == 'waiting'}"><p class="reserve_data">현재 관리자가 예약 승인 여부를 정하는 중입니다.</p></c:if>
                                                <c:if test="${data.status == 'accept'}"><p class="reserve_data">예약이 승인되었습니다.</p></c:if>
                                                <c:if test="${data.status == 'reject'}"><p class="reserve_data">예약이 거부되었습니다. 문의 사항이 있으시면 02-536-1777로 연락주시기 바랍니다.</p></c:if>
                                            </div>

                                        </div>
                                    </div>
                                </form>
                            </c:when>
                            <c:when test="${who=='방문자'}">
                                <form>
                                    <p>로그인해야 가능합니다</p>
                                </form>
                            </c:when>
                        </c:choose>

                    </div>
                    <c:choose>
                        <c:when test="${who=='관리자'}">
                            <div align="right">
                                <a href="/excelReserve">
                                    <button  class="btn-style-two">엑셀다운
                                    </button>
                                </a>
                            </div>
                        </c:when>
                    </c:choose>
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
    <script>
        function updateStatus(index, status){
            var idid  = $("#idid"+index).val();
            $.ajax({
                type: "post",
                url: "<%request.getContextPath();%>/accept",
                data : { "idid" : idid , "status" : status},
                success : function() {
                    alert("처리되었습니다");
                    location.reload();
                }
            });
        }

    </script>
</body>

</html>