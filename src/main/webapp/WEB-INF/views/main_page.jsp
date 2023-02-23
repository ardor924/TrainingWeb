<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/module.jsp" %>

<!--HEADER : START-->
<%@ include file="./inc/header.jsp" %>
<!--/.HEADER : END-->

<!-- 미 로그인시 메세지 : START -->
<%@ include file="./inc/MSG.jsp" %>
<!-- 미 로그인시 메세지 : END -->


<!--CONTENT WRAP : START-->
<div class="content-wrap">
    <!-- CONTENT : START-->
    <div class="content">
        <!-- HOME : START -->
        <section id="main_home">
            <!-- container :START -->
            <div class="container h-100">
                <!-- row : START -->
                <div class="row">
                    <!-- main-content-wrap : START -->
                    <div class="main-content-wrap">
                        <a href="#">
                            <div class="main-content">
                                <h1>화면구성 준비중..</h1>
                                <h1>${sessionScope.memberId}</h1>
					              <c:if test="${sessionScope.isLogin != null}">
					              	<div>로그인성공!!!!</div>
					              	<div>${memberId}</div>
					              	<div>${memberName}</div>
					              </c:if>                                
                            </div>
                        </a>
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


<!--FOOTER :START-->
<%@ include file="./inc/footer.jsp" %>
<!--/.FOOTER : END-->