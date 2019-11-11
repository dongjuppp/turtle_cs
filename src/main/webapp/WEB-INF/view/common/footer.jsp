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
    <title>Title</title>
</head>
<!--footer-main-->
<footer class="footer-main">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="about-widget">
                        <div class="footer-logo">
                            <figure>
                                <a href="/">
                                    <img src="images/main_logo.jpg" alt="">
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
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <h6>진료정보</h6>
                    <ul class="menu-link">
                        <c:forEach var="serviceList" items="${headerMenu[2].dropMenus}" varStatus="status">
                            <li>
                                <a href="${headerMenu[2].url}/${serviceList.url}">
                                    <i class="fa fa-angle-right" aria-hidden="true">${serviceList.title}</i>
                                </a>
                            </li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="social-links">
                        <h6>Recent Posts</h6>
                        <ul>
                            <li class="item">
                                <div class="media">
                                    <div class="media-left">
                                        <a href="#">
                                            <img class="media-object" src="images/blog/post-thumb-small.jpg" alt="post-thumb">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading"><a href="#">Post Title</a></h4>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam, dolorem.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="media">
                                    <div class="media-left">
                                        <a href="#">
                                            <img class="media-object" src="images/blog/post-thumb-small.jpg" alt="post-thumb">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">Post Title</a>
                                        </h4>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam, dolorem.</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container clearfix">
            <div class="copyright-text">
                <p>&copy; Copyright 2019. 김갑수신경통증클리닉 all rights reserved.
                    <a href="/">Medic</a>
                </p>
            </div>
            <ul class="footer-bottom-link">
                <li>
                    <a href="/">Home</a>
                </li>
                <li>
                    <a href="introduce?num=1">About</a>
                </li>
                <li>
                    <a href="contact.html">Contact</a>
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
