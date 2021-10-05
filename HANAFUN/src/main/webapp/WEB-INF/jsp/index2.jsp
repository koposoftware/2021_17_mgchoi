<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8">

	<jsp:include page="incl/header.jsp"/>

    <!-- ***** Header Area End ***** -->

    <!-- ***** Hero Area Start ***** -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(${pageContext.request.contextPath}/resources/master/img/bg-img/funsaving.png)">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">FUN하지만 <br>뻔하지 않은  <br>하나 FUN</h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">쉽고 재미있는 저축 하나 FUN을 사용해보세요.</h6>
                                <button type="submit" style="background-color:#21b2a5; padding:0px; height:auto; margin:auto;"class="btn medilife-btn">상품가입</button>                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(${pageContext.request.contextPath}/resources/master/img/bg-img/funsaving.png)">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">FUN하지만 <br>뻔하지 않은  <br>하나 FUN</h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">쉽고 재미있는 저축 하나 FUN을 사용해보세요.</h6>
                                <button type="submit" style="background-color:#21b2a5; padding:0px; height:auto; margin:auto;"class="btn medilife-btn">상품가입</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/breadcumb1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">Medical Services that <br>You can Trust 100%</h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed diam nonummy nibh euismod.</h6>
                                <a href="#" class="btn medilife-btn mt-50" data-animation="fadeInUp" data-delay="700ms">Discover Medifile <span>+</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="incl/footer.jsp"/>

</body>

</html>