<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 헤더 -->
<div class="wrap header container ps-3 pe-3">
<!-- <div class="wrap header .container ps-3 pe-3"> -->
<!-- <div class="wrap header container"> -->
    <div class="header-content-wrap bg-light">
        <div class="header-content-left ">
            <div class="header-content-text">
                <a href="main.do">LOGO</a>
            </div>
            <div class="header-content-text">
                <a href="memberListPage.do">회원목록조회</a>
            </div>
            <div class="header-content-text">
                <a href="#">메뉴1</a>
            </div>
            <div class="header-content-text">
                <a href="#">메뉴2</a>
            </div>
        </div>
        
        
        <c:if test="${sessionScope.memberId != null}">
        <div class="header-content-right">
            <div class="header-content-text">
            	<a href="#">Hello ${sessionScope.memberName}님</a>
            </div>
            <div class="header-content-text">
                <a href="memberLogout.do">로그아웃</a>
            </div>
        </div>
        </c:if>
        
        <c:if test="${sessionScope.memberId == null}">
        <div class="header-content-right">
            <div class="header-content-text">
                <a href="memberLoginPage.do">로그인</a>
            </div>
            <div class="header-content-text">
                <a href="memberRegisterPage.do">회원가입</a>
            </div>
        </div>
        </c:if>              
    </div>
</div>