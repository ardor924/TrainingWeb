<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/module.jsp" %>



<!-- main (css) -->
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/main.css">


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
                
                
                
                
<!--------------------------------------------------- Include-File : START 이곳을 로드---------------------------------------------------------------------->
                
                <!-- <div class="article-wrap mt-1"> -->
                <div class="article-wrap  mt-1 pb-0 ps-0 pe-0">
                    
                    <div class="article-content-wrap-borderless"> <!-- border (있는/없는) 버전 변경가능 -->
                    <!-- -------------------------------- 메인컨텐츠 - 이곳을 변경 : START ---------------------------------------- -->    
                    <!-- ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓  -->

                        <div class="article-top">
                            <div class="article-text-title">
                                <h2>Java-Spring</h2>
                            </div>
                        
                            <!-- 검색창 : START -->
                            <div class="article-search">		
                                <form class="search-form" method="post" action="#">
                                  <div class="search-form-wrap">
                                    <input type="hidden" value="on" name="earchOn">
                                    <input type="hidden" value="${bp.cntPerPage}" name="cntPerPage">
                                    <input type="hidden" value="${ORDER}" name="ORDER">
                                
                                    <!-- 검색 -->
                                    <select id="search-option" class="form-select"  onchange="changeOption()" name="option">
                                        <option id="select_none" value="keyword_X" ${option eq 'keyword_X' ? 'selected' : ''}>선택</option>
                                        <option value="keyword_S" ${option eq 'keyword_S' ? 'selected' : ''}>제목</option>
                                        <option value="keyword_C" ${option eq 'keyword_C' ? 'selected' : ''}>내용</option>
                                        <option value="keyword_W" ${option eq 'keyword_W' ? 'selected' : ''}>글쓴이</option>
                                    </select>
                                
                                     <!-- 검색창 -->
                                    <input id="search-keyword" value="${keyword}" class="form-control rounded-0 rounded-start" type="text" name="keyword" placeholder="검색어를 입력 하세요">
                                
                                     <!-- 검색버튼 -->
                                    <button id="btn-search" class="btn btn-primary btn-lg rounded-0 rounded-end" onclick="javascript:selectChk()">
                                        <i class="fa fa-search"></i>
                                    </button> 
                                  </div>
                               </form>
                            </div>
                            <!-- 검색창 : END-->
                        </div>
                        <hr>
                    
                        <!-- 게시판  : START-->
                        <div class="article-center">
                            <table class="article-center-board table table-hover">
                            
                                <thead>
                                  <th>
                                    <div class="board-orderform-wrap">
                                        <input id="option" name="ORDER" type="hidden" value="bnoUp"/>
                                        <a href="#" onclick="bnoOrderFrm()">번호</a>
                                        <i class='fa-solid fa-sort-down'></i>
                                    </div>
                                  </th>
                                  <th>
                                    <div>제목</div>
                                  </th>
                                  <th>
                                    <div>작성자</div>
                                  </th>
                                  <th>
                                    <div class="board-orderform-wrap">
                                        <input id="ORDER" name="ORDER" type="hidden" value="regUp"/>
                                        <a href="#" onclick="regOrderFrm()">작성일</a>
                                        <i class='fa-solid fa-sort-down'></i>
                                    </div>
                                  </th>
                                  <th>
                                    <div class="board-orderform-wrap">
                                        <input id="ORDER" name="ORDER" type="hidden" value="hitUp"/>
                                        <a href="#" onclick="hitOrderFrm()">조회수</a>
                                        <i class='fa-solid fa-sort-down'></i>
                                    </div>
                                  </th>
                              
                                </thead>
                            
                                <tbody>
                               		<c:if test="${bList == null}">
                                    <tr>
                                        <td class="text-center" colspan="5">
                                            <h2>현재 게시판에 게시글이 없습니다.</h2>
                                        </td>                                
                                    </tr>
                               		</c:if>
                               		
                
									
                               		<c:if test="${bList != null}">
                                    <c:forEach var="li" items="${bList}">								
                                    <tr>
                                        <td colspan="1">${li.bno}</td>
                                        <td colspan="1">

											<form id="viewFrm+${li.bno}" action="subjectView.do" method="post">
												<input name="bno" type="hidden" value="${li.bno}"/>
												<input name="currentPage" type="hidden" value="${bp.currentPage}"/>
												<input name="cntPerPage" type="hidden" value="${bp.cntPerPage}"/>
												<input name="memberName" type="hidden" value="${memberName}"/>
												<a href="#" onclick="document.getElementById('viewFrm+${li.bno}').submit()">${li.subject}</a>
											</form>

										 
										</td>
                                        <td colspan="1">${li.writer}</td>				
                                        <td colspan="1">
                                        	<fmt:formatDate value="${li.regDate}" pattern="yyyy.MM.dd" type="date"/>
                                        </td>
                                        <td colspan="1">${li.hit}</td>
                                    </tr>       
                                    	
                                    </c:forEach>
                               		</c:if>
                               		

                                </tbody>
                            </table>
                            
                            
                            
                            
                            
                        </div>
                        <!-- 게시판 : END--> 
                        
                        <div class="d-flex justify-content-between">

	<div class="d-flex justify-content-end">		
		<form id="searchForm" method="post" action="${GoList}">
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
		<a class="btn btn-outline-danger" href='dummy.do'>더미게시글생성</a>
		<a class="btn btn-outline-dark" href='${GoList}'>목록</a>
		<c:if test="${userName == 'guest'}">
		<button class="btn btn-outline-dark" onclick="javascript:alert('글을 쓰기 위해서는 로그인이 필요합니다!')">글쓰기</button>
		</c:if>
		<c:if test="${userName != 'guest'}">
		<a class="btn btn-outline-dark" href='writeBoardPage.do'>글쓰기</a>
		</c:if>
	</div>
</div>
		
<!-- 페이지 네비게이션(블럭) -->

	<ul class="pagination justify-content-center my-5">
	
	<c:if test="${bp.prevPage > 0}">
	  <li class="page-item"><!--이전 페이징 블럭이 0이하 일 경우, 이전 버튼 비활성화-->
	     <a class="page-link" href="webDevBoard_1.do?i=${bp.prevPage}&cntPerPage=${bp.cntPerPage}"><i class="fa-solid fa-angle-left"></i>이전</a>
	  </li>
	</c:if>
	  
	  <c:forEach var="i" begin="${bp.blockStart}" end="${bp.blockEnd}">	  
	     <li class="page-item ${bp.currentPage == i ? 'active':''}"><!-- 현재 페이지가 i일 경우 active(현재위치표시역할) -->
	        <a class="page-link" href="webDevBoard_1.do?i=${i}&cntPerPage=${bp.cntPerPage}">${i}</a><!-- i로 페이지 이동 -->
	     </li>
	  </c:forEach>
	  
	  <c:if test="${bp.blockEnd < bp.totalPage}">
	  <li class="page-item"><!-- 전체게시글 수가 페이징 블럭의 끝번호 보다 작을 경우 disabled(버튼 비활성화) -->
	     <a class="page-link" href="webDevBoard_1.do?i=${bp.nextPage}&cntPerPage=${bp.cntPerPage}">다음<span></span><i class="fa-solid fa-angle-right"></i></a>
	  </li>
	  </c:if>
	</ul>	



</div>
                        
                        
                        
                        
                    
                    <!-- ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑  -->
                    <!-- --------------------------------./ 메인컨텐츠 - 이곳을 변경 : END ---------------------------------------- -->  
                </div>
                
                
 <!------------------------------------------------------ Include-File : END 이곳을 로드------------------------------------------------------------------->
                
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