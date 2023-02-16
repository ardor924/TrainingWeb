<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ include file="../inc/module.jsp" %>

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
                            <form action="memberInsert.do">
                                <span>아이디</span>
                                <input class="form-control" type="text" name="id">
                                <span>비밀번호</span>
                                <input class="form-control" type="text" name="pw">
                                <span>이름</span>
                                <input class="form-control" type="text" name="name">
                                <span>전화번호</span>
                                <input class="form-control" type="text" name="tel">
                                <span>이메일</span>
                                <input class="form-control" type="text" name="email">
                                <span>집주소</span>
                                <input class="form-control" type="text" name="addr">
                                
                                <div>
                                    <button class="btn btn-primary">회원가입</button>
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
    
    
    