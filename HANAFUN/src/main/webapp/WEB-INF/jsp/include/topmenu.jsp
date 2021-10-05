<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/ticker-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/nice-select.css">
    <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css"> --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
    
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl-carousel/owl.theme.default.min.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css"> 
     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style2.css">
    
    <!-- Core Stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/testimonials.css">
    
    
     <!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slider-pro/1.5.0/css/slider-pro.min.css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slider-pro/1.5.0/js/jquery.sliderPro.min.js"></script> 
	
   </head>

  <body id="page-top">

<!--====================================================
                         HEADER
======================================================--> 
	
     <header>

      <!-- Top Navbar  -->
      
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light" id="mainNav" data-toggle="affix">
        <div class="container">
          <a class="navbar-brand smooth-scroll" href="${pageContext.request.contextPath }/">
            <img src="${pageContext.request.contextPath }/resources/img/logo.png" alt="logo">
          </a> 
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> 
                <span class="navbar-toggler-icon"></span>
          </button>  
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item" ><a class="nav-link smooth-scroll" href="${pageContext.request.contextPath }/">Home</a></li>
                <!--<li class="nav-item dropdown" >
                  <a class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About</a> 
                  <div class="dropdown-menu dropdown-cust" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="about.html">About Us</a>
                    <a class="dropdown-item" href="careers.html">Career Oprtunity</a>
                    <a class="dropdown-item" href="team.html">Meet Our Team</a>
                    <a class="dropdown-item" href="faq.html">FAQ</a>
                    <a class="dropdown-item" href="testimonials.html">Testimonials</a>
                  </div>
                </li>-->
                <!--<li class="nav-item" ><a class="nav-link smooth-scroll" href="services.html">Services</a></li> -->
                <li class="nav-item dropdown" >
                
                  <a class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">하나FUN</a> 
                  <div class="dropdown-menu dropdown-cust" aria-labelledby="navbarDropdownMenuLink"> 
                    <%-- <a class="dropdown-item"  target="_empty" href="${pageContext.request.contextPath }/assets">자산</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/chart.html">소비</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/email.html">목표</a> --%> 
                    <!-- <a class="dropdown-item"  target="_empty" href="admin/faq.html">FAQ</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/profile.html">Profile</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/tables.html">Tables</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/invoice.html">Invoice</a> --> 
                  </div>
                </li>
                <li class="nav-item dropdown" >
                  <a class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">LIVE 소통공간</a> 
                  <div class="dropdown-menu dropdown-cust" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="news-list.html">News list layouts</a>
                    <a class="dropdown-item" href="news-grid.html">News grid layouts</a>
                    <a class="dropdown-item" href="news-details.html">News Details</a> 
                    <a class="dropdown-item" href="project.html">Project</a>
                    <a class="dropdown-item" href="contact.html">Contact Us</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath }/boocraw">부동산크롤링</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath }/chaecraw">채권크롤링</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath }/zoocraw">주식크롤링</a>
                  </div>
                </li>
                <li class="nav-item dropdown" >
                
                  <a class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">자산관리게임</a> 
                  <div class="dropdown-menu dropdown-cust mega-menu" aria-labelledby="navbarDropdownMenuLink">
                    <div class="row">
                      <div class="col-md-5">
                      	<a class="dropdown-item" href="${pageContext.request.contextPath }/gameinfo">상품소개</a>
                      	<a class="dropdown-item" href="${pageContext.request.contextPath }/gamejoin">상품가입</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/gamerule">게임규칙보기</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/gamerank">게임순위보기</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/game">게임하러가기</a>
                      </div>
                      <div class="col-md-7 mega-menu-img m-auto text-center pl-0">
                        <a href="#"><img src="${pageContext.request.contextPath }/resouces/img/offer_icon.png" alt="" class="img-fluid"></a>
                      </div>
                    </div>
                  </div>
                </li>
                
                <li class="nav-item dropdown" >
                
                  <a class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">나만의커스텀</a> 
                  <div class="dropdown-menu dropdown-cust mega-menu" aria-labelledby="navbarDropdownMenuLink">
                    <div class="row">
                      <div class="col-md-5">
                      <a class="dropdown-item" href="${pageContext.request.contextPath }/custominfo">나만의커스텀</a>
                      	<a class="dropdown-item" href="${pageContext.request.contextPath }/customjoin">상품가입</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/gamerule">게임규칙보기</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/gamerank">게임순위보기</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/game">게임하러가기</a>
                      </div>
                      <div class="col-md-7 mega-menu-img m-auto text-center pl-0">
                        <a href="#"><img src="${pageContext.request.contextPath }/resouces/img/offer_icon.png" alt="" class="img-fluid"></a>
                      </div>
                    </div>
                  </div>
                </li>
                <!--li class="nav-item" ><a class="nav-link smooth-scroll" href="index.html">Home</a></li>-->
                <c:if test="${empty MemberVO }">
					<li class="nav-item"><a href="${pageContext.request.contextPath }/login" class="nav-link smooth-scroll">로그인</a></li>
				</c:if>
				<c:if test="${not empty MemberVO }">
					<li class="nav-item"><a href="${pageContext.request.contextPath }/logout" class="nav-link smooth-scroll">로그아웃</a></li>
				</c:if>
                <li>
                  <div class="top-menubar-nav">
                    <div class="topmenu ">
                      <div class="container">
                        <div class="row">
                          <div class="col-md-9">
                            <ul class="list-inline top-contacts">
                              <li>
                                <i class="fa fa-envelope"></i> Email: <a href="mailto:info@htmlstream.com">info@htmlstream.com</a>
                              </li>
                              <li>
                                <i class="fa fa-phone"></i> Hotline: (1) 396 4587 99
                              </li>
                            </ul>
                          </div> 
                          <div class="col-md-3">
                            <ul class="list-inline top-data">
                              <li><a href="#" target="_empty"><i class="fa top-social fa-facebook"></i></a></li>
                              <li><a href="#" target="_empty"><i class="fa top-social fa-twitter"></i></a></li>
                              <li><a href="#" target="_empty"><i class="fa top-social fa-google-plus"></i></a></li> 
                              <li><a href="#" class="log-top" data-toggle="modal" data-target="#login-modal">Login</a></li>  
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div> 
                  </div>
                </li>
            </ul>  
          </div>
        </div>
      </nav>
    </header> 