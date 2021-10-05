<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8">

	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/pages/search.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/ui-elements/timeline.css">
	
			
	<jsp:include page="../incl/header.jsp"/>

    <!-- ***** Header Area End ***** -->

    <!-- ***** Breadcumb Area Start ***** -->
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(${pageContext.request.contextPath}/resources/master/img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">${MemberVO.name}님의 위시리스트</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Breadcumb Area End ***** -->

	
    <section class="medilife-blog-area section-padding-100" style="padding-bottom:10px;">
        <div class="container">
            <h2>진행중인 WishList</h2>
            <c:forEach items="${wish_list}" var="wish">
            	<c:choose>
            	<c:when test="${wish.status == 0 }">
            <div class="row">
                <div class="col-12 col-lg-12">
                    <div class="row">
                        <!-- Single Blog Area -->
                        <!-- Single Blog Area -->
                        
                        <div class="col-12 col-md-6">
                            <div class="single-blog-area bg-gray mb-50">
                                <!-- Post Thumbnail -->
                                <div class="blog-post-thumbnail">
                                <c:forEach items="${filevo_list}" var="file">
            						<c:choose>
           							<c:when test="${wish.p_file_id eq file.p_file_pk }">
                                    	<img style="width:250px; height:250px;"src="${pageContext.request.contextPath}/photo/img/${file.p_file_pk}" alt="">
                                    <!-- Post Date -->
                                    </c:when>
                                    </c:choose>
                                </c:forEach>
                                    <div class="post-date">
                                        <a href="#">${aa}</a>
                                    </div>
                                </div>
                                <!-- Post Content -->
                                
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                        <div class="container">
                            <h2>진행중인 목표 달성도</h2>
                            <p><b>D-${diff}</b></p> 
                            <div class="progress" style="height:100%;">
                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="${percent}" aria-valuemin="0" aria-valuemax="100" style="width:${percent}%">
                                ${percent}% 달성
                            </div>
                        	</div>
                        	<div class="post-content">
                                    <a href="#" class="headline">${wish.wish_name}</a>
                                    <p>달성도 : ${percent}% </p>
                                    <p>목표금액 : ${wish.target_price}</p>
                                    <p>저축한금액 : ${saving_vo.savingbalance}</p>
                                    <p>시작기간 : ${bb}</p>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </c:when>
        </c:choose>
        </c:forEach>
        </div>
    </section>


    <%-- <section class="medilife-blog-area section-padding-100" style="padding:0;">
        <div class="container">
            <h2>대기중인 WishList</h2>
            <c:forEach items="${wish_list}" var="wish">
            	<c:choose>
            	<c:when test="${wish.status == 1 }">
            <div class="row">
                <div class="col-12 col-lg-12">
                    <div class="row">
                        <!-- Single Blog Area -->
                        <!-- Single Blog Area -->

                <!-- Single Blog Area -->
                <div class="col-12 col-md-6">
                    <div class="single-blog-area bg-gray mb-50">
                        <!-- Post Thumbnail -->
                        <div class="blog-post-thumbnail">
                            <img src="${pageContext.request.contextPath}/resources/master/img/blog-img/3.jpg" alt="">
                            <!-- Post Date -->
                            <div class="post-date">
                                <a href="#">Jan 23, 2018</a>
                            </div>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <a href="#" class="headline">자 맥북 사보자~</a>
                            <p>달성도 : 20% </p>
                            <p>목표금액 : 300,000</p>
                        </div>
                    </div>
                </div>
    

                <!-- Single Blog Area -->
                <div class="col-12 col-md-6">
                    <div class="single-blog-area bg-gray mb-50">
                        <!-- Post Thumbnail -->
                        <div class="blog-post-thumbnail">
                            <img src="${pageContext.request.contextPath}/resources/master/img/blog-img/3.jpg" alt="">
                            <!-- Post Date -->
                            <div class="post-date">
                                <a href="#">Jan 23, 2018</a>
                            </div>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <a href="#" class="headline">응 안사~</a>
                            <p>시작일 : 2021.09.11</p>
                            <p>달성도 : 20% </p>
                            <p>목표금액 : 300,000</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </c:when>
    </c:choose>
    </c:forEach>
    </div>
    </section> --%>
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

    <section class="medilife-blog-area section-padding-100">
        <div class="container">
            <h2>완료한 WishList</h2>
            <c:forEach items="${wish_list}" var="wish">
            	<c:choose>
            	<c:when test="${wish.status == 2 }">
            <div class="row">
                <div class="col-12 col-lg-12">
                    <div class="row">
                        <!-- Single Blog Area -->
                        <!-- Single Blog Area -->

                <!-- Single Blog Area -->
                <div class="col-12 col-md-6">
                    <div class="single-blog-area bg-gray mb-50">
                        <!-- Post Thumbnail -->
                        <div class="blog-post-thumbnail">
                            <img src="${pageContext.request.contextPath}/resources/master/img/blog-img/3.jpg" alt="">
                            <!-- Post Date -->
                            <!-- <div class="post-date">
                                <a href="#">Jan 23, 2018</a>
                            </div> -->
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <a href="#" class="headline">자 맥북 사보자~</a>
                            <p>달성도 : 100% </p>
                            <p>목표금액 : 300,000</p>
                            <button onclick="sendLink()"type="submit" id="share" style="padding:0px; height:auto;float: right;"class="btn medilife-btn">공유하기</button>
                        </div>
                    </div>
                </div>
    

                <!-- Single Blog Area -->
                <div class="col-12 col-md-6">
                    <div class="single-blog-area bg-gray mb-50">
                        <!-- Post Thumbnail -->
                        <div class="blog-post-thumbnail">
                            <img src="${pageContext.request.contextPath}/resources/master/img/blog-img/3.jpg" alt="">
                            <!-- Post Date -->
                            <!-- <div class="post-date">
                                <a href="#">Jan 23, 2018</a>
                            </div> -->
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <a href="#" class="headline">응 안사~</a>
                            <p>달성도 : 100% </p>
                            <p>목표금액 : 300,000</p>
                            <button type="submit" style="padding:0px; height:auto;float: right;"class="btn medilife-btn">공유완료</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </c:when>
    </c:choose>
    </c:forEach>
    </div>
    </section>
    
    
    <%-- <div class="medilife-gallery-area owl-carousel" style="margin-bottom:350px">
        <!-- Single Gallery Item -->
        <div class="single-gallery-item">
            <img src="${pageContext.request.contextPath}/resources/master/img/bg-img/g1.jpg" alt="">
            <div class="view-more-btn">
                <a href="${pageContext.request.contextPath}/resources/master/img/bg-img/g1.jpg" class="btn gallery-img">See More +</a>
            </div>
        </div>
        <!-- Single Gallery Item -->
        <div class="single-gallery-item">
            <img src="${pageContext.request.contextPath}/resources/master/img/bg-img/g2.jpg" alt="">
            <div class="view-more-btn">
                <a href="${pageContext.request.contextPath}/resources/master/img/bg-img/g2.jpg" class="btn gallery-img">See More +</a>
            </div>
        </div>
        <!-- Single Gallery Item -->
        <div class="single-gallery-item">
            <img src="${pageContext.request.contextPath}/resources/master/img/bg-img/g3.jpg" alt="">
            <div class="view-more-btn">
                <a href="${pageContext.request.contextPath}/resources/master/img/bg-img/g3.jpg" class="btn gallery-img">See More +</a>
            </div>
        </div>

        <!-- Single Gallery Item -->
        <div class="single-gallery-item">
            <img src="${pageContext.request.contextPath}/resources/master/img/bg-img/g4.jpg" alt="">
            <div class="view-more-btn">
                <a href="${pageContext.request.contextPath}/resources/master/img/bg-img/g4.jpg" class="btn gallery-img">See More +</a>
            </div>
        </div>
    </div> --%>

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="../incl/footer.jsp"/>

	<script>
		
		Kakao.init('e8a86b00d5b7ffb701f236b49d3a76c3'); // 초기화
		
		function sendLink() {
			  
			  Kakao.Link.sendCustom({
				  templateId: 62146,
				  templateArgs: {
				    'title': '하나 FUN에서 목적달성했다~',
				    'description': '어때~'
				  }
				});
			
			  $("#share").text('공유완료');
			  
		  }
		
		
		
	</script>

</body>

</html>