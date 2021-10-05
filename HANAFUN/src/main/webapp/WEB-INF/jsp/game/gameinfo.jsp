<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8">

	<jsp:include page="../incl/header.jsp"/>

    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">하나마블</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="medilife-features-area section-padding-100">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-6">
                    <div class="features-content">
                        <h2>하나마블</h2>
                        <p><b>게임을 통해 금융교육 및 금리도 올려보세요!!</b></p>
                        <button type="submit" style="padding:0px; height:auto;"class="btn medilife-btn">게임하러가기</button>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="features-thumbnail">
                        <img src="${pageContext.request.contextPath }/resources/master/img/bg-img/about1.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="../incl/footer.jsp"/>

</body>

</html>