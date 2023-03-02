<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/module.jsp" %>

<!-- indexPage (css) -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/index.css">




<!-- wrapper : START -->
<div class="wrapper">


	<!--HEADER : START-->
	<%@ include file="./inc/header.jsp" %>
	<!--/.HEADER : END-->
	

	<!--CONTENT WRAP : START-->
	<div class="content-wrap">
	    <!-- CONTENT : START-->
	    <div class="content">
	        <!-- HOME : START -->
	        <section id="index_home">
	            <!-- container :START -->
	            <div class="container">
	                <!-- row : START -->
	                <div class="row">
	                    <!-- hero-content-wrap : START -->
	                    <div class="index-content-wrap">
	                        <a href="main.do">
	                            <div class="index-content">
	                                <h1>Hello</h1>
	                                <span class="typography">
	                                    개발자 학습 게시판
	                                </span>
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
	
</div>
<!-- wrapper : END -->



