<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/module.jsp" %>

<!-- main (css) -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/main.css">


<div class="wrapper">
	
	<!-- 헤더 : START-->
	<%@ include file="./inc/top.jsp" %>
	<!-- ./헤더 : END-->
	
	<!-- 메인 컨텐츠 -->
	<div class="wrap main container ps-3 pe-3">
	<!-- <div class="wrap main .container ps-3 pe-3"> -->
	<!-- <div class="wrap main container"> -->
	    <div class="row">
	        <div class="main-content-wrap">
	            <section id="main-content">
	            <!-- 캐러셀 배너 : START-->
	            <%@ include file="./inc/banner.jsp" %>
	            <!-- 컨텐츠 : START -->
                <div class="content-wrap">
                <!-- 사이드바 : START-->
                <%@ include file="./inc/sidebar.jsp" %>
                
                
                
                
<!--------------------------------------------------- Include-File : START 이곳을 로드---------------------------------------------------------------------->
                
                <!-- <div class="article-wrap mt-1"> -->
                <div class="article-wrap  mt-1 pb-0 ps-0 pe-0">
                    
                    <div class="article-content-wrap"> <!-- border (있는/없는) 버전 변경가능 -->
                    <!-- -------------------------------- 메인컨텐츠 - 이곳을 변경 : START ---------------------------------------- -->    
                    <!-- ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓  -->

                        <div class="text-center">
                        	메인 - 대문 
                        </div>
                        <!-- 게시판 : END--> 
                    
                    <!-- ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑  -->
                    <!-- --------------------------------./ 메인컨텐츠 - 이곳을 변경 : END ---------------------------------------- -->  
                	</div><!-- ./ article-content-wrap : END -->
                
                
                </div>
 <!------------------------------------------------------ Include-File : END 이곳을 로드------------------------------------------------------------------->
                </div>
                <!-- 컨텐츠 : END -->
                </section>
                <!-- 푸터 -->
                <%@ include file="./inc/bottom.jsp" %>            
			</div>
		</div>
	</div>
	</div>
</body>