<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./module.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- 미 로그인시 메세지 -->
<c:set var="MSG" value="${isLogin}"/>

<c:if test="${MSG eq null }">
	<script type="text/javascript">
		alert("로그인이 필요합니다.");
		location.href="memberLoginPage.do"
	</script>
</c:if>


<!-- 로그인성공 메세지 -->
<c:set var="MSG" value="${isLogin}"/>
<c:set var="name" value="${memberName}"/>

<c:if test="${MSG eq 'yes'}">
	<script type="text/javascript">
		var name = '<c:out value="${name}"/>';
		alert(name+"님 환영합니다.");
	</script>
</c:if>