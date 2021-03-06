<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!--
=========================================================
* Soft UI Dashboard - v1.0.3
=========================================================

* Product Page: https://www.creative-tim.com/product/soft-ui-dashboard
* Copyright 2021 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/user/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/user/assets/img/favicon.png">
  <title>
    Soft UI Dashboard by Creative Tim
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="${pageContext.request.contextPath}/resources/user/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/user/user/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="${pageContext.request.contextPath}/resources/user/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="${pageContext.request.contextPath}/resources/user/assets/css/soft-ui-dashboard.css?v=1.0.3" rel="stylesheet" />
  
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
  
  <script>
  
  
  
    function EditWeek() {
    	  
    	  $("#test1p").remove();
    	  $("#test2p").remove();
    	  $("#test3p").remove();
    	  $("#test4p").remove();
    	  
    	  var str = "<form action='${pageContext.request.contextPath}/updateWeek' method='post'><span id ='test1p' class='mb-2 text-xs'>?????? ?????? ?????? ??????<br> <input type='text' class='form-control' id='target_week_now' value='' name='target_week_now'/><br>";
    	  str += "<span id ='test1p' class='mb-2 text-xs'>????????? ????????? ?????? ?????? <input type='text' class='form-control' id='target_week_balance' value='' name='target_week_balance'/><br>";
    	  str += "<span id ='test2p' class='mb-2 text-xs'>????????? ?????? ?????? ?????? <input type='text' class='form-control' id='target_week_stop' value='' name='target_week_stop'/>";
    	  str += "<input type='hidden' name='target_week_date' value='32'/>";
    	  str += "<button type='submit' class='btn bg-gradient-info w-100 mt-4 mb-0'>????????????</button></form>"
    	  
    	  
    	  $("#test1pp").append(str);
      }
      
      function updateSlow() {
    	  
    	  $("#test5").remove();
    	  $("#test6").remove();
    	  $("#test7").remove();
    	  
    	  var str = "<form action='${pageContext.request.contextPath}/updateSlow' method='post'><<label for='exampleFormControlSelect2'>???????????? ??????</label>><br>";
    	  str += "<select multiple class='form-control' name = 'target_slow_date'>";
    	  str += "<option value='1'>??????</option><option value='7'>??????</option><option value='30'>??????</option></select>";
    	  str += "<span id ='test1p' class='mb-2 text-xs'>????????? ?????? ?????? <input type='text' class='form-control' id='target_slow_balance' value='' name='target_slow_balance'/><br>";
    	  str += "<button type='submit' class='btn bg-gradient-info w-100 mt-4 mb-0'>????????????</button></form>"
    	  
    	  $("#test2pp").append(str);
    	  
      }
      
	function EditPay() {
    	  
    	  $("#test8").remove();
    	  $("#test9").remove();
    	  $("#test10").remove();
    	  $("#test11").remove();
    	  
    	  var str = "<form action='${pageContext.request.contextPath}/updatePay' method='post'>";
    	  str += "<span id ='test8' class='mb-2 text-xs'>????????? ???????????? ???! <input type='text' class='form-control' id='target_week_balance' value='' name='target_pay_date'/><br>";
    	  str += "<span id ='test9' class='mb-2 text-xs'>?????? ?????? <input type='text' class='form-control' id='target_week_stop' value='' name='target_pay_balance'/>";
    	  str += "<span id ='test10' class='mb-2 text-xs'>????????? ?????? ?????? <input type='text' class='form-control' id='target_week_stop' value='' name='target_pay_rate'/>";
    	  str += "<button type='submit' class='btn bg-gradient-info w-100 mt-4 mb-0'>????????????</button></form>"
    	  
    	  
    	  $("#test3pp").append(str);
      }
	
	function EditGob() {
		
	  $("#test12").remove();
	  $("#test13").remove();
  	  
  	  var str = "<form action='${pageContext.request.contextPath}/updateGob' method='post'>";
  	  str += "<span id ='test12' class='mb-2 text-xs'>????????? ?????? ?????? ??????<input type='text' class='form-control' id='target_ban_gob' value='' name='target_ban_gob'/><br>";
  	  str += "<button type='submit' class='btn bg-gradient-info w-100 mt-4 mb-0'>????????????</button></form>"
  	  
  	  $("#test4pp").append(str);
		
		
	}
	
	function EditGwa() {
		
		$("#test14").remove();
		$("#test15").remove();
		$("#test16").remove();
		$("#test17").remove();
		
	  	  
	  	  var str = "<form action='${pageContext.request.contextPath}/updateGwa' method='post'>";
	  	  str += "<span id ='test14' class='mb-2 text-xs'>?????? ???????????? ??????<input type='text' class='form-control' id='target_gwa_category' value='' name='target_gwa_category'/><br>";
	  	  str += "<span id ='test15' class='mb-2 text-xs'>?????? ?????? ??????<input type='text' class='form-control' id='target_gwa_cnt' value='' name='target_gwa_cnt'/><br>";
	  	  str += "<span id ='test16' class='mb-2 text-xs'>?????? ?????? ??????<input type='text' class='form-control' id='target_gwa_balance' value='' name='target_gwa_balance'/><br>";
	  	  str += "<button type='submit' class='btn bg-gradient-info w-100 mt-4 mb-0'>????????????</button></form>"
	  	  
	  	  $("#test5pp").append(str);
		
	}
	
	function EditSan() {
		
		$("#test18").remove();
		$("#test19").remove();
		$("#test20").remove();
		
  	  var str = "<form action='${pageContext.request.contextPath}/updateSan' method='post'>";
  	  str += "<span id ='test18' class='mb-2 text-xs'>?????? ?????? ??????<input type='text' class='form-control' id='target_san_date' value='' name='target_san_date'/><br>";
  	  str += "<span id ='test19' class='mb-2 text-xs'>?????? ?????? ??????<input type='text' class='form-control' id='target_san_balance' value='' name='target_san_balance'/><br>";
  	  str += "<button type='submit' class='btn bg-gradient-info w-100 mt-4 mb-0'>????????????</button></form>"
  	  
  	  $("#test6pp").append(str);
		
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
		          	$("#first").text(numberWithCommas(${first_status_money}));
		          }else{
		          	predict_money -= first_status_money;
		          	$("#after_money").text(numberWithCommas(predict_money));
		          	$("#first").text(0);
		          }
		      });
		      
		      $("#second_status").change(function(){
		          if($("#second_status").is(":checked")){
		          	predict_money += second_status_money;
		          	$("#after_money").text(numberWithCommas(predict_money));
		          	$("#second").text(numberWithCommas(${second_status_money}));
		          }else{
		          	predict_money -= second_status_money;
		          	$("#after_money").text(numberWithCommas(predict_money));
		          	$("#second").text(0);
		          }
		      });
		      
		      $("#third_status").change(function(){
		          if($("#third_status").is(":checked")){
		          	
		          	predict_money += third_status_money;
		          	$("#after_money").text(numberWithCommas(predict_money));
		          	$("#third").text(numberWithCommas(${third_status_money}));
		          }else{
		          	predict_money -= third_status_money;
		          	$("#after_money").text(numberWithCommas(predict_money));
		          	$("#first").text(0);
		          }
		      });
		      
		  });
  </script>
  
  
  <script>
  
  function numberWithCommas(x) {
      return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }
  
  function doit() {
  	
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
           url:"${pageContext.request.contextPath}/saveset",
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
          	 /* alert("????????? ?????????????????????."); */
          	 location.href="${pageContext.request.contextPath}/saveset";
          	 },
          	 error: function(jqXHR, textStatus, errorThrown) {
          	 alert("ERROR : " + textStatus + " : " + errorThrown);
          	 }
        });

  }
	
</script>

</head>

<body class="g-sidenav-show  bg-gray-100">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 " id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="https://demos.creative-tim.com/soft-ui-dashboard/pages/dashboard.html" target="_blank">
        <img src="${pageContext.request.contextPath}/user/assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
        <span class="ms-1 font-weight-bold">Soft UI Dashboard</span>
      </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto  max-height-vh-100 h-100" id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link  " href="../pages/dashboard.html">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 45 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>shop </title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-1716.000000, -439.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(0.000000, 148.000000)">
                        <path class="color-background opacity-6" d="M46.7199583,10.7414583 L40.8449583,0.949791667 C40.4909749,0.360605034 39.8540131,0 39.1666667,0 L7.83333333,0 C7.1459869,0 6.50902508,0.360605034 6.15504167,0.949791667 L0.280041667,10.7414583 C0.0969176761,11.0460037 -1.23209662e-05,11.3946378 -1.23209662e-05,11.75 C-0.00758042603,16.0663731 3.48367543,19.5725301 7.80004167,19.5833333 L7.81570833,19.5833333 C9.75003686,19.5882688 11.6168794,18.8726691 13.0522917,17.5760417 C16.0171492,20.2556967 20.5292675,20.2556967 23.494125,17.5760417 C26.4604562,20.2616016 30.9794188,20.2616016 33.94575,17.5760417 C36.2421905,19.6477597 39.5441143,20.1708521 42.3684437,18.9103691 C45.1927731,17.649886 47.0084685,14.8428276 47.0000295,11.75 C47.0000295,11.3946378 46.9030823,11.0460037 46.7199583,10.7414583 Z"></path>
                        <path class="color-background" d="M39.198,22.4912623 C37.3776246,22.4928106 35.5817531,22.0149171 33.951625,21.0951667 L33.92225,21.1107282 C31.1430221,22.6838032 27.9255001,22.9318916 24.9844167,21.7998837 C24.4750389,21.605469 23.9777983,21.3722567 23.4960833,21.1018359 L23.4745417,21.1129513 C20.6961809,22.6871153 17.4786145,22.9344611 14.5386667,21.7998837 C14.029926,21.6054643 13.533337,21.3722507 13.0522917,21.1018359 C11.4250962,22.0190609 9.63246555,22.4947009 7.81570833,22.4912623 C7.16510551,22.4842162 6.51607673,22.4173045 5.875,22.2911849 L5.875,44.7220845 C5.875,45.9498589 6.7517757,46.9451667 7.83333333,46.9451667 L19.5833333,46.9451667 L19.5833333,33.6066734 L27.4166667,33.6066734 L27.4166667,46.9451667 L39.1666667,46.9451667 C40.2482243,46.9451667 41.125,45.9498589 41.125,44.7220845 L41.125,22.2822926 C40.4887822,22.4116582 39.8442868,22.4815492 39.198,22.4912623 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="../pages/tables.html">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>office</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-1869.000000, -293.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g id="office" transform="translate(153.000000, 2.000000)">
                        <path class="color-background opacity-6" d="M12.25,17.5 L8.75,17.5 L8.75,1.75 C8.75,0.78225 9.53225,0 10.5,0 L31.5,0 C32.46775,0 33.25,0.78225 33.25,1.75 L33.25,12.25 L29.75,12.25 L29.75,3.5 L12.25,3.5 L12.25,17.5 Z"></path>
                        <path class="color-background" d="M40.25,14 L24.5,14 C23.53225,14 22.75,14.78225 22.75,15.75 L22.75,38.5 L19.25,38.5 L19.25,22.75 C19.25,21.78225 18.46775,21 17.5,21 L1.75,21 C0.78225,21 0,21.78225 0,22.75 L0,40.25 C0,41.21775 0.78225,42 1.75,42 L40.25,42 C41.21775,42 42,41.21775 42,40.25 L42,15.75 C42,14.78225 41.21775,14 40.25,14 Z M12.25,36.75 L7,36.75 L7,33.25 L12.25,33.25 L12.25,36.75 Z M12.25,29.75 L7,29.75 L7,26.25 L12.25,26.25 L12.25,29.75 Z M35,36.75 L29.75,36.75 L29.75,33.25 L35,33.25 L35,36.75 Z M35,29.75 L29.75,29.75 L29.75,26.25 L35,26.25 L35,29.75 Z M35,22.75 L29.75,22.75 L29.75,19.25 L35,19.25 L35,22.75 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Tables</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  active" href="../pages/billing.html">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>credit-card</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(453.000000, 454.000000)">
                        <path class="color-background opacity-6" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"></path>
                        <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Billing</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="../pages/virtual-reality.html">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>box-3d-50</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-2319.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(603.000000, 0.000000)">
                        <path class="color-background" d="M22.7597136,19.3090182 L38.8987031,11.2395234 C39.3926816,10.9925342 39.592906,10.3918611 39.3459167,9.89788265 C39.249157,9.70436312 39.0922432,9.5474453 38.8987261,9.45068056 L20.2741875,0.1378125 L20.2741875,0.1378125 C19.905375,-0.04725 19.469625,-0.04725 19.0995,0.1378125 L3.1011696,8.13815822 C2.60720568,8.38517662 2.40701679,8.98586148 2.6540352,9.4798254 C2.75080129,9.67332903 2.90771305,9.83023153 3.10122239,9.9269862 L21.8652864,19.3090182 C22.1468139,19.4497819 22.4781861,19.4497819 22.7597136,19.3090182 Z"></path>
                        <path class="color-background opacity-6" d="M23.625,22.429159 L23.625,39.8805372 C23.625,40.4328219 24.0727153,40.8805372 24.625,40.8805372 C24.7802551,40.8805372 24.9333778,40.8443874 25.0722402,40.7749511 L41.2741875,32.673375 L41.2741875,32.673375 C41.719125,32.4515625 42,31.9974375 42,31.5 L42,14.241659 C42,13.6893742 41.5522847,13.241659 41,13.241659 C40.8447549,13.241659 40.6916418,13.2778041 40.5527864,13.3472318 L24.1777864,21.5347318 C23.8390024,21.7041238 23.625,22.0503869 23.625,22.429159 Z"></path>
                        <path class="color-background opacity-6" d="M20.4472136,21.5347318 L1.4472136,12.0347318 C0.953235098,11.7877425 0.352562058,11.9879669 0.105572809,12.4819454 C0.0361450918,12.6208008 6.47121774e-16,12.7739139 0,12.929159 L0,30.1875 L0,30.1875 C0,30.6849375 0.280875,31.1390625 0.7258125,31.3621875 L19.5528096,40.7750766 C20.0467945,41.0220531 20.6474623,40.8218132 20.8944388,40.3278283 C20.963859,40.1889789 21,40.0358742 21,39.8806379 L21,22.429159 C21,22.0503869 20.7859976,21.7041238 20.4472136,21.5347318 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Virtual Reality</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="../pages/rtl.html">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 40 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>settings</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-2020.000000, -442.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(304.000000, 151.000000)">
                        <polygon class="color-background opacity-6" points="18.0883333 15.7316667 11.1783333 8.82166667 13.3333333 6.66666667 6.66666667 0 0 6.66666667 6.66666667 13.3333333 8.82166667 11.1783333 15.315 17.6716667"></polygon>
                        <path class="color-background opacity-6" d="M31.5666667,23.2333333 C31.0516667,23.2933333 30.53,23.3333333 30,23.3333333 C29.4916667,23.3333333 28.9866667,23.3033333 28.48,23.245 L22.4116667,30.7433333 L29.9416667,38.2733333 C32.2433333,40.575 35.9733333,40.575 38.275,38.2733333 L38.275,38.2733333 C40.5766667,35.9716667 40.5766667,32.2416667 38.275,29.94 L31.5666667,23.2333333 Z"></path>
                        <path class="color-background" d="M33.785,11.285 L28.715,6.215 L34.0616667,0.868333333 C32.82,0.315 31.4483333,0 30,0 C24.4766667,0 20,4.47666667 20,10 C20,10.99 20.1483333,11.9433333 20.4166667,12.8466667 L2.435,27.3966667 C0.95,28.7083333 0.0633333333,30.595 0.00333333333,32.5733333 C-0.0583333333,34.5533333 0.71,36.4916667 2.11,37.89 C3.47,39.2516667 5.27833333,40 7.20166667,40 C9.26666667,40 11.2366667,39.1133333 12.6033333,37.565 L27.1533333,19.5833333 C28.0566667,19.8516667 29.01,20 30,20 C35.5233333,20 40,15.5233333 40,10 C40,8.55166667 39.685,7.18 39.1316667,5.93666667 L33.785,11.285 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">RTL</span>
          </a>
        </li>
        <li class="nav-item mt-3">
          <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Account pages</h6>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="../pages/profile.html">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 46 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>customer-support</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-1717.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(1.000000, 0.000000)">
                        <path class="color-background opacity-6" d="M45,0 L26,0 C25.447,0 25,0.447 25,1 L25,20 C25,20.379 25.214,20.725 25.553,20.895 C25.694,20.965 25.848,21 26,21 C26.212,21 26.424,20.933 26.6,20.8 L34.333,15 L45,15 C45.553,15 46,14.553 46,14 L46,1 C46,0.447 45.553,0 45,0 Z"></path>
                        <path class="color-background" d="M22.883,32.86 C20.761,32.012 17.324,31 13,31 C8.676,31 5.239,32.012 3.116,32.86 C1.224,33.619 0,35.438 0,37.494 L0,41 C0,41.553 0.447,42 1,42 L25,42 C25.553,42 26,41.553 26,41 L26,37.494 C26,35.438 24.776,33.619 22.883,32.86 Z"></path>
                        <path class="color-background" d="M13,28 C17.432,28 21,22.529 21,18 C21,13.589 17.411,10 13,10 C8.589,10 5,13.589 5,18 C5,22.529 8.568,28 13,28 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Profile</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="../pages/sign-in.html">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 40 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>document</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-1870.000000, -591.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(154.000000, 300.000000)">
                        <path class="color-background opacity-6" d="M40,40 L36.3636364,40 L36.3636364,3.63636364 L5.45454545,3.63636364 L5.45454545,0 L38.1818182,0 C39.1854545,0 40,0.814545455 40,1.81818182 L40,40 Z"></path>
                        <path class="color-background" d="M30.9090909,7.27272727 L1.81818182,7.27272727 C0.814545455,7.27272727 0,8.08727273 0,9.09090909 L0,41.8181818 C0,42.8218182 0.814545455,43.6363636 1.81818182,43.6363636 L30.9090909,43.6363636 C31.9127273,43.6363636 32.7272727,42.8218182 32.7272727,41.8181818 L32.7272727,9.09090909 C32.7272727,8.08727273 31.9127273,7.27272727 30.9090909,7.27272727 Z M18.1818182,34.5454545 L7.27272727,34.5454545 L7.27272727,30.9090909 L18.1818182,30.9090909 L18.1818182,34.5454545 Z M25.4545455,27.2727273 L7.27272727,27.2727273 L7.27272727,23.6363636 L25.4545455,23.6363636 L25.4545455,27.2727273 Z M25.4545455,20 L7.27272727,20 L7.27272727,16.3636364 L25.4545455,16.3636364 L25.4545455,20 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Sign In</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="../pages/sign-up.html">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="20px" viewBox="0 0 40 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>spaceship</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-1720.000000, -592.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(4.000000, 301.000000)">
                        <path class="color-background" d="M39.3,0.706666667 C38.9660984,0.370464027 38.5048767,0.192278529 38.0316667,0.216666667 C14.6516667,1.43666667 6.015,22.2633333 5.93166667,22.4733333 C5.68236407,23.0926189 5.82664679,23.8009159 6.29833333,24.2733333 L15.7266667,33.7016667 C16.2013871,34.1756798 16.9140329,34.3188658 17.535,34.065 C17.7433333,33.98 38.4583333,25.2466667 39.7816667,1.97666667 C39.8087196,1.50414529 39.6335979,1.04240574 39.3,0.706666667 Z M25.69,19.0233333 C24.7367525,19.9768687 23.3029475,20.2622391 22.0572426,19.7463614 C20.8115377,19.2304837 19.9992882,18.0149658 19.9992882,16.6666667 C19.9992882,15.3183676 20.8115377,14.1028496 22.0572426,13.5869719 C23.3029475,13.0710943 24.7367525,13.3564646 25.69,14.31 C26.9912731,15.6116662 26.9912731,17.7216672 25.69,19.0233333 L25.69,19.0233333 Z"></path>
                        <path class="color-background opacity-6" d="M1.855,31.4066667 C3.05106558,30.2024182 4.79973884,29.7296005 6.43969145,30.1670277 C8.07964407,30.6044549 9.36054508,31.8853559 9.7979723,33.5253085 C10.2353995,35.1652612 9.76258177,36.9139344 8.55833333,38.11 C6.70666667,39.9616667 0,40 0,40 C0,40 0,33.2566667 1.855,31.4066667 Z"></path>
                        <path class="color-background opacity-6" d="M17.2616667,3.90166667 C12.4943643,3.07192755 7.62174065,4.61673894 4.20333333,8.04166667 C3.31200265,8.94126033 2.53706177,9.94913142 1.89666667,11.0416667 C1.5109569,11.6966059 1.61721591,12.5295394 2.155,13.0666667 L5.47,16.3833333 C8.55036617,11.4946947 12.5559074,7.25476565 17.2616667,3.90166667 L17.2616667,3.90166667 Z"></path>
                        <path class="color-background opacity-6" d="M36.0983333,22.7383333 C36.9280725,27.5056357 35.3832611,32.3782594 31.9583333,35.7966667 C31.0587397,36.6879974 30.0508686,37.4629382 28.9583333,38.1033333 C28.3033941,38.4890431 27.4704606,38.3827841 26.9333333,37.845 L23.6166667,34.53 C28.5053053,31.4496338 32.7452344,27.4440926 36.0983333,22.7383333 L36.0983333,22.7383333 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Sign Up</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="sidenav-footer mx-3 ">
      <div class="card card-background shadow-none card-background-mask-secondary" id="sidenavCard">
        <div class="full-background" style="background-image: url('../assets/img/curved-images/white-curved.jpeg')"></div>
        <div class="card-body text-start p-3 w-100">
          <div class="icon icon-shape icon-sm bg-white shadow text-center mb-3 d-flex align-items-center justify-content-center border-radius-md">
            <i class="ni ni-diamond text-dark text-gradient text-lg top-0" aria-hidden="true" id="sidenavCardIcon"></i>
          </div>
          <div class="docs-info">
            <h6 class="text-white up mb-0">Need help?</h6>
            <p class="text-xs font-weight-bold">Please check our docs</p>
            <a href="https://www.creative-tim.com/learning-lab/bootstrap/license/soft-ui-dashboard" target="_blank" class="btn btn-white btn-sm w-100 mb-0">Documentation</a>
          </div>
        </div>
      </div>
      <a class="btn bg-gradient-primary mt-4 w-100" href="https://www.creative-tim.com/product/soft-ui-dashboard-pro?ref=sidebarfree" type="button">Upgrade to pro</a>
    </div>
  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">????????????</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">??????FUN</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">MY?????????</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group">
              <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
              <input type="text" class="form-control" placeholder="Type here...">
            </div>
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>
                <span class="d-sm-inline d-none">Sign In</span>
              </a>
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </a>
            </li>
            <li class="nav-item px-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0">
                <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
              </a>
            </li>
            <li class="nav-item dropdown pe-2 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-bell cursor-pointer"></i>
              </a>
              <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                <li class="mb-2">
                  <a class="dropdown-item border-radius-md" href="javascript:;">
                    <div class="d-flex py-1">
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="text-sm font-weight-normal mb-1">
                        <button class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-3 btn-sm d-flex align-items-center justify-content-center"><i class="fas fa-arrow-up"></i></button>
                         <span class="font-weight-bold">+ ???????????? 1,000???</span>
                        </h6>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="mb-2">
                  <a class="dropdown-item border-radius-md" href="javascript:;">
                    <div class="d-flex py-1">
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="text-sm font-weight-normal mb-1">
                        <button class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-3 btn-sm d-flex align-items-center justify-content-center"><i class="fas fa-arrow-up"></i></button>
                         <span class="font-weight-bold">+ ???????????? 1,000???</span>
                        </h6>
                      </div>
                    </div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-lg-8">
          <div class="row">
            <div class="col-xl-6 mb-xl-0 mb-4">
              <div class="card bg-transparent shadow-xl">
                <div class="overflow-hidden position-relative border-radius-xl" style="background-image: url('../assets/img/curved-images/curved14.jpg');">
                  <span class="mask bg-gradient-dark"></span>
                  <div class="card-body position-relative z-index-1 p-3">
                    <i class="fas  text-white p-2">????????? ????????? ??????</i>
                    <h5 class="text-white mt-4 mb-5 pb-2">${acc.fun_account_num}&nbsp;</h5>
                    <div class="d-flex">
                      <div class="d-flex">
                        <div class="me-4">
                          <p class="text-white text-sm opacity-8 mb-0">????????????</p>
                          <h6 class="text-white mb-0">2018/09/16</h6>
                        </div>
                        <div>
                          <p class="text-white text-sm opacity-8 mb-0">??????</p>
                          <h6 class="text-white mb-0"><fmt:formatNumber value="${acc.fun_account_balance}" pattern="#,###" />???</h6>
                        </div>
                      </div>
                      <!-- <div class="ms-auto w-20 d-flex align-items-end justify-content-end">
                        <img class="w-60 mt-2" src="../assets/img/logos/mastercard.png" alt="logo">
                      </div> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-6 mb-xl-0 mb-4">
              <div class="card bg-transparent shadow-xl">
                <div class="overflow-hidden position-relative border-radius-xl" style="background-image: url('../assets/img/curved-images/curved14.jpg');">
                  <span class="mask bg-gradient-dark"></span>
                  <div class="card-body position-relative z-index-1 p-3">
                    <i class="fas  text-white p-2">?????? FUN ?????? ??????</i>
                    <h5 class="text-white mt-4 mb-5 pb-2">${saving_vo.savingnum}&nbsp;</h5>
                    <div class="d-flex">
                      <div class="d-flex">
                        <div class="me-4">
                          <p class="text-white text-sm opacity-8 mb-0">?????????</p>
                          <h6 class="text-white mb-0">2022/08/01</h6>
                        </div>
                        <div class="me-4">
                          <p class="text-white text-sm opacity-8 mb-0">??????</p>
                          <h6 class="text-white mb-0"><fmt:formatNumber value="${saving_vo.savingbalance}" pattern="#,###" />???</h6>
                        </div>
                        <div class="me-4">
                          <p class="text-white text-sm opacity-8 mb-0">????????????</p>
                          <h6 class="text-white mb-0">${saving_vo.savinginterest * 100}%</h6>
                        </div>
                        
                      </div>
                      <!-- <div class="ms-auto w-20 d-flex align-items-end justify-content-end">
                        <img class="w-60 mt-2" src="../assets/img/logos/mastercard.png" alt="logo">
                      </div> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-12 mb-lg-0 mb-4">
              <div class="card mt-4">
                <div class="card-header pb-0 p-3">
                  <div class="row">
                    <div class="col-6 d-flex align-items-center">
                      <h6 class="mb-0">????????? ?????? ?????????</h6>
                    </div>
                  </div>
                </div>
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
                        <h6 class="mb-0">
                          ????????????(<span id="first">
                          	<c:if test="${saving_detail.first_status == 1 }">
                          		${first_status_money}
                          	</c:if>
                          	<c:if test="${saving_detail.first_status == 0 }">
                          		0
                          	</c:if>)</span>
                          	
                        + ????????????(<span id="second">
                        <c:if test="${saving_detail.second_status == 1 }">
                        	${second_status_money}
                        </c:if>
                        <c:if test="${saving_detail.second_status == 0 }">
                        	0
                        </c:if>)</span>
                        + ?????????(<span id="third">
                        <c:if test="${saving_detail.third_status == 1 }">
                        	${third_status_money}
                        </c:if>
                        <c:if test="${saving_detail.third_status == 0 }">
                        	0
                        </c:if>)</span> + ?????????(0) + ?????????(0) + ????????????(0)</h6>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
                        <h6 class="mb-0">+ <span id="after_money">${predict_money}???</span></h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xl-4 col-xs-12 mt-0">
          <div class="card mb-4">
            <div class="card-header pb-0 p-3">
              <h6 class="mb-1">${wish.wish_name}</h6>
              <p class="text-sm">D-53</p>
            </div>
            <div class="card-body p-3">
              <div class="row">
                <div class="col-xl-12 col-md-4 mb-xl-0 mb-0">
                  <div class="card card-blog card-plain">
                    <div class="position-relative">
                      <a class="d-block shadow-xl border-radius-xl">
                        <img src="${pageContext.request.contextPath}/photo/img/${fileVO.p_file_pk}" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
                      </a>
                    </div>
                    <div class="card-body px-1 pb-0">
                      <p class="text-gradient text-dark mb-2 text-sm">??????</p>
                      <a href="javascript:;">
                        <h5>
                          ???????????? : ${wish.targetPriceWithComma}???
                        </h5>
                      </a>
                      <!-- <p class="mb-4 text-sm">
                        As Uber works through a huge amount of internal management turmoil.
                      </p> -->
                      <td class="align-middle">
                        <div class="progress-wrapper w-100 mx-auto">
                          <div class="progress-info">
                            <div class="progress-percentage">
                              <span class="text-xl font-weight-bold"><fmt:formatNumber value="${percent}" pattern=".00"/>%</span>
                            </div>
                          </div>
                          <div class="progress">
                            <div class="progress-bar bg-gradient-success w-90" role="progressbar" aria-valuenow="${percent}" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </td>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
      	<form>
        <div class="col-md-7 mt-4">
          <div class="card">
            <div class="card-header pb-0 px-3">
              <h6 class="mb-0">???????????? ????????? ?????? ??????</h6>
            </div>
            <div class="card-body pt-4 p-3">
              <ul class="list-group">
                <li class="list-group-item border-0 d-flex p-4 mb-2 bg-gray-100 border-radius-lg">
                  <div class="d-flex flex-column">
                  	<c:if test="${saving_detail.first_status == 1 }">
                  		<div class="form-check form-switch ps-0">
                      		<input class="form-check-input ms-auto" type="checkbox" id="first_status" checked>
                   		 </div>
                  	</c:if>
                  	<c:if test="${saving_detail.first_status == 0 }">
                  		<div class="form-check form-switch ps-0">
                      		<input class="form-check-input ms-auto" type="checkbox" id="first_status">
                   		 </div>
                  	</c:if>
                    <h6 id ="test1pp" class="mb-3 text-sm">?????? ??????</h6>
	                    <span id ="test1p" class="mb-2 text-xs">?????? ??????: ?????? <span id = "test1"class="text-dark font-weight-bold ms-sm-2">${weekVO.target_week_balanceWithComma}</span>???</span>
	                    <span id ="test2p" class="mb-2 text-xs">?????? STOP ??????: <span id = "test3" class="text-dark ms-sm-2 font-weight-bold">${weekVO.target_week_stopWithComma}</span>???</span>
	                    <span id ="test3p" class="mb-2 text-xs">????????? ????????? ????????? ??????: <span id = "test2" class="text-dark ms-sm-2 font-weight-bold">${weekVO.target_week_nowWithComma}</span>???</span>
	                    <span id ="test4p"class="text-xs">??? ???????????? ?????? ?????? ??????: <span id = "test4" class="text-dark ms-sm-2 font-weight-bold"><fmt:formatNumber value="200000" pattern="#,###" />???</span></span>
                  </div>
                  <div class="ms-auto text-end">
                    <a class="btn btn-link text-danger text-gradient px-3 mb-0" href="javascript:;"></a>
                    <a class="btn btn-link text-dark px-3 mb-0" onclick="EditWeek();" ><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg">
                  <div class="d-flex flex-column">
                  <c:if test="${saving_detail.second_status == 1 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="second_status" checked>
                    </div>
                    </c:if>
                    <c:if test="${saving_detail.second_status == 0 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="second_status">
                    </div>
                    </c:if>
                    <h6 id ="test2pp" class="mb-3 text-sm">???????????? ??????</h6>
                    <span id="test5" class="mb-2 text-xs">?????? ??????: <span class="text-dark font-weight-bold ms-sm-2">${slowVO.target_slow_date}???</span></span>
                    <span id="test6" class="mb-2 text-xs">?????? ??????: <span class="text-dark ms-sm-2 font-weight-bold">${slowVO.target_slow_balanceWithComma}???</span></span>
                    <span id="test7" class="text-xs">??? ???????????? ?????? ?????? ??????: <span class="text-dark ms-sm-2 font-weight-bold"><fmt:formatNumber value="${sec_sum}" pattern="200000" /></span></span>
                  </div>
                  <div class="ms-auto text-end">
                    <a class="btn btn-link text-danger text-gradient px-3 mb-0" href="javascript:;"></a>
                    <a class="btn btn-link text-dark px-3 mb-0" onclick="updateSlow();" ><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg">
                  <div class="d-flex flex-column">
                    <c:if test="${saving_detail.third_status == 1 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="third_status" checked>
                    </div>
                    </c:if>
                    <c:if test="${saving_detail.third_status == 0 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="third_status">
                    </div>
                    </c:if>
                    <h6 id ="test3pp" class="mb-3 text-sm">????????? ??????</h6>
                    <span id ="test8" class="mb-2 text-xs">?????? ??????: <span class="text-dark font-weight-bold ms-sm-2">?????? ${payVO.target_pay_date}???</span></span>
                    <span id ="test9" class="mb-2 text-xs">??????: <span class="text-dark ms-sm-2 font-weight-bold">${payVO.target_pay_balanceWithComma}</span></span>
                    <span id ="test10" class="text-xs">??????: <span class="text-dark ms-sm-2 font-weight-bold">${payVO.target_pay_rate}%</span></span>
                    <span id ="test11" class="text-xs">??? ???????????? ?????? ?????? ??????: <span class="text-dark ms-sm-2 font-weight-bold"><fmt:formatNumber value="800000" pattern="#,###" />???</span></span>

                  </div>
                  <div class="ms-auto text-end">
                    <a class="btn btn-link text-danger text-gradient px-3 mb-0" href="javascript:;"></a>
                    <a class="btn btn-link text-dark px-3 mb-0" onclick="EditPay();" ><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg">
                  <div class="d-flex flex-column">
                     <c:if test="${saving_detail.four_status == 1 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="four_status" checked>
                    </div>
                    </c:if>
                    <c:if test="${saving_detail.four_status == 0 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="four_status">
                    </div>
                    </c:if>
                    <h6 id ="test4pp" class="mb-3 text-sm">????????? ??????</h6>
                    <span id ="test12" class="mb-2 text-xs">????????? ?????? : <span class="text-dark font-weight-bold ms-sm-2">${banVO.target_ban_gob} ???</span></span>
                    <span id ="test13" class="text-xs">??? ???????????? ?????? ?????? ??????: <span class="text-dark ms-sm-2 font-weight-bold"><fmt:formatNumber value="${fou_sum}" pattern="#,###" />???</span></span>

                  </div>
                  <div class="ms-auto text-end">
                    <a class="btn btn-link text-danger text-gradient px-3 mb-0" href="javascript:;"></a>
                    <a class="btn btn-link text-dark px-3 mb-0" onclick="EditGob();" ><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg">
                  <div class="d-flex flex-column">
                     <c:if test="${saving_detail.five_status == 1 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="five_status" checked>
                    </div>
                    </c:if>
                    <c:if test="${saving_detail.five_status == 0 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="five_status">
                    </div>
                    </c:if>
                    <h6 id ="test5pp"class="mb-3 text-sm">???????????? ??????</h6>
                    <span id="test14" class="mb-2 text-xs">?????? ???????????? : <span class="text-dark font-weight-bold ms-sm-2">${gwaVO.target_gwa_category}</span></span>
                    <span id="test15" class="mb-2 text-xs">?????? ?????? : <span class="text-dark ms-sm-2 font-weight-bold">${gwaVO.target_gwa_cnt}???</span></span>
                    <span id="test16" class="text-xs">?????? ?????? : <span class="text-dark ms-sm-2 font-weight-bold">${gwaVO.target_gwa_balanceWithComma}???</span></span>
                    <span id="test17" class="text-xs">??? ???????????? ?????? ?????? ??????: <span class="text-dark ms-sm-2 font-weight-bold"><fmt:formatNumber value="${fiv_sum}" pattern="#,###" />???</span></span>

                  </div>
                  <div class="ms-auto text-end">
                    <a class="btn btn-link text-danger text-gradient px-3 mb-0" href="javascript:;"></a>
                    <a class="btn btn-link text-dark px-3 mb-0" onclick="EditGwa();" ><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg">
                  <div class="d-flex flex-column">
                     <c:if test="${saving_detail.six_status == 1 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="six_status" checked>
                    </div>
                    </c:if>
                    <c:if test="${saving_detail.six_status == 0 }">
                    <div class="form-check form-switch ps-0">
                      <input class="form-check-input ms-auto" type="checkbox" id="six_status">
                    </div>
                    </c:if>
                    <h6 id="test6pp" class="mb-3 text-sm">???????????? ?????? ?????? ??? ???????????? ??????</h6>
                    <span id="test18" class="mb-2 text-xs">?????? ?????? : <span class="text-dark font-weight-bold ms-sm-2">${sanVO.target_san_date}???</span></span>
                    <span id="test19" class="mb-2 text-xs">?????? ?????? : <span class="text-dark ms-sm-2 font-weight-bold">${sanVO.target_san_balanceWithComma}???</span></span>
                    <span id="test20" class="text-xs">??? ???????????? ?????? ?????? ??????: <span class="text-dark ms-sm-2 font-weight-bold"><fmt:formatNumber value="200000" pattern="#,###" />???</span></span>
                  </div>
                  <div class="ms-auto text-end">
                    <a class="btn btn-link text-danger text-gradient px-3 mb-0" href="javascript:;"></a>
                    <a class="btn btn-link text-dark px-3 mb-0" onclick="EditSan();" ><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div style="float:right;" class="col-6 text-end">
               	<button onclick="doit()" class="btn bg-gradient-dark mb-0"><i class="fas fa-plus"></i>&nbsp;&nbsp;?????? ????????????</button>
              </div>
        </div>
        </form>


        
        <div class="col-md-5 mt-4">
          <div class="card h-100 mb-4">
            <div class="card-header pb-0 px-3">
              <div class="row">
                <div class="col-md-6">
                  <h6 class="mb-0">?????? ????????????</h6>
                </div>
                <div class="col-md-6 d-flex justify-content-end align-items-center">
                  <i class="far fa-calendar-alt me-2"></i>
                  <small>?????? ?????? ??????</small>
                </div>
              </div>
            </div>
            <div class="card-body pt-4 p-3">
              <h6 class="text-uppercase text-body text-xs font-weight-bolder mb-3">Newest</h6>
              <ul class="list-group">
              	<c:forEach items="${saving_log_list}" var="saving_log">
              		<li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">
                    <button class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-3 btn-sm d-flex align-items-center justify-content-center"><i class="fas fa-arrow-up"></i></button>
                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">${saving_log.saving_category}</h6>
                      <span class="text-xs">${saving_log.saving_date}</span>
                    </div>
                  </div>
                  <div class="d-flex align-items-center text-success text-gradient text-sm font-weight-bold">
                    + ${saving_log.saving_changeWithComma}???
                  </div>
                </li>
              	</c:forEach>
                <!-- <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">
                    <button class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-3 btn-sm d-flex align-items-center justify-content-center"><i class="fas fa-arrow-up"></i></button>
                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">?????? ??????</h6>
                      <span class="text-xs">27 March 2020, at 04:30 AM</span>
                    </div>
                  </div>
                  <div class="d-flex align-items-center text-success text-gradient text-sm font-weight-bold">
                    + $ 2,000
                  </div>
                </li> -->
              </ul>
              <!-- <h6 class="text-uppercase text-body text-xs font-weight-bolder my-3">Yesterday</h6> -->
              <!-- <ul class="list-group">
                <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">
                    <button class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-3 btn-sm d-flex align-items-center justify-content-center"><i class="fas fa-arrow-up"></i></button>
                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">???????????? ??????</h6>
                      <span class="text-xs">26 March 2020, at 13:45 PM</span>
                    </div>
                  </div>
                  <div class="d-flex align-items-center text-success text-gradient text-sm font-weight-bold">
                    + $ 750
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">
                    <button class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-3 btn-sm d-flex align-items-center justify-content-center"><i class="fas fa-arrow-up"></i></button>
                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">?????? ?????? ??????</h6>
                      <span class="text-xs">26 March 2020, at 12:30 PM</span>
                    </div>
                  </div>
                  <div class="d-flex align-items-center text-success text-gradient text-sm font-weight-bold">
                    + $ 1,000
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">
                    <button class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-3 btn-sm d-flex align-items-center justify-content-center"><i class="fas fa-arrow-up"></i></button>
                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">????????? ??????</h6>
                      <span class="text-xs">26 March 2020, at 08:30 AM</span>
                    </div>
                  </div>
                  <div class="d-flex align-items-center text-success text-gradient text-sm font-weight-bold">
                    + $ 2,500
                  </div>
                </li>
              </ul> -->
            </div>
          </div>
        </div>
      </div>
      <footer class="footer pt-3  ">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-sm text-muted text-lg-start">
                ?? <script>
                  document.write(new Date().getFullYear())
                </script>,
                made with <i class="fa fa-heart"></i> by
                <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">Creative Tim</a>
                for a better web.
              </div>
            </div>
            <div class="col-lg-6">
              <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                <li class="nav-item">
                  <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative Tim</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
                </li>
                <li class="nav-item">
                  <a href="https://creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </main>
  <div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="fa fa-cog py-2"> </i>
    </a>
    <div class="card shadow-lg ">
      <div class="card-header pb-0 pt-3 ">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Soft UI Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="fa fa-close"></i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0">
        <!-- Sidebar Backgrounds -->
        <div>
          <h6 class="mb-0">Sidebar Colors</h6>
        </div>
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors my-2 text-start">
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Sidenav Type</h6>
          <p class="text-sm">Choose between 2 different sidenav types.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-primary w-100 px-3 mb-2 active" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
          <button class="btn bg-gradient-primary w-100 px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
        <!-- Navbar Fixed -->
        <div class="mt-3">
          <h6 class="mb-0">Navbar Fixed</h6>
        </div>
        <div class="form-check form-switch ps-0">
          <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
        </div>
        <hr class="horizontal dark my-sm-4">
        <a class="btn bg-gradient-dark w-100" href="https://www.creative-tim.com/product/soft-ui-dashboard-pro">Free Download</a>
        <a class="btn btn-outline-dark w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/license/soft-ui-dashboard">View documentation</a>
        <div class="w-100 text-center">
          <a class="github-button" href="https://github.com/creativetimofficial/soft-ui-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/soft-ui-dashboard on GitHub">Star</a>
          <h6 class="mt-3">Thank you for sharing!</h6>
          <a href="https://twitter.com/intent/tweet?text=Check%20Soft%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
          </a>
          <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/soft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
          </a>
        </div>
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath}/resources/user/assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/ssets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = { damping: '0.5'}
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath}/resources/user/assets/js/soft-ui-dashboard.min.js?v=1.0.3"></script>
</body>

</html>