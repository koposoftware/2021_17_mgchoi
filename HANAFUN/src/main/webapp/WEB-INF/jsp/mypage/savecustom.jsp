<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8">
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    
   <style>
        p{
            line-height: 1;
            font-weight: 700;
        }
        h5{
            font-weight: 700;
        }
    </style>
    
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
	             url:"${pageContext.request.contextPath}/savecustom",
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
	            	 location.href="${pageContext.request.contextPath}/savecustom";
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
	        
	        
	    });
    
    </script>
	
	<jsp:include page="../incl/header.jsp"/>
	
	

    <!-- ***** Header Area End ***** -->
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title"><b>${MemberVO.name}님의 저축 CUSTOM</b></h3>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="medilife-benefits-area section-padding-100-50">
    	<form class="form-contact contact_form">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <div class="row">
                            <!-- ***** Milestones ***** -->
            				<div style="margin-bottom:50px;"class="features-content">
                            <h3><b>예상 저축액 & 회원들이 가장 많이 사용하는 규칙</b></h3>
                       		 </div>
                            <!-- Single Cool Fact-->
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="single-cool-fact-area text-center mb-100">
                                    <i class="icon-blood-transfusion-2"></i>
                                    <h2><span id="after_money" class="counter">${predict_money}</span></h2>
                                    <h3><b>이번주 예상 저축액</b></h3>
                                </div>
                            </div>
                            <!-- Single Cool Fact-->
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="single-cool-fact-area text-center mb-100">
                                    <i class="icon-atoms"></i>
                                    <h2><span class="counter">${fir_cnt}</span>명</h2>
                                    	<h3><b>매주UP!! </b></h3>	
                                </div>
                            </div>
                            <!-- Single Cool Fact-->
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="single-cool-fact-area text-center mb-100">
                                    <i class="icon-microscope"></i>
                                    <h2><span class="counter">${sec_cnt}</span>명</h2>
                                    <h3><b>슬금슬금</b></h3>
                                </div>
                            </div>
                            <!-- Single Cool Fact-->
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="single-cool-fact-area text-center mb-100">
                                    <i class="icon-doctor-1"></i>
                                    <h2><span class="counter">${thi_cnt}</span>명</h2>
                                    <h3><b>월급날 규칙</b></h3>
                                </div>
                            </div>
                        </div>
                        <div class="features-content">
                            <h3><b>내 맘대로 CUSTOM</b></h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row align-items-center" style="line-height: 1;">
                <div class="col-12 col-md-4">
                    <div class="single-benefits-area mb-50 text-right">
                        <div class="single-benefits-title d-flex align-items-end row-reverse">
                            <i class="icon-clipboard"></i>
                            <h5>매주UP!!</h5>
                            <c:if test="${saving_detail.first_status == 1 }">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="first_status" checked>
                                <label class="form-check-label" for="first_status"></label>
                            </div>
                            </c:if>
                            <c:if test="${saving_detail.first_status == 0 }">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="first_status">
                                <label class="form-check-label" for="first_status"></label>
                            </div>
                            </c:if>
                        </div>
                        <p>저축 기간 : ${weekVO.target_week_date}주</p>
                        <p>주마다 증가할 금액 : ${weekVO.target_week_balance}원</p>
                        <p>이 정도 증가하면 STOP!! : ${weekVO.target_week_stop}원</p>
                    </div>
                    <div class="single-benefits-area mb-50 text-right">
                        <div class="single-benefits-title d-flex align-items-end row-reverse">
                            <i class="icon-clipboard"></i>
                            <h5>느릿느릿</h5>
                            <c:if test="${saving_detail.second_status == 1 }">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="second_status" checked>
                                <label class="form-check-label" for="second_status"></label>
                            </div>
                            </c:if>
                            <c:if test="${saving_detail.second_status == 0 }">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="second_status">
                                <label class="form-check-label" for="second_status"></label>
                            </div>
                            </c:if>
                        </div>
                        <p>느릿느릿 저축</p>
                            <c:if test="${slowVO.target_slow_date == 1}">
									<p>저축 주기 : 매일</p>
								</c:if>
								
								<c:if test="${slowVO.target_slow_date == 7}">
									<p>저축 주기 : 매주</p>	
								</c:if>
								<c:if test="${slowVO.target_slow_date == 30}">
									<p>저축 주기 : 매월</p>
								</c:if>
                            <p>저축 금액 : ${slowVO.target_slow_balance}<</p>
                    </div>
                    <div class="single-benefits-area mb-50 text-right">
                        <div class="single-benefits-title d-flex align-items-end row-reverse">
                            <i class="icon-clipboard"></i>
                            <h5>반올림 저축</h5>
                            <c:if test="${saving_detail.four_status == 1 }">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="four_status" checked>
                                <label class="form-check-label" for="four_status"></label>
                            </div>
                            </c:if>
                            <c:if test="${saving_detail.four_status == 0 }">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="four_status">
                                <label class="form-check-label" for="four_status"></label>
                            </div>
                            </c:if>
                        </div>
                        <p>반올림 저축</p>
                        <p>잔돈의 ${banVO.target_ban_gob}배 저축</p>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="single-benefits-thumb">
                        <img src="${pageContext.request.contextPath }/resources/img/chook.png" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="single-benefits-area mb-50">
                        <div class="single-benefits-title d-flex align-items-end">
                            <i class="icon-flask-1"></i>
                            <h5>월급날 저축</h5>
                           <c:if test="${saving_detail.third_status == 1 }">
                            <div class="form-check form-switch">
                                <input style="margin-left:1px;" class="form-check-input" type="checkbox" id="third_status" checked>
                                <label class="form-check-label" for="third_status"></label>
                            </div>
                            </c:if>
                            <c:if test="${saving_detail.third_status == 0 }">
                            <div class="form-check form-switch">
                                <input style="margin-left:1px;" class="form-check-input" type="checkbox" id="third_status">
                                <label class="form-check-label" for="third_status"></label>
                            </div>
                            </c:if>
                        </div>
                        <p>월급날 저축</p>
                            <p>월급 : ${payVO.target_pay_balance}원</p>
                            <p>비율 : ${payVO.target_pay_rate}%</p>
                            <p>월급날 : 매달 ${payVO.target_pay_date}일</p>
                        
                    </div>
                    <div class="single-benefits-area mb-50">
                        <div class="single-benefits-title d-flex align-items-end">
                            <i class="icon-smartphone-1"></i>
                            <h5>과소비</h5>
                            <c:if test="${saving_detail.five_status == 1 }">
                            <div class="form-check form-switch">
                                <input style="margin-left:1px;" class="form-check-input" type="checkbox" id="five_status" checked>
                                <label class="form-check-label" for="five_status"></label>
                            </div>
                            </c:if>
                            <c:if test="${saving_detail.five_status == 0 }">
                            <div class="form-check form-switch">
                                <input style="margin-left:1px;" class="form-check-input" type="checkbox" id="five_status">
                                <label class="form-check-label" for="five_status"></label>
                            </div>
                            </c:if>
                        </div>
                        <p>소비 카테고리 : ${gwaVO.target_gwa_category}</p>
                        <p>저축 빈도 : ${gwaVO.target_gwa_cnt}회 이상</p>
                        <p>저축 금액 : ${gwaVO.target_gwa_balance}원</p>
                    </div>
                    <div class="single-benefits-area mb-50">
                        <div class="single-benefits-title d-flex align-items-end">
                            <i class="icon-nuclear"></i>
                            <h5>예산절감 저축</h5>
                            <c:if test="${saving_detail.six_status == 1 }">
                            <div class="form-check form-switch">
                                <input style="margin-left:1px;" class="form-check-input" type="checkbox" id="six_status" checked>
                                <label class="form-check-label" for="six_status"></label>
                            </div>
                            </c:if>
                            <c:if test="${saving_detail.six_status == 0 }">
                            <div class="form-check form-switch">
                                <input style="margin-left:1px;" class="form-check-input" type="checkbox" id="six_status">
                                <label class="form-check-label" for="six_status"></label>
                            </div>
                            </c:if>
                        </div>
                        <c:if test="${sanVO.target_san_date == 1}">
                        <p>저축주기 : 하루</p>
                        </c:if>
                        <c:if test="${sanVO.target_san_date == 7}">
                        <p>저축주기 : 매주</p>
                        </c:if>
                        <c:if test="${sanVO.target_san_date == 30}">
                        <p>저축주기 : 매달</p>
                        </c:if>
                        <p>예산 금액 : ${sanVO.target_san_balance}</p>
                    </div>
                </div>
            </div>
            <button onclick="doit()" style="float:right; background-color:#21b2a5; padding:0px; height:auto; margin:auto;"class="btn medilife-btn">설정변경</button>
        </div>
        </form>
    </section>

    

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="../incl/footer.jsp"/>

</body>

</html>