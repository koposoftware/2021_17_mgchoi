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
    
    <!-- CSS here -->
    
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
    
    <div class="about-area2 gray-bg pt-0 pb-60">
		<div class="container">
				<div class="row">
				<div class="col-lg-12">
					<div class="whats-news-wrapper">
						<!-- Heading & Nav Button -->
							<div class="row justify-content-between align-items-end mb-15">
								<div class="col-xl-12">
									<div class="section-tittle mb-30">
										<h3>
                        					<span class="title-name"><b>STEP 02. 나만의 저축 방식 설정</b></span><br>
                        				</h3>
									</div>
								</div>
								<div class="col-xl-12 col-md-12">
									<div class="properties__button">
										<!--Nav Button  -->                                            
										<nav>                                                 
											<div class="nav nav-tabs" id="nav-tab2" role="tablist">
												<a class="nav-item nav-link active" id="nav-home-tab1" data-toggle="tab" href="#nav-home1" role="tab" aria-controls="nav-home" aria-selected="true">매주</a>
												<a class="nav-item nav-link" id="nav-profile-tab2" data-toggle="tab" href="#nav-profile1" role="tab" aria-controls="nav-profile" aria-selected="false">슬금슬금</a>
												<a class="nav-item nav-link" id="nav-contact-tab3" data-toggle="tab" href="#nav-contact1" role="tab" aria-controls="nav-contact" aria-selected="false">월급</a>
												<a class="nav-item nav-link" id="nav-last-tab1" data-toggle="tab" href="#nav-last1" role="tab" aria-controls="nav-contact" aria-selected="false">반올림</a>
												<a class="nav-item nav-link" id="nav-last-tab2" data-toggle="tab" href="#nav-last2" role="tab" aria-controls="nav-contact" aria-selected="false">과소비</a>
												<a class="nav-item nav-link" id="nav-last-tab3" data-toggle="tab" href="#nav-last3" role="tab" aria-controls="nav-contact" aria-selected="false">예산절감</a>
											</div>
										</nav>
										<!--End Nav Button  -->
									</div>
								</div>
							</div>
							<!-- Tab content -->
							<div class="row">
								<form class="form-contact contact_form" action="${pageContext.request.contextPath}/saving_process" method="post" novalidate="novalidate">
								<div class="col-12">
									<!-- Nav Card -->
									<div class="tab-content" id="nav-tabContent1">
										<!-- card one -->
										<div class="tab-pane fade show active" id="nav-home1" role="tabpanel" aria-labelledby="nav-home-tab1">       
											<div class="row">
												<div class="col-xl-12 col-lg-12 col-md-12">
													<div class="whats-news-single mb-40 mb-40">
														<div class="whates-img">
															<h3><b>예시</b></h3>
															<img src="${pageContext.request.contextPath }/resources/custom/img/joo.png" alt="">
														</div>
													</div>
													<div class="section-top-border">
														<div class="row">
															<div class="col-lg-12 col-md-12">
																<h3 class="mb-30">매주 규칙</h3>
																	<div class="input-group-icon mt-20">
																		<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
																		<div class="form-select">
																			<select name = "target_week_date">
																				<option value="1">저축 기간</option>
																				<option value="8">8주</option>			
																				<option value="16">16주</option>
																				<option value="24">24주</option>
																				<option value="32">32주</option>
																			</select>
																		</div>
																	</div>
																	<div class="mt-20">
																		<input type="text" name="target_week_now" placeholder="처음 저축 금액"
																			onfocus="this.placeholder = ''" onblur="this.placeholder = '처음 저축 금액'" 
																			class="single-input">
																	</div>
																	<div class="mt-20">
																		<input type="text" name="target_week_balance" placeholder="주마다 증각할 금액"
																			onfocus="this.placeholder = ''" onblur="this.placeholder = '주마다 증가할 금액'" 
																			class="single-input">
																	</div>
																	<div class="mt-20">
																		<input type="text" name="target_week_stop" placeholder="이 정도 되면 멈출게요!"
																			onfocus="this.placeholder = ''" onblur="this.placeholder = '이 정도 되면 멈출게요!'" 
																			class="single-input">
																	</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- Card two -->
										<div class="tab-pane fade" id="nav-profile1" role="tabpanel" aria-labelledby="nav-profile-tab1">
											<div class="row">
												<div class="col-xl-12 col-lg-12 col-md-12">
													<div class="whats-news-single mb-40 mb-40">
														<div class="whates-img">
															<img src="${pageContext.request.contextPath }/resources/custom/img/gm.png" alt="">
														</div>
														<div class="section-top-border">
															<div class="row">
																<div class="col-lg-12 col-md-12">
																	<h3 class="mb-30">슬금슬금 규칙</h3>
																		<div class="input-group-icon mt-20">
																			<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
																			<div class="form-select" id="default-select">
																			<select name = "target_slow_date">
																				<option value="0">저축 주기</option>
																				<option value="1">매일</option>			
																				<option value="7">매주</option>
																				<option value="30">매월</option>
																			</select>
																			</div>
																		</div>
																		<div class="mt-20">
																			<input type="text" name="target_slow_balance" placeholder="금액"
																				onfocus="this.placeholder = ''" onblur="this.placeholder = '금액'" 
																				class="single-input">
																		</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- Card three -->
										<div class="tab-pane fade" id="nav-contact1" role="tabpanel" aria-labelledby="nav-contact-tab1">
											<div class="row">
												<div class="col-xl-12 col-lg-12 col-md-12">
													<div class="whats-news-single mb-40 mb-40">
														<div class="whates-img">
															<img src="${pageContext.request.contextPath }/resources/custom/img/wol.png" alt="">
														</div>
														<div class="section-top-border">
															<div class="row">
																<div class="col-lg-12 col-md-12">
																	<h3 class="mb-30">월급 규칙</h3>
																		<div class="mt-20">
																			<input type="text" name="target_pay_balance" placeholder="월급"
																				onfocus="this.placeholder = ''" onblur="this.placeholder = '월급'" 
																				class="single-input">
																		</div>
																		<div class="mt-20">
																			<input type="text" name="target_pay_rate" placeholder="비율"
																				onfocus="this.placeholder = ''" onblur="this.placeholder = '비율'" 
																				class="single-input">
																		</div>
																		<div class="mt-20">
																			<input type="text" name="target_pay_date" placeholder="월급 날짜"
																				onfocus="this.placeholder = ''" onblur="this.placeholder = '월급 날짜'" 
																				class="single-input">
																		</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- card fure -->
										<div class="tab-pane fade" id="nav-last1" role="tabpanel" aria-labelledby="nav-last-tab">
											<div class="row">
												<div class="col-xl-12 col-lg-12 col-md-12">
													<div class="whats-news-single mb-40 mb-40">
														<div class="whates-img">
															<img src="${pageContext.request.contextPath }/resources/custom/img/ban.png" alt="">
														</div>
														<div class="section-top-border">
															<div class="row">
																<div class="col-lg-12 col-md-12">
																	<h3 class="mb-30">반올림 규칙</h3>
																		<div class="input-group-icon mt-20">
																			<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
																			<div class="form-select" id="default-select">
																			<select name="target_ban_gob">
																				<option value="1">잔돈의 몇배를 저축할까요?</option>
																				<option value="1/4">1/4</option>			
																				<option value="1/2">1/2</option>
																				<option value="1">1</option>
																				<option value="2">2</option>
																				<option value="4">4</option>
																			</select>
																			</div>
																		</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- card fure -->
										<div class="tab-pane fade" id="nav-last2" role="tabpanel" aria-labelledby="nav-last-tab">
											<div class="row">
												<div class="col-xl-12 col-lg-12 col-md-12">
													<div class="whats-news-single mb-40 mb-40">
														<div class="whates-img">
															<img src="${pageContext.request.contextPath }/resources/custom/img/gwa.png" alt="">
														</div>
														<div class="section-top-border">
															<div class="row">
																<div class="col-lg-12 col-md-12">
																	<h3 class="mb-30">과소비 규칙</h3>
																		<div class="input-group-icon mt-20">
																			<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
																			<div class="form-select" id="default-select">
																				<select name="target_gwa_category">
																					<option value="1">결제 카테고리 선택</option>
																					<option value="food">푸드</option>			
																					<option value="cafe">카페</option>
																					<option value="mart">편의점</option>
																					<option value="game">게임</option>
																				</select>
																			</div>
																		</div>
																		<div class="mt-20">
																			<input type="text" name="target_gwa_balance" placeholder="저축금액"
																				onfocus="this.placeholder = ''" onblur="this.placeholder = '저축금액'" 
																				class="single-input">
																		</div>
																		<div class="input-group-icon mt-20">
																			<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
																			<div class="form-select" id="default-select">
																				<select name = "target_gwa_cnt">
																					<option value="0">저축 빈도</option>
																					<option value="1">1회 이상</option>			
																					<option value="2">2회 이상</option>
																					<option value="3">3회 이상</option>
																					<option value="4">4회 이상</option>
																				</select>
																			</div>
																		</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- card fure -->
										<div class="tab-pane fade" id="nav-last3" role="tabpanel" aria-labelledby="nav-last-tab">
											<div class="row">
												<div class="col-xl-12 col-lg-12 col-md-12">
													<div class="whats-news-single mb-40 mb-40">
														<div class="whates-img">
															<img src="${pageContext.request.contextPath }/resources/custom/img/ye.png" alt="">
														</div>
														<div class="section-top-border">
															<div class="row">
																<div class="col-lg-12 col-md-12">
																	<h3 class="mb-30">예산절감 규칙</h3>
																		<div class="input-group-icon mt-20">
																			<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
																			<div class="form-select">
																				<select name ="target_san_date">
																					<option value="1">저축 주기 선택</option>
																					<option value="1">하루</option>			
																					<option value="7">한주</option>
																					<option value="30">한달</option>
																				</select>
																			</div>
																		</div>
																		<div class="mt-20">
																			<input type="text" id = "target_san_balance" name="target_san_balance" placeholder="예산 금액"
																				onfocus="this.placeholder = ''" onblur="this.placeholder = '예산 금액'" 
																				class="single-input">
																		</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								<!-- End Nav Card -->
							</div>
							
							<div class="form-group mt-3">
							<input type="hidden" name="${saving_vo.saving_pk}">
	                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">설정하기</button>
		                    </div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
</main>

 <jsp:include page="../include/bottom.jsp"/>
    
</body>
    
</html>