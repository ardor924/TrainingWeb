<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/module.jsp" %>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/memberlist.css">

<!--HEADER : START-->
<%@ include file="../container-flude-inc/header.jsp" %>
<!--/.HEADER : END-->

<!--CONTENT WRAP : START-->
<div class="content-wrap">
    <!-- CONTENT : START-->
    <div class="content">
        <!-- HOME : START -->
        <section id="memberList_home">
            <!-- container :START -->
            <div class="container h-100">
                <!-- row : START -->
                <div class="d-flex row justify-content-center align-items-center">
                    <!-- hero-content-wrap : START -->
                    <div class="memberList-content-wrap">
						<table class="table memberList-content">
							<thead>
							<tr>
								<th>번호</th>
								<th>아이디</th>
								<th>비밀번호</th>
								<th>이름</th>
								<th>나이</th>
								<th>전화</th>
								<th>이메일</th>
								<th>주소</th>
								<th>가입일</th>
							<tr>
								
							</thead>
							<tbody>
							<c:forEach var="li" items="${mList}">			
							<tr>
								<td>${li.no}</td>
								<td>${li.id}</td>
								<td>${li.pw}</td>
								<td>${li.name}</td>
								<td>${li.age}</td>
								<td>${li.tel}</td>
								<td>${li.email}</td>
								<td>${li.jibunAddr}/${li.detailAddr}</td>
								<td>
									<fmt:formatDate value="${li.regDate}" pattern="yyyy.MM.dd" type="date"/>
								</td>
							</c:forEach>
							</tbody>
							<tr>
						</table>
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