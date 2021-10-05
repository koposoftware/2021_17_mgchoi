<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>하나FUN</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/img/favicon.ico">

    <!-- Global Stylesheets -->
    <%-- <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style2.css">
    
    <!-- Core Stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/testimonials.css"> --%>
    
     <!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
	
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slider-pro/1.5.0/css/slider-pro.min.css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slider-pro/1.5.0/js/jquery.sliderPro.min.js"></script> 

    <style>

  .scene {
    width: 200px;
    height: 200px;
    margin: 20px;
    perspective:600px;
  }
  

  .rollBtn{
    background:black;
    color:white;
    border:none;
    margin:auto 0;
    font-size:1.5em;
    margin-top:1em;
    width:200px;
  }

  .cube {
    width:200px;
    height: 200px;
    position: relative;
    transform-style: preserve-3d;
    transform: translateZ(-100px);
    transition: transform 1s;
  }

  .cube.show-1  { transform: translateZ(-100px) rotateY(   0deg); }
  .cube.show-2  { transform: translateZ(-100px) rotateY(-180deg); }
  .cube.show-3  { transform: translateZ(-100px) rotateY( -90deg); }
  .cube.show-4   { transform: translateZ(-100px) rotateY(  90deg); }
  .cube.show-5   { transform: translateZ(-100px) rotateX( -90deg); }
  .cube.show-6 { transform: translateZ(-100px) rotateX(  90deg); }

  .cube__face {
    position: absolute;
    width: 200px;
    height: 200px;
    border: 4px solid white;
    line-height: 200px;
    font-size: 40px;
    font-weight: bold;
    color: white;
    text-align: center;
  }

  .cube__face--1  { background: black;  opacity: 0.75;}
  .cube__face--3  { background: black;   opacity: 0.75; }
  .cube__face--2  {  background: black;   opacity: 0.75; }
  .cube__face--4  {  background: black;   opacity: 0.75; }
  .cube__face--5   {  background: black;   opacity: 0.75; }
  .cube__face--6 {  background: black;  opacity: 0.75; }

  .cube__face--1  { transform: rotateY(  0deg) translateZ(100px); }
  .cube__face--2   { transform: rotateY(180deg) translateZ(100px); }
  .cube__face--3  { transform: rotateY( 90deg) translateZ(100px); }
  .cube__face--4   { transform: rotateY(-90deg) translateZ(100px); }
  .cube__face--5   { transform: rotateX( 90deg) translateZ(100px); }
  .cube__face--6 { transform: rotateX(-90deg) translateZ(100px); }

  label { margin-right: 10px; }

    </style>

	<script>
    
    $("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/moobyul.png");
    
    
    
    var cardUrlList = []; // 카드 URL 리스트
    var cardUpDownList = []; // 카드 상승 or 하락 리스트
    var cardTypeList = []; // 카드 종류 리스트
    var player_turn = 20;
    
    // 가져온 리스트 처리
    var aa = '${cardUrlList}';
    var cc = '${cardUpDownList}';
    var dd = '${cardTypeList}';
    
    var a = aa.slice(0, -1);
    var c = cc.slice(0, -1);
    var d = dd.slice(0, -1);
    
    a = a.slice(1);
    c = c.slice(1);
    d = d.slice(1);
    
    var a_split = a.split(',');
    var c_split = c.split(',');
    var d_split = d.split(',');
    
    for( var e in a_split ) {
    	
    	cardUrlList.push(a_split[e]);
    	cardUpDownList.push(c_split[e]);
    	cardTypeList.push(d_split[e]);
    }
    /////////////////// 리스트 삽입 ////////////////
    
    
    
    /////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    let news = [
		
		"2분기 서비스업 대출 33조↑…경영난·부동산 영향", "은행 부실채권비율 0.54%…4분기 연속 '역대 최저'", "중국 빅테크 압박 속 바이트댄스 증권 사업 포기",
		"2분기 서비스업 대출 33조↑…경영난·부동산 영향", "은행 부실채권비율 0.54%…4분기 연속 '역대 최저'", "중국 빅테크 압박 속 바이트댄스 증권 사업 포기",
		"2분기 서비스업 대출 33조↑…경영난·부동산 영향", "은행 부실채권비율 0.54%…4분기 연속 '역대 최저'", "중국 빅테크 압박 속 바이트댄스 증권 사업 포기",
		
		
	];
    
    let quiz = [
    	
    	"경제성장률과 물가상승률이 동시에 마이너스로 떨어지는 경기 침체 상황을 뜻하는 말은?",
    	"다음 중 현재 글로벌 금융시장에서 기축통화로 가장 널리 인정받고 있는 화폐는 무엇일까?",
    	"이자만 계속 내고 만기를 연장할 수 있는 채권을 말한다. 부채가 아닌 자본으로 분류되는 신종 자본증권인 이것은?",
    	"최근 경영계의 화두는 ‘ESG’다. 다음 중 약어를 올바르게 설명한 것은?"
    	
    	
    ];
    
    let quiz_bogi = [
    	
    	"1. 하이퍼인플레이션 2. 디플레이션 3. 스태그플레이션 4. 라디노미네이션",
    	"1. 위안 2. 달러 3. 유로 4. 엔", 
    	"1. 전환사채 2. 영구채 3. 기업어음 4. 회사채",
    	"1. E : 경제(economy) 2. E : 평등(equality) 3. S : 사회(society) 4. G : 젠더(gender)"
    	
    	
    ];
    
    let fail_card = [
    	
    	"부동산 가치 폭락으로 사회적 문제가 발생", "내가 투자한 기업이 파산, 주식에 투자한 원금 회수 불가",
    	"갑작스럽게 은행이 파산했다. 저축한 금액을 돌려받지 못한다."
    	
    ];
    
    var fail_cnt = 0;
    
    
    let quiz_answer = [
    	
    	"3", "2", "2", "3" 
    	
    ];
    
    var quiz_cnt = 0;
  
	let boodongsan_rate_cnt = 0;
	let zoosik_rate_cnt = 0;
	let chaegwon_rate_cnt = 0;
	
	//뉴스정보 카운팅
	let news_cnt = 0;
	
	//사용자의 현금
	let player_money = ${gameinfoVO.game_cash};
	//사용자의 이전 현금
	let prev_player_money = 0;
	//사용자 이전 게임 머니
	let prev_game_money = ${gameinfoVO.game_cash};
	
	//사용자의 총자산
	let total_money = ${gameinfoVO.game_cash};
	let prev_total_money = 0;
	
	let player_soyu = [
		
		2, 2, 2
		
	];
	
	// 사용자 자산 초기화 , 채권 , 부동산, 주식 카드 2장씩, 현금 0
	let player_boodongsan = 0;
	let player_zoosik = 0;
	let player_chaegwon = 0;
	let player_save = $("#start_save_money").val();
	
	
	// 사용자의 이전 자산
	let prev_player_boodongsan = 0;
	let prev_player_zoosik = 0;
	let prev_player_chaegwon = 0;
	
	//현재 자산현황 시세 초기화
	let boodongsan_sise = 100000000
	let zoosik_sise = 100000
	let chaegwon_sise = 10000000
	
	////////////////시세 data 배열 ///////////////
    let boo_sise_data = [];
    let chae_sise_data = [];
    let zoo_sise_data = [];
    
    let boo_label_data = [boodongsan_sise];
    let chae_label_data = [chaegwon_sise];
    let zoo_label_data = [zoosik_sise];
    
    //boo_sise_data.push(boodongsan_sise);
    //chae_sise_data.push(chaegwon_sise);
    //zoo_sise_data.push(zoosik_sise);
    
	
	//정답체크
	var ans_check = false;
	
	//////////////////////////////////////////////////////////////////////////////////////////
	/////////////////// 땅 정보 설정 -> CARD ////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////
	
	let other_card = [
		
		"내가 투자한 기업이 파산했다. 주식에 투자한 원금은 회수할 수 없다." , "갑작스럽게 은행이 파산했다. 적금의 3%만 국가가 보장한다."
		
	];
	
	
	let lands = [[	"🏁 출발지점!",		// 0번  칸 이름 
		"부동산News","채권News","주식News","부동산News","채권News","주식News","부동산News","채권News","주식News","저축이자받기",
		"부동산News","채권News","주식News","부동산News","채권News","주식News","부동산News","채권News","주식News","저축이자받기",
		"부동산News","채권News","주식News","부동산News","채권News","주식News","부동산News","채권News","주식News","저축이자받기",
		"부동산News","채권News","주식News","부동산News","채권News","주식News","부동산News","채권News","주식News"
	],
	[	"출발지점",	// 토지  출발지점은 월급을 준다.	1번
		5, 0, 8, 8, 20, 10, 0, 10, 12, 0,
		14, 0, 16, 16, 20, 18, 0, 18, 20, 0,
		22, 0, 24, 24, 50, 26, 26, 30, 28, 20,
		30, 45, 32, 32, 0, 35, 35, 15 ,100
	],
	[	0, 	//별장1		2번
		5, 0, 5, 5, 5, 5, 5, 5, 5, 0, 
		5, 5, 5, 5, 6, 6, 6, 6, 6, 6,
		6, 6, 6, 6, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 7
	],
	[	0,	//별장2		3번
		5, 0, 5, 5, 5, 5, 5, 5, 5, 0, 
		5, 5, 5, 5, 6, 6, 6, 6, 6, 6,
		6, 6, 6, 6, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 7
	],
	[	0,	//빌딩		4번
		18, 0, 18, 18, 18, 18, 18, 18, 18, 0, 
		25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 
		30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 
		35, 35, 35, 35, 35, 35, 35, 35, 35, 
	],
	[	0,	//호텔		5번
		35, 35, 35, 35, 35, 35, 35, 35, 35, 0,
		50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 
		75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 
		75, 75, 75, 100, 100, 100, 105, 105, 110
	],
	[	0,	// 소유자 저장 		6번!
		0,99,0,0,0,0,99,0,0,0,
		0,99,0,0,0,0,99,0,0,0,
		0,99,0,0,0,0,0,0,0,0,
		0,0,0,0,99,0,0,0,0
	]
	];
	
	//////////////////////////////////////////////////////////////////////////////////////////
	//1p Player만 설정 ( 현재는 )
	//////////////////////////////////////////////////////////////////////////////////////////
	let player=["<span class='horses' id='1p'><img style='width:80px; height:120px;' src='${pageContext.request.contextPath }/resources/img/board/zepetto.gif'></span>"];
	
	//초기화
	state = turn = donation = 0;	// 차례, 진행된 턴, 기부금
	point = [[1, 1, 1, 1], [1,1,1,1]];	// 방문 땅
	turnCount = round = [0, 0, 0, 0];	// 무인도 잔류 턴수, 돌은 바퀴수 
	console.log("초기화: "+state, turn, donation, point, turnCount, round);

	
	/////////////////////GAME////////////////////////////////////////
	//게임 진행 코드 시작
	$(document).ready(function() {
	
		// 준비 - 자바스크립트 로드  
		console.log("document ready");
		console.log("환영합니다.");
	
		
		// 1인 플레이 
		$("#1people").click( function() {		
			let player = 1;
			
			player_money = ${gameinfoVO.game_cash} - $("#start_save_money").val();
			
			player_save = $("#start_save_money").val();
			
			//사용자의 총자산 초기화
			total_money = (parseInt(player_boodongsan) * parseInt(boodongsan_sise)) + (parseInt(player_zoosik) * parseInt(zoosik_sise)) + (parseInt(player_chaegwon) *  chaegwon_sise) + parseInt(player_save) + parseInt(player_money);
			
			gameStart(player);
		

		});
		
		$("#end_ok").click( function() {
			
			document.getElementById("end_total_score2").value = total_money;
			var coin = 0;
			var cnt = 0;
			
			if(total_money <= 100000000) {
				
				coin = 1;
				
			}
			
			else if(total_money <= 200000000) {
				
				coin = 2;
			}
			
			else if(total_money <= 200000000) {
							
				coin = 3;
			}
						
			else if(total_money <= 200000000) {
				
				coin = 4;
			}
						
			else if(total_money <= 200000000) {
				
				coin = 5;
			}
						
			else if(total_money <= 200000000) {
				
				coin = 6;
			}
						
			else if(total_money <= 200000000) {
				
				coin = 7;
			}
						
			else if(total_money <= 200000000) {
				
				coin = 8;
			}
						
			else if(total_money <= 200000000) {
				
				coin = 9;
			}
						
			else if(total_money <= 200000000) {
				
				coin = 10;
			}
			
			location.href = "${pageContext.request.contextPath}/gameresult?gamescore=" + document.getElementById('end_total_score2').value
					+ "&coin=" + coin + "&prev_gamescore=" + ${gameinfoVO.game_cash};
			
			
		});
		
		function sleep (delay) {
			   var start = new Date().getTime();
			   while (new Date().getTime() < start + delay);
		}
		
		
		// 플레이 버튼 클릭 click!!!!
		$("#play").click( function() {		
			
			console.log("주사위를 굴렸습니다!");
			var ran1 = rollDice();	// 랜덤으로 수를 뽑는 함수
			
			///letsMove
			
			setTimeout(function() {
				letsMove(ran1);

			}, 1000)
			
			$("#playersTurn").empty();
			$("#playersTurn").append("<strong class='text-primary'>플레이어"+(state+1)+"</strong>님의 턴이 지났어요!");	
			
			// 턴 검사
//			if(turn>20){
//				alert("게임 종료!! 승자는 누구입니다.");
//				return;
//			}	

			
			
			
			// 게임 진행 
			//letsMove(ran1);
			
			
			
			console.log("다음 플레이어로 차례가 넘어갔습니다.");
			//state++;
			
			checkMax();
			
			
		});
		///////////////////////////////////////////////////////////////
		/////////////////////// 나중에 /////////////////////////////////
		//////////////////////////////////////////////////////////////
		$("#buyZoosik").click( function() {
			console.log("주식 구입");
			$("#landConfirm").modal("hide"); //닫기
			
		});
		
		$("#buyBoodongsan").click( function() {
			console.log("부동산 구입");
			alert('부동산 구입!!');
			
			//$("#landConfirm").modal("hide"); //닫기 
		});
		
		$("#buyChaegwon").click( function() {
			console.log("채권 구입");
			$("#landConfirm").modal("hide"); //닫기 
		});
		
		$("#sellZoosik").click( function() {
			console.log("주식 구입");
			$("#landConfirm").modal("hide"); //닫기 
		});
		
		$("#sellBoodongsan").click( function() {
			console.log("부동산 구입");
			$("#landConfirm").modal("hide"); //닫기 
		});
		
		$("#sellChaegwon").click( function() {
			console.log("채권 구입");
			$("#landConfirm").modal("hide"); //닫기 
		});
		//////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////
		
		//////////////////////////////////////////////////////
		//////////////// 추가적인 저축이자 캔슬 ////////////////////
		/////////////////////////////////////////////////////
		$("#iza_cancel_data").click( function() {
			
			total_money = parseInt((player_save * (3/100))) + parseInt(total_money);
			player_save = 0;
			
			$("#1pMoney").empty();
			$("#player_save").empty();
			
			$("#player_save").text(priceToString(player_save));
			$("#1pMoney").text(priceToString(player_money));
			
			//total_money = (parseInt(player_boodongsan) * parseInt(boodongsan_sise)) + (parseInt(player_zoosik) * parseInt(zoosik_sise)) + (parseInt(player_chaegwon) *  chaegwon_sise) + parseInt(player_save) + parseInt(player_money);
			//alert(total_money);
			$("#total_money").empty();
			$("#total_money").text(priceToString(total_money));
			$("#player_total_turn").empty();
			$("#player_total_turn").text(player_turn);
			
			$("#iza").modal("hide"); //닫기
			
			if(player_turn == 0) {
				
				$("#end_total_money").empty();
				$("#end_total_score").empty();
				
				//$("#end_total_money").text(priceToString(prev_game_money));
				$("#end_total_money").text(priceToString(prev_game_money));
				$("#end_total_score").text(priceToString(total_money));
				$("#end_total_score2").text(priceToString(total_money));
				$("#end_modal").modal({backdrop: 'static'});
				
			}
			
		});
		
		$("#submit_answer").click( function() {
			//정답일 때,
			if($("#answer").val() == quiz_answer[0]) {
				
				player_turn--;
				
				alert('정답입니다');
				$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/goodbyul.gif");
				
				$("#quiz_modal").modal("hide");
				
				if(player_turn == 0) {
					
					$("#end_total_money").empty();
					$("#end_total_score").empty();
					
					//$("#end_total_money").text(priceToString(prev_game_money));
					$("#end_total_money").text(priceToString(100000000));
					$("#end_total_score").text(priceToString(total_money));
					$("#end_total_score2").text(priceToString(total_money));
					$("#end_modal").modal({backdrop: 'static'});
					
				}
				
			}
			
			//오답일 때,
			else {
				
				alert('오답입니다');
				$("#quiz_modal").modal("hide");
				$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/sadbyul2.gif");
				player_turn--;
				
				if(player_turn == 0) {
					
					$("#end_total_money").empty();
					$("#end_total_score").empty();
					
					//$("#end_total_money").text(priceToString(prev_game_money));
					$("#end_total_money").text(priceToString(100000000));
					$("#end_total_score").text(priceToString(total_money));
					$("#end_total_score2").text(priceToString(total_money));
					$("#end_modal").modal({backdrop: 'static'});
					
				}
			}
			
		});
		
			$("#submit_answer2").click( function() {
				
				//정답일 때,
				if($("#answer2").val() == quiz_answer[1]) {
					player_turn--;
					alert('정답입니다');
					$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/goodbyul.gif");
					$("#quiz_modal2").modal("hide");
					$("#quiz_modal").modal("hide");
					
					if(player_turn == 0) {
						
						$("#end_total_money").empty();
						$("#end_total_score").empty();
						
						//$("#end_total_money").text(priceToString(prev_game_money));
						$("#end_total_money").text(priceToString(100000000));
						$("#end_total_score").text(priceToString(total_money));
						$("#end_total_score2").text(priceToString(total_money));
						$("#end_modal").modal({backdrop: 'static'});
						
					}
					
					
				}
				
				//오답일 때,
				else {
					player_turn--;
					alert('오답입니다');
					$("#quiz_modal2").modal("hide");
					$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/sadbyul2.gif");
					
					if(player_turn == 0) {
						
						$("#end_total_money").empty();
						$("#end_total_score").empty();
						
						//$("#end_total_money").text(priceToString(prev_game_money));
						$("#end_total_money").text(priceToString(100000000));
						$("#end_total_score").text(priceToString(total_money / 1000));
						$("#end_total_score2").text(priceToString(total_money));
						$("#end_modal").modal({backdrop: 'static'});
						
					}
				}
				
			});
		
			$("#submit_answer3").click( function() {
			
				//정답일 때,
				if($("#answer3").val() == quiz_answer[2]) {
					player_turn--;
					alert('정답입니다');
					$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/goodbyul.gif");
					$("#quiz_modal").modal("hide");
					$("#quiz_modal2").modal("hide");
					$("#quiz_modal3").modal("hide");
					
					if(player_turn == 0) {
						
						$("#end_total_money").empty();
						$("#end_total_score").empty();
						
						//$("#end_total_money").text(priceToString(prev_game_money));
						$("#end_total_money").text(priceToString(100000000));
						$("#end_total_score").text(priceToString(total_money));
						$("#end_total_score2").text(priceToString(total_money));
						$("#end_modal").modal({backdrop: 'static'});
						
					}
					
				}
			
			//오답일 때,
			else {
				player_turn--;
				alert('오답입니다');
				$("#quiz_modal3").modal("hide");
				$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/sadbyul2.gif");
				
				if(player_turn == 0) {
					
					$("#end_total_money").empty();
					$("#end_total_score").empty();
					
					//$("#end_total_money").text(priceToString(prev_game_money));
					$("#end_total_money").text(priceToString(100000000));
					$("#end_total_score").text(priceToString(total_money / 1000));
					$("#end_total_score2").text(priceToString(total_money));
					$("#end_modal").modal({backdrop: 'static'});
					
				}
			}
			
		});
		
		
		//////////////////////////////////////////////
		//저축 칸 이동시 처리 function/////////////////////
		//////////////////////////////////////////////
		$("#submit_save_data").click( function() {
			
			//다시 저축을 원하는 사람이라면
			if($("#save_check").val().length != 0) {
				
				player_money = player_money - $("#save_check").val();
				player_save = $("#save_check").val();
				
				$("#1pMoney").text(priceToString(player_money));
				
				$("#player_save").text(priceToString(player_save));
				
				prev_total_money = total_money;
				total_money = (parseInt(player_boodongsan) * parseInt(boodongsan_sise)) + (parseInt(player_zoosik) * parseInt(zoosik_sise)) + (parseInt(player_chaegwon) *  chaegwon_sise) + parseInt(player_save) + parseInt(player_money);
				$("#total_money").empty();
				$("#total_money").text(priceToString(total_money));
				
			}
			
			//그렇지 않은 사람이라면 진행
			else {
			
				
			}
			
			
			$("#iza").modal("hide"); //닫기 
		});	
		
		//////////////////////////////////////////////////////////////
		///////////////// 닫기 버튼 ////////////////////////////////////
		//////////////////////////////////////////////////////////////
		$("#card_close").click( function() {
			
			$("#result_info").modal("hide"); //닫기 
		});	
		
		$("#fail_ok").click( function() {
			
			$("#fail_modal").modal("hide");
			total_money = (parseInt(player_boodongsan) * parseInt(boodongsan_sise)) + (parseInt(player_zoosik) * parseInt(zoosik_sise)) + (parseInt(player_chaegwon) *  chaegwon_sise) + parseInt(player_save) + parseInt(player_money);
			$("#total_money").empty();
			$("#total_money").text(priceToString(total_money));
			$("#player_total_turn").empty();
			$("#player_total_turn").text(player_turn);
		});
		
		//////////////////////////////////////////////////////////////
		//////////////////////// 사용자의 선택 ///////////////////////////
		//////////////////////////////////////////////////////////////
		////////////////////// 매수 / 매도 //////////////////////////////
		//////////////////////////////////////////////////////////////
		
		$("#submit_data").click( function() {
			
			//이전 순자산의 합
			prev_player_money = player_money + (player_boodongsan * boodongsan_sise) + (player_zoosik * zoosik_sise) 
						+ (player_chaegwon * chaegwon_sise);
			
			console.log(player_money);
			console.log(player_boodongsan);
			console.log(boodongsan_sise);
			
		
			
			if($("#boodongsan_count").val() >= 1) {
				
				//부동산 매수
				//플레이어 돈 내리고 부동산 개수만큼 주기
				if($('#boodongsan_check').val() == 'boodongsan_buy') {
					
					player_money = player_money - ( boodongsan_sise * $("#boodongsan_count").val() );
					player_boodongsan = parseInt(player_boodongsan) + parseInt($("#boodongsan_count").val());
					
					$("#landPrice").empty();
					$("#remainMoney").empty();
					$("#1pMoney").empty();
					$("#player_boodongsan").empty();
					
					$("#1pMoney").text(priceToString(player_money));
					$("#landPrice").text(priceToString(player_boodongsan));
					$("#remainMoney").text(priceToString(player_money));
					$("#player_boodongsan").text(priceToString(player_boodongsan));
					
				}
				//부동산 매도
				//플레이어 돈 올리고 부동산 뺏기
				else if($('#boodongsan_check').val() == 'boodongsan_sell') {
					
					//유저 돈 -- , 부동산 보유량 증가
					player_money = player_money + ( boodongsan_sise * $("#boodongsan_count").val() );
					player_boodongsan = parseInt(player_boodongsan) - parseInt($("#boodongsan_count").val());
					
					// UI 셋팅
					$("#landPrice").empty();
					$("#remainMoney").empty();
					$("#1pMoney").empty();
					$("#player_boodongsan").empty();
					
					$("#1pMoney").text(priceToString(player_money));		
					$("#landPrice").text(priceToString(player_boodongsan));
					$("#remainMoney").text(priceToString(player_money));
					$("#player_boodongsan").text(priceToString(player_boodongsan));
				}
				
			}
			
			if($("#chaegwon_count").val() >= 1) {
				
				
				//채권 매수
				//플레이어 돈 내리고 부동산 개수만큼 주기
				if($('#chaegwon_check').val() == 'chaegwon_buy') {
					
					
					
					player_money = player_money - ( chaegwon_sise * $("#chaegwon_count").val() );
					player_chaegwon = parseInt(player_chaegwon) + parseInt($("#chaegwon_count").val());
					
					$("#house2Price").empty();
					$("#remainMoney").empty();
					$("#1pMoney").empty();
					$("#player_chaegwon").empty();
					
					$("#1pMoney").text(priceToString(player_money));
					$("#house2Price").text(player_chaegwon);
					$("#remainMoney").text(priceToString(player_money));
					$("#player_chaegwon").text(player_chaegwon);
					
				}
				//채권 매도
				//플레이어 돈 올리고 부동산 뺏기
				else if($('#chaegwon_check').val() == 'chaegwon_sell') {
					
					//유저 돈 -- , 부동산 보유량 증가
					player_money = player_money + ( chaegwon_sise * $("#chaegwon_count").val() );
					player_chaegwon = parseInt(player_chaegwon) - parseInt($("#chaegwon_count").val());
					
					// UI 셋팅
					$("#house2Price").empty();
					$("#remainMoney").empty();
					$("#1pMoney").empty();
					$("#player_chaegwon").empty();
					
					$("#1pMoney").text(priceToString(player_money));		
					$("#house2Price").text(priceToString(player_chaegwon));
					$("#remainMoney").text(priceToString(player_money));
					$("#player_chaegwon").text(player_chaegwon);
				}
				
			}
			
			
			if($("#zoosik_count").val() >= 1) {
				
				//주식 매수
				//플레이어 돈 내리고 부동산 개수만큼 주기
				if($('#zoosik_check').val() == 'zoosik_buy') {
					
					
					player_money = player_money - ( zoosik_sise * $("#zoosik_count").val() );
					player_zoosik = parseInt(player_zoosik) + parseInt($("#zoosik_count").val());
					
					$("#house3Price").empty();
					$("#remainMoney").empty();
					$("#1pMoney").empty();
					$("#player_zoosik").empty();
					
					$("#1pMoney").text(priceToString(player_money));
					$("#house3Price").text(player_zoosik);
					$("#remainMoney").text(priceToString(player_money));
					$("#player_zoosik").text(player_zoosik);
					
				}
				//주식 매도
				//플레이어 돈 올리고 부동산 뺏기
				else if($('#zoosik_check').val() == 'zoosik_sell') {
					
					//유저 돈 -- , 부동산 보유량 증가
					player_money = player_money + ( zoosik_sise * $("#zoosik_count").val() );
					player_zoosik = parseInt(player_zoosik) - parseInt($("#zoosik_count").val());
					
					// UI 셋팅
					$("#house3Price").empty();
					$("#remainMoney").empty();
					$("#1pMoney").empty();
					$("#player_zoosik").empty();
					
					$("#1pMoney").text(priceToString(player_money));		
					$("#house3Price").text(player_zoosik);
					$("#remainMoney").text(priceToString(player_money));
					$("#player_zoosik").text(player_zoosik);
				}
				
			}	
			
			
			//1Step 메수 or 매도 Modal을 닫는다.
			$("#landConfirm").find('form')[0].reset()
			$("#landConfirm").modal("hide"); //닫기
			
			//////////////////////////// 시세변동 Event //////////////////////////
			//상승
			if(cardUpDownList[news_cnt].indexOf('상승') != -1) {
				
			$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/goodbyul.gif");
			
			var random_val = Math.floor(Math.random() * 3) + 1;
			
			if(cardTypeList[news_cnt].indexOf('부동산') != -1) {
				
				
				result_str = "부동산 시세 " + random_val + "% 상승";
				$("#boodongsan_sise").text(priceToString(boodongsan_sise + boodongsan_sise * random_val/100));
				boodongsan_sise = parseInt(boodongsan_sise) + parseInt(boodongsan_sise * random_val/100);
				
			}
			
			else if(cardTypeList[news_cnt].indexOf('채권') != -1) {

				
				result_str = "채권 시세 " + random_val + "% 상승";
				$("#chaegwon_sise").text(priceToString(chaegwon_sise + chaegwon_sise * random_val / 100));
				chaegwon_sise = parseInt(chaegwon_sise) + parseInt(chaegwon_sise * random_val / 100);
			}
			
			else if(cardTypeList[news_cnt].indexOf('주식') != -1)  {
				
				
				result_str = "주식 시세 " + random_val + "% 상승";
				$("#zoosik_sise").text(priceToString(zoosik_sise + zoosik_sise * random_val / 100 ));
				zoosik_sise = parseInt(zoosik_sise) + parseInt(zoosik_sise * random_val/100 );
				
			}

			
		} else {
			
			var random_val = Math.floor(Math.random() * 3) + 1;
			
			$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/sadbyul2.gif");
			
			if(cardTypeList[news_cnt].indexOf('부동산') != -1) {
				
				
				result_str = "부동산 시세 " + random_val + "% 하락";
				$("#boodongsan_sise").text(priceToString(boodongsan_sise - boodongsan_sise * random_val/100));
				boodongsan_sise = parseInt(boodongsan_sise) - parseInt(boodongsan_sise * random_val / 100);
				$("#sise_plus").text(result_str);
				
			}
			
			else if(cardTypeList[news_cnt].indexOf('채권') != -1) {
				
				result_str = "채권 시세 " + random_val + "% 하락";
				$("#chaegwon_sise").text(priceToString(chaegwon_sise - chaegwon_sise * random_val / 100));
				chaegwon_sise = parseInt(chaegwon_sise) - parseInt(chaegwon_sise * random_val / 100);
				$("#sise_plus").text(result_str);
			}
			
			else if(cardTypeList[news_cnt].indexOf('주식') != -1) {
				
				
				result_str = "주식 시세 " + random_val + "% 하락";
				$("#zoosik_sise").text(priceToString(zoosik_sise - zoosik_sise * random_val / 100 ));
				zoosik_sise = parseInt(zoosik_sise) - parseInt(zoosik_sise * random_val / 100);
				$("#sise_plus").text(result_str);
				
			}
			
			
		}
			
			news_cnt++;
			// 차트업데이트
			
			
			/////////////////////////////////////////////////////////////////////////
			
			//2Step 뉴스컨텐츠와 시세변동을 보여준다.
			$("#news-content2").empty();
			$("#news-content2").text('뉴스 기사로 인해서 다음과 같이 변동했어요!');
			$("#sise_plus").empty();
			$("#sise_plus").text(result_str);
			$("#news_info").modal({backdrop: 'static'});
			
			//3Step 사용자의 선택으로 어떻게 변화했는지 보여준다.
			///////// 이거 없애라 했음
			
			 /* $("#next_btn").click( function() {
				
				$("#news_info").modal("hide");
				
				total_money = (parseInt(player_boodongsan) * parseInt(boodongsan_sise)) + (parseInt(player_zoosik) * parseInt(zoosik_sise)) + (parseInt(player_chaegwon) *  chaegwon_sise) + parseInt(player_save) + parseInt(player_money);
				$("#total_money").empty();
				$("#total_money").text(priceToString(total_money));
				
			}); 
			 */
			/////////////////////////// 일단대기
			
			
		});
		
		//1Step -> 뉴스 정보를 보여주고 Modal을 닫는다.
		//2Step -> 뉴스관련 해석 
		//3Step -> 선택한 판단에 있어서 순자산 보여주기
		$("#landConfirm").modal("hide"); //뉴스 정보 보여준거 닫기
			
		
		//onready 끝
	
	})
	
	//////////////////////////////////////////////////////////////////////
	
	///////////////////////// function ////////////////////////////////////

	//게임 시작 
	function gameStart(players) {
		
		console.log((players)+"인 게임 스타트! ")
		$("#gameAlert").addClass("no_hover");
	//	console.log(this)	
		$("span").empty();
		switch (players){
	    case 1 :
	    	money = [ (283*2) , 0, 0, 0];
	        break;
	    case 2 :
	    	money = [ 283 , 283, 283, 0];
	        break;
	    case 3 :
	    	money = [ 283 , 283, 283, 283];
	        break;
	    default :
	    	alert("오류!!!게임을 다시 시작해주세요 ");
		}
		
		
		
		for (var i = 0; i < players; i++) {
	//		console.log(player[i]);
			$("#p1").append(player[i]);
			$("#"+(i+1)+"pMoney").text(priceToString(player_money));
			//$("#"+(i+1)+"pRound").text(round[i])
			//////// 사용자 자산 현황 등록 ////////
			$("#player_boodongsan").text(priceToString(player_boodongsan));
			$("#player_zoosik").text(priceToString(player_zoosik));
			$("#player_chaegwon").text(priceToString(player_chaegwon));
			$("#player_save").text(priceToString($("#start_save_money").val()));
			
			///////////// 시세등록 /////////////
			$("#boodongsan_sise").text(priceToString(100000000));
			$("#zoosik_sise").text(priceToString(100000));
			$("#chaegwon_sise").text(priceToString(10000000));
			$("#total_money").text(priceToString(total_money));
			$("#player_total_turn").text(player_turn);
			
			$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/moobyul.png");

		}
		//예를들어서 
		//값바뀔떄마다 배열에 추가 
		
		//초기화///////////////////
		state = turn = donation = 0;	// 차례, 진행된 턴, 기부금
		point = [[1, 1, 1, 1], [1,1,1,1]];	// 방문 땅
		turnCount = round = [0, 0, 0, 0];	// 무인도 잔류 턴수, 돌은 바퀴수 
		console.log("초기화: "+state, turn, donation, point, turnCount, round);
		///////////////////////////////
	
		// n인 스타트 ! 알림
		//$("#playersTurn").empty();
		//$("#playersTurn").append("<strong class='text-danger'>"+(maxState+1)+"인 게임 스타트!!!</strong><br>");	
		//$("#playersTurn").append("<strong class='text-primary'>플레이어"+(state+1)+"</strong>님 차례입니다!");	
		
	}
	
	//숫자 컴마 찍는 함수, 자산 표현할 때 ,000,000
	function priceToString(price) {
	    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
	
	// 주사위 굴림 함수 
	function rollDice() {
		console.log("rolled Dice!!");
		
		// 두개 주사위 굴리기
		ran1 = 1
		ran2 = 0
		
		// 수 랜덤으로 뽑아 value값에 넣기
		$("#dice1").val(ran1);
		$("#dice2").val(ran2);		
		console.log("현재 현황",point[1])
		
		
		return ran1, ran2;
	}
	
	
	
	
	// 주사위 굴려 게임 진행하기
	function letsMove(ran1, ran2) {	
		console.log("letsMove")
		
		// 두 주사위의 수 합 
		let sum = ran1;
		
		player_turn--;
		
		
		
		// 40이 넘으면 다시 1부터 
		if (point[0][state] + sum < 41) {
			point[1][state] = point[0][state] + sum;
		} else {
			point[1][state] = point[0][state] + sum - 40;
			round[state]++;
			//getSalary();	// 월급 지급 
		}

		console.log("결과:",point[1][state])
		$("#point").val(point[1][state]);
		
		
		//경제대공황
		//왼쪽 맨아래
		//if(point[0][state] == 31){
		//	alert(" 방문 하고 싶은 곳을 선택하세요 !");
		//	
		//	return;
		//}
		
		
		// 말 이동 -> 1. 말 제거 2. 도착 한 칸에 말 출력
		$("#p"+point[0][state]).children("span").remove("#"+(state+1)+"p"); 
		///////////////제거
		let afterId = "#p" + point[1][state];
		$(afterId).append(player[state]);
		point[0][state] = point[1][state];
		
		// 도착한 곳?
		let arrived = lands[0][point[1][state]-1];
		console.log("도착한 곳 : ",arrived,"플레이어: ", state+1);
		
		// 플레이어가 도착한 지점 검사 
		switch (point[1][state]) {
		
			// 출발지점
			case 1:
				//alert("출발 지점이에요 ! 월급을 받았어요 :) \n 현재 나의 잔고에는 "+money[state]+"만원이 있어요");	// 주사위 굴리면서 월급을 지급했음. 여기서는 월급 지급할 필요 없음.
				checkDouble(ran1, ran2);
				return;		
				
			// 경제대공황
			case 11:
				
				
				$("#quiz").empty();
				$("#quiz").text(quiz[quiz_cnt]);
				$("#bogi").text(quiz_bogi[quiz_cnt]);
				$("#quiz_modal").modal({backdrop: 'static'});
				
				quiz_cnt++;
				$("#quiz2").empty();
				$("#quiz2").text(quiz[quiz_cnt]);
				$("#bogi2").text(quiz_bogi[quiz_cnt]);
				$("#quiz_modal2").modal({backdrop: 'static'});
				
				quiz_cnt++;
				$("#quiz3").empty();
				$("#quiz3").text(quiz[quiz_cnt]);
				$("#bogi3").text(quiz_bogi[quiz_cnt]);
				$("#quiz_modal3").modal({backdrop: 'static'});
				
				
				
				return;
				
			// 저축이자 받기
			case 21:
				 // 도착한 곳이 무인도 이면 리턴. 맨왼쪽좌측
				///////////////////////////////// 저축이자랑 원금받기 /////////////////////////////////
				//////////////////////////////////// 현금 + 저축금액 * 3퍼센트 //////////////////////////////
				$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/goodbyul.gif");
				// 토지 정보 알림창에 입력
				insertLandInfo(point[1][state]-1, state);
				
				//원래 현금은 player_money , 현금 + 저축금액 * 3퍼센트를 iza_result_remainMoney에
				$("#iza_remainMoney").empty();
				$("#iza_result_remainMoney").empty();
				
				$("#iza_remainMoney").text(player_money);
				
				player_money = parseInt(player_money) + parseInt(player_save) +  parseInt((player_save * 0.03));
			
				$("#iza_result_remainMoney").text(player_money);
				
				
				//알림창 출력
				$("#iza").modal({backdrop: 'static'});	
				//$("#iza-footer").append("<button type='button' id='iza_cancel' class='btn btn-block btn-danger' data-dismiss='modal' style='font-style: italic;'>아무것도 안할래요 </button>");
				
				///////////////////////////////// 다시 저축하기 /////////////////////////////////////
				return; 
				
			// 기부
			//case 39:
				//alert("기부 해야 합니다. ! 20만원을 사회에 기부하세요. \n 좋은일을 하시는군요? :D");
			//	console.log("잔액: "+money[state]);
			//	donation+=20;
			//	money[state] -= 20;
			//	console.log("누적 기부금액 : "+donation+"지불 후 잔액: "+money[state]);
			//	resetPlayerMoney(state)
			//	checkDouble(ran1, ran2);
			//	break;
			
			//함정카드
			case 31:
				
				if(fail_cnt == 0) {
					
					$("#fail_card_title").empty();
					$("#fail_card_title").text(fail_card[fail_cnt]);
					$("#fail_card_sise").text("부동산 시세 -30%");
					boodongsan_sise = boodongsan_sise - boodongsan_sise * 30/100;
					
				}
				
				else if(fail_cnt == 1) {
					
					$("#fail_card_title").empty();
					$("#fail_card_title").text(fail_card[fail_cnt]);
					$("#fail_card_sise").text("보유 주식 모두 -100%");
					zoosik_sise = 0;
				}
				
				else if(fail_cnt == 3) {
									
					$("#fail_card_title").empty();
					$("#fail_card_title").text(fail_card[fail_cnt]);
					$("#fail_card_sise").text("저축금액을 모두 잃습니다.");	
					player_save = 0;
				}
								
				fail_cnt++;
				
				$("#fail_modal").modal({backdrop: 'static'});
				
				
				return; 
				
			default:

				break;
		}
		

			
		// 토지 정보 알림창에 입력
		insertLandInfo(point[1][state]-1, state); 
		//알림창 출력
		$("#landConfirm").modal({backdrop: 'static'});	
			
		 checkDouble(ran1, ran2);
		
	}
	
	
	
	// 특정 플레이어 돈 정보 갱신
	function resetPlayerMoney(state){
		console.log((state+1)+"플레이어 머니정보 갱신");
		$("#"+(state+1)+"pMoney").text(money[state]);
	}
	
	// 더블 검사 
	function checkDouble(ran1, ran2){
		if(ran1 == ran2){
			state--;
			$("#playersTurn").append("<p class='text-warning italic' style='margin-top:8px; font-style:italic'>더블입니다! 한번 더!</p>");
		}
	}
	
	// Max state 검사
	function checkMax() {
		console.log("checkMax")
		if(state > 40){
			state = 0; 
			// 진행된 턴수 증가 
			turn ++;
			console.log("턴증가! ",turn,"state = "+state);
		}
	}
	///정보선택
	//알림창에 정보 입력 
	function insertLandInfo(landNum, state) {
	// 배열을 불러올때 배열은 0부터 시작하므로 함수에 값을 넣어줄 때 변수에서 반드시 1을 뺀 값이 들어올 수 있도록 해줄 것!!!
	console.log(lands[0][landNum]+"에 도착 !");
	
	// 글자 비우기
	$("#landName").empty();
	$("#landPrice").empty();
	$("#house1Price").empty();
	$("#house2Price").empty();
	$("#buildingPrice").empty();
	$("#hotelPrice").empty();
	$("#remainMoney").empty();
	$("#landModal-footer").empty();
	$("#news-content").empty();
	$("#sise_plus").empty();
	//$("#player_save").empty();
	$("#house3Price").empty();
	
	// 값 출력
	//$("#landName").text(lands[0][landNum]);
	$("#landName").text(cardTypeList[news_cnt] + 'News');
	$("#landPrice").text(priceToString(player_boodongsan));
	//$("#house1Price").text(player_soyu[1]);
	$("#house2Price").text(priceToString(player_chaegwon));
	$("#house3Price").text(priceToString(player_zoosik));
	//news 출력
	$("iframe").attr("src", cardUrlList[news_cnt].replace('https', 'http'));
	$("#news-content").text(news[news_cnt]);
	
	$("#buildingPrice").text(lands[4][landNum]);
	$("#hotelPrice").text(lands[5][landNum]);
	//$("#player_save").text(0);
	
	
	console.log("잔액: " ,money[state]);
	$("#remainMoney").text(priceToString(player_money));
	$("#landModal-footer").append("<button id = 'cancel_modal' type='button' class='btn btn-block btn-danger' style='font-style: italic;'>아무것도 안할래요 </button>");
	
	
	$("#cancel_modal").click( function() {
		
		var result_str;
		
		if(cardUpDownList[news_cnt].indexOf('상승') != -1) {
			
			var random_val = Math.floor(Math.random() * 3) + 1;
		
			$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/goodbyul.gif");
			
			if(cardTypeList[news_cnt].indexOf('부동산') != -1) {
				
				
				result_str = "부동산 시세 " + random_val + "% 상승";
				$("#boodongsan_sise").text(priceToString(boodongsan_sise + boodongsan_sise * random_val/100));
				boodongsan_sise = parseInt(boodongsan_sise) + parseInt(boodongsan_sise * random_val/100);
				
			}
			
			else if(cardTypeList[news_cnt].indexOf('채권') != -1) {

				
				result_str = "채권 시세 " + random_val + "% 상승";
				$("#chaegwon_sise").text(priceToString(chaegwon_sise + chaegwon_sise * random_val / 100));
				chaegwon_sise = parseInt(chaegwon_sise) + parseInt(chaegwon_sise * random_val / 100);
			}
			
			else if(cardTypeList[news_cnt].indexOf('주식') != -1)  {
				
				
				result_str = "주식 시세 " + random_val + "% 상승";
				$("#zoosik_sise").text(priceToString(zoosik_sise + zoosik_sise * random_val / 100 ));
				zoosik_sise = parseInt(zoosik_sise) + parseInt(zoosik_sise * random_val/100 );
				
			}

			
		} else {
			
			$("#byul").attr("src", "${pageContext.request.contextPath }/resources/img/board/sadbyul2.gif");
			
			var random_val = Math.floor(Math.random() * 3) + 1;
			
			
			if(cardTypeList[news_cnt].indexOf('부동산') != -1) {
				
				
				result_str = "부동산 시세 " + random_val + "% 하락";
				$("#boodongsan_sise").text(priceToString(boodongsan_sise - boodongsan_sise * random_val/100));
				boodongsan_sise = parseInt(boodongsan_sise) - parseInt(boodongsan_sise * random_val / 100);
				$("#sise_plus").text(result_str);
				
			}
			
			else if(cardTypeList[news_cnt].indexOf('채권') != -1) {
				
				result_str = "채권 시세 " + random_val + "% 하락";
				$("#chaegwon_sise").text(priceToString(chaegwon_sise - chaegwon_sise * random_val / 100));
				chaegwon_sise = parseInt(chaegwon_sise) - parseInt(chaegwon_sise * random_val / 100);
				$("#sise_plus").text(result_str);
			}
			
			else if(cardTypeList[news_cnt].indexOf('주식') != -1) {
				
				
				result_str = "주식 시세 " + random_val + "% 하락";
				$("#zoosik_sise").text(priceToString(zoosik_sise - zoosik_sise * random_val / 100 ));
				zoosik_sise = parseInt(zoosik_sise) - parseInt(zoosik_sise * random_val / 100);
				$("#sise_plus").text(result_str);
				
			}
			
			
		}
		
		news_cnt++;

		////////////////////////////////////////////////////
		
		$("#landConfirm").modal("hide"); //닫기
		
		var news_info = news[news_cnt - 1];
		
		/////////////////////////////////////////////////////////////////////////
		
		
		//2Step 뉴스컨텐츠와 시세변동을 보여준다.
		$("#news-content2").empty();
		$("#news-content2").text('뉴스 기사를 통해서 다음과 같이 변동했어요!');
		$("#sise_plus").text(result_str);
		$("#news_info").modal({backdrop: 'static'});
		
		
		
	});	
	
	$("#next_btn").off().click( function() {
		
		boo_sise_data.push(boodongsan_sise);
	    chae_sise_data.push(chaegwon_sise);
	    zoo_sise_data.push(zoosik_sise);
	    
	    var ctx1 = document.getElementById('myChart1').getContext('2d'); 
		var chart1 = new Chart(ctx1, { // type : 'bar' = 막대차트를 의미합니다. 
			type: 'line', // 
			data: { labels: ['부동산'], 
				datasets: [{ label: '부동산 시세', 
					backgroundColor: 'rgb(255, 94, 0)', 
					borderColor: 'rgb(255, 94, 0)', 
					data: boo_sise_data,
			}] }, });
		
		var ctx2 = document.getElementById('myChart2').getContext('2d'); 
		var chart2 = new Chart(ctx2, { // type : 'bar' = 막대차트를 의미합니다. 
			type: 'line', // 
			data: { labels: ['채권'], 
				datasets: [{ label: '채권 시세', 
					backgroundColor: 'rgb(255, 99, 132)', 
					borderColor: 'rgb(255, 99, 132)', 
					data: chae_sise_data
			}] }, });
		
		var ctx3 = document.getElementById('myChart3').getContext('2d'); 
		var chart3 = new Chart(ctx3, { // type : 'bar' = 막대차트를 의미합니다. 
			type: 'line', // 
			data: { labels: ['주식'], 
				datasets: [{ label: '주식 시세', 
					backgroundColor: 'rgb(051, 255, 204)', 
					borderColor: 'rgb(051, 255, 204)',  
					data: zoo_sise_data
			}] }, });
	    
		
		
		total_money = (parseInt(player_boodongsan) * parseInt(boodongsan_sise)) + (parseInt(player_zoosik) * parseInt(zoosik_sise)) + (parseInt(player_chaegwon) *  chaegwon_sise) + parseInt(player_save) + parseInt(player_money);
		$("#total_money").empty();
		$("#total_money").text(priceToString(total_money));
		$("#player_total_turn").text(player_turn);
		
		$("#news_info").modal("hide");
		
		if(player_turn == 0) {
			
			$("#end_total_money").empty();
			$("#end_total_score").empty();
			
			//$("#end_total_money").text(priceToString(total_money));
			$("#end_total_money").text(priceToString(100000000));
			$("#end_total_score").text(priceToString(total_money));
			
			$("#end_modal").modal({backdrop: 'static'});
			
		}
	}); 
	
	
	
	}
    
    </script>

  </head>

  <body id="page-top">

<!--====================================================
                         HEADER
======================================================--> 

    <header>
		
		 <jsp:include page="../include/topmenu.jsp"/>
      
    </header> 

<!--====================================================
                    LOGIN OR REGISTER
======================================================-->
    <section id="login">
      <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header" align="center">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span class="fa fa-times" aria-hidden="true"></span>
                      </button>
                  </div>
                  <div id="div-forms">
                      <form id="login-form">
                          <h3 class="text-center">Login</h3>
                          <div class="modal-body">
                              <label for="username">Username</label> 
                              <input id="login_username" class="form-control" type="text" placeholder="Enter username " required>
                              <label for="username">Password</label> 
                              <input id="login_password" class="form-control" type="password" placeholder="Enter password" required>
                              <div class="checkbox">
                                  <label>
                                      <input type="checkbox"> Remember me
                                  </label>
                              </div>
                          </div>
                          <div class="modal-footer text-center">
                              <div>
                                  <button type="submit" class="btn btn-general btn-white">Login</button>
                              </div>
                              <div>
                                  <button id="login_register_btn" type="button" class="btn btn-link">Register</button>
                              </div>
                          </div>
                      </form>
                      <form id="register-form" style="display:none;">
                          <h3 class="text-center">Register</h3>
                          <div class="modal-body"> 
                              <label for="username">Username</label> 
                              <input id="register_username" class="form-control" type="text" placeholder="Enter username" required>
                              <label for="register_email">E-mailId</label> 
                              <input id="register_email" class="form-control" type="text" placeholder="Enter eMail" required>
                              <label for="register_password">Password</label> 
                              <input id="register_password" class="form-control" type="password" placeholder="Password" required>
                          </div>
                          <div class="modal-footer">
                              <div>
                                  <button type="submit" class="btn btn-general btn-white">Register</button>
                              </div>
                              <div>
                                  <button id="register_login_btn" type="button" class="btn btn-link">Log In</button>
                              </div>
                          </div>
                      </form>
                  </div>
              </div>
          </div>
      </div>
    </section>      

<!--====================================================
                       HOME-P
======================================================-->

    <input type="hidden" id="end_total_score2" name="end_total_score2">
<!--  =================================================
						MODAL
===================================================== -->

<!-- 알림 창들 --> 
	 <!-- 뉴스관련 -->
	<div class="modal fade in_middle" id="landConfirm" role="dialog">
	  <div class="modal-dialog modal-lg" style="max-width: 100%; width: auto; display: table;">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2><b id="landName">땅</b></h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	        <form id = "modal-data" role="form">
	          <div class="form-group" >
	          	<!--  <h3>현재 보유 금액은 <b class="text-success" id="remainMoney"></b>만원 입니다.</h3>-->
	          	<!-- <h3> <b class="text-success" id="news-content"></b></h3><br> -->
	          	
	          	<iframe sandbox="allow-scripts" id="iframe" width="1500" height="500" src="https://www.yna.co.kr/view/AKR20200429072300002"></iframe>
	          	
	           <table class="table table-hover" style="width:100%">
	           <tr>
	           
	           		<td class="noborder" align="center"><h4 class="glyphicon bold glyphicon-usd">&nbsp;현금</h4></td>
	           		<td class="noborder" ><button type="button" class="btn btn-lg btn-block btn-success" id="buyHouse2"><b id="remainMoney"></b> 원</button></td>
	           		
	           	</tr>
	           	<tr>
	           		<td align="center"class="noborder" width="30%"><h4 class="glyphicon bold glyphicon-home">&nbsp;부동산</h4></td>
	           		<td class="noborder"><button type="button" class="btn btn-lg btn-block btn-success" id="buyLand"><b id = "landPrice"></b>개보유</button> </td>
	           		<!-- <input type="number" min="0" max="100" /> -->
	           		<td class="noborder"><input id ="boodongsan_count" type="number" min="0" max="10" style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;"/></td>
						  <td class="noborder">
						  <select style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;" id = "boodongsan_check" name="boodongsan_check" >
						    <option value="none"> 매수/매도</option>
						    <option value="boodongsan_buy">매수</option>
						    <option value="boodongsan_sell">매도</option>
						  </select>
						  </td>
	           	</tr>
	           	<tr>
	           		<td class="noborder" align="center"><h4 class="glyphicon bold glyphicon-home">&nbsp;채권</h4></td>
	           		<td class="noborder" ><button type="button" class="btn btn-lg btn-block btn-success" id="buyHouse1"><b id = "house2Price"></b>개보유</button></td>
	           		<td class="noborder"><input type="number" id="chaegwon_count"min="0" max="10" style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;"/></td>
	           		<td class="noborder">
						  <select style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;" id = "chaegwon_check" name="chaegwon_check" >
						    <option value="none">매수/매도</option>
						    <option value="chaegwon_buy">매수</option>
						    <option value="chaegwon_sell">매도</option>
						  </select>
						  </td>
	           	</tr>
	           	<tr>
	           		<td class="noborder" align="center"><h4 class="glyphicon bold glyphicon-home">&nbsp;주식</h4></td>
	           		<td class="noborder" ><button type="button" class="btn btn-lg btn-block btn-success" id="buyHouse2"><b id="house3Price"></b>개보유</button></td>
	           		<td class="noborder"><input type="number" id="zoosik_count" min="0" max="40" style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;"/></td>
	           		<td class="noborder">
						  <select style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;" id = "zoosik_check" name="zoosik_check" >
						    <option value="none"> 매수/매도</option>
						    <option value="zoosik_buy">매수</option>
						    <option value="zoosik_sell">매도</option>
						  </select>
						  </td>
	           	</tr>
	           		
	           	
	           	<tr>
	           		
	           		<td><button id="submit_data" type="button" class="btn btn-block btn-success" style="font-style: italic; text-align: center; ">제출 </button></td>
	           		
	      		</tr>
	           	<!--      
	           	<tr>
	           		<td class="noborder" align="center"><h4 class="glyphicon bold glyphicon-home">저축</h4></td>
	           		<td class="noborder" ><button type="button" class="btn btn-lg btn-block btn-success" id="buyHouse2"><b id="saveMoney"></b>원</button></td>
	           		<td class="noborder" ><button type="button" class="btn btn-lg btn-block btn-danger" id="buyHouse2">저축하기</button></td>
	           	</tr>
	           	 -->
	           	<!-- 
	           	<tr>
	           		<td align="center" class="noborder"><h4 class="glyphicon bold glyphicon-briefcase">빌딩</h4></td>
	           		<td class="noborder"><button type="button" class="btn btn-lg btn-block btn-warning" id="buyBuilding"><b id="buildingPrice"></b> 만원</button></td>
	           	</tr>
	           	<tr>
	           		<td class="noborder" align="center"><h4 class="glyphicon bold glyphicon-cutlery">호텔</h4></td>
	           		<td class="noborder"><button type="button" class="btn btn-lg btn-block btn-primary" id="buyHotel"><b id="hotelPrice"></b> 만원</button></td>
	           	</tr>
	           	 -->
	           </table>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer" id="landModal-footer">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->
	
	<!-- 뉴스정보해석 modal --> <!-- 뉴스정보해석 modal -->
	<!-- 뉴스정보해석 modal --> <!-- 뉴스정보해석 modal -->
	<!-- 뉴스정보해석 modal --> <!-- 뉴스정보해석 modal -->
	<!-- 뉴스정보해석 modal --> <!-- 뉴스정보해석 modal -->
	<div class="modal fade in_middle" id="news_info" role="dialog" >
	  <div class="modal-dialog modal-lg">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2><b id="landName">NEWS에 따른 시세변동</b></h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	        <form id = "modal-data" role="form">
	          <div class="form-group" >
	          	
	          	<h3> <b class="text-success"><span id="news-content2"></span></b></h3><br><br>
	          	<h3> <b class="text-success"><b class="text-success"><span id="sise_plus"></span></b></h3>
	           <table class="table table-hover" style="width:100%">
	           <tr>
	           
	           		<td class="noborder" ><button id="next_btn" type="button" class="btn btn-lg btn-block btn-success">다음</button></td>
	           	
	           		
	           	</tr>
	           </table>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer" id="landModal-footer">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->
	
	<div class="modal fade in_middle" id="rullet" role="dialog" >
	  <div class="modal-dialog modal-lg">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2><b id="landName">하나FUN 룰렛!</b></h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	        <form id = "modal-data" role="form">
	          <div class="box-roulette">
				<div class="markers"></div>
				<button type="button" id="btn-start">
					돌려주세요!
				</button>
				<div class="roulette" id="roulette"></div>
			</div>
	        </form>
	      </div>
	      <div class="modal-footer" id="landModal-footer">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->

	
	

	<!-- 저축이자 modal -->
	<!-- 저축이자 modal -->
	<!-- 저축이자 modal -->
	
	<div class="modal fade in_middle" id="iza" role="dialog" >
	  <div class="modal-dialog modal-lg">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2><b id="landName">저축이자 받기!!</b></h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	      <form id = "modal-data" role="form">
	          <div class="form-group" >
	          	<h3>현재 보유 현금은 <b class="text-success" id="iza_remainMoney"></b>원 입니다.</h3> <br>
	          	<h3>이자를 받은 고객님의 현금은 <b class="text-success" id="iza_result_remainMoney"></b>원 입니다.</h3> <br>
	          	<h3>추가적으로 저축을 하시려면 저축금액을 골라주세요!</h3> <br>
	          	
	           <table class="table table-hover" style="width:100%">

	           	<tr>
	           		<td align="center"class="noborder" width="30%"><h4 class="glyphicon bold glyphicon-home">&nbsp;저축</h4></td>
				    <td class="noborder">
					  <select style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;" id = "save_check" name="save_check" >
					    <option value="none">금액선택</option>
					    <option value="10000000">1천만원</option>
					    <option value="20000000">2천만원</option>
					    <option value="30000000">3천만원</option>
					    <option value="40000000">4천만원</option>
					    <option value="50000000">5천만원</option>
					    <option value="60000000">6천만원</option>
					    <option value="70000000">7천만원</option>
					    <option value="80000000">8천만원</option>
					    <option value="90000000">9천만원</option>
					    <option value="100000000">1억원</option>
					  </select>
					</td>
	           	</tr>
	           		
	           	
	           	<tr>
	           		
	           		<td style="width : 50%;"><button id="submit_save_data" type="button" class="btn btn-block btn-success" style="font-style: italic; text-align: center; ">저축하기 </button></td>
	           		<td style="width : 50%;"><button id="iza_cancel_data" type="button" class="btn btn-block btn-danger" style="font-style: italic; text-align: center; ">취소 </button></td>
	           		
	      		</tr>
	           </table>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer" id="iza-footer">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->
	      
	<!-- 퀴즈1 modal end -->
	<!-- 퀴즈1 modal end -->
	<!-- 퀴즈1 modal end -->
	<div class="modal fade in_middle" id="quiz_modal" role="dialog" >
	  <div class="modal-dialog modal-lg">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2>경제대공황에 빠졌습니다. 문제를 맞춰야 나갈 수 있습니다.</h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	        <form id = "quiz_data" role="form">
	          <div class="form-group" >
	          	<h3> Q) <b class="text-success" id="quiz"></b></h3><br><br>
	          	<h3> 보기) <b class="text-success" id="bogi"></b></h3><br><br>
				
	          	<!-- <h3> <b class="text-success" id="news-content2"></b></h3><br><br>
	          	<h3> <b class="text-success"> 해당 기사로 <b class="text-success" id="sise_plus"></b></h3> -->
	           <table class="table table-hover" style="width:100%">

	           	<tr>
				    <td class="noborder">
					  <select style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;" id = "answer" name="answer" >
					    <option value="none">정답선택</option>
					    <option value="1">1번</option>
					    <option value="2">2번</option>
					    <option value="3">3번</option>
					    <option value="4">4번</option>
					  </select>
					</td>
	           	</tr>
	           		
	           	
	           	<tr>
	           		
	           		<td style="width : 50%;"><button id="submit_answer" type="button" class="btn btn-block btn-success" style="font-style: italic; text-align: center; ">정답제출 </button></td>
	           		
	      		</tr>
	           </table>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer" id="landModal-footer1">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->
	
	<!-- asdasdasd -->
	<div class="modal fade in_middle" id="quiz_modal2" role="dialog" >
	  <div class="modal-dialog modal-lg">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2>경제대공황에 빠졌습니다. 문제를 맞춰야 나갈 수 있습니다.</h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	        <form id = "quiz_data2" role="form">
	          <div class="form-group" >
	          	<h3> Q) <b class="text-success" id="quiz2"></b></h3><br><br>
	          	<h3> 보기) <b class="text-success" id="bogi2"></b></h3><br><br>
				
	          	<!-- <h3> <b class="text-success" id="news-content2"></b></h3><br><br>
	          	<h3> <b class="text-success"> 해당 기사로 <b class="text-success" id="sise_plus"></b></h3> -->
	           <table class="table table-hover" style="width:100%">

	           	<tr>
				    <td class="noborder">
					  <select style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;" id = "answer2" name="answer2" >
					    <option value="none">정답선택</option>
					    <option value="1">1번</option>
					    <option value="2">2번</option>
					    <option value="3">3번</option>
					    <option value="4">4번</option>
					  </select>
					</td>
	           	</tr>
	           		
	           	
	           	<tr>
	           		
	           		<td style="width : 50%;"><button id="submit_answer2" type="button" class="btn btn-block btn-success" style="font-style: italic; text-align: center; ">정답제출 </button></td>
	           		
	      		</tr>
	           </table>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer" id="landModal-footer1">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->
	
	<div class="modal fade in_middle" id="quiz_modal3" role="dialog" >
	  <div class="modal-dialog modal-lg">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2>경제대공황에 빠졌습니다. 문제를 맞춰야 나갈 수 있습니다.</h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	        <form id = "quiz_data3" role="form">
	          <div class="form-group" >
	          	<h3> Q) <b class="text-success" id="quiz3"></b></h3><br><br>
	          	<h3> 보기) <b class="text-success" id="bogi3"></b></h3><br><br>
				
	          	<!-- <h3> <b class="text-success" id="news-content2"></b></h3><br><br>
	          	<h3> <b class="text-success"> 해당 기사로 <b class="text-success" id="sise_plus"></b></h3> -->
	           <table class="table table-hover" style="width:100%">

	           	<tr>
				    <td class="noborder">
					  <select style="text-align: center;font-size: 30px;line-height: 35px; border: 4px solid; border-radius: 10px;" id = "answer3" name="answer3" >
					    <option value="none">정답선택</option>
					    <option value="1">1번</option>
					    <option value="2">2번</option>
					    <option value="3">3번</option>
					    <option value="4">4번</option>
					  </select>
					</td>
	           	</tr>
	           		
	           	
	           	<tr>
	           		
	           		<td style="width : 50%;"><button id="submit_answer3" type="button" class="btn btn-block btn-success" style="font-style: italic; text-align: center; ">정답제출 </button></td>
	           		
	      		</tr>
	           </table>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer" id="landModal-footer1">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->
	
	<!-- asdasdsadasd -->
	<div class="modal fade in_middle" id="fail_modal" role="dialog" >
	  <div class="modal-dialog modal-lg">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2>자산상황 카드 발생!</h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	        <form id = "rotate_data" role="form">
	          <div class="form-group" >
	          	<h3> 상황카드) <b class="text-danger" id="fail_card_title"></b></h3><br><br>
	          	<h3> 변동) <b class="text-danger" id="fail_card_sise"></b></h3><br><br>
	           <table class="table table-hover" style="width:100%">
	           	<tr>
	           		
	           		<td style="width : 50%;"><button id="fail_ok" type="button" class="btn btn-block btn-success" style="font-style: italic; text-align: center; ">확인</button></td>
	           		
	      		</tr>
	           </table>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer" id="landModal-footer1">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->
	
	<!-- asdasdsadasd -->
	<div class="modal fade in_middle" id="end_modal" role="dialog" >
	  <div class="modal-dialog modal-lg">	<!-- 알림 창 구성  -->	    
	    <!-- 대지 통행료 및 대지 구입 질문 창 내용  -->
	    <div class="modal-content" align="center">
	      <div class="modal-header" style="padding:35px 50px;">		         	
	        <h2>턴 끝! 게임종료!</h2>
	      </div>
	      <div class="modal-body" style="padding:40px 50px;">
	        <form id = "rotate_data" role="form">
	          <div class="form-group" >
	          	<h3> 이전게임 총 자산) <b class="text-danger" id="end_total_money"></b></h3><br><br>
	          	<h3> 이번게임 총 자산) <b class="text-danger" id="end_total_score"></b></h3><br><br>
	           <table class="table table-hover" style="width:100%">
	           	<tr>
	           		<td style="width : 50%;"><button id="end_ok" type="button" class="btn btn-block btn-success" style="font-style: italic; text-align: center; ">확인</button></td>
	      		</tr>
	           </table>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer" id="landModal-footer1">                                                                                                                                                                                                                                                                                                                                                                                                                
	        <!-- 상황에 따라 취소 버튼, 통행료 지불 문구 등 표시ㅣ -->                                                                                                                                                                        
	      </div>
	    </div><!-- 내용 끝 -->              
	  </div><!-- 알림 창 구성 끝 -->
	</div> <!-- 건물 알림창 끝 -->
 
<!--====================================================
                    TESTIMONIALS-P1
======================================================-->
    
    <section style="margin-top:50px;"id="testimonials-p1" class="bg-parallax testimonials-p1-bg">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6" style="background-color : #fff;">

            <div class="game-board" style="background-color : #fff;">		
              <!-- 보드  -->
              <div class="marble_board" align="center" style="background-color: #fff;">
                <div style="padding-left: 14px; padding-right: 18px; padding-top: 14px;">
                  <table class="table" style="text-align: center; color: tomato;">
                    <tr height="160px">
                      <td class="td_tb no_border">
                        <span id="p21"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p22"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p23"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p24"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p25"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p26"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p27"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p28"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p29"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p30"></span>
                      </td>
                      <td class="td_tb no_border">
                        <span id="p31"></span>
                      </td>
                    </tr>
                    
                    <tr height="88px">
                      <td class="td_rl no_border">
                        <span id="p20"></span>
                      </td>
                      <td class="no_border game_description" id="gameAlert" colspan="9" rowspan="9">
                        <!-- 빈칸 행 열 합치기 & 클릭 활성화 -> 게임시작시 비활성화   -->	
                        <!-- 시작 저축금액 선택 -->
                        
                        <div align="center">
                        <br><br><br><br>							
                        <h3 style="color:#fff"> 사용자의 자산으로 자산관리를 해보세요! </h3> <br>
                        <h3 style="color:#fff"> 저축금액은 이자 3%를 추가로 받습니다. </h3> <br>
                        <h3 style="color:#fff"> 뉴스 Card에 따라서 시세가 변동합니다. </h3><br>
                        <h3 style="color:#fff"> 뉴스 Card를 읽고 시세 변동을 예측해서 플레이해보세요!! </h3><br>
                        </div>
                        
                        <br>
                        <br>
                        
                        <h2 style="color:#fff"> 저축하실 금액 선택 </h2>
                        <select style=" width:300px; text-align:center; font-size:25px;"name="start_save_money" id ="start_save_money">
                                    <option value="0">0원</option>
                                    <option value="10000000">1천만원</option>
                                    <option value="20000000">2천만원</option>
                                    <option value="30000000">3천만원</option>
                                    <option value="40000000">4천만원</option>
                                    <option value="50000000">5천만원</option>
                                    <option value="60000000">6천만원</option>
                                    <option value="70000000">7천만원</option>
                                    <option value="80000000">8천만원</option>
                                    <option value="90000000">9천만원</option>
                                    <option value="100000000">1억원</option>
                        </select>
            
                                
                        <div class="on-game-board">
                          <h1>테스트</h1>
                        </div>
                        <!-- 설명 -->
                        
                        <div class="startBtn" >
                          
                        
                          
                          <br><br><br><br>
                          
                          <button id="1people" class="btn btn-danger"><b class="text-white"> 게임 시작 ! </b></button>
                        </div>
                        
                        
                      </td>
                      <td class="td_rl no_border">
                        <span id="p32"></span>
                      </td>
                    </tr>
                    
                    <tr height="88px">
                      <td class="td_rl no_border">
                        <span id="p19"></span>
                      </td>
                      
                      <td class="td_rl no_border">
                        <span id="p33"></span>
                      </td>
                    </tr>
                    
                    <tr height="88px">
                      <td class="td_rl no_border">
                        <span id="p18"></span>
                      </td>
                      
                      <td class="td_rl no_border">
                        <span id="p34"></span>
                      </td>
                    </tr>
                    
                    <tr height="88px">
                      <td class="td_rl no_border">
                        <span id="p17"></span>
                      </td>
                      
                      <td class="td_rl no_border">
                        <span id="p35"></span>
                      </td>
                    </tr>
                    
                    <tr height="89px">
                      <td class="td_rl no_border">
                        <span id="p16"></span>
                      </td>
                      
                      <td class="td_rl no_border">
                        <span id="p36"></span>
                      </td>
                    </tr>
                    
                    <tr height="88px">
                      <td class="td_rl no_border">
                        <span id="p15"></span>
                      </td>
                      
                      <td class="td_rl no_border">
                        <span id="p37"></span>
                      </td>
                    </tr>
                    
                    <tr height="88px">
                      <td class="td_rl no_border">
                        <span id="p14"></span>
                      </td>
                      
                      <td class="td_rl no_border">
                        <span id="p38"></span>
                      </td>
                    </tr>
                    
                    <tr height="88px">
                      <td class="td_rl no_border">
                        <span id="p13"></span>
                      </td>
                      
                      <td class="td_rl no_border">
                        <span id="p39"></span>
                      </td>
                    </tr>
                    
                    <tr height="90px">
                      <td class="td_rl no_border">
                        <span id="p12"></span>
                      </td>
                      
                      <td class="td_rl no_border">
                        <span id="p40"></span>
                      </td>
                    </tr>
                  
                    <tr height="157px" style="margin-bottom: 14px">
                      <td width="14%" class="td_tb no_border">
                        <span id="p11"></span>
                      </td>
                      <td width="7.7%" class="td_tb no_border">
                        <span id="p10"></span>
                      </td>
                      <td width="7.9%" class="td_tb no_border">
                        <span id="p9"></span>
                      </td>
                      <td width="7.7%" class="td_tb no_border">
                        <span id="p8"></span>
                      </td>
                      <td width="7.7%" class="td_tb no_border">
                        <span id="p7"></span>
                      </td>
                      <td width="7.9%" class="td_tb no_border">
                        <span id="p6"></span>
                      </td>
                      <td width="7.5%" class="td_tb no_border">
                        <span id="p5"></span>
                      </td>
                      <td width="7.8%" class="td_tb no_border">
                        <span id="p4"></span>
                      </td>
                      <td width="7.8%" class="td_tb no_border">
                        <span id="p3"></span>
                      </td>
                      <td width="7.9%" class="td_tb no_border">
                        <span id="p2"></span>
                      </td>
                      <td width="13.9%" class="td_tb no_border">
                        <span id="p1">
                          <span class="horses" id="1p"><img style="width:80px; height:120px;"src="${pageContext.request.contextPath }/resources/img/board/zepetto.gif"></span>
                          <!--  2p~4p 말
                          <b class="horses" id="2p">🚀</b>
                          <b class="horses" id="3p">🛫</b>
                          <b class="horses" id="4p">🚁</b> -->
                        </span>
                      </td>
                    </tr>
                  </table><!-- 보드 끝 -->
                </div>
                  
                
              </div>
            </div>
            
            
          </div>
          <div style="margin:auto;"  class="col-md-2">
            
            <div class = "scene" style=" display: inline-block;">
              <div class="cube">
               <div class="cube__face cube__face--1">1</div>
               <div class="cube__face cube__face--2">2</div>
               <div class="cube__face cube__face--3">3</div>
               <div class="cube__face cube__face--4">4</div>
               <div class="cube__face cube__face--5">5</div>
               <div class="cube__face cube__face--6">6</div>
           </div>
          	</div>
          </div>
          
          <div class="col-md-4 bg-gradiant testimonials-p1-pos" style="background : #fff;">
            <div style = "margin-top : 50px; padding-bottom:50px;" class="interface"> 
              <!-- 게임 타이틀 -->
              <!-- <h1 style="margin: 10px;"><b class="text-primary">사용자 자산현황</b></h1> -->	
              
              <div style = "margin-top : 100px; background-color:#21b2a5; border-color : #21b2a5;"class="btn btn-primary list-margin">
                <h2> 🧾사용자 자산현황 </h2>
                <hr style="margin: 10px;"><!-- 구분선 -->	
                <ul align="left" style="font-size:2rem;">
                  <li> 💵총자산 : <span id="total_money"></span> 원</li>
                  <li> 💸현금 : <span id="1pMoney"></span> 원</li>
                  <li> 🏦부동산 보유 현황 : <span id="player_boodongsan"></span> 보유</li>
                  <li> 📈채권 보유 현황 : <span id="player_chaegwon"></span> 보유</li>
                  <li> 📈주식 보유 현황 : <span id="player_zoosik"></span> 보유</li>
                  <li> 💰저축 자금 : <span id="player_save"></span> 원</li>
                  <li> 🚠게임 종료까지 남은 턴 : <span id="player_total_turn"></span> 턴</li>
                </ul>
              </div> 
          
              <button id="play" type="button" class="btn btn-success list-margin"><h4>🎲 GO!GO!</h4></button>
              
            </div>
            
            <div> 
              <!-- <div class="btn btn-success">-->
                <img style="margin-top : 10px; margin-left : 10px; width : 800px; height : 450px;" id = "byul">
            </div>
          </div>
        </div>
      </div>
    </section> 




<!--====================================================
                       NEWS
======================================================-->
    <section id="comp-offer" style="background-color : #fff;">
      <div class="container-fluid" style="background-color : #fff;">
        <div class="row" style="background-color : #fff;">
          <div class="col-md-4 col-sm-6 desc-comp-offer wow fadeInUp" data-wow-delay="0.4s">
            <h3><b>부동산</b></h3>
            <div class="desc-comp-offer-cont">
              <div class="thumbnail-blogs">
                  <canvas id="myChart1"></canvas>
              </div>
              <!-- <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a> -->
            </div>
          </div>
          <div style="background: #fff;" class="col-md-4 col-sm-6 desc-comp-offer wow fadeInUp" data-wow-delay="0.6s">
            <h3><b>채권 시세</b></h3>
            <div class="desc-comp-offer-cont">
              <div class="thumbnail-blogs">
                  <canvas id="myChart2"></canvas>
              </div>
              <!-- <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a> -->
            </div>
          </div>
          <div class="col-md-4 col-sm-6 desc-comp-offer wow fadeInUp" data-wow-delay="0.8s">
            <h3><b>주식 시세</b></h3>
            <div class="desc-comp-offer-cont">
              <div class="thumbnail-blogs">
                  <canvas id="myChart3"></canvas>
              </div>
              <!-- <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a> -->
            </div>
          </div>
        </div>
      </div>
    </section>
	
<!--====================================================
                      FOOTER
======================================================--> 
    <%-- <jsp:include page="../include/bottom.jsp"/> --%>

   <!--Global JavaScript -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/owl-carousel/owl.carousel.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-easing/jquery.easing.min.js"></script> 
    <script src="${pageContext.request.contextPath }/resources/js/custom.js"></script> 
  </body>

  <script>
	  var cube = document.querySelector('.cube');
	  var rollBtn = document.querySelector('.rollBtn');
	  var currentClass = '';
	
	  function getRandomInt(min, max) {
	    min = Math.ceil(min);
	    max = Math.floor(max);
	    return Math.floor(Math.random() * (max - min) + min); //The maximum is exclusive and the minimum is inclusive
	  }
	
	  function rollDice() {
	   var randNum =getRandomInt(1,7)
	    console.log(randNum )
	    var showClass = 'show-' + randNum;
	    console.log(showClass)
	    if ( currentClass ) {
	      cube.classList.remove( currentClass );
	    }
	    cube.classList.add( showClass );
	    currentClass = showClass;
	    return randNum;
	  }
	  // set initial side
	  rollDice();
	
	  rollBtn.addEventListener("click", rollDice);
  </script>

</html>
