<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/module.jsp" %>

<!--HEADER : START-->
<%@ include file="./inc/header.jsp" %>
<!--/.HEADER : END-->

<!-- 미 로그인시 메세지 : START -->
<%@ include file="./inc/MSG.jsp" %>
<!-- 미 로그인시 메세지 : END -->

<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/main.css">


    <!--CONTENT WRAP : START-->
    <div class="content-wrap">
        <!-- CONTENT : START-->
        <div class="content">
            <!-- HOME : START -->
            <section id="main_home">
                <!-- container :START -->
                <div class="container-fluid bg-dark h-100">
                    <!-- row : START -->
                    <div class="row">
                        
                        <div class="banner-wrap border-danger">
                            <img src="${ctx}/resources/img/banner_0.jpg" alt="banner_1">
                        </div>
                        <!-- main-content-wrap : START -->
                        <div class="d-flex main-content-wrap bg-success">

                            <div class="navbar side-navbar col-2 navbar bg-danger ms-5">
                                <ul>
                                    <li>1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>

                            <div class="main-content  col-9 bg-info">
                                <div  class="section">
                                    


<!-- ----------------------------------------------게시판 START--------------------------------------------------------------- -->
<div>
	<table class="table table-hover mt-3">
		<thead>
		  <th>
			<form id="bnoOrderFrm" action="${BoardListURL}" method="post">
			    <input id="cntPerPage" name="<portlet:namespace/>cntPerPage" type="hidden" value="${bp.cntPerPage}"/>
			    <input id="keyword" name="<portlet:namespace/>keyword" type="hidden" value="${keyword}"/>
			    <input id="option" name="<portlet:namespace/>option" type="hidden" value="${option}"/>
			    
			<c:if test="${ORDER eq 'bnoUp'}">
			    <input id="option" name="<portlet:namespace/>ORDER" type="hidden" value="bnoDown"/>
			    <a href="#" onclick="bnoOrderFrm()">번호</a>
			    <i class='fa-solid fa-sort-up'></i>
			    </c:if>
			<c:if test="${ORDER eq 'bnoDown'  or ORDER == null  or ORDER != 'bnoUp'}">
			    <input id="option" name="<portlet:namespace/>ORDER" type="hidden" value="bnoUp"/>
			    <a href="#" onclick="bnoOrderFrm()">번호</a>
			    <i class='fa-solid fa-sort-down'></i>
		    </c:if>
		    </form>
		   </th>
		   <th>제목</th>
		   <th>작성자</th>
		   <th>
			<form id="regOrderFrm" action="${BoardListURL}" method="post">
			    <input id="cntPerPage" name="<portlet:namespace/>cntPerPage" type="hidden" value="${bp.cntPerPage}"/>
			    <input id="keyword" name="<portlet:namespace/>keyword" type="hidden" value="${keyword}"/>
			    <input id="option" name="<portlet:namespace/>option" type="hidden" value="${option}"/>
			    		   
	        <c:if test="${ORDER eq 'regUp'}">
	            <input id="ORDER" name="<portlet:namespace/>ORDER" type="hidden" value="regDown"/>
	            <a href="#" onclick="regOrderFrm()">작성일</a>
	            <i class='fa-solid fa-sort-up'></i>
	        </c:if>
	        <c:if test="${ORDER eq 'regDown'  or ORDER == null or ORDER != 'regUp'}">
	            <input id="ORDER" name="<portlet:namespace/>ORDER" type="hidden" value="regUp"/>
	            <a href="#" onclick="regOrderFrm()">작성일</a>
	            <i class='fa-solid fa-sort-down'></i>
	        </c:if>
	        </form>
		   </th>
		   <th>
			<form id="hitOrderFrm" action="${BoardListURL}" method="post">
			    <input id="cntPerPage" name="<portlet:namespace/>cntPerPage" type="hidden" value="${bp.cntPerPage}"/>
			    <input id="keyword" name="<portlet:namespace/>keyword" type="hidden" value="${keyword}"/>
			    <input id="option" name="<portlet:namespace/>option" type="hidden" value="${option}"/>
			    		   
	        <c:if test="${ORDER eq 'hitUp'}">
	            <input id="ORDER" name="<portlet:namespace/>ORDER" type="hidden" value="hitDown"/>
	            <a href="#" onclick="hitOrderFrm()">조회수</a>
	            <i class='fa-solid fa-sort-up'></i>
	        </c:if>
	        <c:if test="${ORDER eq 'hitDown'  or ORDER == null or ORDER != 'hitUp'}">
	            <input id="ORDER" name="<portlet:namespace/>ORDER" type="hidden" value="hitUp"/>
	            <a href="#" onclick="hitOrderFrm()">조회수</a>
	            <i class='fa-solid fa-sort-down'></i>
	        </c:if>
	        </form>
		   </th>
		
		</thead>		
		<tbody>
			<c:if test="${board_list == null}">
			<tr>
				<td class="text-center" colspan="5"><h2>게시판에 게시글이 없습니다.</h2><td>
			</tr>
			</c:if>
			<c:if test="${board_list != null}">
			<c:forEach var="li" items="${board_list}">
			<tr>
			
				<td>${li.bno}</td>
				<!-- 게시글 상세 보기 폼-->
				<td>
				<form id="viewFrm+${li.bno}" action="${SubjectViewURL}" method="post">
					<input name="<portlet:namespace/>bno" type="hidden" value="${li.bno}"/>
					<input name="<portlet:namespace/>currentPage" type="hidden" value="${bp.currentPage}"/>
					<input name="<portlet:namespace/>cntPerPage" type="hidden" value="${bp.cntPerPage}"/>
					<input name="<portlet:namespace/>ORDER" type="hidden" value="${ORDER}"/>
					<input name="<portlet:namespace/>option" type="hidden" value="${option}"/>
					<input name="<portlet:namespace/>keyword" type="hidden" value="${keyword}"/>
					<input name="<portlet:namespace/>userName" type="hidden" value="${userName}"/>
					<a href="#" onclick="document.getElementById('viewFrm+${li.bno}').submit()">${li.subject}</a>
				</form>
				</td>
				<td>${li.writer}</td>				
				<td>${li.regDate}</td>
				<td>${li.hit}</td>
			</tr>		
			</c:forEach>
			</c:if>								
		</tbody>
	</table>
	<hr>
	
<div class="d-flex justify-content-between">

	<div class="d-flex justify-content-end">		
		<form id="searchForm" method="post" action="${BoardListURL}">
			<input type="hidden" value="${ORDER}" name="<portlet:namespace/>ORDER">
			<input type="hidden" value="${keyword}" name="<portlet:namespace/>keyword">
			<input type="hidden" value="${option}" name="<portlet:namespace/>option">
			<div class="d-flex justify-content-end">		
				 <select id='cntPerPage' class="form-select me-2" onchange="changeCntPerPage()" name="<portlet:namespace/>cntPerPage" style="width:100px">
					<option value="10" ${bp.cntPerPage eq 10 ? 'selected' : ''}>10개씩</option>
					<option value="15" ${bp.cntPerPage eq 15 ? 'selected' : ''}>15개씩</option>
					<option value="20" ${bp.cntPerPage eq 20 ? 'selected' : ''}>20개씩</option>
					<option value="30" ${bp.cntPerPage eq 30 ? 'selected' : ''}>30개씩</option>
				 </select>
			   <button type="submit" class="btn btn-dark rounded-0 rounded-end" style="width:50px;  color:white" >
			      <i class="xi-filter"></i>
			   </button> 
			</div>
		</form>
	</div>		
	<div class="text-center">
		<c:if test="${userName == 'guest'}">
		<button class="btn btn-outline-dark" onclick="javascript:alert('글을 쓰기 위해서는 로그인이 필요합니다!')">글쓰기</button>
		</c:if>
		<c:if test="${userName != 'guest'}">
			<form id="writeFrm" action="${WriteFormEditURL}" method="post">
				<input name="<portlet:namespace/>bno" type="hidden" value="${li.bno}"/>
				<input name="<portlet:namespace/>userName" type="hidden" value="${userName}"/>
				<a href="#" class="btn btn-outline-dark" onclick="document.getElementById('writeFrm').submit()">글쓰기</a>
			</form>
		</c:if>
	</div>
</div>
		
<!-- 페이지 네비게이션(블럭) -->

	<ul class="pagination justify-content-center my-5">
	  <li class="page-item ${bp.prevPage <=0 ? 'hide' : ''}"><!--이전 페이징 블럭이 0이하 일 경우, 이전 버튼 비활성화-->
	     <a class="page-link" href="${BoardListURL}&<portlet:namespace/>i=${bp.prevPage}&<portlet:namespace/>cntPerPage=${bp.cntPerPage}&<portlet:namespace/>ORDER=${ORDER}&<portlet:namespace/>keyword=${keyword}&<portlet:namespace/>option=${option}"><i class="fa-solid fa-angle-left"></i>이전</a>
	  </li>
	  
	  <c:forEach var="i" begin="${bp.blockStart}" end="${bp.blockEnd}">	  
	     <li class="page-item ${bp.currentPage == i ? 'active':''}"><!-- 현재 페이지가 i일 경우 active(현재위치표시역할) -->
	        <a class="page-link" href="${BoardListURL}&<portlet:namespace/>i=${i}&<portlet:namespace/>cntPerPage=${bp.cntPerPage}&<portlet:namespace/>ORDER=${ORDER}&<portlet:namespace/>orderOn=on&<portlet:namespace/>keyword=${keyword}&<portlet:namespace/>option=${option}">${i}</a><!-- i로 페이지 이동 -->
	     </li>
	  </c:forEach>
	  
	  <li class="page-item ${bp.blockEnd >= bp.totalPage ? 'hide': ''}"><!-- 전체게시글 수가 페이징 블럭의 끝번호 보다 작을 경우 disabled(버튼 비활성화) -->
	     <a class="page-link" href="${BoardListURL}&<portlet:namespace/>i=${bp.nextPage}&<portlet:namespace/>cntPerPage=${bp.cntPerPage}&<portlet:namespace/>ORDER=${ORDER}&<portlet:namespace/>keyword=${keyword}&<portlet:namespace/>option=${option}">다음<span></span><i class="fa-solid fa-angle-right"></i></a>
	  </li>
	</ul>	


	<!-- 필터링확인 -->
	<span>order : ${ORDER} // </span><span>search : ${option} //</span>
	<span>currentPage : ${bp.currentPage }</span>


</div>








<!-- ----------------------------------------------게시판 END--------------------------------------------------------------- -->

















                                </div>
                            </div>

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