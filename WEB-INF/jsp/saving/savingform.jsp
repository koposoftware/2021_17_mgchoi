<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="utf-8">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>하나FUN </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    
    <!-- CSS here -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
    
    <script>
	    $(document).ready(function(){
	    	
	    	$("#saving_duedate").change(function(){
	            var saving_duedate = $("#saving_duedate option:selected").val();
	            
	            if(saving_duedate == '6month') {
	            	
	            	$("#max_rate").empty();
	            	$("#max_rate").text('최대 금리 1.0%');
	            	
	            }
	            
	            else if(saving_duedate == '1year') {
	            	
	            	$("#max_rate").empty();
	            	$("#max_rate").text('최대 금리 1.3%');
	            	
	            }
	            
	            
	        });
	    	
	    	
	    });
    </script>
    
</head>

<body>
 

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/user/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/user/assets/img/favicon.png">
  <title>
    하나FUN
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="${pageContext.request.contextPath }/resources/user/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/user/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="${pageContext.request.contextPath }/resources/user/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="${pageContext.request.contextPath }/resources/user/assets/css/soft-ui-dashboard.css?v=1.0.3" rel="stylesheet" />
</head>

<body class="">
  <div class="container position-sticky z-index-sticky top-0">
    <div class="row">
      <div class="col-12">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg blur blur-rounded top-0 z-index-3 shadow position-absolute my-3 py-2 start-0 end-0 mx-4">
          <div class="container-fluid">
            <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="../pages/dashboard.html">
              하나FUN
            </a>
            <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon mt-2">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </span>
            </button>
            <div class="collapse navbar-collapse" id="navigation">
              <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                  <a class="nav-link d-flex align-items-center me-2 active" aria-current="page" href="../pages/dashboard.html">
                    <i class="fa fa-chart-pie opacity-6 text-dark me-1"></i>
                    하나FUN이란?
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="../pages/profile.html">
                    <i class="fa fa-user opacity-6 text-dark me-1"></i>
                    사용방법
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="../pages/sign-up.html">
                    <i class="fas fa-user-circle opacity-6 text-dark me-1"></i>
                    100% 활용하기
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="../pages/sign-in.html">
                    <i class="fas fa-key opacity-6 text-dark me-1"></i>
                    FAQ
                  </a>
                </li>
              </ul>
              <ul class="navbar-nav d-lg-block d-none">
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/product/soft-ui-dashboard" class="btn btn-sm btn-round mb-0 me-1 bg-gradient-dark">가입하러가기</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <!-- End Navbar -->
      </div>
    </div>
  </div>
  
  <!-- -------- START FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
  <main class="main-content  mt-0">
    <section>
      <div class="page-header min-vh-75">
        <div class="container">
          <div class="row">

            <div class="col-8 col-xl-8" style="margin-top : 150px; width:100%;">
              <div class="card h-100">
                <div class="card-header pb-0 p-3">
                  <div class="row">
                    <div class="col-md-12 d-flex align-items-center">
                      <h3 class="mb-0">「하나 FUN」적금</h3>
                    </div>
                  </div>
                </div>

                <div class="card h-10">
                  <div class="card-header pb-0 p-3">
                    <div class="row">
                      <div class="col-md-8 d-flex align-items-center">
                        <h6 class="mb-0">제 1 조 약관의 적용</h6>
                      </div>
                    </div>
                  </div>
                  <div class="card-body p-3">
                    <p class="text-sm">
                      “ 하나의 여행 적금(이하 "이 예금"이라 함)”의 거래에는 이 특약을 적용하고, 이 특약에서 정하지 않은
                      사항은 『적립식예금 약관』 ,『예금거래 기본약관』을 적용합니다
                    </p>
                    <hr class="horizontal gray-light my-4">
                  </div>
                </div>

                <div class="card h-10">
                  <div class="card-header pb-0 p-3">
                    <div class="row">
                      <div class="col-md-8 d-flex align-items-center">
                        <h6 class="mb-0">제 2 조 약관의 적용</h6>
                      </div>
                    </div>
                  </div>
                  <div class="card-body p-3">
                    <p class="text-sm">
                      “ 하나의 여행 적금(이하 "이 예금"이라 함)”의 거래에는 이 특약을 적용하고, 이 특약에서 정하지 않은
                      사항은 『적립식예금 약관』 ,『예금거래 기본약관』을 적용합니다
                    </p>
                    <hr class="horizontal gray-light my-4">
                  </div>
                </div>

                <div class="card h-10">
                  <div class="card-header pb-0 p-3">
                    <div class="row">
                      <div class="col-md-8 d-flex align-items-center">
                        <h6 class="mb-0">제 3 조 약관의 적용</h6>
                      </div>
                    </div>
                  </div>
                  <div class="card-body p-3">
                    <p class="text-sm">
                      “ 하나의 여행 적금(이하 "이 예금"이라 함)”의 거래에는 이 특약을 적용하고, 이 특약에서 정하지 않은
                      사항은 『적립식예금 약관』 ,『예금거래 기본약관』을 적용합니다  “ 하나의 여행 적금(이하 "이 예금"이라 함)”의 거래에는 이 특약을 적용하고, 이 특약에서 정하지 않은
                      사항은 『적립식예금 약관』 ,『예금거래 기본약관』을 적용합니다래 기본약관』을 적용합니다  “ 하나의 여행 적금(이하 "이 예금"이라 함)”의 거래에는 이 특약을 적용하고, 이 특약에서 정하지 않은
                      사항은 『적립식예금 약관』 ,『예금거래 기본약관』을 적용합니다
                    </p>
                    <hr class="horizontal gray-light my-4">
                  </div>
                </div>

                <div class="card h-10">
                  <div class="card-header pb-0 p-3">
                    <div class="row">
                      <div class="col-md-8 d-flex align-items-center">
                        <h6 class="mb-0">제 4 조 약관의 적용</h6>
                      </div>
                    </div>
                  </div>
                  <div class="card-body p-3">
                    <p class="text-sm">
                      “ 하나의 여행 적금(이하 "이 예금"이라 함)”의 거래에는 이 특약을 적용하고, 이 특약에서 정하지 않은
                      사항은 『적립식예금 약관』 ,『예금거래 기본약관』을 적용합니다 “ 하나의 여행 적금(이하 "이 예금"이라 함)”의 거래에는 이 특약을 적용하고, 이 특약에서 정하지 않은
                      사항은 『적립식예금 약관』 ,『예금거래 기본약관』을 적용합니다
                    </p>
                    <hr class="horizontal gray-light my-4">
                  </div>
                </div>
              </div>
            </div>

            

            <div class="col-xl-4 col-lg-4 col-md-4 d-flex flex-column mx-auto">
              <div class="card card-plain mt-8">
                <div class="card-header pb-0 text-left bg-transparent">
                  <h3 class="font-weight-bolder text-info text-gradient">가입하기</h3>
                  <p class="mb-0">기본정보 입력</p>
                </div>
                <div class="card-body">
                  <form role="form" action="${pageContext.request.contextPath}/savingcreateprocess" method="post">
                    <input class="form-control valid" name="fun_member_pk" value="${MemberVO.fun_member_pk}" type="hidden">
                    <label>적금 통장명</label>
                    <div class="mb-3">
                      <input type="text" class="form-control"  name="savingname" iplaceholder="text" aria-label="text" aria-describedby="email-addon">
                    </div>
                    <label>간편 비밀번호</label>
                    <div class="mb-3">
                      <input type="password" class="form-control" name="savingpwd" placeholder="Password" aria-label="Password" aria-describedby="password-addon">
                    </div>
                    <label>간편 비밀번호 확인</label>
                    <div class="mb-3">
                      <input type="password" class="form-control" name="savingpwd1" placeholder="Password" aria-label="Password" aria-describedby="password-addon">
                    </div>
                    <div class="mb-3">
                      <div class="form-group">
                        <label for="exampleFormControlSelect2">연동 계좌선택</label>
                        <select multiple class="form-control" name = "fun_account_pk" id="accout_pk">
                          <c:forEach items="${list}" var="account">
			  		        	<option value = "${account.fun_account_pk}">${account.fun_account_num} [잔액 : ${account.fun_account_balance}]</option>
				  	      </c:forEach>
                        </select>
                      </div>
                    </div>
                    <div class="mb-3">
                      <div class="form-group">
                        <label for="exampleFormControlSelect2">가입금액 선택</label>
                        <select multiple class="form-control" name = "savingbalance">
                          <option value="1000" selected>1,000원</option>
                          <option value="100000">100,000만원</option>
                          <option value="200000">200,000만원</option>
                          <option value="300000">300,000만원</option>
                          <option value="400000">400,000만원</option>
                          <option value="500000">500,000만원</option>
                        </select>
                      </div>
                    </div>
                    <div class="mb-3">
                      <div class="form-group">
                        <label for="exampleFormControlSelect2">가입기한 선택</label>
                        <select multiple class="form-control" name = "saving_duedate">
                          <option value="1000" selected>6개월</option>
                          <option value="100000">1년</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-2" style="margin-top : 25px;">
                            <b><span style="color:#21b2a5;" id="max_rate"></span></b>
                      </div>
                    <div class="text-center">
                      <button type="submit" class="btn bg-gradient-info w-100 mt-4 mb-0">가입하기</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            
      


          </div>
        </div>
      </div>
    </section>



  <!-- -------- END FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
  <!--   Core JS Files   -->
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/user/assets/js/soft-ui-dashboard.min.js?v=1.0.3"></script>
</body>

<!-- Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="${pageContext.request.contextPath }/resources/user/assets/img/logo/logo.png" alt="">
            </div>
        </div>
    </div>
</div>
    
</body>
    
</html>