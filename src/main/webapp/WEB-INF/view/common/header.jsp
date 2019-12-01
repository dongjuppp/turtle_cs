<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019-10-22
  Time: 오후 7:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    /*ul{width:650px;height:30px;background:green;list-style:none;padding-top:15px}*/
    /*ul li{float:left;margin-right:10px}*/
    /*ul li a{font-size:12px;color:yellow;font-weight:bold;text-decoration:none}*/
    body,li,a,strong{
        font-family: '맑은 고딕';!important;
    }
</style>
<header>

<div class="header-top">
<%--    <div class="container clearfix">--%>
<%--        <div class="top-right" style="padding: 10px">--%>
<%--            <c:if test="${user == null }"><a class="btn btn-style-one" href="/login_page" style="float: left">로그인</a></c:if>--%>
<%--            <c:if test="${user == null }"><a class="btn btn-style-one" href="/register_page" style="float: left">회원가입</a></c:if>--%>
<%--            <c:if test="${user != null }"><a class="btn btn-style-one" href="/login_info?id=${user.id}" style="float: left">로그인 정보(테스트용으로 만듬)</a></c:if>--%>
<%--            <c:if test="${user != null }"><a class="btn btn-style-one" href="/logout" style="float: left">로그아웃</a></c:if>--%>
<%--            <c:if test="${user != null }"><a class="btn btn-style-one" href="/update_page" style="float: left">자기 정보 수정하기</a></c:if>--%>
<%--            <c:if test="${user != null && user.type == '1'}"><a class="btn btn-style-one" href="/user_manage" style="float: left">회원관리</a></c:if>--%>
<%--        </div>--%>
    <div class="container">
        <div class="top-right" style="padding:  10px">
            <ul class="list-inline" style="font-size: 0.8em">
                <c:if test="${user == null }">
                <li style="float:left;border-left: none; padding-left: 0;"><a href="/login_page">로그인</a></li>
                </c:if>
                <c:if test="${user == null }">
                    <li style="float:left;display: inline; border-left: 1px solid; padding-left: 0.3em;"><a href="/register_page">회원가입</a></li>
                </c:if>
                <c:if test="${user != null }">
                    <li style="float:left;display: inline; border-left: 1px solid; padding-left: 0.3em;"><a href="/logout">로그아웃</a></li>
                </c:if>
                <c:if test="${user != null }">
                    <li style="float:left;display: inline; border-left: 1px solid; padding-left: 0.3em;"><a href="/update_page">자기 정보 수정하기</a></li>
                </c:if>
                <c:if test="${user != null && user.type == '1'}">
                    <li style="float:left;display: inline; border-left: 1px solid; padding-left: 0.3em;"><a href="/user_manage">회원관리</a></li>
                </c:if>
            </ul>
            </div>
        </div>
<%--        </div>--%>
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
                    <strong style="font-family: '맑은 고딕'">팩스</strong>
                    <br>
                    <span>${hospitalInfo.fax}</span>
                </li>

                <li class="item">
                    <div class="icon-box">
                        <i class="fa fa-phone"></i>
                    </div>
                    <strong style="font-family: '맑은 고딕'">전화 번호</strong>
                   <br>
                    <span>${hospitalInfo.phone}</span>
                </li>
            </ul>
        </div>
    </div>
</section>
<!--Header Upper-->
<%--<!--테스트-->--%>
<%--    <div class="dropdown">--%>
<%--        <c:forEach var="head" items="${headerMenu}" varStatus="status">--%>
<%--            <button class="dropbtn">${head.title}</button>--%>
<%--            <div class="dropdown-content">--%>
<%--                <c:forEach var="drop" items="${head.dropMenus}" varStatus="status2">--%>
<%--                    <c:if test="${user != null && user.type <= drop.level}">--%>
<%--                        <a href="${head.url}${drop.url}">${drop.title}</a>--%>
<%--                    </c:if>--%>
<%--                    <c:if test="${user == null && drop.level=='3'}">--%>
<%--                        <a href="${head.url}${drop.url}">${drop.title}</a>--%>
<%--                    </c:if>--%>
<%--                </c:forEach>--%>

<%--            </div>--%>
<%--                </c:forEach>--%>
<%--            </div>--%>
<!--Main Header-->
<nav class="navbar navbar-default"  style="background-color: #0d95e8;">
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
            <ul class="nav navbar-nav" >

                <c:forEach var="head" items="${headerMenu}" varStatus="status">
                    <li class="dropdown">
                        <a href="${head.url}" style="color: white;font-family: '맑은 고딕'" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                ${head.title}<span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu">
                            <c:forEach var="drop" items="${head.dropMenus}" varStatus="status2">
                                <c:if test="${user != null && user.type <= drop.level}">
                                    <li style="background-color: inherit"><a href="${head.url}${drop.url}">${drop.title}</a> </li>
                                </c:if>
                                <c:if test="${user == null && drop.level=='3'}">
                                    <li style="background-color: inherit"><a href="${head.url}${drop.url}">${drop.title}</a> </li>
                                </c:if>
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

