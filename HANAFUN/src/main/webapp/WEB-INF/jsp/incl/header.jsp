<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>하나 FUN</title>

    <!-- Favicon  -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/master/img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/master/style.css">

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="medilife-load"></div>
    </div>

    <!-- ***** Header Area Start ***** -->
    <header class="header-area">
        <!-- Top Header Area -->
        <!-- <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="h-100 d-md-flex justify-content-between align-items-center">
                            <p>Welcome to <span>Medifile</span> template</p>
                            <p>Opening Hours : Monday to Saturday - 8am to 10pm Contact : <span>+12-823-611-8721</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- Main Header Area -->
        <div class="main-header-area" id="stickyHeader" style= "background-color: #fff;">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12 h-100">
                        <div class="main-menu h-100">
                            <nav class="navbar h-100 navbar-expand-lg">
                                <!-- Logo Area  -->
                                <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/master/img/core-img/logo.png" alt="Logo"></a>

                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#medilifeMenu" aria-controls="medilifeMenu" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                                <div class="collapse navbar-collapse" id="medilifeMenu">
                                    <!-- Menu Area -->
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item active">
                                            <a style="background-color: #fff; color:black;" class="nav-link" href="${pageContext.request.contextPath}/">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item active">
                                            <a style="background-color: #fff; color:black;" class="nav-link" href="${pageContext.request.contextPath}/live">소셜커머스</a>
                                        </li>
                                        <li class="nav-item">
                                            <a style="background-color: #fff; color:black;" class="nav-link" href="${pageContext.request.contextPath}/savingcreate">하나FUN</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a style="background-color: #fff; color:black;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커스텀</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/fundetail">목표설정</a>
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/profile">목표현황</a>
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/myobject">저축설정</a>
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/saveset">저축커스텀</a>
                                            </div>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a style="background-color: #fff; color:black;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">하나마블</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/gameinfo">게임소개</a>
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/game">게임하러가기</a>
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/gameresult">결과</a>
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/gamecoin">룰렛</a>
                                            </div>
                                        </li>
                                        <!-- <li class="nav-item">
                                            <a style="background-color: #fff; color:black;" class="nav-link" href="services.html">Services</a>
                                        </li>
                                        <li class="nav-item">
                                            <a style="background-color: #fff; color:black;" class="nav-link" href="blog.html">News</a>
                                        </li>
                                        <li class="nav-item">
                                            <a style="background-color: #fff; color:black;" class="nav-link" href="contact.html">Contact</a>
                                        </li> -->
                                        <li class="nav-item">
	                                        <c:if test="${empty MemberVO }">
	                                            <a style="background-color: #fff; color:black;" class="nav-link" href="${pageContext.request.contextPath }/login">로그인</a>
	                                       	</c:if>
	                                       	<c:if test="${not empty MemberVO }">
	                                            <a style="background-color: #fff; color:black;" class="nav-link" href="${pageContext.request.contextPath }/logout">로그아웃</a>
	                                       	</c:if>
                                        </li>
                                    </ul>
                                    <!-- Appointment Button -->
                                    <c:if test="${not empty MemberVO }">
	                                	<a style="background-color: #fff; color:black;" class="nav-link" href="contact.html">${MemberVO.name}님 환영합니다</a>
	                                </c:if>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>