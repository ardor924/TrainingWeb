<!-- 

********inc 헤더 기본 세팅사항*********

1. UTF-8인코딩설정
2. taglib설정 
3. contextPath설정
4. 부트스트랩
5. 폰트어썸 및 xi-icon 설정

***************************************

-->
<!-- 1 JSP인코딩 -->
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!-- 2 taglib-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 3 contextPath-->
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!-- 4 부트스트랩 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- 5 폰트어썸 xi-icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<!-- 6.CSS -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/font.css"> 
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/module.css"> 