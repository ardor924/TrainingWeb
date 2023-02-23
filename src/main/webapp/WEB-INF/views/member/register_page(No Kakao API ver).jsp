<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../inc/module.jsp" %>

<!-- 회원가입 페이지 디자인 (css) -->
<link rel="stylesheet" href="${ctx}/resources/css/register.css">
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
	                            <div class="m-0 p-0">
	                                <div class="row">
	                                    <div class="col-2 p-0">아이디</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="m-0 p-0">
	                                <div class="row">
	                                    <div class="col-2 p-0">비밀번호</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="pw" placeholder="비밀번호를 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="m-0 p-0">
	                                <div class="row">
	                                    <div class="col-2 p-0"></div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="pwConfirm" placeholder="비밀번호 확인">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="m-0 p-0">
	                                <div class="row">
	                                    <div class="col-2 p-0">이름</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="name" placeholder="이름을 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="m-0 p-0">
	                                <div class="row">
	                                    <div class="col-2 p-0">나이</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="age" placeholder="나이를 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="m-0 p-0">
	                                <div class="row">
	                                    <div class="col-2 p-0">이메일</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="email" placeholder="이메일을 입력하세요">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="m-0 p-0">
	                                <div class="row">
	                                    <div class="col-2 p-0">전화번호</div>
	                                    <div class="col-10">
	                                        <input type="text" class="form-control" name="tel" placeholder="010-xxxx-xxxx">
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="m-0 p-0">
                                        <div class="row">
                                            <div class="col-2 p-0">주소</div>
                                            <div class="col-10">
                                                <input class="form-control form-control mb-2" type="text" name= "zipcode" id="zipcode" placeholder="주소입력"/>
                                            </div>																                               
                                        </div>
                                    </div>

	                            <div>
	                                <button type="button" onclick="inputChk()" id="register-button" class="btn btn-success">가입</button>
	                            </div>	

	                        </form>         
	
	                        <form action="memberLoginPage.do" method="get">
	                            <div>
	                                <button id="login-button" class="btn btn-primary">로그인</button>
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
    
