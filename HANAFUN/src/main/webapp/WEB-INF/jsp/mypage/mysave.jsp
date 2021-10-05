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
	
	<div class="page-content d-flex align-items-stretch" style="margin: auto;width: 70%;margin-top: 30px;">

        <div class="content-inner chart-cont">

            <!--***** CONTENT *****--> 
            <div class="card p-4">    
                <div class="row">
                    <hgroup class="mb20">
                        <h1>${MemberVO.name}님의 마이페이지</h1>
                        <!-- <h2 class="lead"><strong class="cl-blue">3</strong> results were found for the search for <strong class="cl-blue">Business</strong></h2> -->                               
                    </hgroup>
		
                    <section class="col-xs-12 col-sm-6 col-md-12">
                        <article class="search-result row">
                            <div class="col-xs-12 col-sm-12 col-md-3">
                                <a href="#" title="Lorem ipsum" class="thumbnail"><img src="img/search/s-1.jpg" class="img-fluid" alt="Lorem ipsum" /></a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-2">
                                <ul class="meta-search">
                                    <li><i class="fa fa-calendar"></i> <span>02/15/2014</span></li>
                                    <li><i class="fa fa-clock-o"></i> <span>4:28 pm</span></li>
                                    <li><i class="fa fa-tags"></i> <span>People</span></li>
                                </ul>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-7 excerpet">
                                <h3><a href="" title="">${account.fun_account_name}</a></h3>
	                                <div class="switch-wrap d-flex justify-content-between">
									<p>설정 ON/OFF</p>
									<div class="confirm-switch">
										<c:if test="${saving_detail.first_status == 0 }">
												<input type="checkbox" id="first_status">
												<label for="first_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.first_status == 1 }">
											<input type="checkbox" id="second_status" checked>
											<label for="second_status"></label>
										</c:if>
									</div>
									</div>
								<c:if test="${saving_detail.first_status == 1 }">
	                                <div class="switch-wrap d-flex justify-content-between">
									<p>설정 ON/OFF</p>
									<div class="confirm-switch">
										<input type="checkbox"  checked>
										<label for="confirm-switch"></label>
									</div>
									</div>
								</c:if>
								
                                <h4>매주저축</h4> 
                                <h4>저축 기간 : ${weekVO.target_week_date}주</h4>
                                <h4>주마다 증가할 금액 : ${weekVO.target_week_balance}원</h4>
                                <h4>이 정도 증가하면 멈출게요!! : ${weekVO.target_week_stop}원</h4>
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
                        
                        <article class="search-result row">
                            <div class="col-xs-12 col-sm-12 col-md-3">
                                <a href="#" title="Lorem ipsum" class="thumbnail"><img src="img/search/s-1.jpg" class="img-fluid" alt="Lorem ipsum" /></a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-2">
                                <ul class="meta-search">
                                    <li><i class="fa fa-calendar"></i> <span>02/15/2014</span></li>
                                    <li><i class="fa fa-clock-o"></i> <span>4:28 pm</span></li>
                                    <li><i class="fa fa-tags"></i> <span>People</span></li>
                                </ul>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-7 excerpet">
	                                <div class="switch-wrap d-flex justify-content-between">
									<p>설정 ON/OFF</p>
									<div class="confirm-switch">
										<c:if test="${saving_detail.second_status == 0 }">
												<input type="checkbox" id="second_status">
												<label for="second_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.second_status == 1 }">
											<input type="checkbox" id="second_status" checked>
											<label for="second_status"></label>
										</c:if>
									</div>
									</div>
                            	<h4>슬금슬금 저축</h4> 
                                <h3><a href="" title="">${account.fun_account_name}</a></h3>
                                 
                                <c:if test="${slowVO.target_slow_date == 1}">
									<h4>저축 주기 : 매일</h4>
								</c:if>
								
								<c:if test="${slowVO.target_slow_date == 7}">
									<h4>저축 주기 : 매주</h4>	
								</c:if>
								<c:if test="${slowVO.target_slow_date == 30}">
									<h4>저축 주기 : 매월</h4>
								</c:if>
								
                                <h4>저축 금액 : ${slowVO.target_slow_balance}원</h4>
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
                        
                        <article class="search-result row">
                            <div class="col-xs-12 col-sm-12 col-md-3">
                                <a href="#" title="Lorem ipsum" class="thumbnail"><img src="img/search/s-1.jpg" class="img-fluid" alt="Lorem ipsum" /></a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-2">
                                <ul class="meta-search">
                                    <li><i class="fa fa-calendar"></i> <span>02/15/2014</span></li>
                                    <li><i class="fa fa-clock-o"></i> <span>4:28 pm</span></li>
                                    <li><i class="fa fa-tags"></i> <span>People</span></li>
                                </ul>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-7 excerpet">
	                                <div class="switch-wrap d-flex justify-content-between">
									<p>설정 ON/OFF</p>
									<div class="confirm-switch">
										<c:if test="${saving_detail.third_status == 0 }">
												<input type="checkbox" id="third_status">
												<label for="third_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.third_status == 1 }">
											<input type="checkbox" id="third_status" checked>
											<label for="third_status"></label>
										</c:if>
									</div>
									</div>
                                <h3><a href="" title="">${account.fun_account_name}</a></h3>
                                <h4>월급날 저축</h4>
                                <h4>월급 : ${payVO.target_pay_balance}원</h4>
                                <h4>비율 : ${payVO.target_pay_date}%</h4>
                                <h4>월급날 : 매달 ${payVO.target_pay_rate}일</h4>
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
                        
                        <article class="search-result row">
                            <div class="col-xs-12 col-sm-12 col-md-3">
                                <a href="#" title="Lorem ipsum" class="thumbnail"><img src="img/search/s-1.jpg" class="img-fluid" alt="Lorem ipsum" /></a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-2">
                                <ul class="meta-search">
                                    <li><i class="fa fa-calendar"></i> <span>02/15/2014</span></li>
                                    <li><i class="fa fa-clock-o"></i> <span>4:28 pm</span></li>
                                    <li><i class="fa fa-tags"></i> <span>People</span></li>
                                </ul>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-7 excerpet">
                            	<div class="switch-wrap d-flex justify-content-between">
									<p>설정 ON/OFF</p>
									<div class="confirm-switch">
										<c:if test="${saving_detail.four_status == 0 }">
												<input type="checkbox" id="four_status">
												<label for="four_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.four_status == 1 }">
											<input type="checkbox" id="four_status" checked>
											<label for="four_status"></label>
										</c:if>
									</div>
								</div>
                                <h3><a href="" title="">${account.fun_account_name}</a></h3>
                                <h4>반올림 저축</h4>
                                <h4>잔돈의 ${banVO.target_ban_gob}배 저축</h4>
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
                        
                        <article class="search-result row">
                            <div class="col-xs-12 col-sm-12 col-md-3">
                                <a href="#" title="Lorem ipsum" class="thumbnail"><img src="img/search/s-1.jpg" class="img-fluid" alt="Lorem ipsum" /></a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-2">
                                <ul class="meta-search">
                                    <li><i class="fa fa-calendar"></i> <span>02/15/2014</span></li>
                                    <li><i class="fa fa-clock-o"></i> <span>4:28 pm</span></li>
                                    <li><i class="fa fa-tags"></i> <span>People</span></li>
                                </ul>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-7 excerpet">
                            	<div class="switch-wrap d-flex justify-content-between">
									<p>설정 ON/OFF</p>
									<div class="confirm-switch">
										<c:if test="${saving_detail.five_status == 0 }">
												<input type="checkbox" id="five_status">
												<label for="five_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.five_status == 1 }">
											<input type="checkbox" id="five_status" checked>
											<label for="five_status"></label>
										</c:if>
									</div>
								</div>
                                <h3><a href="" title="">${account.fun_account_name}</a></h3>
                                <h4>과소비 저축</h4>
                                <h4>소비 카테고리 : ${gwaVO.target_gwa_category}</h4>
                                <h4>저축 빈도 : ${gwaVO.target_gwa_cnt}회 이상</h4>
                                <h4>저축 금액 : ${gwaVO.target_gwa_balance}원</h4>
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
                        
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
                            	<div class="switch-wrap d-flex justify-content-between">
									<p>설정 ON/OFF</p>
									<div class="confirm-switch">
										<c:if test="${saving_detail.six_status == 0 }">
												<input type="checkbox" id="six_status">
												<label for="six_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.six_status == 1 }">
											<input type="checkbox" id="six_status" checked>
											<label for="six_status"></label>
										</c:if>
									</div>
								</div>
                                <h3>예산절감 저축</h3> 
                                <c:if test="${sanVO.target_san_date == 1}">
									<h4>저축 주기 : 하루</h4>
								</c:if>
								
								<c:if test="${sanVO.target_san_date == 7}">
									<h4>저축 주기 : 매주</h4>
								</c:if>
								<c:if test="${sanVO.target_san_date == 30}">
									<h4>저축 주기 : 매달</h4>
								</c:if>
                                <h4>예산 금액 : ${sanVO.target_san_balance}</h4>
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
	                  </section>
                </div> 
            </div>

        </div>
    </div> 
	
	
</main>

 <jsp:include page="../include/bottom.jsp"/>
    
</body>
    
</html>