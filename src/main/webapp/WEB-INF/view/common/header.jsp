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
            <h6>진료시간 : 평일 ${hospitalInfo.openTime}, 토요일 ${hospitalInfo.saturdayTime}, 점심시간 ${hospitalInfo.lunchTime}</h6>
        </div>
        <div class="top-right">
            <c:if test="${user == null }"><a class="btn btn-style-one" href="/login_page" style="float: left">로그인</a></c:if>
            <c:if test="${user != null }"><a class="btn btn-style-one" href="/login_info?id=${user.id}" style="float: left">로그인 정보(테스트용으로 만듬)</a></c:if>
            <c:if test="${user != null }"><a class="btn btn-style-one" href="/logout_page" style="float: left">로그아웃</a></c:if>
            <a>&nbsp;&nbsp;&nbsp;</a>
            <a class="btn btn-style-one" href="/user_manage" style="float: right">회원관리</a>
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
                    <img src="images/main_logo.jpg" alt="" width="250">
                </a>
            </figure>
        </div>
        <div class="right-side">
            <ul class="contact-info">
                <li class="item">
                    <div class="icon-box">
                        <i class="fa fa-fax"></i>
                    </div>
                    <strong>팩스</strong>
                    <br>
                    <span>${hospitalInfo.fax}</span>
                </li>

                <li class="item">
                    <div class="icon-box">
                        <i class="fa fa-phone"></i>
                    </div>
                    <strong>전화 번호</strong>
                   <br>
                    <span>${hospitalInfo.phone}</span>
                </li>
            </ul>
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
<script>
</script>

