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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/ui-elements/timeline.css">
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
    
    <script>
    
	    function numberWithCommas(x) {
	        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	    }
	    
	    function doit(){
	    	
	    	var first_status = 0;
	    	var second_status = 0;
	    	var third_status = 0;
	    	var four_status = 0;
	    	var five_status = 0;
	    	var six_status = 0;
			var saving_pk = 0;
	    	saving_pk = ${saving_detail.saving_pk};
	    	
	    	
	    	if($("input:checkbox[id='first_status']").is(":checked") == true) {
	    		
	    		first_status = 1;
	    		
	    	}
	    	
	    	
			if($("input:checkbox[id='second_status']").is(":checked") == true) {
				    		
				second_status = 1;
				    		
	    	}
	    		
			if($("input:checkbox[id='third_status']").is(":checked") == true) {
				
				third_status = 1;
				
			}
			
			if($("input:checkbox[id='four_status']").is(":checked") == true) {
				
				four_status = 1;
				
			}
			
			if($("input:checkbox[id='five_status']").is(":checked") == true) {
				
				five_status = 1;
				
			}
			
			if($("input:checkbox[id='six_status']").is(":checked") == true) {
				
				six_status = 1;
				
			}
			
			
			 var request = $.ajax({
	    		 anyne:true,
	             url:"${pageContext.request.contextPath}/mysavedetail",
	             type:"POST",
	             data: {
	            	"saving_pk" : saving_pk,
	            	"first_status" : first_status,
	            	"second_status" : second_status,
	            	"third_status" : third_status,
	            	"four_status" : four_status,
	            	"five_status" : five_status,
	            	"six_status" : six_status
	            	
	             },
	             dataType:"text",
	             success : function(data) {
	            	 alert("설정이 변경되었습니다.");
	            	 location.href="${pageContext.request.contextPath}/mysavedetail";
	            	 },
	            	 error: function(jqXHR, textStatus, errorThrown) {
	            	 alert("ERROR : " + textStatus + " : " + errorThrown);
	            	 }
	          });
			 

			


        }
    	
	    $(document).ready(function(){
	    	
	    	var predict_money = ${predict_money};
	    	var first_status_money = ${first_status_money};
	    	var second_status_money = ${second_status_money};
	    	var third_status_money = ${third_status_money};
	    	
			$("#after_money").text(numberWithCommas(predict_money));
	    	
	        $("#first_status").change(function(){
	            if($("#first_status").is(":checked")){
	            	predict_money += first_status_money;
	            	$("#after_money").text(numberWithCommas(predict_money));
	            }else{
	            	predict_money -= first_status_money;
	            	$("#after_money").text(numberWithCommas(predict_money));
	            }
	        });
	        
	        $("#second_status").change(function(){
	            if($("#second_status").is(":checked")){
	            	predict_money += second_status_money;
	            	$("#after_money").text(numberWithCommas(predict_money));
	            }else{
	            	predict_money -= second_status_money;
	            	$("#after_money").text(numberWithCommas(predict_money));
	            }
	        });
	        
	        $("#third_status").change(function(){
	            if($("#third_status").is(":checked")){
	            	predict_money += third_status_money;
	            	$("#after_money").text(numberWithCommas(predict_money));
	            }else{
	            	predict_money -= third_status_money;
	            	$("#after_money").text(numberWithCommas(predict_money));
	            }
	        });
	        
	       /*  $("#four_status").change(function(){
	            if($("#four_status").is(":checked")){
	                alert("체크박스 체크했음!");
	            }else{
	                alert("체크박스 체크 해제!");
	            }
	        });
	        
	        $("#five_status").change(function(){
	            if($("#five_status").is(":checked")){
	                alert("체크박스 체크했음!");
	            }else{
	                alert("체크박스 체크 해제!");
	            }
	        });
	        
	        $("#six_status").change(function(){
	            if($("#six_status").is(":checked")){
	                alert("체크박스 체크했음!");
	            }else{
	                alert("체크박스 체크 해제!");
	            }
	        }); */
	        
	    });
    
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
	
	<!-- About Area End-->
    <!-- Team Start -->
    <div class="team-area section-padding30">
        <div class="container">
            <div class="row">
                <div class="cl-xl-7 col-lg-8 col-md-10">
                    <!-- Section Tittle -->
                    <div class="section-tittles mb-70">
                        <span>시작일자 : ${start}</span>
                        <h2>${MemberVO.name}님의 위시리스트</h2>
                    </div> 
                </div>
            </div>
            <div class="row">
                <!-- single Tem -->
                <c:forEach items="${wish_list}" var="wish">
	                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
	                    <div class="single-team mb-30">
	                        <div class="team-img">
	                            <img src="assets/img/gallery/team2.png" alt="">
	                        </div>
	                        <div class="team-caption">
	                            <h3><a href="#">${wish.wish_name}</a></h3>
	                            <span>목표 기간 : ${wish.duration}개월</span>
	                            <span>목표 금액 : ${wish.targetPriceWithComma}원</span>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- end -->
    <div class="progress-table">
		<div class="table-head">
			<div class="percentage">달성도 : ${wish_percent}% ( 저축금액 : ${saving_vo.savingbalanceWithComma} )</div>
		</div>
		<div class="table-row">
			<div class="percentage">
				<div class="progress">
					<div class="progress-bar color-1" role="progressbar" style="width: 40%"
						aria-valuenow="${wish_percent}" aria-valuemin="0" aria-valuemax="100"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- -------------------- -->
	
	<div class="page-content d-flex align-items-stretch" style="margin: auto;width: 70%;margin-top: 30px;">

        <div class="content-inner chart-cont">

            <!--***** CONTENT *****--> 
            <div class="card p-4">    
                <div class="row">
                    <hgroup class="mb20">
                        <h1>${MemberVO.name}님의 현재 저축 설정</h1>
                        <h3>이번주 저축 예상금액 : <span id="after_money">원</span></h3>
                        <!-- <h2 class="lead"><strong class="cl-blue">3</strong> results were found for the search for <strong class="cl-blue">Business</strong></h2> -->                               
                    </hgroup>
		
                    <section class="col-xs-12 col-sm-6 col-md-12">
                    	<form class="form-contact contact_form">
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
												<input type="checkbox" id="first_status" name="first_status">
												<label for="first_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.first_status == 1 }">
											<input type="checkbox" id="first_status" name="first_status" checked>
											<label for="first_status"></label>
										</c:if>
									</div>
									</div>
                                <h4>매주저축</h4>
                                <h4>이번주 저축 금액 : ${weekVO.target_week_nowWithComma}원</h4>
                                <h4>저축 기간 : ${weekVO.target_week_date}주</h4>
                                <h4>주마다 증가할 금액 : ${weekVO.target_week_balanceWithComma}원</h4>
                                <h4>이 정도 증가하면 멈출게요!! : ${weekVO.target_week_stopWithComma}원</h4>
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
												<input type="checkbox" id="second_status" name="second_status">
												<label for="second_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.second_status == 1 }">
											<input type="checkbox" id="second_status" name="second_status" checked>
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
								
                                <h4>저축 금액 : ${slowVO.target_slow_balanceWithComma}원</h4>
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
												<input type="checkbox" id="third_status" name="third_status">
												<label for="third_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.third_status == 1 }">
											<input type="checkbox" id="third_status"  name="third_status" checked>
											<label for="third_status"></label>
										</c:if>
									</div>
									</div>
                                <h3><a href="" title="">${account.fun_account_name}</a></h3>
                                <h4>월급날 저축</h4>
                                <h4>월급 : ${payVO.target_pay_balanceWithComma}원</h4>
                                <h4>비율 : ${payVO.target_pay_rate}%</h4>
                                <h4>월급날 : 매달 ${payVO.target_pay_date}일</h4>
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
												<input type="checkbox" id="four_status" name="four_status">
												<label for="four_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.four_status == 1 }">
											<input type="checkbox" id="four_status" name="four_status" checked>
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
												<input type="checkbox" id="five_status" name="five_status">
												<label for="five_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.five_status == 1 }">
											<input type="checkbox" id="five_status" name="five_status" checked>
											<label for="five_status"></label>
										</c:if>
									</div>
								</div>
                                <h3><a href="" title="">${account.fun_account_name}</a></h3>
                                <h4>과소비 저축</h4>
                                <h4>소비 카테고리 : ${gwaVO.target_gwa_category}</h4>
                                <h4>저축 빈도 : ${gwaVO.target_gwa_cnt}회 이상</h4>
                                <h4>저축 금액 : ${gwaVO.target_gwa_balanceWithComma}원</h4>
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
												<input type="checkbox" id="six_status" name="six_status">
												<label for="six_status"></label>										
										</c:if>
											
										<c:if test="${saving_detail.six_status == 1 }">
											<input type="checkbox" id="six_status" name="six_status" checked>
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
                                <h4>예산 금액 : ${sanVO.target_san_balanceWithComma}</h4>
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
                        <button onclick="doit()" style="float:right;"type="button" class="button button-contactForm boxed-btn">설정변경</button>
                        </form>
	                  </section>
                </div> 
            </div>

        </div>
    </div> 
	
	
	
	<!--  ------------------------- -->
	
	<c:forEach items="${saving_log_list}" var="saving_log">
	<div class="team-area section-padding30">
        <div class="container">
        	<div class="main-timeline" id="timeline-1">
                    <div class="timeline">
                        <div class="timeline-icon"></div>
                        <div class="timeline-content">
                            <span class="date">${saving_log.saving_date}</span>
                            <h5 class="title">${saving_log.saving_category} ${saving_log.saving_task}</h5>
                            <h4 class="title">+ ${saving_log.saving_changeWithComma}</h4>
                        </div>
                    </div>
            </div>
        </div>
     </div>
     </c:forEach>
    
   
	
	
</main>

 <jsp:include page="../include/bottom.jsp"/>
    
</body>
    
</html>