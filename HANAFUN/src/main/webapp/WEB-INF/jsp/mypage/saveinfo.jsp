<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8">

	<jsp:include page="../incl/header.jsp"/>

    <!-- ***** Header Area End ***** -->

    <!-- ***** Hero Area Start ***** -->
    <section class="elements-area section-padding-100-0">
        <div class="container">


            <div class="row">
                <!-- ***** Progress Bars & Accordions ***** -->
                <div class="col-12">
                    <div class="elements-title">
                        <h2>Accordions &amp; Tabs</h2>
                    </div>



                    <div class="medilife-tabs-content">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="institution-tab" data-toggle="tab" href="#institution" role="tab" aria-controls="institution" aria-selected="false">매주 UP!!</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="faq-tab" data-toggle="tab" href="#faq" role="tab" aria-controls="faq" aria-selected="false">느릿느릿</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " id="specialities-tab" data-toggle="tab" href="#specialities" role="tab" aria-controls="specialities" aria-selected="true">버릇을 고쳐줄게!!</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="laboratory-tab" data-toggle="tab" href="#laboratory" role="tab" aria-controls="laboratory" aria-selected="false">예산을 적어봐!!</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="emergencies-tab" data-toggle="tab" href="#emergencies" role="tab" aria-controls="emergencies" aria-selected="false">허리띠 졸라매</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="scolarship-tab" data-toggle="tab" href="#scolarship" role="tab" aria-controls="scolarship" aria-selected="false">잔돈을 모아봐!!</a>
                            </li>
                        </ul>

                        <div class="tab-content mb-100" id="myTabContent">
                            <div class="tab-pane fade show active" id="institution" role="tabpanel" aria-labelledby="institution-tab">
                                <div class="medilife-tab-content d-md-flex align-items-center">
                                    <!-- Medilife Tab Text  -->
                                    <div class="medilife-tab-text">
                                        <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="contact-name" placeholder="Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" id="contact-email" placeholder="Email">
                                                </div>
                                                <div class="form-group">
                                                    <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                                <button type="submit" style="padding:0; float:right; height: auto;" class="btn medilife-btn">설정하기</button>
                                          </form>
                                    </div>
                                    <!-- Medilife Tab Img  -->
                                    <div class="medilife-tab-img">
                                        <img src="${pageContext.request.contextPath }/resources/master/img/bg-img/about1.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="faq" role="tabpanel" aria-labelledby="faq-tab">
                                <div class="medilife-tab-content d-md-flex align-items-center">
                                    <!-- Medilife Tab Text  -->
                                    <div class="medilife-tab-text">
                                        <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="contact-name" placeholder="Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" id="contact-email" placeholder="Email">
                                                </div>
                                                <div class="form-group">
                                                    <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                                <button type="submit" style="padding:0; float:right; height: auto;" class="btn medilife-btn">설정하기</button>
                                          </form>
                                    </div>
                                    <!-- Medilife Tab Img  -->
                                    <div class="medilife-tab-img">
                                        <img src="${pageContext.request.contextPath }/resources/master/img/bg-img/medical1.png" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade " id="specialities" role="tabpanel" aria-labelledby="specialities-tab">
                                <div class="medilife-tab-content d-md-flex align-items-center">
                                    <!-- Medilife Tab Text  -->
                                    <div class="medilife-tab-text">
                                        <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="contact-name" placeholder="Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" id="contact-email" placeholder="Email">
                                                </div>
                                                <div class="form-group">
                                                    <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                                <button type="submit" style="padding:0; float:right; height: auto;" class="btn medilife-btn">설정하기</button>
                                          </form>
                                    </div>
                                    <!-- Medilife Tab Img  -->
                                    <div class="medilife-tab-img">
                                        <img src="${pageContext.request.contextPath }/resources/master/img/bg-img/tab.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="laboratory" role="tabpanel" aria-labelledby="laboratory-tab">
                                <div class="medilife-tab-content d-md-flex align-items-center">
                                    <!-- Medilife Tab Text  -->
                                    <div class="medilife-tab-text">
                                        <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="contact-name" placeholder="Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" id="contact-email" placeholder="Email">
                                                </div>
                                                <div class="form-group">
                                                    <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                                <button type="submit" style="padding:0; float:right; height: auto;" class="btn medilife-btn">설정하기</button>
                                          </form>
                                    </div>
                                    <!-- Medilife Tab Img  -->
                                    <div class="medilife-tab-img">
                                        <img src="${pageContext.request.contextPath }/resources/master/img/bg-img/medical1.png" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="emergencies" role="tabpanel" aria-labelledby="emergencies-tab">
                                <div class="medilife-tab-content d-md-flex align-items-center">
                                    <!-- Medilife Tab Text  -->
                                    <div class="medilife-tab-text">
                                        <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="contact-name" placeholder="Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" id="contact-email" placeholder="Email">
                                                </div>
                                                <div class="form-group">
                                                    <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                                <button type="submit" style="padding:0; float:right; height: auto;" class="btn medilife-btn">설정하기</button>
                                          </form>
                                    </div>
                                    <!-- Medilife Tab Img  -->
                                    <div class="medilife-tab-img">
                                        <img src="${pageContext.request.contextPath }/resources/master/img/bg-img/about1.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="scolarship" role="tabpanel" aria-labelledby="scolarship-tab">
                                <div class="medilife-tab-content d-md-flex align-items-center">
                                    <!-- Medilife Tab Text  -->
                                    <div class="medilife-tab-text">
                                        <form action="#" method="post">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="contact-name" placeholder="Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" class="form-control" id="contact-email" placeholder="Email">
                                                </div>
                                                <div class="form-group">
                                                    <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                                <button type="submit" style="padding:0; float:right; height: auto;" class="btn medilife-btn">설정하기</button>
                                          </form>
                                    </div>
                                    <!-- Medilife Tab Img  -->
                                    <div class="medilife-tab-img">
                                        <img src="${pageContext.request.contextPath }/resources/master/img/bg-img/medical1.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="../incl/footer.jsp"/>

</body>

</html>