<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/module.jsp" %>

<!-- main (css) -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/main.css">
<!-- button (css) -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/button.css">


<div class="wrapper">
	
	<!-- 헤더 : START-->
	<%@ include file="../inc/top.jsp" %>
	<!-- ./헤더 : END-->
	
	<!-- 메인 컨텐츠 -->
	<div class="wrap main container ps-3 pe-3">
	<!-- <div class="wrap main .container ps-3 pe-3"> -->
	<!-- <div class="wrap main container"> -->
	    <div class="row">
	        <div class="main-content-wrap">
	            <section id="main-content">
	            <!-- 캐러셀 배너 : START-->
	            <%@ include file="../inc/banner.jsp" %>
	            <!-- 컨텐츠 : START -->
                <div class="content-wrap">
                <!-- 사이드바 : START-->
                <%@ include file="../inc/sidebar.jsp" %>
                
                
                
                
<!--------------------------------------------------- Include-File : START 이곳을 변경---------------------------------------------------------------------->
                
                <!-- <div class="article-wrap mt-1"> -->
                <div class="article-wrap  mt-1 pb-0 ps-0 pe-0">     

                    <div class="article-content-wrap-borderless"> <!-- border 없는 버전 변경가능 -->
                    <!-- -------------------------------- 메인컨텐츠 - 이곳을 변경 : START ---------------------------------------- -->    
                    <!-- ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓  -->
                    
<div class="container p-5">
		<div class="d-flex justify-content-between">
			<h4>웹개발 > Java-Spring</h4>
				<form id="goBoardListFrm" action="webDevBoard_1.do" method="post">
					<input name="<portlet:namespace/>i" type="hidden" value="${currentPage}"/>
					<input name="<portlet:namespace/>cntPerPage" type="hidden" value="${cntPerPage}"/>
					<input name="<portlet:namespace/>ORDER" type="hidden" value="${ORDER}"/>
					<input name="<portlet:namespace/>option" type="hidden" value="${option}"/>
					<input name="<portlet:namespace/>keyword" type="hidden" value="${keyword}"/>
					<button class="btn btn-outline-dark" type="submit" onclick="document.getElementById('goBoardListFrm').submit()">목록</button>
				</form>	
			
			
			
		</div>
		<hr>
<div class="shadow p-4">
	<form id="updateFrm" action="#" method="post">
	
		<input type="hidden" value="${userName}" name="userName">
		<input type="hidden" value="${tbl.bno}" name="bno">
		<input type="hidden" value="${currentPage}" name="currentPage">
		<input type="hidden" value="${cntPerPage}" name="cntPerPage">
		<input type="hidden" value="${option}" name="option">
		<input type="hidden" value="${keyword}" name="keyword">
		<input type="hidden" value="${ORDER}" name="ORDER">
		<h2>${tbl.subject}</h2>
			<div class="d-flex justify-content-between">
				<div>
					<span>${tbl.writer}</span> 
					<span>${tbl.regDate}</span>
				</div>
				<div>
					<span>조회수 : ${tbl.hit}</span>
				</div>
			</div>
		<hr>
		<div>
			<section>${tbl.content}</section><!-- 큰 이미지 화면 처리방법 구상할것 -->
		</div>

		<hr>

	<!-- START : 이미지 슬라이더 -->
	<c:if test="${fileList.size() > 0}">
 		<div class="post-container shadow mb-5">
      		<div class="post-slider">
        		<h1 class="silder-title">이미지 슬라이더</h1>
        		<i class="fas fa-chevron-left prev"></i>  
        		<i class="fas fa-chevron-right next"></i> 
        		<div class="post-wrapper">
					<c:forEach var="li" items="${fileList}">
          				<div class="post">
          					<div class="post-box">
            					<img src="${ImageShowURL}&<portlet:namespace/>fno=${li.fno}" class="slider-image">
          					</div>
            				<div class="post-info">
              					<h4><i class="fa-solid fa-image"></i>${li.FName}</h4>
              					<h4><button type="button" class="btn btn-info" onclick="fileDown(${li.fno})">다운로드</button></h4>
            				</div>
          				</div>
					</c:forEach>
        		</div>
      		</div>
    	</div>
    </c:if>
	<!-- END :이미지 슬라이더 -->		


		<hr>
		
			
		<!-- 작성자 본인인경우 -->
		<c:if test="${tbl_mine}">
			<div class="d-flex justify-content-end">
				<button type="button" class="btn btn-success m-1" onclick="updateSubject()">글수정</button>
				<button type="button" class="btn btn-danger m-1" onclick="delSubject()">글삭제</button>
			</div>

		</c:if>		
		</form>
		<!-- 글삭제폼 -->
		<form id="delFrm" action="${SubjectDeleteURL}" method="post">
			<input type="hidden" name="<portlet:namespace/>bno" value="${tbl.bno}">
		</form>
</div>
</div>
                <!-- ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑  -->
                <!-- --------------------------------./ 메인컨텐츠 - 이곳을 변경 : END ---------------------------------------- -->  
                    </div>
                </div>
                
                
 <!------------------------------------------------------ Include-File : END 이곳을 변경------------------------------------------------------------------->
                
                </div>
                <!-- 컨텐츠 : END -->
                </section>
                <!-- 푸터 -->
                <%@ include file="../inc/bottom.jsp" %>            
			</div>
		</div>
	</div>
	</div>
</body>

<!-- ckEditor4 풀버전 -->
<script src="${ctx}/resources/js/ckeditor/ckeditor.js"></script>
<!-- 텍스트ui설정 -->
<script type="text/javascript" src="${ctx}/resources/js/editor4_setting.js"></script>