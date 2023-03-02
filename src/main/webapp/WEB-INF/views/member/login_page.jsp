<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/module.jsp" %>

<!-- 로그인 페이지 디자인 (css) -->
<link rel="stylesheet" href="${ctx}/resources/css/membership.css">
<!-- 로그인 유효성 체크 (js)-->
<script type="text/javascript" src="${ctx}/resources/js/login_valid.js"></script>


<!--HEADER : START-->
<%@ include file="../inc/header.jsp" %>
<!--/.HEADER : END-->

<!--CONTENT WRAP : START-->
<div class="content-wrap">
    <!-- CONTENT : START-->
    <div class="content">
        <!-- HOME : START -->
        <section id="membership_home">
            <!-- container :START -->
            <div class="container h-100">
                <!-- row : START -->
                <div class="d-flex row justify-content-center align-items-center">
                    <!-- hero-content-wrap : START -->
                    <div class="membership-wrap">
                        <div class="membership-content ">
                            <div  class="text-wrap">
                                <p id="web-logo" class="text-center align-middle">Web:LOGO</p>
                            </div>
                            <div class="text-wrap">
                                <p id="title-name" class="text-center align-middle">개발자 학습 게시판 커뮤니티</p>
                            </div>
                            
                            <hr>
                            	<div class="text-white">로그인</div>
                            <hr>
                            	
                            <form action="memberLoginChk.do" method="post">
                                <div class="form-control-wrap">
                                    <input name="id" type="text" class="form-control" placeholder="아이디를 입력하세요">
                                </div>
                                <div class="form-control-wrap">
                                    <input name="pw" type="text" class="form-control" placeholder="비밀번호를 입력하세요">
                                </div>
                                <div>
                                    <button id="login-button" class="btn btn-primary">로그인</button>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                    <label class="form-check-label" for="flexCheckChecked">
                                      로그인 상태유지
                                    </label>
                                </div>
                                <div>
                                    <a href="memberRegisterPage.do" id="register-button" class="btn btn-success">회원가입</a>
                                </div>
                                <div>
                                    <a href="#" class="text-white">아이디 / 비밀번호 찾기</a>
                                </div>
                            </form>   

                        </div>

                    <!-- hero-content-wrap : START -->
                    </div>
                <!-- row : END -->
                </div>
            <!--./container : END -->
            </div>
        <!--/.HOME : END -->
        </section>
    </div>
    <!--/.CONTENT : END-->
</div>
<!--/.CONTENT WRAP : END-->