<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jQueryRotateCompressed.js"></script>
	
	<style>
		#image{
	  		margin:50px 50px;z-index:10;
		}
		#n_id{position:absolute;left:286px;top:75px;z-index:20;}
	</style>
	
	<script>
		window.onload = function(){
			
			var pArr = ["1p","꽝","3p","꽝","꽝","2p","꽝","1p","꽝","꽝"];
			
			$('#interest').text(${saving_vo.savinginterest}* 100);
			
			var coin = ${gameinfo_vo.coin};
			
			$('#coin_value').text(coin);
			
			
			$('#start_btn').click(function(){
				coin--;
				$('#coin_value').text(coin);
				rotation();
			});
			
		
			function rotation(){
				$("#image").rotate({
				  angle:0, 
				  animateTo:360 * 5 + randomize(0, 360),
				  center: ["50%", "50%"],
				  easing: $.easing.easeInOutElastic,
				  callback: function(){ 
								var n = $(this).getRotateAngle();
								endAnimate(n);
							},
				  duration:5000
			   });
			}
		
			function endAnimate($n){
				var n = $n;
				/* $('#result_id').html("<p>움직인각도:" + n + "</p>"); */
				var real_angle = n%360 +18;
				var part = Math.floor(real_angle/36);
			
				/* $('#result_id2').html("<p>상품범위:" + part + "</p>"); */
		
				if(part < 1){
					/* $('#result_id3').html("<p>당첨내역:" + pArr[0] + "</p>"); */
					return;
				}
		
				if(part >= 10){
					/* $('#result_id3').html("<p>당첨내역:" + pArr[pArr.length-1] + "</p>"); */
					return;
				}
		
				$('#result_id3').html("<p>당첨내역:" + pArr[part] + "</p>");
				
				if(pArr[part] == "꽝") {
					
					$('#result').text("아쉽지만 꽝이에요. 다음 기회에~");
					
				}
				
				else {
					
					$('#result').text("축하드립니다!! 하나머니 "+ pArr[part] + " 당첨");	
					
				}
				
				$('#exampleModal').modal();
				
				$('#result_cancel').click(function() {
					
					$('#interest').text(${saving_vo.savinginterest} * 100);
					
					if(pArr[part] == "1p") {
						
						$('#interest').text(${saving_vo.savinginterest}* 100 + 0.01);
					}
					
					else if(pArr[part] == "2p") {
						
						$('#interest').text(${saving_vo.savinginterest}* 100 + 0.02);
						
					}
					
					else if(pArr[part] == "3p") {
						
						$('#interest').text(${saving_vo.savinginterest}* 100 + 0.03);
						
					}
					
				});
				
			}
		
			function randomize($min, $max){
				return Math.floor(Math.random() * ($max - $min + 1)) + $min;
			}
		};
		</script>
	
	<jsp:include page="../incl/header.jsp"/>
	
	<!-- <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">행운의 룰렛</h3>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
        
    <section class="medilife-benefits-area section-padding-100-50" style="padding-bottom:0px; padding-top:40px;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h3><b>코인으로 금리를 증가시킬 수 있는 행운의 룰렛~!</b></h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="medilife-benefits-area section-padding-100-50" style="padding-bottom:0px; padding-top:10px;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h3><b>코인으로 금리를 증가시킬 수 있는 행운의 룰렛~!</b></h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <div class="medilife-features-area section-padding-100" style="padding-top:0px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-6">
                    <div class="features-content" style="margin-top:40px;">
                        <h3><b>코인으로 룰렛을 돌릴 수 있어요!!</b></h3>
                        <div class="single-service-area d-flex" style="margin-top:50px;">
                            <div class="service-icon">
                                <i class="icon-doctor"></i>
                            </div>
                            <div class="service-content">
                                <h5><b>${MemberVO.name}님의 현재 금리 정보</b></h5>
                                <h6><b>현재 금리 : <span id="interest"></span>%</b></h6>
                                <h6><b>현재 코인 개수 : <span id="coin_value"></span>개</b></h6><br>
                                <h6><b>완료한 목표저축을 공유하거나 </b></h6>
                                <h6><b>게임을통해 코인을 얻을 수 있어요</b></h6>
                            </div>
                        </div>   
                        <button type="button" style="padding:0px; height:auto; margin:auto; margin-left:220px;" id="start_btn" class="btn medilife-btn">룰렛 돌리기</button> 
                        <!-- <button type="submit" style="padding:0px; height:auto; margin:auto;"class="btn medilife-btn">룰렛 돌리기</button> -->                
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <%-- <div class="features-thumbnail">
                        <img src="${pageContext.request.contextPath }/resources/master/img/bg-img/about1.jpg" alt="">
                    </div> --%>
				<%-- <img src="${pageContext.request.contextPath }/resources/img/roulette.png" id="image"> --%>
				<img src="${pageContext.request.contextPath }/resources/img/niddle.png" id="n_id">
				<img src="${pageContext.request.contextPath }/resources/img/rul.png" id="image">
				<%-- <img src="${pageContext.request.contextPath }/resources/img/fortune-wheel.png" id="n_id"> --%>
				<br />
				
				<!-- <input type='button' value='시작' id='start_btn'></input> -->
				<div id="result_id"></div>
				<div id="result_id2"></div>
				<div id="result_id3"></div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">당첨내역</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <span id ="result"></span>
      </div>
      <div class="modal-footer">
        <button id="result_cancel" type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
    
    
    
    
    <script src="${pageContext.request.contextPath}/resources/master/js/bootstrap.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/master/js/active.js"></script>
    </body>
</html>
    