<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="utf-8">

	<jsp:include page="../incl/header.jsp"/>

    <!-- ***** Header Area End ***** -->

	<!-- ***** Breadcumb Area Start ***** -->
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">게임은 재미있었나요?</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="medilife-benefits-area section-padding-100-50" style="padding-bottom:10px; padding-top:40px;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h2>게임결과</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ***** Breadcumb Area End ***** -->
    <!-- ***** Cool Facts Area Start ***** -->
    <section class="medilife-cool-facts-area section-padding-100-0" style="padding-top:10px; padding-top:0px;">
        <div class="container">
            <div class="row">
                <!-- Single Cool Fact-->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact-area text-center mb-100">
                        <i class="icon-blood-transfusion-2"></i>
                        <h3><span class="counter"><fmt:formatNumber value="${prev_gamescore}" pattern="#,###"/></span>원</h3>
                        <h6>이전 게임자산</h6>
                    </div>
                </div>
                <!-- Single Cool Fact-->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact-area text-center mb-100">
                        <i class="icon-atoms"></i>
                        <h3><span class="counter"><fmt:formatNumber value="${gameinfo_vo.game_cash}" pattern="#,###"/></span>원</h3>
                        <h6>이번게임 결과 자산</h6>
                    </div>
                </div>
                <!-- Single Cool Fact-->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact-area text-center mb-100">
                        <i class="icon-microscope"></i>
                        <h3><span class="counter">2</span>개</h3>
                        <h6>획득한 코인</h6>
                    </div>
                </div>
                <!-- Single Cool Fact-->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact-area text-center mb-100">
                        <i class="icon-doctor-1"></i>
                        <h3><span class="counter"><fmt:formatNumber value="81" pattern="0.00"/></span>%</h3>
                        <h6>상위</h6>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="medilife-benefits-area section-padding-100-50" style="padding-bottom:10px; padding-top:0px;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h2>이주의 랭킹</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="medilife-services-area section-padding-100-20" style="padding-top:10px;">
        <div class="container">
            <div class="row">
                <!-- Single Service Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-service-area d-flex">
                        <div class="service-icon">
                            <i class="icon-doctor"></i>
                        </div>
                        <div class="service-content">
                            <h3><b>1등</b></h3>
                            <h4><b>유하나님</b></h4>
                            <h4><b><fmt:formatNumber value="254200000" pattern="#,###"/></b></h4>
                        </div>
                    </div>
                </div>
                <!-- Single Service Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-service-area d-flex">
                        <div class="service-icon">
                            <i class="icon-doctor"></i>
                        </div>
                        <div class="service-content">
                            <h3><b>2등</b></h3>
                            <h4><b>금하나님</b></h4>
                            <h4><b><fmt:formatNumber value="214000000" pattern="#,###"/></b></h4>
                        </div>
                    </div>
                </div>
                <!-- Single Service Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-service-area d-flex">
                        <div class="service-icon">
                            <i class="icon-doctor"></i>
                        </div>
                        <div class="service-content">
                            <h3><b>3등</b></h3>
                            <h4><b>나하나님</b></h4>
                            <h4><b><fmt:formatNumber value="205003400" pattern="#,###"/></b></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="medilife-benefits-area section-padding-100-50" style="padding-bottom:10px; padding-top:0px;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h2>이주의 리워드</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="medilife-services-area section-padding-100-20" style="padding-top:10px;">
        <div class="container">
            <div class="row">
                <!-- Single Service Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-contact d-flex align-items-center">
                        <div class="contact-icon mr-30">
                            <i class="icon-doctor"></i>
                        </div>
                        <div class="contact-meta">
                            <h4><b>1등</b></h4>
                            <h5><b>10,000 하나머니 & 10코인</b></h5>
                        </div>
                    </div>
                </div>
                <!-- Single Service Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-contact d-flex align-items-center">
                        <div class="contact-icon mr-30">
                            <i class="icon-doctor"></i>
                        </div>
                        <div class="contact-meta">
                            <h4><b>2등</b></h4>
                            <h5><b>5,000 하나머니 & 5코인</b></h5>
                        </div>
                    </div>
                </div>
                <!-- Single Service Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-contact d-flex align-items-center">
                        <div class="contact-icon mr-30">
                            <i class="icon-doctor"></i>
                        </div>
                        <div class="contact-meta">
                            <h4><b>3등</b></h4>
                            <h5><b>3,000 하나머니 & 3코인</b></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** CTA Area Start ***** -->
    <!-- ***** CTA Area End ***** -->

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="../incl/footer.jsp"/>

</body>

</html>