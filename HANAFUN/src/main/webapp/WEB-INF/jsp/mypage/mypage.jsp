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
	
	<div class="page-content d-flex align-items-stretch" style="margin: auto;width: 70%;margin-top: 30px;">

        <div class="content-inner chart-cont">

            <!--***** CONTENT *****--> 
            <div class="card p-4">    
                <div class="row">
                    <hgroup class="mb20">
                        <h1>${MemberVO.name}님의 마이페이지</h1>
                        <!-- <h2 class="lead"><strong class="cl-blue">3</strong> results were found for the search for <strong class="cl-blue">Business</strong></h2> -->                               
                    </hgroup>
		
                    <section class="col-xs-12 col-sm-6 col-md-12">
                    	<c:forEach items="${account_list}" var="account">
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
                                <h4>입출금통장</h4> 
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
                        </c:forEach>
                        
                        <c:forEach items="${saving_list}" var="saving">
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
                                <h3><a href="${pageContext.request.contextPath}/fundetail?savingpk=${saving.saving_pk}">${saving.savingname}</a></h3>
                                <h3>적금통장(FUN적금)</h3> 
                            </div>
                            <span class="clearfix borda"></span>
                        </article>
                        </c:forEach>
	                  </section>
                </div> 
            </div>

        </div>
    </div> 
	
	
	
</main>

 <jsp:include page="../include/bottom.jsp"/>
    
</body>
    
</html>