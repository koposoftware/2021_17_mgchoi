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
    
    <script>
	    function readURL(input) {
	    	  if (input.files && input.files[0]) {
	    	    var reader = new FileReader();
	    	    reader.onload = function(e) {
	    	      document.getElementById('preview').src = e.target.result;
	    	    };
	    	    reader.readAsDataURL(input.files[0]);
	    	  } else {
	    	    document.getElementById('preview').src = "";
	    	  }
	    	}
	</script>
    
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
                        <span class="title-name"><b>STEP 01. 이루고 싶은, 크고 작은 나만의 저축 목표 설정</b></span><br>
                        </h3>
                      </div>
                      <div class="toggle-inner">
                        <img style="width:100%; margin-bottom:20px;"src="${pageContext.request.contextPath}/resources/img/bada.jpg">
                      </div>
                    </div> 
                    <div class="toggle" style="margin-bottom:30px;">
                      <div class="toggle-title  ">
                          <h3>
                          <span class="title-name"><b>LET'S TRAVEL?</b></span>
                          </h3>
                      </div>

                      <div class="toggle-inner">
                          <h5><b>언택트 여행, 호캉스, 코로나 끝나고 여행준비 등 나만의 여행을 떠나보세요.</b></h5>
                      </div>
                    </div> 
                    <div class="row" style="margin-top : 20px;">
			            <div class="col-12">
			                <h2 class="contact-title"><b>여행 목표 설정</b></h2>
			            </div>
			            <div class="col-lg-12">
			                <form class="form-contact contact_form" enctype="multipart/form-data" action="${pageContext.request.contextPath}/objectCreate" method="post" novalidate="novalidate">
			                    <div class="row">
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input type="file" id="uploadFile" multiple="multiple" name="uploadFile" onchange="readURL(this);" >
			                            </div>
			                        </div>
			                        <img id = "preview"/>
			                        
			                        
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
												<option value="0">목표 기간을 설정해봐!</option>
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
											<input type="hidden" name="saving_pk" value="${savingpk}">
										</div>
			                        </div>
			                    </div>
			                    <div class="form-group mt-3">
			                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">설정하기</button>
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
                        <span class="title-name"><b>STEP 01. 이루고 싶은, 크고 작은 나만의 저축 목표 설정</b></span><br>
                        </h3>
                      </div>
                      <div class="toggle-inner">
                        <img style="width:100%; margin-bottom:20px;"src="${pageContext.request.contextPath}/resources/img/mac.jpg">
                      </div>
                    </div> 
                    <div class="toggle" style="margin-bottom:30px;">
                      <div class="toggle-title  ">
                          <h3>
                          <span class="title-name"><b>LET'S BUY?</b></span>
                          </h3>
                      </div>

                      <div class="toggle-inner">
                          <h5><b>아이패드병 고치기, 나만의 명품백 구매 등 원하는 보물을 사봐요.</b></h5>
                      </div>
                    </div> 
                    <div class="row" style="margin-top : 20px;">
			            <div class="col-12">
			                <h2 class="contact-title"><b>구매 목표 설정</b></h2>
			            </div>
			            <div class="col-lg-12">
			                <form class="form-contact contact_form" action="${pageContext.request.contextPath}/objectCreate" enctype="multipart/form-data" method="post" novalidate="novalidate">
			                    <div class="row">
			                        <div class="col-12">
			                            <div class="form-group">
			                                <input type="file" id="file1" name="file1" accept="image/*" placeholder="목표 이미지" onfocus="this.placeholder = ''" onblur="this.placeholder = '목표 이미지'"  class="single-input">
			                            </div>
			                        </div>
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input type="file" id="uploadFile" name="uploadFile" onchange="readURL(this);" >
			                            </div>
			                        </div>
			                        <img id = "preview"/>
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="wish_name" id="name2" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 목표를 적어봐!'" placeholder="구매하고 싶은 보물을 적어봐!">
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
												<option value="0">목표 기간을 설정해봐!</option>
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
			                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">설정하기</button>
			                    </div>
			                </form>
			            </div>
		        	</div>
                  </div>
                  
                  <div class="tab-pane fade" id="my-profile" role="tabpanel" aria-labelledby="my-profile-tab">
                    <div class="toggle">
                        <div class="toggle-title ">
                          <h3>
	                        <span class="title-name"><b>STEP 01. 이루고 싶은, 크고 작은 나만의 저축 목표 설정</b></span><br>
                          </h3>
                        </div>
                        <div class="toggle-inner">
                          <img style="width:100%; margin-bottom:20px;"src="${pageContext.request.contextPath}/resources/img/dog.jpg">
                        </div>
                    </div> 
                    <div class="toggle" style="margin-bottom:30px;">
                      <div class="toggle-title  ">
                        <h3>
                          <span class="title-name"><b>LET'S DO IT?</b></span>
                          </h3>
                      </div>
                      
                      <div class="toggle-inner">
                          <h5><b>부모님 결혼기념일 통 큰 선물, 할머니 칠순 잔치 이벤트 등 나만의 버킷리스트를 작성해봐요.</b></h5>
                      </div>
                   </div>
                   <div class="row" style="margin-top : 20px;">
			            <div class="col-12">
			                <h2 class="contact-title"><b>나만의 버킷리스트 설정</b></h2>
			            </div>
			            <div class="col-lg-12">
			                <form class="form-contact contact_form" action="${pageContext.request.contextPath}/objectCreate" enctype="multipart/form-data" method="post" novalidate="novalidate">
			                    <div class="row">
			                    <div class="col-sm-12">
			                            <div class="form-group">
			                                <input type="file" id="uploadFile" name="uploadFile" onchange="readURL(this);" >
			                            </div>
			                        </div>
			                        <img id = "preview"/>
			                        <div class="col-12">
			                            <div class="form-group">
			                                <input type="file" id="file1" name="file1" accept="image/*" placeholder="목표 이미지" onfocus="this.placeholder = ''" onblur="this.placeholder = '목표 이미지'"  class="single-input">
			                            </div>
			                        </div>
			                        <div class="col-sm-12">
			                            <div class="form-group">
			                                <input class="form-control valid" name="wish_name" id="name3" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '너의 버킷리스트를 적어봐!'" placeholder="너의 목표를 적어봐!">
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
												<option value="0">목표 기간을 설정해봐!</option>
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
			                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">설정하기</button>
			                    </div>
			                </form>
			            </div>
		        	</div>
                  </div> 
                  
                  <div class="tab-pane fade" id="my-profile2" role="tabpanel" aria-labelledby="my-profile-tab">
                    <div class="toggle">
                        <div class="toggle-title ">
                          <h3>
	                        <span class="title-name"><b>STEP 01. 이루고 싶은, 크고 작은 나만의 저축 목표 설정</b></span><br>
                          </h3>
                        </div>
                        <div class="toggle-inner">
                          <img style="width:100%; margin-bottom:20px;"src="${pageContext.request.contextPath}/resources/img/just.jpg">
                        </div>
                    </div> 
                    <div class="toggle" style="margin-bottom:30px;">
                      <div class="toggle-title  ">
                        <h3>
                          <span class="title-name"><b>JUST DO IT?</b></span>
                          </h3>
                      </div>
                      
                      <div class="toggle-inner">
                          <h5><b>무엇을 해야할지 모르겠다면 일단 모아봐요.</b></h5>
                      </div>
                   </div>
                   <div class="row" style="margin-top : 20px;">
			            <div class="col-12">
			                <h2 class="contact-title"><b>저축기간과 금액만 설정</b></h2>
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
												<option value="0">목표 기간을 설정해봐!</option>
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
			                        <button style="float:right;"type="submit" class="button button-contactForm boxed-btn">설정하기</button>
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

</main>

 <jsp:include page="../include/bottom.jsp"/>
    
</body>
    
</html>