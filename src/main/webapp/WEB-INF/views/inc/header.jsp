<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./module.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>









<!--PRELOADER : START-->
<div id="preloader">
    <div id="status">
      <img class="logo">
    </div>
  </div>
<!--/.PRELOADER : END-->


<!--HEADER : START-->
<!-- <div class="header .container h-100 bg-dark "> -->
<div class="header .container ">
    <div class="navbar for-sticky row d-flex m-0 p-0">
        <div class="col-xl-8 text-start d-inline">
            <div class="d-inline me-2">
                <a href="index.do">LOGO</a>
            </div>
            <div class="d-inline me-2">
                <a href="memberListPage.do">회원목록 조회</a>
            </div>
            <div class="d-inline me-2">
                <a href="#">메뉴2</a>
            </div>
            <div class="d-inline me-2">
                <a href="#">메뉴3</a>
            </div>
        </div>
              	
           
    	<c:if test="${sessionScope.memberId != null}">
        <div class="col-xl-4 text-end align-items-center">
            <div class="d-inline me-2">
                <a href="memberLogout.do">로그아웃</a>
            </div>
            <div class="d-inline me-2">
                <span>ID : ${sessionScope.memberId}</span>
            </div>
        </div>
    	</c:if>
    	<c:if test="${sessionScope.memberId == null}">
        <div class="col-xl-4 text-end align-items-center">
            <div class="d-inline me-2">
                <a href="memberLoginPage.do">로그인</a>
            </div>
            <div class="d-inline me-2">
                <a href="memberRegisterPage.do">회원가입</a>
            </div>
        </div>
        </c:if>

    </div>
</div>
<!--/.HEADER : END-->