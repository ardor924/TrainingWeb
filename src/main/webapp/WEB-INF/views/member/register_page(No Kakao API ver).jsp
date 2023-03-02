<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../inc/module.jsp" %>

<!-- 회원가입 페이지 디자인 (css) -->
<link rel="stylesheet" href="${ctx}/resources/css/membership.css">
<!-- 회원가입 유효성 체크 (js)-->
<script type="text/javascript" src="${ctx}/resources/js/register_valid(No Kakao API ver).js"></script>

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
                            	<div class="text-white">회원가입</div>
                            <hr>	
                            
                            <!-- 회원가입 폼 -->							
                            <form class="text-white" action="memberInsert.do" method="post" name="joinForm">	
	                            <div class="form-control-wrap">
	                                <div class="row">
	                                    <div class="col-2 form-control-text">아이디</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="form-control-wrap">
	                                <div class="row">
	                                    <div class="col-2 form-control-text">비밀번호</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="pw" placeholder="비밀번호를 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="form-control-wrap">
	                                <div class="row">
	                                    <div class="col-2 form-control-text"></div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="pwConfirm" placeholder="비밀번호 확인">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="form-control-wrap">
	                                <div class="row">
	                                    <div class="col-2 form-control-text">이름</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="name" placeholder="이름을 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="form-control-wrap">
	                                <div class="row">
	                                    <div class="col-2 form-control-text">나이</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="age" placeholder="나이를 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="form-control-wrap">
	                                <div class="row">
	                                    <div class="col-2 form-control-text">이메일</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="email" placeholder="이메일을 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="form-control-wrap">
	                                <div class="row">
	                                    <div class="col-2 form-control-text">전화번호</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="tel" placeholder="010-xxxx-xxxx">
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="form-control-wrap">
                                        <div class="row">
                                            <div class="col-2 form-control-text">주소</div>
                                            <div class="col-10">
                                                <input class="form-control mb-2" type="text" name= "zipcode" id="zipcode" placeholder="주소입력"/>
                                            </div>																                               
                                        </div>
                                    </div>

	                            <div>
	                                <button type="button" onclick="inputChk()" id="register-button" class="btn btn-success mt-2">가입</button>
	                            </div>	
	                            <div>
	                                <a href="memberLoginPage.do" id="login-button" class="btn btn-primary mt-2">로그인</a>
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
    
