<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8">

	<jsp:include page="../incl/header.jsp"/> 
	
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">나만의 WISH 리스트 작성</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Breadcumb Area End ***** -->

    <!-- ***** Elements Area Start ***** -->
    <section class="elements-area section-padding-100-0">
        <div class="container">


            <div class="row">
                <!-- ***** Progress Bars & Accordions ***** -->
                <div class="col-12">
                        <div class="medilife-tabs-content">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="specialities-tab" data-toggle="tab" href="#specialities" role="tab" aria-controls="specialities" aria-selected="true">언택트 여행 어떄?</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="laboratory-tab" data-toggle="tab" href="#laboratory" role="tab" aria-controls="laboratory" aria-selected="false">원하는거 사보자</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="emergencies-tab" data-toggle="tab" href="#emergencies" role="tab" aria-controls="emergencies" aria-selected="false">버킷리스트를 이뤄봐</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="scolarship-tab" data-toggle="tab" href="#scolarship" role="tab" aria-controls="scolarship" aria-selected="false">뭐할지 모르겠어?</a>
                                </li>
                            </ul>
    
                            <div class="tab-content mb-100" id="myTabContent">
                                <div class="tab-pane fade show active" id="specialities" role="tabpanel" aria-labelledby="specialities-tab">
                                    <div class="medilife-tab-content d-md-flex align-items-center">
                                        <!-- Medilife Tab Text  -->
                                        <!-- Medilife Tab Img  -->
                                        <div class="medilife-tab-img" style="margin-right:30px;">
                                            <img src="${pageContext.request.contextPath}/resources/img/bada.jpg" alt="">
                                        </div>
                                        <div class="medilife-tab-text">
                                            <h2>여행 목표 이루기</h2>
                                            <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="wish_name" id="contact-name" placeholder="목표명">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" name="target_price" id="contact-email" placeholder="목표금액">
                                                </div>
                                                <div class="row align-items-end">
	                                            	<div class="col-12 col-md-4">
	                                                <div class="form-group" style="color : black;" >
	                                                    <select class="form-control" name="duration" id="speciality">
		                                                    <option value="0">목표 기간</option>
															<option value="1">1개월</option>			
															<option value="1">2개월</option>
															<option value="2">3개월</option>
															<option value="4">4개월</option>
															<option value="5">5개월</option>
															<option value="6">6개월</option>
															<option value="7">7개월</option>
															<option value="8">8개월</option>
															<option value="9">9개월</option>
															<option value="10">10개월</option>
															<option value="11">11개월</option>
															<option value="12">1년</option>
		                                                </select>
		                                                </div>
		                                            </div>
											</div>
												<input type="hidden" name="saving_pk" value="${param.savingpk}">
                                                <button type="submit" style="padding:0; height: auto;" class="btn medilife-btn">설정하기</button>
                                            </form>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="laboratory" role="tabpanel" aria-labelledby="laboratory-tab">
                                    <div class="medilife-tab-content d-md-flex align-items-center">
                                        <div class="medilife-tab-img" style="margin-right:30px;">
                                            <img src="${pageContext.request.contextPath}/resources/img/mac.jpg" alt="">
                                        </div>
                                        <div class="medilife-tab-text">
                                            <h2>원하는거 사보기</h2>
                                            <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="wish_name" id="contact-name" placeholder="목표명">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" name="target_price" id="contact-email" placeholder="목표금액">
                                                </div>
                                                <div class="row align-items-end">
	                                            	<div class="col-12 col-md-4">
	                                                <div class="form-group" style="color : black;" >
	                                                    <select class="form-control" name="duration" id="speciality">
		                                                    <option value="0">목표 기간</option>
															<option value="1">1개월</option>			
															<option value="1">2개월</option>
															<option value="2">3개월</option>
															<option value="4">4개월</option>
															<option value="5">5개월</option>
															<option value="6">6개월</option>
															<option value="7">7개월</option>
															<option value="8">8개월</option>
															<option value="9">9개월</option>
															<option value="10">10개월</option>
															<option value="11">11개월</option>
															<option value="12">1년</option>
		                                                </select>
		                                                </div>
		                                            </div>
											</div>
												<input type="hidden" name="saving_pk" value="${param.savingpk}">
                                                <button type="submit" style="padding:0; height: auto;" class="btn medilife-btn">설정하기</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="emergencies" role="tabpanel" aria-labelledby="emergencies-tab">
                                    <div class="medilife-tab-content d-md-flex align-items-center">
                                        <div class="medilife-tab-img" style="margin-right:30px;">
                                            <img src="${pageContext.request.contextPath}/resources/img/dog.jpg" alt="">
                                        </div>
                                        <div class="medilife-tab-text">
                                            <h2>버킷리스트 이루기</h2>
                                            <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="wish_name" id="contact-name" placeholder="목표명">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" name="target_price" id="contact-email" placeholder="목표금액">
                                                </div>
                                                <div class="row align-items-end">
	                                            	<div class="col-12 col-md-4">
	                                                <div class="form-group" style="color : black;" >
	                                                    <select class="form-control" name="duration" id="speciality">
		                                                    <option value="0">목표 기간</option>
															<option value="1">1개월</option>			
															<option value="1">2개월</option>
															<option value="2">3개월</option>
															<option value="4">4개월</option>
															<option value="5">5개월</option>
															<option value="6">6개월</option>
															<option value="7">7개월</option>
															<option value="8">8개월</option>
															<option value="9">9개월</option>
															<option value="10">10개월</option>
															<option value="11">11개월</option>
															<option value="12">1년</option>
		                                                </select>
		                                                </div>
		                                            </div>
											</div>
												<input type="hidden" name="saving_pk" value="${param.savingpk}">
                                                <button type="submit" style="padding:0; height: auto;" class="btn medilife-btn">설정하기</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="scolarship" role="tabpanel" aria-labelledby="scolarship-tab">
                                    <div class="medilife-tab-content d-md-flex align-items-center">
                                        <div class="medilife-tab-img" style="margin-right:30px;">
                                            <img src="${pageContext.request.contextPath}/resources/img/just.jpg" alt="">
                                        </div>
                                        <div class="medilife-tab-text">
                                            <h2>일단 모아보자!!</h2>
                                           <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="wish_name" id="contact-name" placeholder="목표명">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" name="target_price" id="contact-email" placeholder="목표금액">
                                                </div>
                                                <div class="row align-items-end">
	                                            	<div class="col-12 col-md-4">
	                                                <div class="form-group" style="color : black;" >
	                                                    <select class="form-control" name="duration" id="speciality">
		                                                    <option value="0">목표 기간</option>
															<option value="1">1개월</option>			
															<option value="1">2개월</option>
															<option value="2">3개월</option>
															<option value="4">4개월</option>
															<option value="5">5개월</option>
															<option value="6">6개월</option>
															<option value="7">7개월</option>
															<option value="8">8개월</option>
															<option value="9">9개월</option>
															<option value="10">10개월</option>
															<option value="11">11개월</option>
															<option value="12">1년</option>
		                                                </select>
		                                                </div>
		                                            </div>
											</div>
												<input type="hidden" name="saving_pk" value="${param.savingpk}">
                                                <button type="submit" style="padding:0; height: auto;" class="btn medilife-btn">설정하기</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        </div>
    </section>
    
    <section id="faq-p1" class="team-p1" style="margin-top: 60px;">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="faq-p1-cont">
              <div class="service-h-tab"> 
                <nav class="nav nav-tabs" id="myTab" role="tablist">
                  <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-expanded="true">떠나자</a>
                  <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile">사보자</a> 
                  <a class="nav-item nav-link" id="my-profile-tab" data-toggle="tab" href="#my-profile" role="tab" aria-controls="my-profile">해보자</a> 
                  <a class="nav-item nav-link" id="my-profile-tab2" data-toggle="tab" href="#my-profile2" role="tab" aria-controls="my-profile">그냥 모으자</a>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">      
                    <div class="toggle">
                      <div class="toggle-title ">
                        <h3>
                        <i></i>
                        <span class="title-name">이루고 싶은, 크고 작은</span><br>
                        <span class="title-name">나만의 저축 목표</span><br>
                        </h3>
                      </div>
                      <div class="toggle-inner">
                        <img style="width:100%; margin-bottom:20px;"src="${pageContext.request.contextPath}/resources/img/bada.jpg">
                      </div>
                    </div> 
                    <div class="toggle">
                      <div class="toggle-title  ">
                          <h3>
                          <i></i>
                          <span class="title-name">LET'S TRAVEL?</span>
                          </h3>
                      </div>
                      <div class="toggle-inner">
                          <p>Perhaps not. Astronomers have been scouring the universe for places where water worlds might have given rise to life, from Europa and Mars in our solar system to planets many light years away. Radio telescopes have been eavesdropping on the heavens and in 1977 a signal bearing the potential hallmarks of an alien message was heard. Astronomers are now able to scan the atmospheres of alien worlds for oxygen and water. The next few decades will be an exciting time to be an alien hunter with up to 60bn potentially habitable planets in our Milky Way alone.</p>
                      </div>
                    </div> 
                    <div class="row" style="margin-top : 20px;">
			            <div class="col-12">
			                <h2 class="contact-title">여행 목표 설정</h2>
			            </div>
			            <div class="col-lg-12">
			                <form class="form-contact contact_form" action="${pageContext.request.contextPath}/objectCreate" method="post" novalidate="novalidate">
			                    <div class="row">
			                        <!-- <div class="col-12">
			                            <div class="form-group">
			                                <input type="file" id="file1" name="file1" accept="image/*" placeholder="목표 이미지" onfocus="this.placeholder = ''" onblur="this.placeholder = '목표 이미지'"  class="single-input">
			                            </div>
			                        </div> -->
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="wish_name" id="name1" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표를 적어봐!'" placeholder="너의 목표를 적어봐!">
			                            </div>
			                        </div>
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="target_price" id="email1" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표 금액을 적어봐!'" placeholder="너의 목표 금액을 적어봐!">
			                            </div>
			                        </div>
			                        <div class="col-12">
			                            <div class="form-group">
											<select name = "duration">
												<option value="0">목표 기간</option>
												<option value="1">1개월</option>			
												<option value="1">2개월</option>
												<option value="2">3개월</option>
												<option value="4">4개월</option>
												<option value="5">5개월</option>
												<option value="6">6개월</option>
												<option value="7">7개월</option>
												<option value="8">8개월</option>
												<option value="9">9개월</option>
												<option value="10">10개월</option>
												<option value="11">11개월</option>
												<option value="12">1년</option>
											</select>
											<input type="hidden" name="saving_pk" value="${param.savingpk}">
										</div>
			                        </div>
			                    </div>
			                    <div class="form-group mt-3">
			                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">Send</button>
			                    </div>
			                </form>
			            </div>
		        	</div>
                  </div>
                  
                  <!-- ===================== -->
                  
                  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <div class="toggle">
                      <div class="toggle-title ">
                        <h3>
                        <i></i>
                        <span class="title-name">이루고 싶은, 크고 작은</span><br>
                        <span class="title-name">나만의 저축 목표</span><br>
                        </h3>
                      </div>
                      <div class="toggle-inner">
                        <img style="width:100%; margin-bottom:20px;"src="${pageContext.request.contextPath}/resources/img/mac.jpg">
                      </div>
                    </div> 
                    <div class="toggle">
                      <div class="toggle-title  ">
                        <h3>
                        <i></i>
                        <span class="title-name">LET'S BUY?</span>
                        </h3>
                      </div>
                      
                      <div class="toggle-inner">
                        <p>Perhaps not. Astronomers have been scouring the universe for places where water worlds might have given rise to life, from Europa and Mars in our solar system to planets many light years away. Radio telescopes have been eavesdropping on the heavens and in 1977 a signal bearing the potential hallmarks of an alien message was heard. Astronomers are now able to scan the atmospheres of alien worlds for oxygen and water. The next few decades will be an exciting time to be an alien hunter with up to 60bn potentially habitable planets in our Milky Way alone.</p>
                      </div>
                    </div> 
                    <div class="row" style="margin-top : 20px;">
			            <div class="col-12">
			                <h2 class="contact-title">구매 목표 설정</h2>
			            </div>
			            <div class="col-lg-12">
			                <form class="form-contact contact_form" action="${pageContext.request.contextPath}/objectCreate" method="post" novalidate="novalidate">
			                    <div class="row">
			                        <!-- <div class="col-12">
			                            <div class="form-group">
			                                <input type="file" id="file1" name="file1" accept="image/*" placeholder="목표 이미지" onfocus="this.placeholder = ''" onblur="this.placeholder = '목표 이미지'"  class="single-input">
			                            </div>
			                        </div> -->
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="wish_name" id="name2" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표를 적어봐!'" placeholder="너의 목표를 적어봐!">
			                            </div>
			                        </div>
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="target_price" id="email2" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표 금액을 적어봐!'" placeholder="너의 목표 금액을 적어봐!">
			                            </div>
			                        </div>
			                        <div class="col-12">
			                            <div class="form-group">
			                            	<label for="start">목표 기간</label>
			                                <div class="form-group">
											<select name = "duration">
												<option value="0">목표 기간</option>
												<option value="1">1개월</option>			
												<option value="1">2개월</option>
												<option value="2">3개월</option>
												<option value="4">4개월</option>
												<option value="5">5개월</option>
												<option value="6">6개월</option>
												<option value="7">7개월</option>
												<option value="8">8개월</option>
												<option value="9">9개월</option>
												<option value="10">10개월</option>
												<option value="11">11개월</option>
												<option value="12">1년</option>
											</select>
										</div>
			                                <input type="hidden" name="saving_pk" value="${param.savingpk}">
			                            </div>
			                        </div>
			                    </div>
			                    <div class="form-group mt-3">
			                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">Send</button>
			                    </div>
			                </form>
			            </div>
		        	</div>
                  </div>
                  
                  <div class="tab-pane fade" id="my-profile" role="tabpanel" aria-labelledby="my-profile-tab">
                    <div class="toggle">
                        <div class="toggle-title ">
                          <h3>
	                        <i></i>
	                        <span class="title-name">이루고 싶은, 크고 작은</span><br>
	                        <span class="title-name">나만의 저축 목표</span><br>
                          </h3>
                        </div>
                        <div class="toggle-inner">
                          <img style="width:100%; margin-bottom:20px;"src="${pageContext.request.contextPath}/resources/img/dog.jpg">
                        </div>
                    </div> 
                    <div class="toggle">
                      <div class="toggle-title  ">
                        <h3>
                        <i></i>
                        <span class="title-name"> Let's DO IT?</span>
                        </h3>
                      </div>
                      
                      <div class="toggle-inner">
                        <p>Perhaps not. Astronomers have been scouring the universe for places where water worlds might have given rise to life, from Europa and Mars in our solar system to planets many light years away. Radio telescopes have been eavesdropping on the heavens and in 1977 a signal bearing the potential hallmarks of an alien message was heard. Astronomers are now able to scan the atmospheres of alien worlds for oxygen and water. The next few decades will be an exciting time to be an alien hunter with up to 60bn potentially habitable planets in our Milky Way alone.</p>
                      </div>
                   </div>
                   <div class="row" style="margin-top : 20px;">
			            <div class="col-12">
			                <h2 class="contact-title">나만의 버킷리스트 설정</h2>
			            </div>
			            <div class="col-lg-12">
			                <form class="form-contact contact_form" action="${pageContext.request.contextPath}/objectCreate" method="post" novalidate="novalidate">
			                    <div class="row">
			                        <!-- <div class="col-12">
			                            <div class="form-group">
			                                <input type="file" id="file1" name="file1" accept="image/*" placeholder="목표 이미지" onfocus="this.placeholder = ''" onblur="this.placeholder = '목표 이미지'"  class="single-input">
			                            </div>
			                        </div> -->
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="wish_name" id="name3" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표를 적어봐!'" placeholder="너의 목표를 적어봐!">
			                            </div>
			                        </div>
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="target_price" id="email3" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표 금액을 적어봐!'" placeholder="너의 목표 금액을 적어봐!">
			                            </div>
			                        </div>
			                        <div class="col-12">
			                            <div class="form-group">
			                            	<label for="start">목표 기간</label>
			                                <div class="form-group">
											<select name = "duration">
												<option value="0">목표 기간</option>
												<option value="1">1개월</option>			
												<option value="1">2개월</option>
												<option value="2">3개월</option>
												<option value="4">4개월</option>
												<option value="5">5개월</option>
												<option value="6">6개월</option>
												<option value="7">7개월</option>
												<option value="8">8개월</option>
												<option value="9">9개월</option>
												<option value="10">10개월</option>
												<option value="11">11개월</option>
												<option value="12">1년</option>
											</select>
										</div>
			                                <input type="hidden" name="saving_pk" value="${param.savingpk}">
			                            </div>
			                        </div>
			                    </div>
			                    <div class="form-group mt-3">
			                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">Send</button>
			                    </div>
			                </form>
			            </div>
		        	</div>
                  </div> 
                  
                  <div class="tab-pane fade" id="my-profile2" role="tabpanel" aria-labelledby="my-profile-tab">
                    <div class="toggle">
                        <div class="toggle-title ">
                          <h3>
	                        <i></i>
	                        <span class="title-name">이루고 싶은, 크고 작은</span><br>
	                        <span class="title-name">나만의 저축 목표</span><br>
                          </h3>
                        </div>
                        <div class="toggle-inner">
                          <img style="width:100%; margin-bottom:20px;"src="${pageContext.request.contextPath}/resources/img/just.jpg">
                        </div>
                    </div> 
                    <div class="toggle">
                      <div class="toggle-title  ">
                        <h3>
                        <i></i>
                        <span class="title-name"> JUST DO IT?</span>
                        </h3>
                      </div>
                      
                      <div class="toggle-inner">
                        <p>Perhaps not. Astronomers have been scouring the universe for places where water worlds might have given rise to life, from Europa and Mars in our solar system to planets many light years away. Radio telescopes have been eavesdropping on the heavens and in 1977 a signal bearing the potential hallmarks of an alien message was heard. Astronomers are now able to scan the atmospheres of alien worlds for oxygen and water. The next few decades will be an exciting time to be an alien hunter with up to 60bn potentially habitable planets in our Milky Way alone.</p>
                      </div>
                   </div>
                   <div class="row" style="margin-top : 20px;">
			            <div class="col-12">
			                <h2 class="contact-title">목표금액과 기간만 설정</h2>
			            </div>
			            <div class="col-lg-12">
			                <form class="form-contact contact_form" action="${pageContext.request.contextPath}/objectCreate" method="post" novalidate="novalidate">
			                    <div class="row">
			                        <!-- <div class="col-12">
			                            <div class="form-group">
			                                <input type="file" id="file1" name="file1" accept="image/*" placeholder="목표 이미지" onfocus="this.placeholder = ''" onblur="this.placeholder = '목표 이미지'"  class="single-input">
			                            </div>
			                        </div> -->
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="wish_name" id="name4" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표를 적어봐!'" placeholder="너의 목표를 적어봐!">
			                            </div>
			                        </div>
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="target_price" id="email4" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표 금액을 적어봐!'" placeholder="너의 목표 금액을 적어봐!">
			                            </div>
			                        </div>
			                        <div class="col-12">
			                            <div class="form-group">
			                            	<label for="start">목표 기간</label>
			                                <div class="form-group">
											<select name = "duration">
												<option value="0">목표 기간</option>
												<option value="1">1개월</option>			
												<option value="1">2개월</option>
												<option value="2">3개월</option>
												<option value="4">4개월</option>
												<option value="5">5개월</option>
												<option value="6">6개월</option>
												<option value="7">7개월</option>
												<option value="8">8개월</option>
												<option value="9">9개월</option>
												<option value="10">10개월</option>
												<option value="11">11개월</option>
												<option value="12">1년</option>
											</select>
										</div>
			                                <input type="hidden" name="saving_pk" value="${param.savingpk}">
			                            </div>
			                        </div>
			                    </div>
			                    <div class="form-group mt-3">
			                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">Send</button>
			                    </div>
			                </form>
			            </div>
		        	</div>
                  </div> 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>      
    </section> 	

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="../incl/footer.jsp"/>

</body>

</html>