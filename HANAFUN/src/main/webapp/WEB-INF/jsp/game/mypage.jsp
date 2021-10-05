<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="utf-8">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>News  HTML-5 Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/pages/search.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/services.css"> 
</head>

<body>

 <jsp:include page="../include/topmenu.jsp"/>
<!-- Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="assets/img/logo/logo.png" alt="">
            </div>
        </div>
    </div>
</div>

<main>

	<section id="about" class="career-p1 about">
      <div class="container" style="max-width: 70%;">
        <div class="row title-bar">
          <div class="col-md-6">
            <h1 class="wow fadeInUp">하나마블</h1>
            <div style="background-color: #21b2a5;"class="heading-border"></div>
            <p style="margin-top:10px; font-weight:800; font-size:20px;"class="wow fadeInUp" data-wow-delay="0.4s"><b>${MemberVO.name}님, 안녕하세요</b></p>
            <p style="font-weight:800; font-size:20px;"class="wow fadeInUp" data-wow-delay="0.4s"><b>하나 FUN과 함께한지 ${day}일째 되는 날</b></p>
            <div class="progress">
			  <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="${day}" aria-valuemin="0" aria-valuemax= "${final_day}" style="width: ${day}%; background-color : #21b2a5;"></div>
			</div>
          </div>
        </div>
      </div>
    </section>

    <div class="page-content d-flex align-items-stretch" style="margin: auto;width: 70%;margin-top: 30px;">

        <div class="content-inner chart-cont">

            <!--***** CONTENT *****--> 
            <div class="card p-4">    
                <div class="row">
                    <hgroup class="mb20">
                        <h1>${MemberVO.name}님의 게임 정보</h1>
                        <!-- <h2 class="lead"><strong class="cl-blue">3</strong> results were found for the search for <strong class="cl-blue">Business</strong></h2> -->                               
                    </hgroup>
		
                    <section class="col-xs-6 col-sm-6 col-md-12">
                        <article class="search-result row">
                            <div class="col-xs-12 col-sm-12 col-md-3">
                                <a href="/fundetail" title="Lorem ipsum" class="thumbnail"><img src="img/search/s-1.jpg" class="img-fluid" alt="Lorem ipsum" /></a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-2">
                                <ul class="meta-search">
                                    <li><i class="fa fa-calendar"></i> <span>02/15/2014</span></li>
                                    <li><i class="fa fa-clock-o"></i> <span>4:28 pm</span></li>
                                    <li><i class="fa fa-tags"></i> <span>People</span></li>
                                </ul>
                            </div> 
                            <div class="col-xs-12 col-sm-12 col-md-7 excerpet">
                                <h3><a href="${pageContext.request.contextPath}/fundetail?savingpk=${saving_vo.saving_pk}">${saving.savingname}</a></h3>
                                <h2><b>${MemberVO.name}님의 게임정보</b></h2> 
                                <h3><b>현재 LV : ${gameinfo_vo.game_lv}</b></h3> 
                                <h3><b>획득한 점수 : ${gameinfo_vo.game_cash}</b></h3> 
                                <h3><b>모은 코인 개수 : ${gameinfo_vo.coin}</b></h3>
                                <h3><b>오늘 남은 횟수 : ${gameinfo_vo.cnt}</b></h3> 
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
	                  </section>
                </div> 
            </div>

        </div>
    </div> 
    
    <section style = "background-color:#fff;"id="business-growth-p1" class="business-growth-p1 bg-gray">
      <div class="container">
        <div class="row wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
          <div class="col-md-3 col-sm-6 service-padding">
              <div class="service-item">
                  <div class="service-item-icon"> <i class="fa fa-paint-brush fa-3x"></i>
                  </div>
                  <div class="service-item-title">
                      <h3>${saving_vo.savingname}</h3>
                  </div>
                  <div class="service-item-desc">
                      <p>Laborum adipisicing do amet commodo occaecat do amet commodo occaecat.</p> 
                      <div class="content-title-underline-light"></div> 
                  </div>
              </div>
          </div>
          <div class="col-md-3 col-sm-6 service-padding">
              <div class="service-item">
                  <div class="service-item-icon"> <i class="fa fa-laptop fa-3x"></i>
                  </div>
                  <div class="service-item-title">
                      <h3>Web Devlopment</h3>
                  </div>
                  <div class="service-item-desc">
                      <p>Laborum adipisicing do amet commodo occaecat do amet commodo occaecat.</p>
                      <div class="content-title-underline-light"></div> 
                  </div>
              </div>
          </div>
          <div class="col-md-3 col-sm-6 service-padding">
              <div class="service-item">
                  <div class="service-item-icon"> <i class="fa fa-table fa-3x"></i>
                  </div>
                  <div class="service-item-title">
                      <h3>Mobile Apps</h3>
                  </div>
                  <div class="service-item-desc">
                      <p>Laborum adipisicing do amet commodo occaecat do amet commodo occaecat.</p>
                      <div class="content-title-underline-light"></div> 
                  </div>
              </div>
          </div>
          <div class="col-md-3 col-sm-6 service-padding">
              <div class="service-item right-bord">
                  <div class="service-item-icon"> <i class="fa fa-search fa-3x"></i>
                  </div>
                  <div class="service-item-title">
                      <h3>SEO Optimization</h3>
                  </div>
                  <div class="service-item-desc">
                      <p>Laborum adipisicing do amet commodo occaecat do amet commodo occaecat.</p>
                      <div class="content-title-underline-light"></div> 
                  </div>
              </div>
          </div> 
        </div>
      </div>  
    </section>  
    
    <section id="about" class="career-p1 about">
      <div class="container" style="max-width: 70%;">
        <div class="row title-bar">
          <div class="col-md-12">
            <h1 class="wow fadeInUp">룰렛</h1>
            <div class="heading-border"></div>
            <p class="wow fadeInUp" data-wow-delay="0.4s"><b>게임을 진행하면서 얻은 코인으로 돌릴 수 있는 금리가 증가하는 행운의 룰렛~!</b></p>
          </div>
        </div>
      </div>
    </section>

</main>

 <jsp:include page="../include/bottom.jsp"/>
    
</body>
    
</html>