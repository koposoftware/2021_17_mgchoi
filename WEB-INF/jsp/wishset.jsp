<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
  <div class="row">
    <div class="col-md-8 mx-auto">
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
        </ol>
     
        <div class="carousel-inner" style="margin-top: 150px;vertical-align:baseline; width:100%;  padding:0; display: inline-block!important;">
         
          <div class="carousel-item active" >
            <img class="d-block w-100" style="width:1200px; height:400px;" 
            src="data:image/jpeg;base64,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" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" style="width:1200px; height:400px;"  
            src="https://newsimg.sedaily.com/2021/05/03/22M7UQO9HU_1.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" style="width:1200px; height:400px;" 
            src="https://demos.creative-tim.com/argon-dashboard-pro/assets/img/theme/img-1-1200x1000.jpg" alt="Third slide">
          </div>
        </div>
        

        <form style="margin-left:5%; width:90% !important;  display: inline-block;"role="form" action="${pageContext.request.contextPath}/objectCreate" enctype="multipart/form-data" method="post">
          <h1>STEP 01. 목표설정</h1>
          <input type="hidden" name="saving_pk" value="${savingpk}">
          <input class="form-control valid" name="fun_member_pk" value="${MemberVO.fun_member_pk}" type="hidden">
          <label>목표명</label>
          <div class="mb-0">
            <input type="text" class="form-control"  name="wish_name" iplaceholder="text" aria-label="text" aria-describedby="email-addon">
          </div>
          <label>목표테마설정</label>
          <div class="mb-0">
            <input type="file" class="form-control"  id="uploadFile" name="uploadFile" iplaceholder="text" aria-label="text" aria-describedby="email-addon">
          </div>
          <label>목표금액</label>
          <div class="mb-0">
            <input type="text" class="form-control" name="target_price"  aria-label="Password" aria-describedby="password-addon">
          </div>
          <div class="mb-3">
            <div class="form-group">
              <label for="exampleFormControlSelect2">목표 기간</label>
              <select multiple class="form-control" name = "savingbalance">
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



          <div class="text-center">
            <button type="submit" class="btn bg-gradient-info w-100 mt-4 mb-0">설정하기</button>
          </div>
          
        </form>

        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
  </div>

  <!-- -------- START FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT
  <div class="row">
    <div class="col-md-8 mx-auto">
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active" style="margin-top: 150px;">
            <h1>STEP 01. 목표설정</h1>
            <img class="d-block w-45" style="vertical-align:baseline; width:49%; margin:0; padding:0; display: inline-block!important;" src="https://demos.creative-tim.com/argon-dashboard-pro/assets/img/theme/img-1-1200x1000.jpg" alt="First slide">
            
            <form style="margin-left:5%; width:45% !important;  display: inline-block;"role="form" action="${pageContext.request.contextPath}/savingcreateprocess" method="post">
              <input class="form-control valid" name="fun_member_pk" value="${MemberVO.fun_member_pk}" type="hidden">
              <label>적금 통장명</label>
              <div class="mb-0">
                <input type="text" class="form-control"  name="savingname" iplaceholder="text" aria-label="text" aria-describedby="email-addon">
              </div>
              <label>간편 비밀번호</label>
              <div class="mb-0">
                <input type="password" class="form-control" name="savingpwd" placeholder="Password" aria-label="Password" aria-describedby="password-addon">
              </div>
              <label>간편 비밀번호 확인</label>
              <div class="mb-0">
                <input type="password" class="form-control" name="savingpwd1" placeholder="Password" aria-label="Password" aria-describedby="password-addon">
              </div>
              <label>적금 통장명</label>
              <div class="mb-0">
                <input type="file" class="form-control"  name="savingname" iplaceholder="text" aria-label="text" aria-describedby="email-addon">
              </div>
              <div class="text-center">
                <button type="submit" class="btn bg-gradient-info w-100 mt-4 mb-0">가입하기</button>
              </div>
              
            </form>
          </div>
        </div>
        
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
  </div>
 ------- -->

  
  <!-- -------- END FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
  <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath }/resources/user/assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/assets/js/plugins/smooth-scrollbar.min.js"></script>
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

</html>