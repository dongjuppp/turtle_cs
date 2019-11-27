<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-10-22
  Time: 오후 7:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>김갑수마취통증의학과</title>
</head>
<!--footer-main-->
<footer class="footer-main">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="about-widget">
                        <div class="footer-logo">
                            <figure>
                                <a href="/">
                                    <h3>김갑수마취통증의학과</h3>
                                </a>
                            </figure>
                        </div>

                        <ul class="location-link">
                            <li class="item">
                                <i class="fa fa-map-marker"></i>
                                <p>${hospitalInfo.address} </p>
                            </li>
                            <li class="item">
                                <i class="fa fa-envelope-o" aria-hidden="true"></i>
                                <a href="#">
                                    <p>${hospitalInfo.email}</p>
                                </a>
                            </li>
                            <li class="item">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <p>${hospitalInfo.phone}</p>
                            </li>
                        </ul>

                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <h6>진료정보</h6>
                    <ul class="menu-link">
                        <c:forEach var="serviceList" items="${headerMenu[2].dropMenus}" varStatus="status">
                            <li>
                                <a href="${headerMenu[2].url}${serviceList.url}">
                                    <i class="fa fa-angle-right" aria-hidden="true">${serviceList.title}</i>
                                </a>
                            </li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <h6>공지사항</h6>
                    <ul class="menu-link">
                        <c:forEach var="serviceList" items="${headerMenu[3].dropMenus}" varStatus="status">
                            <li>
                                <a href="${headerMenu[3].url}${serviceList.url}">
                                    <i class="fa fa-angle-right" aria-hidden="true">${serviceList.title}</i>
                                </a>
                            </li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <h6>예약하기</h6>
                    <ul class="menu-link">
                        <c:forEach var="serviceList" items="${headerMenu[4].dropMenus}" varStatus="status">
                            <li>
                                <a href="${headerMenu[4].url}${serviceList.url}">
                                    <i class="fa fa-angle-right" aria-hidden="true">${serviceList.title}</i>
                                </a>
                            </li>
                        </c:forEach>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container clearfix">
            <div class="container clearfix">
                <div class="top-left">
                    <h6>진료시간 : 평일 ${hospitalInfo.openTime}, 토요일 ${hospitalInfo.saturdayTime}, 점심시간 ${hospitalInfo.lunchTime}</h6>
                </div>
            </div>
            <ul class="footer-bottom-link">
                <li>
                    <a href="/">Home</a>
                </li>
                <li>
                    <a href="/medicinfoNeck">About</a>
                </li>
            </ul>
        </div>
    </div>
</footer>
<!--End footer-main-->

</div>
<!--End pagewrapper-->


<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target=".header-top">
    <span class="icon fa fa-angle-up"></span>
</div>
</html>
