<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>하나FUN</title>
    <!-- <link rel="shortcut icon" href="img/favicon.ico"> -->

    <!-- Global Stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

    <!-- Core Stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/pricing.css"> 
    
    <!-- Core Stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/testimonials.css"> 
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/services.css"> 
    
  </head>
  
 

  <body id="page-top">

<!--====================================================
                         HEADER
======================================================--> 

    <jsp:include page="../include/topmenu.jsp"/>
    
<!--====================================================
                    TESTIMONIALS-P1
======================================================-->
    <div class="container">
        <div class="row title-bar">
          <div class="col-md-12">
            <h1 class="wow fadeInUp">게임결과</h1>
            <div class="heading-border" style=" background-color: #21b2a5;"></div>
            <p class="wow fadeInUp" data-wow-delay="0.4s">게임은 재미있었나요?</p>
            <c:choose>
            	<c:when test = "${prev_gamescore < gameinfo_vo.game_cash }">
		            <p class="wow fadeInUp" data-wow-delay="0.4s">이전 게임의 점수가 더 높아요! </p>
		         </c:when>
		         <c:when test = "${prev_gamescore <= gameinfo_vo.game_cash }">
		            <p class="wow fadeInUp" data-wow-delay="0.4s">점수가 향상되었어요!</p>
		         </c:when>
		  </c:choose>
		  	<p class="wow fadeInUp" data-wow-delay="0.4s">코인 ${coin}개를 획득했어요.</p>
          </div>
        </div>
      </div>
      
<!--====================================================
                    TESTIMONIALS-P1
======================================================-->
	<section id="rank">  
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color: #21b2a5;background: #fff;"></i>
                        </div>
                        <div class="price-Value">
                            이전 총자산
                        </div>
                        <div class="pricingHeader">
                            <h3 class="title" style = "background: #21b2a5;"><fmt:formatNumber value="${prev_gamescore}" pattern="#,###"/>원</h3>
                        </div>
<!--                          <div class="pricing-content">
                            <ul>
                                <li>개인 또는 개인 사업자 </li>
                                <li>계약기간 : 1년 (재예치가능)</li>
                                <li>월 1만원 이상 100만원 이하</li>
                                <li>기본금리 <strong style = "color: red;">연 1.10%(세전)</strong></li>
                                <li>특별금리 <strong style = "color: red;">연 1.10%(세전)</strong></li>
                            </ul>
                        </div> -->
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable active" style="border: 1px solid #fff;">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color:  #21b2a5;"></i>
                        </div>
                        <div class="price-Value">
                            현재 총자산
                        </div>
                        
                        <div class="pricingHeader">
                            <h3 style = "background: #21b2a5;" class="title"><fmt:formatNumber value="${gameinfo_vo.game_cash}" pattern="#,###"/>원</h3>
                        </div>
	
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color: #21b2a5;background: #fff;"></i>
                        </div>
                        <div class="price-Value">
                            평균
                        </div>
                        <div class="pricingHeader">
                            <h3 class="title" style = "background: #21b2a5;">상위<fmt:formatNumber value="${score_rate}" pattern="0.00"/>%</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>    
<!--====================================================
                      BUSINESS-GROWTH-P1
======================================================-->
   <%--  <section id="business-growth-p1" class="business-growth-p1 bg-gray" style="background: #fff;">
      <div class="container">
        <div class="row title-bar">
          <div class="col-md-12">
            <h1 class="wow fadeInUp">자산관리 서비스를 이용해보세요</h1>
            <div class="heading-border" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;"></div>
            <p class="wow fadeInUp" data-wow-delay="0.4s">목표를 설정하고 도전, 또래와의 분석, 상품 추천등의 서비스를 이용해볼 수 있어요</p>
          </div>
        </div>
        <div class="row wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
          <div class="col-md-3 col-sm-6 service-padding">
              <div class="service-item">
                  <div class="service-item-icon"> <i class="fa fa-paint-brush fa-3x"></i>
                  </div>
                  <div class="service-item-title">
                      <h3><a href="${pageContext.request.contextPath }/assets">자산연계</a></h3>
                  </div>
                  <div class="service-item-desc">
                      <p>사용자의 자산정보를 <br>연결해보세요.</p>
                      <div class="content-title-underline-light"></div> 
                  </div>
              </div>
          </div>
          <div class="col-md-3 col-sm-6 service-padding">
              <div class="service-item">
                  <div class="service-item-icon"> <i class="fa fa-laptop fa-3x"></i>
                  </div>
                  <div class="service-item-title">
                      <h3><a href="${pageContext.request.contextPath }/assets">또래와의 분석</a></h3>
                  </div>
                  <div class="service-item-desc">
                      <p>사용자의 자산정보와 <br>또래와의 자산을 <br>분석&비교해줍니다.</p>
                      <div class="content-title-underline-light"></div> 
                  </div>
              </div>
          </div>
          <div class="col-md-3 col-sm-6 service-padding">
              <div class="service-item">
                  <div class="service-item-icon"> <i class="fa fa-table fa-3x"></i>
                  </div>
                  <div class="service-item-title">
                      <h3><a href="${pageContext.request.contextPath }/assets">상품추천</a></h3>
                  </div>
                  <div class="service-item-desc">
                      <p>사용자에 맞게 <br>상품을 추천해드려요</p>
                      <div class="content-title-underline-light"></div> 
                  </div>
              </div>
          </div>
          <div class="col-md-3 col-sm-6 service-padding">
              <div class="service-item right-bord">
                  <div class="service-item-icon"> <i class="fa fa-search fa-3x"></i>
                  </div>
                  <div class="service-item-title">
                      <h3><a href="${pageContext.request.contextPath }/assets">목표설정</a></h3>
                  </div>
                  <div class="service-item-desc">
                      <p>자금 모으기를 설정하거나<br>소비를 줄일 수 있어요</p>
                      <div class="content-title-underline-light"></div> 
                  </div>
              </div>
          </div> 
        </div>
      </div>  
    </section>  --%>    
    
<!--====================================================
                         REWARD
======================================================-->     
    <div class="container">
        <div class="row title-bar">
          <div class="col-md-12">
            <h1 class="wow fadeInUp">이번주 랭킹 리워드</h1>
            <div class="heading-border" style=" background-color: #21b2a5;"></div>
            <p class="wow fadeInUp" data-wow-delay="0.4s">게임으로 적금도 쑥쑥! 랭킹에 들어 하나머니도 받아봐요~!</p>
          </div>
        </div>
      </div>
    
<!--====================================================
                      PRICING TABLES
======================================================-->
    <section id="price">  
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color: #21b2a5;background: #fff;"></i>
                        </div>
                        <div class="price-Value">
                            2등
                        </div>
                        <div class="pricingHeader">
                            <h3 class="title" style = "background: #21b2a5;">하나머니<br> 5,000P</h3>
                        </div>
                        
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable active" style="border: 1px solid #fff;">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color:  #21b2a5;"></i>
                        </div>
                        <div class="price-Value">
                            1등
                        </div>
                        <div class="pricingHeader">
                            <h3 style = "background: #21b2a5;" class="title">하나머니 <br>10,000P</h3>
                        </div>
                        
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color: #21b2a5;background: #fff;"></i>
                        </div>
                        <div class="price-Value">
                            3등
                        </div>
                        <div class="pricingHeader">
                            <h3 class="title" style = "background: #21b2a5;">하나머니<br> 1,000P</h3>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    
<!--====================================================
                         REWARD
======================================================-->     
    <div class="container">
        <div class="row title-bar" >
          <div class="col-md-12">
            <h1 class="wow fadeInUp">이번주 게임순위</h1>
            <div class="heading-border" style=" background-color: #21b2a5;"></div>
            <p class="wow fadeInUp" data-wow-delay="0.4s">자산관리 체험형 게임을 통해 자산관리를 시작해보고, 리워드도 받아가세요!</p>
          </div>
        </div>
      </div>
    
<!--====================================================
                      GAME RANK
======================================================-->
   <section id="rank">  
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color: #21b2a5;background: #fff;"></i>
                        </div>
                        <div class="price-Value">
                            2등
                        </div>
                        <div class="pricingHeader">
                            <h3 class="title" style = "background: #21b2a5;">${rankList[1].p_member_id} 님</h3>
                        </div>
                        <div class="pricing-content">
                            <ul>
                                <li>개인 또는 개인 사업자 </li>
                                <li>계약기간 : 1년 (재예치가능)</li>
                                <li>월 1만원 이상 100만원 이하</li>
                                <li>기본금리 <strong style = "color: red;">연 1.10%(세전)</strong></li>
                                <li>특별금리 <strong style = "color: red;">연 1.10%(세전)</strong></li>
                            </ul>
                        </div>
                        <h3 style = "background: #21b2a5;" class="title"><fmt:formatNumber value="${rankList[1].p_member_score}" pattern="#,###"/>점</h3>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable active" style="border: 1px solid #fff;">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color:  #21b2a5;"></i>
                        </div>
                        <div class="price-Value">
                            1등
                        </div>
                        <div class="pricingHeader">
                            <h3 style = "background: #21b2a5;" class="title"><b>${rankList[0].p_member_id} 님</b></h3>
                        </div>
                        <div class="pricing-content">
                            <ul>
                                <li>개인 또는 개인 사업자 </li>
                                <li>계약기간 : 1년 (재예치가능)</li>
                                <li>월 1만원 이상 100만원 이하</li>
                                <li>기본금리 <strong style = "color: red;">연 1.10%(세전)</strong></li>
                                <li>특별금리 <strong style = "color: red;">연 1.30%(세전)</strong></li>
                            </ul>
                        </div>

                        <h3 style = "background: #21b2a5;" class="title"><fmt:formatNumber value="${rankList[0].p_member_score}" pattern="#,###"/>점</h3>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                         <div class="pricing-icon" style="color:#fff; border: 1px solid#21b2a5; background: #21b2a5;">
                            <i class="fa fa-rocket" style="color: #21b2a5;background: #fff;"></i>
                        </div>
                        <div class="price-Value">
                            3등
                        </div>
                        <div class="pricingHeader">
                            <h3 class="title" style = "background: #21b2a5;">${rankList[2].p_member_id} 님</h3>
                        </div>
                        <div class="pricing-content">
                            <ul>
                                <li>개인 또는 개인 사업자 </li>
                                <li>계약기간 : 1년 (재예치가능)</li>
                                <li>월 1만원 이상 100만원 이하</li>
                                <li>기본금리 <strong style = "color: red;">연 1.10%(세전)</strong></li>
                                <li>특별금리 <strong style = "color: red;">연 1.00%(세전)</strong></li>
                            </ul>
                        </div>
                        <h3 style = "background: #21b2a5;" class="title"><fmt:formatNumber value="${rankList[2].p_member_score}" pattern="#,###"/>점</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
<!--====================================================
                      FOOTER
======================================================--> 
    <jsp:include page="../include/bottom.jsp"/>

    <!--Global JavaScript -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/owl-carousel/owl.carousel.min.js"></script> --%>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-easing/jquery.easing.min.js"></script> 
    <script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>
    
    
    
    
  </body>

</html>
    