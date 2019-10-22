<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-10-22
  Time: 오후 7:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
<div class="header-top">
    <div class="container clearfix">
        <div class="top-left">
            <h6>Opening Hours : Saturday to Tuesday - 8am to 10pm</h6>
        </div>
        <div class="top-right">
            <ul class="social-links">
                <li>
                    <a href="#">
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-google-plus" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pinterest-p" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--header top-->

<!--Header Upper-->
<section class="header-uper">
    <div class="container clearfix">
        <div class="logo">
            <figure>
                <a href="/">
                    <img src="images/logo.png" alt="" width="130">
                </a>
            </figure>
        </div>
        <div class="right-side">
            <ul class="contact-info">
                <li class="item">
                    <div class="icon-box">
                        <i class="fa fa-envelope-o"></i>
                    </div>
                    <strong>Email</strong>
                    <br>
                    <a href="#">
                        <span>info@medic.com</span>
                    </a>
                </li>
                <li class="item">
                    <div class="icon-box">
                        <i class="fa fa-phone"></i>
                    </div>
                    <strong>Call Now</strong>
                    <br>
                    <span>+ (88017) - 123 - 4567</span>
                </li>
            </ul>
            <div class="link-btn">
                <a href="#" class="btn-style-one">Appoinment</a>
            </div>
        </div>
    </div>
</section>
<!--Header Upper-->


<!--Main Header-->
<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <c:forEach var="head" items="${headerMenu}" varStatus="status">
                    <li class="dropdown">
                        <a href="${head.url}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                ${head.title}<span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu">
                            <c:forEach var="drop" items="${head.dropMenus}" varStatus="status2">
                                <li><a href="${head.url}?num=${drop.getNumber}">${drop.title}</a> </li>
                            </c:forEach>
                        </ul>
                    </li>

                </c:forEach>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
</header>

